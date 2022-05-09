; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.solo_enc_dev = type { ptr, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, [45 x i8], [3 x i8], [131072 x i8], [64 x i8], i32, [1024 x i8], i32, i32, i32, i32, %struct.vb2_queue, %struct.list_head, i32, i32, ptr, i32, %struct.spinlock }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
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
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.85, %union.anon.86, i32, ptr, i32, %struct.anon.87, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.85 = type { i64 }
%union.anon.86 = type { ptr }
%struct.anon.87 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.90, i32 }
%union.anon.90 = type { i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.solo_vb2_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.93, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.93 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.107 }
%union.anon.107 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.108, [2 x i32] }
%union.anon.108 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.109, [2 x i32] }
%union.anon.109 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }
%struct.v4l2_event = type { i32, %union.anon.122, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.122 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.123, i32, i32, i32, i32, i32 }
%union.anon.123 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
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
%struct.solo_p2m_desc = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@vop_6110_ntsc_cif = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\01gB\00\1E\9At\0B\0F\C8\00\00\00\01h\CE2(\00\00\00", [40 x i8] zeroinitializer }, align 32
@vop_6110_pal_cif = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\01gB\00\1E\9At\0B\04\B2\00\00\00\01h\CE2(\00\00\00", [40 x i8] zeroinitializer }, align 32
@vop_6010_ntsc_cif = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\01\00\00\00\01 \02H\1D\C0\00@\00@\00@\00\80\00\97S\04\1FL,\10xQ\18?", [32 x i8] zeroinitializer }, align 32
@vop_6010_pal_cif = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\01\00\00\00\01 \02H\15\C0\00@\00@\00@\00\80\00\97S\04\1FL,\10\90Q\18?", [32 x i8] zeroinitializer }, align 32
@vop_6110_ntsc_d1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\01gB\00\1E\9At\05\81\EC\80\00\00\00\01h\CE2(\00\00", [40 x i8] zeroinitializer }, align 32
@vop_6110_pal_d1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\01gB\00\1E\9At\05\80\93 \00\00\00\01h\CE2(\00\00", [40 x i8] zeroinitializer }, align 32
@vop_6010_ntsc_d1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\01\00\00\00\01 \02H\1D\C0\00@\00@\00@\00\80\00\97S\04\1FLX\10\F0q\18?", [32 x i8] zeroinitializer }, align 32
@vop_6010_pal_d1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\00\00\01\00\00\00\01 \02H\15\C0\00@\00@\00@\00\80\00\97S\04\1FLX\11 q\18?", [32 x i8] zeroinitializer }, align 32
@jpeg_dqt = internal constant { [4 x [138 x i8]], [152 x i8] } { [4 x [138 x i8]] [[138 x i8] c"\FF\DB\00C\00\08\06\06\07\06\05\08\07\07\07\09\09\08\0A\0C\14\0D\0C\0B\0B\0C\19\12\13\0F\14\1D\1A\1F\1E\1D\1A\1C\1C $.' \22,#\1C\1C(7),01444\1F'9=82<.342\FF\DB\00C\01\09\09\09\0C\0B\0C\18\0D\0D\182!\1C!22222222222222222222222222222222222222222222222222", [138 x i8] c"\FF\DB\00C\00\10\0B\0C\0E\0C\0A\10\0E\0D\0E\12\11\10\13\18(\1A\18\16\16\181#%\1D(:3=<9387@H\\N@DWE78PmQW_bghg>Mqypdx\\egc\FF\DB\00C\01\11\12\12\18\15\18/\1A\1A/cB8Bcccccccccccccccccccccccccccccccccccccccccccccccccc", [138 x i8] c"\FF\DB\00C\00 \16\18\1C\18\14 \1C\1A\1C$\22 &0P40,,0bFJ:Ptfzxrfpn\80\90\B8\9C\80\88\AE\8Anp\A0\DA\A2\AE\BE\C4\CE\D0\CE|\9A\E2\F2\E0\C8\F0\B8\CA\CE\C6\FF\DB\00C\01\22$$0*0^44^\C6\84p\84\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6", [138 x i8] c"\FF\DB\00C\000!$*$\1E0*'*6309HxNHBBH\93ioWx\AE\99\B7\B4\AB\99\A8\A5\C0\D8\FF\EA\C0\CC\FF\CF\A5\A8\F0\FF\F3\FF\FF\FF\FF\FF\FF\BA\E7\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\DB\00C\01366H?H\8DNN\8D\FF\C6\A8\C6\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF"], [152 x i8] zeroinitializer }, align 32
@solo_enc_v4l2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&solo_dev->ring_thread_wait\00", [36 x i8] zeroinitializer }, align 32
@solo_enc_v4l2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Encoders as /dev/video%d-%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"solo_enc_v4l2_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@solo_enc_v4l2_init._entry_ptr = internal global ptr @solo_enc_v4l2_init._entry, section ".printk_index", align 4
@solo_enc_alloc._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"solo6x10_v4l2_enc:1221:(hdl)->_lock\00", [60 x i8] zeroinitializer }, align 32
@solo_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @solo_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@solo_osd_text_ctrl = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @solo_ctrl_ops, ptr null, i32 10025219, ptr @.str.14, i32 7, i64 0, i64 44, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@solo_md_thresholds = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @solo_ctrl_ops, ptr null, i32 10684675, ptr null, i32 0, i64 0, i64 65535, i64 1, i64 768, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 45, i32 45, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@solo_enc_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&solo_enc->lock\00", [16 x i8] zeroinitializer }, align 32
@solo_enc_alloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&solo_enc->av_lock\00", [45 x i8] zeroinitializer }, align 32
@solo_enc_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @solo_enc_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr @solo_enc_buf_finish, ptr null, ptr @solo_enc_start_streaming, ptr @solo_enc_stop_streaming, ptr @solo_enc_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@solo_enc_alloc.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&solo_enc->motion_lock\00", [41 x i8] zeroinitializer }, align 32
@jpeg_header = internal constant { [608 x i8], [128 x i8] } { [608 x i8] c"\FF\D8\FF\FE\00\0DBluecherry \FF\DB\00C\00 \16\18\1C\18\14 \1C\1A\1C$\22 &0P40,,0bFJ:Ptfzxrfpn\80\90\B8\9C\80\88\AE\8Anp\A0\DA\A2\AE\BE\C4\CE\D0\CE|\9A\E2\F2\E0\C8\F0\B8\CA\CE\C6\FF\DB\00C\01\22$$0*0^44^\C6\84p\84\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\C6\FF\C4\01\A2\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\10\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\01\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\11\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA\FF\C0\00\11\08\00\F0\02\C0\03\01\22\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [128 x i8] zeroinitializer }, align 32
@solo_enc_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @solo_enc_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"solo6x10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 4351, ptr @video_device_release, ptr @solo_enc_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s-enc (%i/%i)\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6x10\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OSD Text\00", [23 x i8] zeroinitializer }, align 32
@solo_enc_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@solo_enc_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @solo_enc_querycap, ptr @solo_enc_enum_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_enc_get_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_enc_set_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_enc_try_fmt_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @solo_enc_g_std, ptr @solo_enc_s_std, ptr null, ptr @solo_enc_enum_input, ptr @solo_enc_get_input, ptr @solo_enc_set_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_g_parm, ptr @solo_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @solo_enum_framesizes, ptr @solo_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @solo_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Softlogic 6x10 Enc %d\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Encoder %d\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"solo6x10_ring\00", [18 x i8] zeroinitializer }, align 32
@solo_handle_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 608, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Got spurious packet for channel %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"solo_handle_ring\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@solo_handle_ring._entry_ptr = internal global ptr @solo_handle_ring._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@solo_send_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963803, i64 10025219, i64 10029515, i64 10029665, i64 10684673, i64 10684674, i64 10684675]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 877088845]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 875967048, i64 877088845]
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"vop_6110_ntsc_cif\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 67, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"vop_6110_pal_cif\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 79, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"vop_6010_ntsc_cif\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 39, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"vop_6010_pal_cif\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 53, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"vop_6110_ntsc_d1\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 61, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"vop_6110_pal_d1\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 73, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"vop_6010_ntsc_d1\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 32, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"vop_6010_pal_d1\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 46, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"jpeg_dqt\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 100, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1347, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1378, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1221, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"solo_ctrl_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1186, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"solo_osd_text_ctrl\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1190, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"solo_md_thresholds\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1200, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1254, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1255, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"solo_enc_video_qops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 753, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1282, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"jpeg_header\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [46 x i8] c"../drivers/media/pci/solo6x10/solo6x10-jpeg.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 15, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"solo_enc_template\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1175, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1313, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1313, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1193, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"solo_enc_fops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1133, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"solo_enc_ioctl_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 1143, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 770, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 772, i32 49 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 786, i32 45 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 684, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private constant [50 x i8] c"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 607, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1163, i32 7 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 57, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @solo_enc_v4l2_init._entry, ptr @solo_enc_v4l2_init._entry_ptr, ptr @solo_handle_ring._entry, ptr @solo_handle_ring._entry_ptr, ptr @vop_6110_ntsc_cif, ptr @vop_6110_pal_cif, ptr @vop_6010_ntsc_cif, ptr @vop_6010_pal_cif, ptr @vop_6110_ntsc_d1, ptr @vop_6110_pal_d1, ptr @vop_6010_ntsc_d1, ptr @vop_6010_pal_d1, ptr @jpeg_dqt, ptr @solo_enc_v4l2_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @solo_enc_alloc._key, ptr @.str.6, ptr @solo_ctrl_ops, ptr @solo_osd_text_ctrl, ptr @solo_md_thresholds, ptr @solo_enc_alloc.__key, ptr @.str.7, ptr @solo_enc_alloc.__key.8, ptr @.str.9, ptr @solo_enc_video_qops, ptr @solo_enc_alloc.__key.10, ptr @.str.11, ptr @jpeg_header, ptr @solo_enc_template, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @solo_enc_fops, ptr @solo_enc_ioctl_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6110_ntsc_cif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6110_pal_cif to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6010_ntsc_cif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6010_pal_cif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6110_ntsc_d1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6110_pal_d1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6010_ntsc_d1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_6010_pal_d1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_dqt to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_v4l2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_v4l2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_alloc._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_osd_text_ctrl to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_md_thresholds to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_alloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_alloc.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpeg_header to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_enc_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_handle_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_update_mode(ptr noundef %solo_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %solo_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %solo_enc, align 4
  %mode = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 1
  %4 = lshr i8 %3, 3
  %.lobit = and i8 %4, 1
  %interlaced = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 10
  %5 = ptrtoint ptr %interlaced to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.lobit, ptr %interlaced, align 4
  %fps = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 44
  %6 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fps, align 8
  %interval = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 11
  %8 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %interval, align 1
  %10 = udiv i8 %7, %9
  %11 = tail call i8 @llvm.umax.i8(i8 %10, i8 1)
  %bw_weight = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 12
  %12 = ptrtoint ptr %bw_weight to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bw_weight, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp10 = icmp eq i8 %3, 2
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 38
  %13 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %video_hsize, align 4
  br i1 %cmp10, label %if.then, label %if.else28

if.then:                                          ; preds = %entry
  %15 = lshr i16 %14, 1
  %width = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 16
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %width, align 4
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 39
  %17 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %video_vsize, align 2
  %height = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 17
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %height, align 2
  %type = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp14 = icmp eq i32 %21, 1
  %video_type = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 37
  %22 = ptrtoint ptr %video_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %video_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17 = icmp eq i32 %23, 0
  br i1 %cmp14, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %vop_6110_ntsc_cif.vop_6110_pal_cif = select i1 %cmp17, ptr @vop_6110_ntsc_cif, ptr @vop_6110_pal_cif
  br label %if.end57

if.else20:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %vop_6010_ntsc_cif.vop_6010_pal_cif = select i1 %cmp17, ptr @vop_6010_ntsc_cif, ptr @vop_6010_pal_cif
  br label %if.end57

if.else28:                                        ; preds = %entry
  %width30 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 16
  %24 = ptrtoint ptr %width30 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %14, ptr %width30, align 4
  %video_vsize31 = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 39
  %25 = ptrtoint ptr %video_vsize31 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %video_vsize31, align 2
  %shl = shl i16 %26, 1
  %height34 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 17
  %27 = ptrtoint ptr %height34 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %shl, ptr %height34, align 2
  %shl37 = shl i8 %11, 2
  %28 = ptrtoint ptr %bw_weight to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %shl37, ptr %bw_weight, align 2
  %type39 = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %type39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp40 = icmp eq i32 %30, 1
  %video_type43 = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 37
  %31 = ptrtoint ptr %video_type43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %video_type43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp44 = icmp eq i32 %32, 0
  br i1 %cmp40, label %if.then42, label %if.else49

if.then42:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %vop_6110_ntsc_d1.vop_6110_pal_d1 = select i1 %cmp44, ptr @vop_6110_ntsc_d1, ptr @vop_6110_pal_d1
  br label %if.end57

if.else49:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #13
  %vop_6010_ntsc_d1.vop_6010_pal_d1 = select i1 %cmp44, ptr @vop_6010_ntsc_d1, ptr @vop_6010_pal_d1
  br label %if.end57

if.end57:                                         ; preds = %if.else49, %if.then42, %if.else20, %if.then16
  %vop.0 = phi ptr [ %vop_6110_ntsc_cif.vop_6110_pal_cif, %if.then16 ], [ %vop_6010_ntsc_cif.vop_6010_pal_cif, %if.else20 ], [ %vop_6110_ntsc_d1.vop_6110_pal_d1, %if.then42 ], [ %vop_6010_ntsc_d1.vop_6010_pal_d1, %if.else49 ]
  %vop_len.0 = phi i32 [ 24, %if.then16 ], [ 32, %if.else20 ], [ 24, %if.then42 ], [ 32, %if.else49 ]
  %vop58 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 21
  %33 = call ptr @memcpy(ptr %vop58, ptr %vop.0, i32 %vop_len.0)
  %type59 = getelementptr inbounds %struct.solo_dev, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %type59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp60 = icmp eq i32 %35, 0
  br i1 %cmp60, label %if.then62, label %if.end57.if.end97_crit_edge

if.end57.if.end97_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fps, align 8
  %conv65 = zext i8 %37 to i32
  %mul = mul nuw nsw i32 %conv65, 1000
  %conv69 = zext i8 %9 to i32
  %mul70 = mul nuw nsw i32 %conv69, 1000
  %38 = lshr i32 %mul, 4
  %conv76 = trunc i32 %38 to i8
  %arrayidx = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 21, i32 22
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv76, ptr %arrayidx, align 1
  %conv74 = shl nuw nsw i32 %conv65, 7
  %40 = lshr i32 %mul70, 13
  %and82 = and i32 %40, 3
  %or = or i32 %conv74, %and82
  %41 = trunc i32 %or to i8
  %conv84 = or i8 %41, 12
  %arrayidx85 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 21, i32 23
  %42 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv84, ptr %arrayidx85, align 1
  %43 = lshr i32 %mul70, 5
  %conv89 = trunc i32 %43 to i8
  %arrayidx90 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 21, i32 24
  %44 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv89, ptr %arrayidx90, align 1
  %conv80 = shl i8 %9, 6
  %or94 = or i8 %conv80, 4
  %arrayidx96 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 21, i32 25
  %45 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or94, ptr %arrayidx96, align 1
  br label %if.end97

if.end97:                                         ; preds = %if.then62, %if.end57.if.end97_crit_edge
  %vop_len98 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 22
  %46 = ptrtoint ptr %vop_len98 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %vop_len.0, ptr %vop_len98, align 4
  %height100 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 17
  %47 = ptrtoint ptr %height100 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %height100, align 2
  %49 = lshr i16 %48, 8
  %conv104 = trunc i16 %49 to i8
  %arrayidx105 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 23, i32 580
  %50 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv104, ptr %arrayidx105, align 1
  %conv109 = trunc i16 %48 to i8
  %arrayidx110 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 23, i32 581
  %51 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv109, ptr %arrayidx110, align 1
  %width111 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 16
  %52 = ptrtoint ptr %width111 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %width111, align 4
  %54 = lshr i16 %53, 8
  %conv115 = trunc i16 %54 to i8
  %arrayidx116 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 23, i32 582
  %55 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv115, ptr %arrayidx116, align 1
  %conv120 = trunc i16 %53 to i8
  %arrayidx121 = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 23, i32 583
  %56 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv120, ptr %arrayidx121, align 1
  %add.ptr = getelementptr %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 23, i32 17
  %ch = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 6
  %57 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ch, align 4
  %conv122 = zext i8 %58 to i32
  %call = tail call i32 @solo_g_jpeg_qp(ptr noundef %1, i32 noundef %conv122) #11
  %arrayidx123 = getelementptr [4 x [138 x i8]], ptr @jpeg_dqt, i32 0, i32 %call
  %59 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx123, i32 138)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_g_jpeg_qp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_enc_v4l2_isr(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 56
  tail call void @__wake_up(ptr noundef %ring_thread_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_enc_v4l2_init(ptr noundef %solo_dev, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 56
  tail call void @__init_waitqueue_head(ptr noundef %ring_thread_wait, ptr noundef nonnull @.str, ptr noundef nonnull @solo_enc_v4l2_init.__key) #11
  %vh_size = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 59
  %0 = ptrtoint ptr %vh_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 64, ptr %vh_size, align 4
  %1 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %vh_dma = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 58
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef %vh_dma, i32 noundef 3264, i32 noundef 0) #11
  %vh_buf = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 57
  %3 = ptrtoint ptr %vh_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %vh_buf, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %4 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3108 = icmp sgt i32 %5, 0
  br i1 %cmp3108, label %for.body.lr.ph, label %for.end.thread

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fps.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 44
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %v4l2_dev.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 10
  %vfd86.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conv = trunc i32 %i.0109 to i8
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 133156, i32 noundef 3520, i32 noundef 6) #14
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %solo_enc_alloc.exit.thread, label %if.end.i

solo_enc_alloc.exit.thread:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx101 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %i.0109
  %6 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -12 to ptr), ptr %arrayidx101, align 4
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %hdl2.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 1
  %call3.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl2.i, i32 noundef 10, ptr noundef nonnull @solo_enc_alloc._key, ptr noundef nonnull @.str.6) #11
  %call4.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %call5.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %call6.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %call7.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #11
  %call8.i = tail call zeroext i1 @tw28_has_sharpness(ptr noundef %solo_dev, i8 noundef zeroext %conv) #11
  br i1 %call8.i, label %if.then9.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 0) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %7 = ptrtoint ptr %fps.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fps.i, align 8
  %conv.i = zext i8 %8 to i64
  %call12.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 10029515, i64 noundef 1, i64 noundef 255, i64 noundef 1, i64 noundef %conv.i) #11
  %call13.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 10029665, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 3) #11
  %call14.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 10684673, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #11
  %call15.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2.i, ptr noundef nonnull @solo_ctrl_ops, i32 noundef 10684674, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 3) #11
  %call16.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl2.i, ptr noundef nonnull @solo_osd_text_ctrl, ptr noundef null) #11
  %call17.i = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl2.i, ptr noundef nonnull @solo_md_thresholds, ptr noundef null) #11
  %md_thresholds.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %md_thresholds.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call17.i, ptr %md_thresholds.i, align 4
  %error.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not.i = icmp eq i32 %11, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %if.end11.i.hdl_free.i_crit_edge

if.end11.i.hdl_free.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdl_free.i

if.end21.i:                                       ; preds = %if.end11.i
  %12 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %solo_dev, ptr %call1.i.i.i.i, align 4096
  %ch23.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %ch23.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %ch23.i, align 4
  %lock.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @solo_enc_alloc.__key) #11
  %av_lock.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 34
  tail call void @__raw_spin_lock_init(ptr noundef %av_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @solo_enc_alloc.__key.8, i16 noundef signext 3) #11
  %vidq_active.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 29
  %14 = ptrtoint ptr %vidq_active.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %vidq_active.i, ptr %vidq_active.i, align 32
  %prev.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 29, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vidq_active.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp eq i32 %17, 0
  %cond.i = select i1 %cmp.i, i32 877088845, i32 875967048
  %fmt.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 25
  %18 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i, ptr %fmt.i, align 4
  %type29.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 26
  %19 = ptrtoint ptr %type29.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %type29.i, align 8
  %qp.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %qp.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %qp.i, align 1
  %21 = ptrtoint ptr %fps.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fps.i, align 8
  %gop.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %gop.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %gop.i, align 2
  %interval.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %interval.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %interval.i, align 1
  %mode.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %mode.i, align 1
  %motion_global.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %motion_global.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %motion_global.i, align 2
  %motion_thresh.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 13
  %27 = ptrtoint ptr %motion_thresh.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 768, ptr %motion_thresh.i, align 4
  %vidq.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28
  %28 = ptrtoint ptr %vidq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %vidq.i, align 32
  %io_modes.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 1
  %29 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7, ptr %io_modes.i, align 4
  %ops.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 7
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @solo_enc_video_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 8
  %31 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops.i, align 512
  %drv_priv.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 10
  %32 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1.i.i.i.i, ptr %drv_priv.i, align 8
  %gfp_flags.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 14
  %33 = ptrtoint ptr %gfp_flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2052, ptr %gfp_flags.i, align 8
  %timestamp_flags.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 13
  %34 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8192, ptr %timestamp_flags.i, align 4
  %buf_struct_size.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 12
  %35 = ptrtoint ptr %buf_struct_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 744, ptr %buf_struct_size.i, align 16
  %lock41.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 5
  %36 = ptrtoint ptr %lock41.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %lock.i, ptr %lock41.i, align 4
  %37 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %solo_dev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %dev43.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 28, i32 2
  %39 = ptrtoint ptr %dev43.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev.i, ptr %dev43.i, align 8
  %call45.i = tail call i32 @vb2_queue_init(ptr noundef %vidq.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end21.i.hdl_free.i_crit_edge

if.end21.i.hdl_free.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdl_free.i

if.end48.i:                                       ; preds = %if.end21.i
  tail call void @solo_update_mode(ptr noundef nonnull %call1.i.i.i.i) #11
  %motion_lock.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %motion_lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @solo_enc_alloc.__key.10, i16 noundef signext 3) #11
  %jpeg_len.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 24
  %40 = ptrtoint ptr %jpeg_len.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 608, ptr %jpeg_len.i, align 16
  %jpeg_header.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 23
  %41 = call ptr @memcpy(ptr %jpeg_header.i, ptr @jpeg_header, i32 608)
  %desc_nelts.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 31
  %42 = ptrtoint ptr %desc_nelts.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 32, ptr %desc_nelts.i, align 4
  %43 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %solo_dev, align 8
  %dev55.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %desc_dma.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 33
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev55.i, i32 noundef 512, ptr noundef %desc_dma.i, i32 noundef 3264, i32 noundef 0) #11
  %desc_items.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 32
  %45 = ptrtoint ptr %desc_items.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i, ptr %desc_items.i, align 16
  %cmp59.i = icmp eq ptr %call.i.i, null
  br i1 %cmp59.i, label %if.end48.i.hdl_free.i_crit_edge, label %if.end62.i

if.end48.i.hdl_free.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hdl_free.i

if.end62.i:                                       ; preds = %if.end48.i
  %call63.i = tail call ptr @video_device_alloc() #11
  %vfd.i = getelementptr inbounds %struct.solo_enc_dev, ptr %call1.i.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %vfd.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call63.i, ptr %vfd.i, align 64
  %tobool65.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool65.not.i, label %if.end62.i.pci_free.i_crit_edge, label %if.end67.i

if.end62.i.pci_free.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_free.i

if.end67.i:                                       ; preds = %if.end62.i
  %47 = call ptr @memcpy(ptr %call63.i, ptr @solo_enc_template, i32 1352)
  %48 = ptrtoint ptr %vfd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vfd.i, align 64
  %v4l2_dev70.i = getelementptr inbounds %struct.video_device, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %v4l2_dev70.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %v4l2_dev.i, ptr %v4l2_dev70.i, align 4
  %51 = load ptr, ptr %vfd.i, align 64
  %ctrl_handler.i = getelementptr inbounds %struct.video_device, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %hdl2.i, ptr %ctrl_handler.i, align 4
  %53 = load ptr, ptr %vfd.i, align 64
  %queue.i = getelementptr inbounds %struct.video_device, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %vidq.i, ptr %queue.i, align 8
  %55 = load ptr, ptr %vfd.i, align 64
  %lock76.i = getelementptr inbounds %struct.video_device, ptr %55, i32 0, i32 26
  %56 = ptrtoint ptr %lock76.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %lock.i, ptr %lock76.i, align 8
  %57 = load ptr, ptr %vfd.i, align 64
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %57, i32 0, i32 5, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call1.i.i.i.i, ptr %driver_data.i.i.i, align 4
  %59 = load ptr, ptr %vfd.i, align 64
  %fops.i.i = getelementptr inbounds %struct.video_device, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %fops.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fops.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %call.i188.i = tail call i32 @__video_register_device(ptr noundef %59, i32 noundef 0, i32 noundef %nr, i32 noundef 1, ptr noundef %63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188.i)
  %cmp80.i = icmp slt i32 %call.i188.i, 0
  %64 = ptrtoint ptr %vfd.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vfd.i, align 64
  br i1 %cmp80.i, label %vdev_release.i, label %if.end83.i

if.end83.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  %name.i = getelementptr inbounds %struct.video_device, ptr %65, i32 0, i32 12
  %66 = ptrtoint ptr %vfd86.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vfd86.i, align 8
  %num.i = getelementptr inbounds %struct.video_device, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %num.i, align 4
  %conv87.i = zext i16 %69 to i32
  %num89.i = getelementptr inbounds %struct.video_device, ptr %65, i32 0, i32 16
  %70 = ptrtoint ptr %num89.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num89.i, align 4
  %conv90.i = zext i16 %71 to i32
  %call91.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv87.i, i32 noundef %conv90.i) #11
  br label %solo_enc_alloc.exit

vdev_release.i:                                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @video_device_release(ptr noundef %65) #11
  br label %pci_free.i

pci_free.i:                                       ; preds = %vdev_release.i, %if.end62.i.pci_free.i_crit_edge
  %ret.0.i = phi i32 [ %call.i188.i, %vdev_release.i ], [ -12, %if.end62.i.pci_free.i_crit_edge ]
  %72 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call1.i.i.i.i, align 4096
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %dev95.i = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %desc_nelts.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %desc_nelts.i, align 4
  %mul97.i = shl i32 %77, 4
  %78 = ptrtoint ptr %desc_items.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %desc_items.i, align 16
  %80 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %desc_dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev95.i, i32 noundef %mul97.i, ptr noundef %79, i32 noundef %81, i32 noundef 0) #11
  br label %hdl_free.i

hdl_free.i:                                       ; preds = %pci_free.i, %if.end48.i.hdl_free.i_crit_edge, %if.end21.i.hdl_free.i_crit_edge, %if.end11.i.hdl_free.i_crit_edge
  %ret.1.i = phi i32 [ %call45.i, %if.end21.i.hdl_free.i_crit_edge ], [ -12, %if.end48.i.hdl_free.i_crit_edge ], [ %ret.0.i, %pci_free.i ], [ %11, %if.end11.i.hdl_free.i_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl2.i) #11
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #11
  %82 = inttoptr i32 %ret.1.i to ptr
  br label %solo_enc_alloc.exit

solo_enc_alloc.exit:                              ; preds = %hdl_free.i, %if.end83.i
  %retval.0.i = phi ptr [ %82, %hdl_free.i ], [ %call1.i.i.i.i, %if.end83.i ]
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %i.0109
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  %cmp.i90 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %solo_enc_alloc.exit.for.end_crit_edge, label %for.inc

solo_enc_alloc.exit.for.end_crit_edge:            ; preds = %solo_enc_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %solo_enc_alloc.exit
  %inc = add nuw nsw i32 %i.0109, 1
  %84 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_chans, align 8
  %cmp3 = icmp slt i32 %inc, %85
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %solo_enc_alloc.exit.for.end_crit_edge, %solo_enc_alloc.exit.thread
  %i.0106 = phi i32 [ %i.0109, %solo_enc_alloc.exit.thread ], [ %inc, %for.inc.for.end_crit_edge ], [ %i.0109, %solo_enc_alloc.exit.for.end_crit_edge ]
  %86 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0106, i32 %87)
  %cmp11.not = icmp eq i32 %i.0106, %87
  br i1 %cmp11.not, label %for.end.if.end25_crit_edge, label %if.then13

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.end.thread:                                   ; preds = %for.cond.preheader
  %88 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp11.not115 = icmp eq i32 %89, 0
  br i1 %cmp11.not115, label %for.end.thread.if.end25_crit_edge, label %if.then13.thread

for.end.thread.if.end25_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then13.thread:                                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx15119 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 0
  %90 = ptrtoint ptr %arrayidx15119 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx15119, align 4
  br label %while.end

if.then13:                                        ; preds = %for.end
  %arrayidx15 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %i.0106
  %92 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0106)
  %tobool.not111 = icmp eq i32 %i.0106, 0
  br i1 %tobool.not111, label %if.then13.while.end_crit_edge, label %if.then13.while.body_crit_edge

if.then13.while.body_crit_edge:                   ; preds = %if.then13
  br label %while.body

if.then13.while.end_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %solo_enc_free.exit.while.body_crit_edge, %if.then13.while.body_crit_edge
  %i.1112 = phi i32 [ %dec, %solo_enc_free.exit.while.body_crit_edge ], [ %i.0106, %if.then13.while.body_crit_edge ]
  %dec = add nsw i32 %i.1112, -1
  %arrayidx18 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %dec
  %94 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx18, align 4
  %cmp.i91 = icmp eq ptr %95, null
  br i1 %cmp.i91, label %while.body.solo_enc_free.exit_crit_edge, label %if.end.i97

while.body.solo_enc_free.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_free.exit

if.end.i97:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %dev.i92 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %desc_nelts.i93 = getelementptr inbounds %struct.solo_enc_dev, ptr %95, i32 0, i32 31
  %100 = ptrtoint ptr %desc_nelts.i93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %desc_nelts.i93, align 4
  %mul.i = shl i32 %101, 4
  %desc_items.i94 = getelementptr inbounds %struct.solo_enc_dev, ptr %95, i32 0, i32 32
  %102 = ptrtoint ptr %desc_items.i94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %desc_items.i94, align 4
  %desc_dma.i95 = getelementptr inbounds %struct.solo_enc_dev, ptr %95, i32 0, i32 33
  %104 = ptrtoint ptr %desc_dma.i95 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %desc_dma.i95, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i92, i32 noundef %mul.i, ptr noundef %103, i32 noundef %105, i32 noundef 0) #11
  %vfd.i96 = getelementptr inbounds %struct.solo_enc_dev, ptr %95, i32 0, i32 3
  %106 = ptrtoint ptr %vfd.i96 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vfd.i96, align 4
  tail call void @video_unregister_device(ptr noundef %107) #11
  %hdl.i = getelementptr inbounds %struct.solo_enc_dev, ptr %95, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #11
  tail call void @kfree(ptr noundef nonnull %95) #11
  br label %solo_enc_free.exit

solo_enc_free.exit:                               ; preds = %if.end.i97, %while.body.solo_enc_free.exit_crit_edge
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %solo_enc_free.exit.while.end_crit_edge, label %solo_enc_free.exit.while.body_crit_edge

solo_enc_free.exit.while.body_crit_edge:          ; preds = %solo_enc_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

solo_enc_free.exit.while.end_crit_edge:           ; preds = %solo_enc_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %solo_enc_free.exit.while.end_crit_edge, %if.then13.while.end_crit_edge, %if.then13.thread
  %.in = phi ptr [ %91, %if.then13.thread ], [ %93, %if.then13.while.end_crit_edge ], [ %93, %solo_enc_free.exit.while.end_crit_edge ]
  %108 = ptrtoint ptr %.in to i32
  %109 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %solo_dev, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %110, i32 0, i32 44
  %111 = ptrtoint ptr %vh_size to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vh_size, align 4
  %113 = ptrtoint ptr %vh_buf to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %vh_buf, align 4
  %115 = ptrtoint ptr %vh_dma to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vh_dma, align 8
  tail call void @dma_free_attrs(ptr noundef %dev20, i32 noundef %112, ptr noundef %114, i32 noundef %116, i32 noundef 0) #11
  %117 = ptrtoint ptr %vh_buf to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %vh_buf, align 4
  br label %cleanup

if.end25:                                         ; preds = %for.end.thread.if.end25_crit_edge, %for.end.if.end25_crit_edge
  %i.0106117 = phi i32 [ 0, %for.end.thread.if.end25_crit_edge ], [ %i.0106, %for.end.if.end25_crit_edge ]
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %118 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp26 = icmp eq i32 %119, 0
  %fps = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 44
  %120 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %fps, align 8
  %conv29 = zext i8 %121 to i16
  %mul30 = shl nuw nsw i16 %conv29, 4
  %mul35 = mul nuw nsw i16 %conv29, 20
  %mul35.sink = select i1 %cmp26, i16 %mul30, i16 %mul35
  %122 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 35
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %mul35.sink, ptr %122, align 4
  %124 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %solo_dev, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %v4l2_enc44 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 34
  %126 = ptrtoint ptr %v4l2_enc44 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %v4l2_enc44, align 4
  %vfd = getelementptr inbounds %struct.solo_enc_dev, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vfd, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %129, i32 0, i32 16
  %130 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %num, align 4
  %conv46 = zext i16 %131 to i32
  %sub = add i32 %i.0106117, -1
  %arrayidx49 = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %sub
  %132 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx49, align 4
  %vfd50 = getelementptr inbounds %struct.solo_enc_dev, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %vfd50 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %vfd50, align 4
  %num51 = getelementptr inbounds %struct.video_device, ptr %135, i32 0, i32 16
  %136 = ptrtoint ptr %num51 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %num51, align 4
  %conv52 = zext i16 %137 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.1, i32 noundef %conv46, i32 noundef %conv52) #15
  %call.i98 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @solo_ring_thread, ptr noundef %solo_dev, i32 noundef -1, ptr noundef nonnull @.str.18) #11
  %cmp.i.i = icmp ugt ptr %call.i98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end9.i

if.then5.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %ring_thread18.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 55
  %138 = ptrtoint ptr %call.i98 to i32
  %139 = ptrtoint ptr %ring_thread18.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %ring_thread18.i, align 4
  br label %cleanup

if.end9.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 @wake_up_process(ptr noundef %call.i98) #11
  %ring_thread.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 55
  %140 = ptrtoint ptr %ring_thread.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i98, ptr %ring_thread.i, align 4
  %irq_mask.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %141 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %irq_mask.i.i, align 8
  %or.i.i = or i32 %142, 1
  store i32 %or.i.i, ptr %irq_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #11
  %143 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %144 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %145 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %146, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %144) #11, !srcloc !96
  %147 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %148, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then5.i, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %108, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ %138, %if.then5.i ], [ 0, %if.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_enc_v4l2_exit(ptr nocapture noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_thread.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 55
  %0 = ptrtoint ptr %ring_thread.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring_thread.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.solo_ring_stop.exit_crit_edge, label %if.then.i

entry.solo_ring_stop.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_ring_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @kthread_stop(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %ring_thread.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ring_thread.i, align 4
  br label %solo_ring_stop.exit

solo_ring_stop.exit:                              ; preds = %if.then.i, %entry.solo_ring_stop.exit_crit_edge
  %irq_mask.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %3 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_mask.i.i, align 8
  %and.i.i = and i32 %4, -2
  store i32 %and.i.i, ptr %irq_mask.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #11
  %5 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #11
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %7 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %6) #11, !srcloc !96
  %9 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %solo_dev, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #11
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %11 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp sgt i32 %12, 0
  br i1 %cmp11, label %solo_ring_stop.exit.for.body_crit_edge, label %solo_ring_stop.exit.for.end_crit_edge

solo_ring_stop.exit.for.end_crit_edge:            ; preds = %solo_ring_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

solo_ring_stop.exit.for.body_crit_edge:           ; preds = %solo_ring_stop.exit
  br label %for.body

for.body:                                         ; preds = %solo_enc_free.exit.for.body_crit_edge, %solo_ring_stop.exit.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %solo_enc_free.exit.for.body_crit_edge ], [ 0, %solo_ring_stop.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.solo_dev, ptr %solo_dev, i32 0, i32 34, i32 %i.012
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp eq ptr %14, null
  br i1 %cmp.i, label %for.body.solo_enc_free.exit_crit_edge, label %if.end.i

for.body.solo_enc_free.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_free.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %desc_nelts.i = getelementptr inbounds %struct.solo_enc_dev, ptr %14, i32 0, i32 31
  %19 = ptrtoint ptr %desc_nelts.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_nelts.i, align 4
  %mul.i = shl i32 %20, 4
  %desc_items.i = getelementptr inbounds %struct.solo_enc_dev, ptr %14, i32 0, i32 32
  %21 = ptrtoint ptr %desc_items.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_items.i, align 4
  %desc_dma.i = getelementptr inbounds %struct.solo_enc_dev, ptr %14, i32 0, i32 33
  %23 = ptrtoint ptr %desc_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef %22, i32 noundef %24, i32 noundef 0) #11
  %vfd.i = getelementptr inbounds %struct.solo_enc_dev, ptr %14, i32 0, i32 3
  %25 = ptrtoint ptr %vfd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vfd.i, align 4
  call void @video_unregister_device(ptr noundef %26) #11
  %hdl.i = getelementptr inbounds %struct.solo_enc_dev, ptr %14, i32 0, i32 1
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #11
  call void @kfree(ptr noundef nonnull %14) #11
  br label %solo_enc_free.exit

solo_enc_free.exit:                               ; preds = %if.end.i, %for.body.solo_enc_free.exit_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %27 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_chans, align 8
  %cmp = icmp slt i32 %inc, %28
  br i1 %cmp, label %solo_enc_free.exit.for.body_crit_edge, label %solo_enc_free.exit.for.end_crit_edge

solo_enc_free.exit.for.end_crit_edge:             ; preds = %solo_enc_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

solo_enc_free.exit.for.body_crit_edge:            ; preds = %solo_enc_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %solo_enc_free.exit.for.end_crit_edge, %solo_ring_stop.exit.for.end_crit_edge
  %vh_buf = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 57
  %29 = ptrtoint ptr %vh_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vh_buf, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %vh_size = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 59
  %33 = ptrtoint ptr %vh_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vh_size, align 4
  %vh_dma = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 58
  %35 = ptrtoint ptr %vh_dma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vh_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %34, ptr noundef nonnull %30, i32 noundef %36, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tw28_has_sharpness(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %val.i24.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  %val.i138 = alloca i16, align 2
  %val.i134 = alloca i16, align 2
  %val.i130 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963776, label %entry.sw.bb_crit_edge
    i32 9963777, label %entry.sw.bb_crit_edge142
    i32 9963778, label %entry.sw.bb_crit_edge143
    i32 9963779, label %entry.sw.bb_crit_edge144
    i32 9963803, label %entry.sw.bb_crit_edge145
    i32 10029515, label %sw.bb3
    i32 10029665, label %sw.bb15
    i32 10684674, label %sw.bb30
    i32 10684673, label %sw.bb37
    i32 10684675, label %sw.bb63
    i32 10025219, label %sw.bb74
  ]

entry.sw.bb_crit_edge145:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge144:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge143:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge142:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge142, %entry.sw.bb_crit_edge143, %entry.sw.bb_crit_edge144, %entry.sw.bb_crit_edge145
  %ch = getelementptr i8, ptr %1, i32 328
  %7 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ch, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %call = tail call i32 @tw28_set_ctrl_val(ptr noundef %3, i32 noundef %5, i8 noundef zeroext %8, i32 noundef %10) #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val4, align 4
  %conv = trunc i32 %12 to i8
  %gop = getelementptr i8, ptr %1, i32 330
  %13 = ptrtoint ptr %gop to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %gop, align 2
  %ch5 = getelementptr i8, ptr %1, i32 328
  %14 = ptrtoint ptr %ch5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ch5, align 4
  %conv6 = zext i8 %15 to i32
  %mul = shl nuw nsw i32 %conv6, 2
  %add = or i32 %mul, 2048
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #11
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %val.i, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %conv8 = shl i32 %12, 24
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv8) #11, !srcloc !96
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  %21 = ptrtoint ptr %ch5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ch5, align 4
  %conv10 = zext i8 %22 to i32
  %mul11 = shl nuw nsw i32 %conv10, 2
  %add12 = add nuw nsw i32 %mul11, 2112
  %23 = ptrtoint ptr %gop to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gop, align 2
  %conv14 = zext i8 %24 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i130) #11
  %25 = ptrtoint ptr %val.i130 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %val.i130, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %26 = shl nuw i32 %conv14, 24
  %27 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %28, i32 %add12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %26) #11, !srcloc !96
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %call.i133 = call i32 @pci_read_config_word(ptr noundef %30, i32 noundef 6, ptr noundef nonnull %val.i130) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i130) #11
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %31 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val16, align 4
  %conv17 = trunc i32 %32 to i8
  %qp = getelementptr i8, ptr %1, i32 331
  %33 = ptrtoint ptr %qp to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv17, ptr %qp, align 1
  %ch18 = getelementptr i8, ptr %1, i32 328
  %34 = ptrtoint ptr %ch18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ch18, align 4
  %conv19 = zext i8 %35 to i32
  %mul20 = shl nuw nsw i32 %conv19, 2
  %add21 = add nuw nsw i32 %mul20, 1920
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i134) #11
  %36 = ptrtoint ptr %val.i134 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %val.i134, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %conv23 = shl i32 %32, 24
  %reg_base.i135 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %reg_base.i135 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base.i135, align 4
  %add.ptr.i136 = getelementptr i8, ptr %38, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %conv23) #11, !srcloc !96
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %call.i137 = call i32 @pci_read_config_word(ptr noundef %40, i32 noundef 6, ptr noundef nonnull %val.i134) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i134) #11
  %41 = ptrtoint ptr %ch18 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ch18, align 4
  %conv25 = zext i8 %42 to i32
  %mul26 = shl nuw nsw i32 %conv25, 2
  %add27 = add nuw nsw i32 %mul26, 1984
  %43 = ptrtoint ptr %qp to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %qp, align 1
  %conv29 = zext i8 %44 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i138) #11
  %45 = ptrtoint ptr %val.i138 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %val.i138, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %46 = shl nuw i32 %conv29, 24
  %47 = ptrtoint ptr %reg_base.i135 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base.i135, align 4
  %add.ptr.i140 = getelementptr i8, ptr %48, i32 %add27
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %46) #11, !srcloc !96
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 8
  %call.i141 = call i32 @pci_read_config_word(ptr noundef %50, i32 noundef 6, ptr noundef nonnull %val.i138) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i138) #11
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %val31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val31, align 4
  %.tr = trunc i32 %52 to i16
  %conv32 = shl i16 %.tr, 8
  %motion_thresh = getelementptr i8, ptr %1, i32 336
  %53 = ptrtoint ptr %motion_thresh to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv32, ptr %motion_thresh, align 4
  %motion_global = getelementptr i8, ptr %1, i32 338
  %54 = ptrtoint ptr %motion_global to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %motion_global, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not = icmp eq i8 %55, 0
  br i1 %tobool.not, label %sw.bb30.cleanup_crit_edge, label %lor.lhs.false

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb30
  %motion_enabled = getelementptr i8, ptr %1, i32 339
  %56 = ptrtoint ptr %motion_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %motion_enabled, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool33.not = icmp eq i8 %57, 0
  br i1 %tobool33.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %ch34 = getelementptr i8, ptr %1, i32 328
  %58 = ptrtoint ptr %ch34 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ch34, align 4
  %call36 = tail call i32 @solo_set_motion_threshold(ptr noundef %3, i8 noundef zeroext %59, i16 noundef zeroext %conv32) #11
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  %val38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %60 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp = icmp eq i32 %61, 1
  %motion_global40 = getelementptr i8, ptr %1, i32 338
  %frombool = zext i1 %cmp to i8
  %62 = ptrtoint ptr %motion_global40 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %frombool, ptr %motion_global40, align 2
  %63 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp42 = icmp sgt i32 %64, 0
  %motion_enabled44 = getelementptr i8, ptr %1, i32 339
  %frombool45 = zext i1 %cmp42 to i8
  %65 = ptrtoint ptr %motion_enabled44 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool45, ptr %motion_enabled44, align 1
  %66 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool47.not = icmp eq i32 %67, 0
  br i1 %tobool47.not, label %sw.bb37.if.end61_crit_edge, label %if.then48

sw.bb37.if.end61_crit_edge:                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then48:                                        ; preds = %sw.bb37
  %ch52 = getelementptr i8, ptr %1, i32 328
  %68 = ptrtoint ptr %ch52 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ch52, align 4
  br i1 %cmp, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %motion_thresh53 = getelementptr i8, ptr %1, i32 336
  %70 = ptrtoint ptr %motion_thresh53 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %motion_thresh53, align 4
  %call54 = tail call i32 @solo_set_motion_threshold(ptr noundef %3, i8 noundef zeroext %69, i16 noundef zeroext %71) #11
  br label %if.end57

if.else:                                          ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %md_thresholds = getelementptr i8, ptr %1, i32 184
  %72 = ptrtoint ptr %md_thresholds to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %md_thresholds, align 4
  %p_cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %73, i32 0, i32 26
  %74 = ptrtoint ptr %p_cur to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %p_cur, align 4
  %call56 = tail call i32 @solo_set_motion_block(ptr noundef %3, i8 noundef zeroext %69, ptr noundef %75) #11
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then51
  %err.0 = phi i32 [ %call54, %if.then51 ], [ %call56, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool58.not = icmp eq i32 %err.0, 0
  br i1 %tobool58.not, label %if.end61thread-pre-split, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end61thread-pre-split:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %val38 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %val38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 0
  br label %if.end61

if.end61:                                         ; preds = %if.end61thread-pre-split, %sw.bb37.if.end61_crit_edge
  %77 = phi i1 [ %phi.cmp, %if.end61thread-pre-split ], [ true, %sw.bb37.if.end61_crit_edge ]
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr, align 4
  %ch.i = getelementptr i8, ptr %1, i32 328
  %80 = ptrtoint ptr %ch.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ch.i, align 4
  %conv.i = zext i8 %81 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %motion_lock.i = getelementptr i8, ptr %1, i32 284
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %motion_lock.i) #11
  br i1 %77, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %motion_mask.i = getelementptr inbounds %struct.solo_dev, ptr %79, i32 0, i32 9
  %82 = ptrtoint ptr %motion_mask.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %motion_mask.i, align 4
  %or.i = or i32 %83, %shl.i
  store i32 %or.i, ptr %motion_mask.i, align 4
  br label %solo_motion_toggle.exit

if.else.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i = xor i32 %shl.i, -1
  %motion_mask7.i = getelementptr inbounds %struct.solo_dev, ptr %79, i32 0, i32 9
  %84 = ptrtoint ptr %motion_mask7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %motion_mask7.i, align 4
  %and.i = and i32 %85, %neg.i
  store i32 %and.i, ptr %motion_mask7.i, align 4
  br label %solo_motion_toggle.exit

solo_motion_toggle.exit:                          ; preds = %if.else.i, %if.then.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #11
  %86 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %val.i.i, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %87 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #11
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %79, i32 0, i32 5
  %88 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %87) #11, !srcloc !96
  %90 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %79, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %91, i32 noundef 6, ptr noundef nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #11
  %motion_mask8.i = getelementptr inbounds %struct.solo_dev, ptr %79, i32 0, i32 9
  %92 = ptrtoint ptr %motion_mask8.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %motion_mask8.i, align 4
  %shl9.i = shl i32 %93, 16
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %79, i32 0, i32 1
  %94 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp10.i = icmp eq i32 %95, 0
  %add.i = select i1 %cmp10.i, i32 104, i32 136
  %or12.i = or i32 %add.i, %shl9.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i24.i) #11
  %96 = ptrtoint ptr %val.i24.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -1, ptr %val.i24.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %97 = call i32 @llvm.bswap.i32(i32 %or12.i) #11
  %98 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %99, i32 608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %97) #11, !srcloc !96
  %100 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %79, align 8
  %call.i27.i = call i32 @pci_read_config_word(ptr noundef %101, i32 noundef 6, ptr noundef nonnull %val.i24.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i24.i) #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %motion_lock.i, i32 noundef %call4.i) #11
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  %motion_enabled64 = getelementptr i8, ptr %1, i32 339
  %102 = ptrtoint ptr %motion_enabled64 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %motion_enabled64, align 1, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool65.not = icmp eq i8 %103, 0
  br i1 %tobool65.not, label %sw.bb63.cleanup_crit_edge, label %land.lhs.true

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb63
  %motion_global67 = getelementptr i8, ptr %1, i32 338
  %104 = ptrtoint ptr %motion_global67 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %motion_global67, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool68.not = icmp eq i8 %105, 0
  br i1 %tobool68.not, label %if.then69, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %ch70 = getelementptr i8, ptr %1, i32 328
  %106 = ptrtoint ptr %ch70 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %ch70, align 4
  %md_thresholds71 = getelementptr i8, ptr %1, i32 184
  %108 = ptrtoint ptr %md_thresholds71 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %md_thresholds71, align 4
  %p_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %109, i32 0, i32 25
  %110 = ptrtoint ptr %p_new to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %p_new, align 8
  %call72 = tail call i32 @solo_set_motion_block(ptr noundef %3, i8 noundef zeroext %107, ptr noundef %111) #11
  br label %cleanup

sw.bb74:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %osd_text = getelementptr i8, ptr %1, i32 344
  %p_new75 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 25
  %112 = ptrtoint ptr %p_new75 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %p_new75, align 8
  %call76 = tail call i32 @strscpy(ptr noundef %osd_text, ptr noundef %113, i32 noundef 45) #11
  %call77 = tail call i32 @solo_osd_print(ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb74, %if.then69, %land.lhs.true.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %solo_motion_toggle.exit, %if.end57.cleanup_crit_edge, %if.end, %lor.lhs.false.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb15, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %sw.bb74 ], [ %call72, %if.then69 ], [ 0, %solo_motion_toggle.exit ], [ %call36, %if.end ], [ 0, %sw.bb15 ], [ 0, %sw.bb3 ], [ %call, %sw.bb ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %sw.bb30.cleanup_crit_edge ], [ %err.0, %if.end57.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb63.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw28_set_ctrl_val(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_set_motion_threshold(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_set_motion_block(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_osd_print(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_enc_queue_setup(ptr nocapture noundef readnone %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 409600, ptr %sizes, align 4
  %1 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_planes, align 4
  %2 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %num_buffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_enc_buf_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #11
  %fmt = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %sw.default [
    i32 877088845, label %entry.sw.bb_crit_edge
    i32 875967048, label %entry.sw.bb_crit_edge16
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nents, align 4
  %vop = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 21
  %vop_len = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 22
  %13 = ptrtoint ptr %vop_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vop_len, align 4
  %call2 = tail call i32 @sg_copy_from_buffer(ptr noundef %10, i32 noundef %12, ptr noundef %vop, i32 noundef %14) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %nents4 = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %nents4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nents4, align 4
  %jpeg_header = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 23
  %jpeg_len = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 24
  %19 = ptrtoint ptr %jpeg_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jpeg_len, align 4
  %call6 = tail call i32 @sg_copy_from_buffer(ptr noundef %16, i32 noundef %18, ptr noundef %jpeg_header, i32 noundef %20) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  %val.i131.i = alloca i16, align 2
  %val.i127.i = alloca i16, align 2
  %val.i123.i = alloca i16, align 2
  %val.i119.i = alloca i16, align 2
  %val.i115.i = alloca i16, align 2
  %val.i111.i = alloca i16, align 2
  %val.i107.i = alloca i16, align 2
  %val.i103.i = alloca i16, align 2
  %val.i99.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %ch1.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ch1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ch1.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @solo_update_mode(ptr noundef %1) #11
  %bw_weight.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %bw_weight.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bw_weight.i, align 2
  %enc_bw_remain.i = getelementptr inbounds %struct.solo_dev, ptr %5, i32 0, i32 35
  %8 = ptrtoint ptr %enc_bw_remain.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %enc_bw_remain.i, align 4
  %10 = zext i8 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %10)
  %cmp.i = icmp ult i16 %9, %10
  br i1 %cmp.i, label %entry.solo_enc_on.exit_crit_edge, label %if.end.i

entry.solo_enc_on.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_on.exit

if.end.i:                                         ; preds = %entry
  %sequence.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %sequence.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sequence.i, align 4
  %12 = ptrtoint ptr %enc_bw_remain.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %enc_bw_remain.i, align 4
  %sub.i = sub i16 %13, %10
  store i16 %sub.i, ptr %enc_bw_remain.i, align 4
  %type.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp10.i = icmp eq i32 %15, 1
  %conv13.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv13.i, 2
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add nuw nsw i32 %mul.i, 1152
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #11
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %val.i.i, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !96
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #11
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end.i.if.end14.i_crit_edge
  %add17.i = add nuw nsw i32 %mul.i, 1088
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i99.i) #11
  %21 = ptrtoint ptr %val.i99.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %val.i99.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %reg_base.i100.i = getelementptr inbounds %struct.solo_dev, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %23, i32 %add17.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 0) #11, !srcloc !96
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 8
  %call.i102.i = call i32 @pci_read_config_word(ptr noundef %25, i32 noundef 6, ptr noundef nonnull %val.i99.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i99.i) #11
  %add20.i = add nuw nsw i32 %mul.i, 1792
  %interlaced.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 10
  %26 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.not.i = icmp eq i8 %27, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i103.i) #11
  %28 = ptrtoint ptr %val.i103.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %val.i103.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %29 = select i1 %tobool.not.not.i, i32 0, i32 16777216
  %30 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %31, i32 %add20.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %29) #11, !srcloc !96
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 8
  %call.i106.i = call i32 @pci_read_config_word(ptr noundef %33, i32 noundef 6, ptr noundef nonnull %val.i103.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i103.i) #11
  %34 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not.i = icmp ne i8 %35, 0
  %interval29.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %interval29.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %interval29.i, align 1
  %sub27.i = sext i1 %tobool23.not.i to i8
  %interval.0.i = add i8 %37, %sub27.i
  %add33.i = or i32 %mul.i, 2048
  %gop.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %gop.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %gop.i, align 2
  %conv34.i = zext i8 %39 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i107.i) #11
  %40 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %val.i107.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %41 = shl nuw i32 %conv34.i, 24
  %42 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %43, i32 %add33.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %41) #11, !srcloc !96
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 8
  %call.i110.i = call i32 @pci_read_config_word(ptr noundef %45, i32 noundef 6, ptr noundef nonnull %val.i107.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i107.i) #11
  %add37.i = add nuw nsw i32 %mul.i, 1920
  %qp.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %qp.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %qp.i, align 1
  %conv38.i = zext i8 %47 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i111.i) #11
  %48 = ptrtoint ptr %val.i111.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 -1, ptr %val.i111.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %49 = shl nuw i32 %conv38.i, 24
  %50 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %51, i32 %add37.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %49) #11, !srcloc !96
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %5, align 8
  %call.i114.i = call i32 @pci_read_config_word(ptr noundef %53, i32 noundef 6, ptr noundef nonnull %val.i111.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i111.i) #11
  %add41.i = add nuw nsw i32 %mul.i, 1216
  %conv42.i = zext i8 %interval.0.i to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i115.i) #11
  %54 = ptrtoint ptr %val.i115.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -1, ptr %val.i115.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %55 = shl nuw i32 %conv42.i, 24
  %56 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %57, i32 %add41.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %55) #11, !srcloc !96
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 8
  %call.i118.i = call i32 @pci_read_config_word(ptr noundef %59, i32 noundef 6, ptr noundef nonnull %val.i115.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i115.i) #11
  %add45.i = add nuw nsw i32 %mul.i, 2112
  %60 = ptrtoint ptr %gop.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %gop.i, align 2
  %conv47.i = zext i8 %61 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i119.i) #11
  %62 = ptrtoint ptr %val.i119.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %val.i119.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %63 = shl nuw i32 %conv47.i, 24
  %64 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %65, i32 %add45.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %63) #11, !srcloc !96
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 8
  %call.i122.i = call i32 @pci_read_config_word(ptr noundef %67, i32 noundef 6, ptr noundef nonnull %val.i119.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i119.i) #11
  %add50.i = add nuw nsw i32 %mul.i, 1984
  %68 = ptrtoint ptr %qp.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %qp.i, align 1
  %conv52.i = zext i8 %69 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i123.i) #11
  %70 = ptrtoint ptr %val.i123.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %val.i123.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %71 = shl nuw i32 %conv52.i, 24
  %72 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %73, i32 %add50.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %71) #11, !srcloc !96
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %5, align 8
  %call.i126.i = call i32 @pci_read_config_word(ptr noundef %75, i32 noundef 6, ptr noundef nonnull %val.i123.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i123.i) #11
  %add55.i = add nuw nsw i32 %mul.i, 1280
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i127.i) #11
  %76 = ptrtoint ptr %val.i127.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %val.i127.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %77 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %78, i32 %add55.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 %55) #11, !srcloc !96
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 8
  %call.i130.i = call i32 @pci_read_config_word(ptr noundef %80, i32 noundef 6, ptr noundef nonnull %val.i127.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i127.i) #11
  %mode.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 7
  %81 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mode.i, align 1
  %conv60.i = zext i8 %82 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i131.i) #11
  %83 = ptrtoint ptr %val.i131.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %val.i131.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %84 = shl nuw i32 %conv60.i, 24
  %85 = ptrtoint ptr %reg_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_base.i100.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %86, i32 %add17.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 %84) #11, !srcloc !96
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %5, align 8
  %call.i134.i = call i32 @pci_read_config_word(ptr noundef %88, i32 noundef 6, ptr noundef nonnull %val.i131.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i131.i) #11
  br label %solo_enc_on.exit

solo_enc_on.exit:                                 ; preds = %if.end14.i, %entry.solo_enc_on.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ -16, %entry.solo_enc_on.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_enc_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  %val.i15.i = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %av_lock = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 34
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %av_lock) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bw_weight.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %bw_weight.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bw_weight.i, align 2
  %conv.i = zext i8 %5 to i16
  %enc_bw_remain.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 35
  %6 = ptrtoint ptr %enc_bw_remain.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %enc_bw_remain.i, align 4
  %add.i = add i16 %7, %conv.i
  store i16 %add.i, ptr %enc_bw_remain.i, align 4
  %ch.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ch.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ch.i, align 4
  %conv4.i = zext i8 %9 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 2
  %add5.i = add nuw nsw i32 %mul.i, 1088
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #11
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i.i, align 2, !annotation !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void @arm_heavy_mb() #11
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !96
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #11
  %15 = ptrtoint ptr %ch.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ch.i, align 4
  %conv7.i = zext i8 %16 to i32
  %mul8.i = shl nuw nsw i32 %conv7.i, 2
  %add9.i = add nuw nsw i32 %mul8.i, 1152
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i15.i) #11
  %17 = ptrtoint ptr %val.i15.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val.i15.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %18 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %19, i32 %add9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 0) #11, !srcloc !96
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  %call.i18.i = call i32 @pci_read_config_word(ptr noundef %21, i32 noundef 6, ptr noundef nonnull %val.i15.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i15.i) #11
  %vidq_active = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 29
  %22 = ptrtoint ptr %vidq_active to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %vidq_active, align 4
  %cmp.i.not17 = icmp eq ptr %23, %vidq_active
  br i1 %cmp.i.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %24 = phi ptr [ %34, %list_del.exit.while.body_crit_edge ], [ %23, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %24, i32 -736
  %call.i.i16 = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #11
  br i1 %call.i.i16, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #11
  %33 = ptrtoint ptr %vidq_active to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %vidq_active, align 4
  %cmp.i.not = icmp eq ptr %34, %vidq_active
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %av_lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_enc_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %av_lock = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 34
  tail call void @_raw_spin_lock(ptr noundef %av_lock) #11
  %list = getelementptr inbounds %struct.solo_vb2_buf, ptr %vb, i32 0, i32 1
  %vidq_active = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 29
  %prev.i = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 29, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %vidq_active) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call void @_raw_spin_unlock(ptr noundef %av_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.13, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %ch = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ch, align 4
  %conv = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %card, i32 noundef 32, ptr noundef nonnull @.str.15, i32 noundef %conv)
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_enum_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %8, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb2
  ]

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %sw.bb.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 875967048, %sw.bb2 ], [ 877088845, %sw.bb.cleanup.sink.split_crit_edge ], [ 1196444237, %entry.cleanup.sink.split_crit_edge ]
  %pixelformat5 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %pixelformat5, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_get_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %width = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %width, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %height, align 2
  %conv2 = zext i16 %6 to i32
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %height3, align 4
  %fmt4 = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %fmt4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt4, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  %interlaced = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool.not, i32 1, i32 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %field, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 409600, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_set_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %num_buffers.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 28, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat.i, align 4
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 875967048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp1.i.i = icmp eq i32 %13, 1
  %or.cond.i.i = and i1 %cmp.i.i, %cmp1.i.i
  br i1 %or.cond.i.i, label %if.end.if.end.i_crit_edge, label %lor.lhs.false.i.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %11)
  %cmp2.i.i = icmp eq i32 %11, 877088845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.i.i = icmp eq i32 %13, 0
  %or.cond9.i.i = and i1 %cmp2.i.i, %cmp4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %11)
  %cmp5.i.i = icmp eq i32 %11, 1196444237
  %or.cond.i = or i1 %cmp5.i.i, %or.cond9.i.i
  br i1 %or.cond.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %14 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt, align 4
  %video_hsize.i = getelementptr inbounds %struct.solo_dev, ptr %9, i32 0, i32 38
  %16 = ptrtoint ptr %video_hsize.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %video_hsize.i, align 4
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.i23 = icmp ult i32 %15, %conv.i
  br i1 %cmp.i23, label %if.end.i.if.then7.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height.i, align 4
  %video_vsize.i = getelementptr inbounds %struct.solo_dev, ptr %9, i32 0, i32 39
  %20 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %video_vsize.i, align 2
  %conv4.i = zext i16 %21 to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shl.i)
  %cmp5.i = icmp ult i32 %19, %shl.i
  br i1 %cmp5.i, label %lor.lhs.false.i.if.then7.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %22 = lshr i16 %17, 1
  %23 = zext i16 %22 to i32
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fmt, align 4
  %video_vsize11.i = getelementptr inbounds %struct.solo_dev, ptr %9, i32 0, i32 39
  %25 = ptrtoint ptr %video_vsize11.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %video_vsize11.i, align 2
  %conv12.i = zext i16 %26 to i32
  %height13.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height13.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv12.i, ptr %height13.i, align 4
  br label %if.end21.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %fmt, align 4
  %29 = ptrtoint ptr %video_vsize.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %video_vsize.i, align 2
  %conv18.i = zext i16 %30 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 1
  %31 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl19.i, ptr %height.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else.i, %if.then7.i
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %field.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %33, label %sw.default.i [
    i32 1, label %if.end21.i.if.end5_crit_edge
    i32 4, label %if.end21.i.if.end5_crit_edge26
  ]

if.end21.i.if.end5_crit_edge26:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end21.i.if.end5_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

sw.default.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %field.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %sw.default.i, %if.end21.i.if.end5_crit_edge, %if.end21.i.if.end5_crit_edge26
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %36 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %colorspace.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 409600, ptr %sizeimage.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bytesperline.i, align 4
  %39 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fmt, align 4
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 38
  %41 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %video_hsize, align 4
  %conv = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv)
  %cmp = icmp eq i32 %40, %conv
  %spec.select = select i1 %cmp, i8 9, i8 2
  %43 = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %spec.select, ptr %43, align 1
  %45 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixelformat.i, align 4
  %fmt10 = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 25
  %47 = ptrtoint ptr %fmt10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %fmt10, align 4
  tail call void @solo_update_mode(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_try_fmt_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %5)
  %cmp.i = icmp eq i32 %5, 875967048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp eq i32 %7, 1
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %5)
  %cmp2.i = icmp eq i32 %5, 877088845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp eq i32 %7, 0
  %or.cond9.i = and i1 %cmp2.i, %cmp4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %5)
  %cmp5.i = icmp eq i32 %5, 1196444237
  %or.cond = or i1 %cmp5.i, %or.cond9.i
  br i1 %or.cond, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt, align 4
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 38
  %10 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %video_hsize, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp = icmp ult i32 %9, %conv
  br i1 %cmp, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %14 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %video_vsize, align 2
  %conv4 = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shl)
  %cmp5 = icmp ult i32 %13, %shl
  br i1 %cmp5, label %lor.lhs.false.if.then7_crit_edge, label %if.else

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %16 = lshr i16 %11, 1
  %17 = zext i16 %16 to i32
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fmt, align 4
  %video_vsize11 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %19 = ptrtoint ptr %video_vsize11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %video_vsize11, align 2
  %conv12 = zext i16 %20 to i32
  %height13 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv12, ptr %height13, align 4
  br label %if.end21

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %fmt, align 4
  %23 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %video_vsize, align 2
  %conv18 = zext i16 %24 to i32
  %shl19 = shl nuw nsw i32 %conv18, 1
  %25 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl19, ptr %height, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then7
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %field, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %27, label %sw.default [
    i32 1, label %if.end21.sw.epilog_crit_edge
    i32 4, label %if.end21.sw.epilog_crit_edge44
  ]

if.end21.sw.epilog_crit_edge44:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %field, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end21.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge44
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %colorspace, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 409600, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bytesperline, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %video_type = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %video_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %video_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i64 4096, i64 255
  %6 = ptrtoint ptr %i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %., ptr %i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %std) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %and = and i64 %std, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool = icmp ne i64 %and, 0
  %call1 = tail call i32 @solo_set_video_type(ptr noundef %3, i1 noundef zeroext %tobool) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 1
  %ch = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ch, align 4
  %conv = zext i8 %7 to i32
  %add = add nuw nsw i32 %conv, 1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef %add)
  %type = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %type, align 4
  %vfd = getelementptr inbounds %struct.solo_enc_dev, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfd, align 4
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 5
  %13 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %std, align 8
  %14 = ptrtoint ptr %ch to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ch, align 4
  %call4 = tail call i32 @tw28_get_video_status(ptr noundef %5, i8 noundef zeroext %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %status = getelementptr inbounds %struct.v4l2_input, ptr %input, i32 0, i32 6
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @solo_enc_get_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @solo_enc_set_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %index) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %tobool.not = icmp eq i32 %index, 0
  %. = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %2 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %parm, align 4
  %interval = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %interval, align 1
  %conv = zext i8 %4 to i32
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %timeperframe, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %fps = getelementptr inbounds %struct.solo_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fps, align 8
  %conv1 = zext i8 %9 to i32
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv1, ptr %denominator, align 4
  %capturemode = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %capturemode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %capturemode, align 4
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %readbuffers, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fps1 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %fps1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fps1, align 8
  %streaming.i = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 28, i32 28
  %6 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeperframe, align 4
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not.i = icmp eq i32 %10, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.calc_interval.exit_crit_edge, label %if.end.i

if.end.calc_interval.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_interval.exit

if.end.i:                                         ; preds = %if.end
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp.i = icmp eq i32 %10, %conv.i
  br i1 %cmp.i, label %if.end.i.calc_interval.exit_crit_edge, label %if.end4.i

if.end.i.calc_interval.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %calc_interval.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = mul i32 %8, %conv.i
  %mul.i.frozen = freeze i32 %mul.i
  %.frozen = freeze i32 %10
  %div.i = udiv i32 %mul.i.frozen, %.frozen
  %11 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %mul.i.frozen, %11
  %12 = lshr i32 %conv.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.decomposed, i32 %12)
  %cmp7.i = icmp uge i32 %rem.i.decomposed, %12
  %conv8.i = zext i1 %cmp7.i to i32
  %add.i = add i32 %div.i, %conv8.i
  %13 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 15) #11
  br label %calc_interval.exit

calc_interval.exit:                               ; preds = %if.end4.i, %if.end.i.calc_interval.exit_crit_edge, %if.end.calc_interval.exit_crit_edge
  %retval.0.i = phi i32 [ %13, %if.end4.i ], [ 1, %if.end.calc_interval.exit_crit_edge ], [ %8, %if.end.i.calc_interval.exit_crit_edge ]
  %conv = trunc i32 %retval.0.i to i8
  %interval = getelementptr inbounds %struct.solo_enc_dev, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %interval to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %interval, align 1
  tail call void @solo_update_mode(ptr noundef %1)
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %parm.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %17 = ptrtoint ptr %parm.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4096, ptr %parm.i, align 4
  %interval.i = getelementptr inbounds %struct.solo_enc_dev, ptr %16, i32 0, i32 11
  %18 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %interval.i, align 1
  %conv.i13 = zext i8 %19 to i32
  %20 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i13, ptr %timeperframe, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %fps.i = getelementptr inbounds %struct.solo_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %fps.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fps.i, align 8
  %conv1.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv1.i, ptr %denominator, align 4
  %capturemode.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %capturemode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %capturemode.i, align 4
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %readbuffers.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %calc_interval.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %calc_interval.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %5)
  %cmp.i = icmp eq i32 %5, 875967048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp eq i32 %7, 1
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %5)
  %cmp2.i = icmp eq i32 %5, 877088845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp eq i32 %7, 0
  %or.cond9.i = and i1 %cmp2.i, %cmp4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %5)
  %cmp5.i = icmp eq i32 %5, 1196444237
  %or.cond = or i1 %cmp5.i, %or.cond9.i
  br i1 %or.cond, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsize, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 38
  %11 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %video_hsize, align 4
  %13 = lshr i16 %12, 1
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %15, align 4
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %17 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %video_vsize, align 2
  %conv3 = zext i16 %18 to i32
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %video_hsize5 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 38
  %19 = ptrtoint ptr %video_hsize5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %video_hsize5, align 4
  %conv6 = zext i16 %20 to i32
  %21 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv6, ptr %21, align 4
  %video_vsize8 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %23 = ptrtoint ptr %video_vsize8 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %video_vsize8, align 2
  %conv9 = zext i16 %24 to i32
  %shl = shl nuw nsw i32 %conv9, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %shl.sink = phi i32 [ %shl, %sw.bb4 ], [ %conv3, %sw.bb ]
  %height10 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl.sink, ptr %height10, align 4
  %type11 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %26 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type11, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fintv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pixel_format = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 1
  %4 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_format, align 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %5)
  %cmp.i = icmp eq i32 %5, 875967048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp eq i32 %7, 1
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %5)
  %cmp2.i = icmp eq i32 %5, 877088845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp eq i32 %7, 0
  %or.cond9.i = and i1 %cmp2.i, %cmp4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %5)
  %cmp5.i = icmp eq i32 %5, 1196444237
  %or.cond = or i1 %cmp5.i, %or.cond9.i
  br i1 %or.cond, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %fintv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fintv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %width = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 2
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %video_hsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 38
  %12 = ptrtoint ptr %video_hsize to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %video_hsize, align 4
  %14 = lshr i16 %13, 1
  %15 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp.not = icmp eq i32 %11, %15
  br i1 %cmp.not, label %lor.lhs.false, label %if.end5.land.lhs.true_crit_edge

if.end5.land.lhs.true_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end5
  %height = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %video_vsize = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %18 = ptrtoint ptr %video_vsize to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %video_vsize, align 2
  %conv7 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv7)
  %cmp8.not = icmp eq i32 %17, %conv7
  br i1 %cmp8.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end5.land.lhs.true_crit_edge
  %conv12 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv12)
  %cmp13.not = icmp eq i32 %11, %conv12
  br i1 %cmp13.not, label %lor.lhs.false15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false15:                                  ; preds = %land.lhs.true
  %height16 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 3
  %20 = ptrtoint ptr %height16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height16, align 4
  %video_vsize17 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 39
  %22 = ptrtoint ptr %video_vsize17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %video_vsize17, align 2
  %conv18 = zext i16 %23 to i32
  %shl = shl nuw nsw i32 %conv18, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shl)
  %cmp19.not = icmp eq i32 %21, %shl
  br i1 %cmp19.not, label %lor.lhs.false15.if.end22_crit_edge, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false15.if.end22_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false15.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %type23 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 4
  %24 = ptrtoint ptr %type23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %type23, align 4
  %25 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %25, align 4
  %fps = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 44
  %27 = ptrtoint ptr %fps to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fps, align 8
  %conv24 = zext i8 %28 to i32
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv24, ptr %denominator, align 4
  %max = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 15, ptr %max, align 4
  %31 = load i8, ptr %fps, align 8
  %conv28 = zext i8 %31 to i32
  %denominator30 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %denominator30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv28, ptr %denominator30, align 4
  %step = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 2
  %33 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %step, align 4
  %34 = load i8, ptr %fps, align 8
  %conv33 = zext i8 %34 to i32
  %denominator35 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %fintv, i32 0, i32 5, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %denominator35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv33, ptr %denominator35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %lor.lhs.false15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_subscribe_event(ptr noundef %fh, ptr noundef %sub) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cond = icmp eq i32 %1, 6
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @v4l2_event_subscribe(ptr noundef %fh, ptr noundef %sub, i32 noundef 30, ptr noundef null) #11
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @v4l2_ctrl_subscribe_event(ptr noundef %fh, ptr noundef %sub) #11
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.bb ], [ %call1, %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_set_video_type(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw28_get_video_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subscribe(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_ring_thread(ptr noundef %data) #0 align 64 {
entry:
  %ev.i.i.i = alloca %struct.v4l2_event, align 8
  %val.i.i.i = alloca i16, align 2
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !84) #11
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
  %call2 = tail call zeroext i1 @set_freezable() #11
  %ring_thread_wait = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 56
  call void @add_wait_queue(ptr noundef %ring_thread_wait, ptr noundef nonnull %wait) #11
  %call323 = call i32 @schedule_timeout_interruptible(i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call323)
  %cmp24 = icmp eq i32 %call323, -512
  br i1 %cmp24, label %entry.for.end_crit_edge, label %lor.lhs.false.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 5
  %enc_idx.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 36
  %vh_dma.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 58
  %nr_chans.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 6
  %sdram_size.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 52
  %type.i.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 1
  %vh_buf.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 57
  %u.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i.i, i32 0, i32 1
  %frame_sequence.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i.i, i32 0, i32 1, i32 0, i32 1
  %region_mask.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i.i, i32 0, i32 1, i32 0, i32 2
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cleanup.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %call4 = call zeroext i1 @kthread_should_stop() #11
  br i1 %call4, label %lor.lhs.false.for.end_crit_edge, label %if.end

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %14, i32 1644
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101.i) #11, !srcloc !98
  %16 = lshr i32 %15, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %17 = ptrtoint ptr %enc_idx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enc_idx.i, align 2
  %conv2102.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv2102.i)
  %cmp103.i = icmp eq i32 %16, %conv2102.i
  br i1 %cmp103.i, label %if.end.solo_handle_ring.exit_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  br label %if.end.i

if.end.solo_handle_ring.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_handle_ring.exit

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %conv2104.i = phi i32 [ %conv2.i, %cleanup.i.if.end.i_crit_edge ], [ %conv2102.i, %if.end.if.end.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %conv2104.i, 3
  %add.i = add nuw nsw i32 %mul.i, 2560
  %19 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %20, i32 %add.i
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #11, !srcloc !98
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %23 = ptrtoint ptr %enc_idx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enc_idx.i, align 2
  %25 = add i8 %24, 1
  %26 = and i8 %25, 15
  store i8 %26, ptr %enc_idx.i, align 2
  %shr.i = lshr i32 %22, 24
  %27 = trunc i32 %shr.i to i8
  %conv13.i = and i8 %27, 31
  %and14.i = and i32 %22, 16777215
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv13.i)
  %cmp16.i = icmp ugt i8 %conv13.i, 15
  %sub.i = add nsw i8 %conv13.i, -16
  %storemerge.i = zext i1 %cmp16.i to i32
  %ch.0.i = select i1 %cmp16.i, i8 %sub.i, i8 %conv13.i
  %idxprom.i = zext i8 %ch.0.i to i32
  %arrayidx.i = getelementptr %struct.solo_dev, ptr %data, i32 0, i32 34, i32 %idxprom.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %cmp23.i = icmp eq ptr %29, null
  br i1 %cmp23.i, label %do.end.i, label %if.end27.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %idxprom.i) #15
  br label %cleanup.i

if.end27.i:                                       ; preds = %if.end.i
  %32 = ptrtoint ptr %vh_dma.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vh_dma.i, align 8
  %34 = ptrtoint ptr %nr_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_chans.i.i, align 8
  %mul.i.i = shl i32 %35, 19
  %36 = ptrtoint ptr %sdram_size.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sdram_size.i.i, align 8
  %38 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i = icmp eq i32 %39, 0
  %add3.neg.i.i = select i1 %cmp.i.i, i32 -7405568, i32 -9502720
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %37)
  %cmp5.i.i = icmp slt i32 %37, 33554433
  %mul8.neg.i.i = select i1 %cmp5.i.i, i32 -5898240, i32 -20054016
  %mul12.neg.i.i = mul i32 %35, -2621440
  %add9.neg.i.i = add i32 %37, %mul12.neg.i.i
  %add13.neg.i.i = sub i32 %add9.neg.i.i, %mul.i.i
  %sub.i.i = add i32 %add13.neg.i.i, %mul8.neg.i.i
  %sub16.i.i = add i32 %sub.i.i, %add3.neg.i.i
  %40 = call i32 @llvm.smin.i32(i32 %sub16.i.i, i32 16711680) #11
  %41 = call i32 @llvm.smax.i32(i32 %mul.i.i, i32 %40) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %and14.i)
  %cmp25.i.i = icmp ult i32 %41, %and14.i
  br i1 %cmp25.i.i, label %if.end27.i.cleanup.i_crit_edge, label %if.end.i.i

if.end27.i.cleanup.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.end27.i
  %add26.i.i = add nuw nsw i32 %and14.i, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i.i, i32 %41)
  %cmp63.not.i.i = icmp ugt i32 %add26.i.i, %41
  %add90.i.i = select i1 %cmp.i.i, i32 7405568, i32 9502720
  %mul95.i.i = select i1 %cmp5.i.i, i32 5898240, i32 20054016
  %mul99.i.i = mul i32 %35, 2621440
  %add96.i.i = add i32 %mul95.i.i, %mul99.i.i
  br i1 %cmp63.not.i.i, label %if.end83.i.i, label %if.then64.i.i

if.then64.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add81.i.i = add i32 %add90.i.i, %add96.i.i
  %add82.i.i = add i32 %add81.i.i, %and14.i
  %call.i.i = call i32 @solo_p2m_dma_t(ptr noundef %data, i32 noundef 0, i32 noundef %33, i32 noundef %add82.i.i, i32 noundef 64, i32 noundef 0, i32 noundef 0) #11
  br label %enc_get_mpeg_dma.exit.i

if.end83.i.i:                                     ; preds = %if.end.i.i
  %add100.i.i = add i32 %add96.i.i, %add90.i.i
  %add101.i.i = add i32 %add100.i.i, %and14.i
  %42 = add i32 %mul.i.i, %add100.i.i
  %sub125.i.i = sub i32 %37, %42
  %43 = call i32 @llvm.smin.i32(i32 %sub125.i.i, i32 16711680) #11
  %44 = call i32 @llvm.smax.i32(i32 %mul.i.i, i32 %43) #11
  %sub138.i.i = sub i32 %44, %and14.i
  %call139.i.i = call i32 @solo_p2m_dma_t(ptr noundef %data, i32 noundef 0, i32 noundef %33, i32 noundef %add101.i.i, i32 noundef %sub138.i.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i.i)
  %tobool.not.i.i = icmp eq i32 %call139.i.i, 0
  br i1 %tobool.not.i.i, label %if.then140.i.i, label %if.end83.i.i.cleanup.i_crit_edge

if.end83.i.i.cleanup.i_crit_edge:                 ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then140.i.i:                                   ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %nr_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_chans.i.i, align 8
  %mul142.i.i = shl i32 %46, 19
  %47 = ptrtoint ptr %sdram_size.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sdram_size.i.i, align 8
  %49 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp145.i.i = icmp eq i32 %50, 0
  %add150.neg.i.i = select i1 %cmp145.i.i, i32 -7405568, i32 -9502720
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %48)
  %cmp152.i.i = icmp slt i32 %48, 33554433
  %mul155.neg.i.i = select i1 %cmp152.i.i, i32 -5898240, i32 -20054016
  %mul159.neg.i.i = mul i32 %46, -2621440
  %add156.neg.i.i = add i32 %48, %mul159.neg.i.i
  %add160.neg.i.i = sub i32 %add156.neg.i.i, %mul142.i.i
  %sub161.i.i = add i32 %add160.neg.i.i, %mul155.neg.i.i
  %sub164.i.i = add i32 %sub161.i.i, %add150.neg.i.i
  %51 = call i32 @llvm.smin.i32(i32 %sub164.i.i, i32 16711680) #11
  %52 = call i32 @llvm.smax.i32(i32 %mul142.i.i, i32 %51) #11
  %add177.i.i = sub i32 %33, %and14.i
  %sub178.i.i = add i32 %add177.i.i, %52
  %add185.i.i = select i1 %cmp145.i.i, i32 7405568, i32 9502720
  %mul190.i.i = select i1 %cmp152.i.i, i32 5898240, i32 20054016
  %mul194.i.i = mul i32 %46, 2621440
  %add191.i.i = add i32 %mul190.i.i, %mul194.i.i
  %add195.i.i = add i32 %add191.i.i, %add185.i.i
  %53 = add i32 %mul142.i.i, %add195.i.i
  %sub220.i.i = sub i32 %48, %53
  %54 = call i32 @llvm.smin.i32(i32 %sub220.i.i, i32 16711680) #11
  %55 = call i32 @llvm.smax.i32(i32 %mul142.i.i, i32 %54) #11
  %sub233.i.i = sub i32 %add26.i.i, %55
  %call234.i.i = call i32 @solo_p2m_dma_t(ptr noundef %data, i32 noundef 0, i32 noundef %sub178.i.i, i32 noundef %add195.i.i, i32 noundef %sub233.i.i, i32 noundef 0, i32 noundef 0) #11
  br label %enc_get_mpeg_dma.exit.i

enc_get_mpeg_dma.exit.i:                          ; preds = %if.then140.i.i, %if.then64.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then64.i.i ], [ %call234.i.i, %if.then140.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end30.i, label %enc_get_mpeg_dma.exit.i.cleanup.i_crit_edge

enc_get_mpeg_dma.exit.i.cleanup.i_crit_edge:      ; preds = %enc_get_mpeg_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end30.i:                                       ; preds = %enc_get_mpeg_dma.exit.i
  %56 = ptrtoint ptr %vh_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vh_buf.i, align 4
  %arrayidx.i.i = getelementptr [16 x i32], ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #11
  %61 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp34.i = icmp eq i32 %62, 0
  %add39.i = select i1 %cmp34.i, i32 7405568, i32 9502720
  %63 = ptrtoint ptr %sdram_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sdram_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %64)
  %cmp40.i = icmp slt i32 %64, 33554433
  %mul44.i = select i1 %cmp40.i, i32 5898240, i32 20054016
  %65 = ptrtoint ptr %nr_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_chans.i.i, align 8
  %mul47.i = mul i32 %66, 2621440
  %add45.i = add nuw nsw i32 %add39.i, %and14.i
  %add48.i = add nuw nsw i32 %add45.i, %mul44.i
  %add49.i = add i32 %add48.i, %mul47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add49.i)
  %cmp50.not.i = icmp eq i32 %60, %add49.i
  br i1 %cmp50.not.i, label %if.end53.i, label %if.end30.i.cleanup.i_crit_edge

if.end30.i.cleanup.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end53.i:                                       ; preds = %if.end30.i
  %67 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %29, align 4
  %ch.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 6
  %69 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ch.i.i, align 4
  %conv.i.i = zext i8 %70 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %motion_lock.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 5
  %call4.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %motion_lock.i.i) #11
  %reg_base.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %72, i32 620
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !98
  %74 = call i32 @llvm.bswap.i32(i32 %73) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %and.i.i = and i32 %74, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i88.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i88.i, label %if.end53.i.solo_motion_detected.exit.i_crit_edge, label %if.then.i.i

if.end53.i.solo_motion_detected.exit.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_motion_detected.exit.i

if.then.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #11
  %75 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @arm_heavy_mb() #11
  %76 = call i32 @llvm.bswap.i32(i32 %shl.i.i) #11
  %77 = ptrtoint ptr %reg_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_base.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %78, i32 616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %76) #11, !srcloc !96
  %79 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %68, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %80, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #11
  br label %solo_motion_detected.exit.i

solo_motion_detected.exit.i:                      ; preds = %if.then.i.i, %if.end53.i.solo_motion_detected.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %motion_lock.i.i, i32 noundef %call4.i.i) #11
  %lock.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #11
  %type.i90.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 26
  %81 = ptrtoint ptr %type.i90.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i90.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %storemerge.i)
  %cmp.not.i.i = icmp eq i32 %82, %storemerge.i
  br i1 %cmp.not.i.i, label %do.body2.i.i, label %solo_motion_detected.exit.i.solo_enc_handle_one.exit.i_crit_edge

solo_motion_detected.exit.i.solo_enc_handle_one.exit.i_crit_edge: ; preds = %solo_motion_detected.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_handle_one.exit.i

do.body2.i.i:                                     ; preds = %solo_motion_detected.exit.i
  %av_lock.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 34
  %call4.i91.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %av_lock.i.i) #11
  %vidq_active.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 29
  %83 = ptrtoint ptr %vidq_active.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %vidq_active.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %84, %vidq_active.i.i
  br i1 %cmp.i.not.i.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %av_lock.i.i, i32 noundef %call4.i91.i) #11
  br label %solo_enc_handle_one.exit.i

if.end10.i.i:                                     ; preds = %do.body2.i.i
  %add.ptr.i92.i = getelementptr i8, ptr %84, i32 -736
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %84) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end10.i.i.list_del.exit.i.i_crit_edge

if.end10.i.i.list_del.exit.i.i_crit_edge:         ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i.i, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %84, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end10.i.i.list_del.exit.i.i_crit_edge
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %84, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %av_lock.i.i, i32 noundef %call4.i91.i) #11
  %fmt.i.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 25
  %93 = ptrtoint ptr %fmt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %fmt.i.i.i, align 4
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %94, label %sw.default.i.i.i [
    i32 877088845, label %list_del.exit.i.i.sw.bb.i.i.i_crit_edge
    i32 875967048, label %list_del.exit.i.i.sw.bb.i.i.i_crit_edge25
  ]

list_del.exit.i.i.sw.bb.i.i.i_crit_edge25:        ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i.i

list_del.exit.i.i.sw.bb.i.i.i_crit_edge:          ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i.i.i

sw.bb.i.i.i:                                      ; preds = %list_del.exit.i.i.sw.bb.i.i.i_crit_edge, %list_del.exit.i.i.sw.bb.i.i.i_crit_edge25
  %96 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %29, align 4
  %call.i.i.i.i.i = call ptr @vb2_plane_cookie(ptr noundef %add.ptr.i92.i, i32 noundef 0) #11
  %num_planes.i.i.i.i.i = getelementptr i8, ptr %84, i32 -720
  %98 = ptrtoint ptr %num_planes.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_planes.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.not.i.i.i.i.i = icmp eq i32 %99, 0
  br i1 %cmp.not.i.i.i.i.i, label %sw.bb.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

sw.bb.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge: ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %length.i.i.i.i.i = getelementptr i8, ptr %84, i32 -648
  %100 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length.i.i.i.i.i, align 8
  br label %vb2_plane_size.exit.i.i.i.i

vb2_plane_size.exit.i.i.i.i:                      ; preds = %if.then.i.i.i.i.i, %sw.bb.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %101, %if.then.i.i.i.i.i ], [ 0, %sw.bb.i.i.i.vb2_plane_size.exit.i.i.i.i_crit_edge ]
  %102 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %57, align 4
  %104 = and i32 %103, -61696
  %105 = call i32 @llvm.bswap.i32(i32 %104) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i.i, i32 %105)
  %cmp.i.i.i.i = icmp ult i32 %retval.0.i.i.i.i.i, %105
  br i1 %cmp.i.i.i.i, label %vb2_plane_size.exit.i.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge, label %if.end.i.i28.i.i

vb2_plane_size.exit.i.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge: ; preds = %vb2_plane_size.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_fillbuf.exit.i.i

if.end.i.i28.i.i:                                 ; preds = %vb2_plane_size.exit.i.i.i.i
  %flags.i.i.i.i = getelementptr i8, ptr %84, i32 -296
  %106 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %107, -57
  store i32 %and.i.i.i.i, ptr %flags.i.i.i.i, align 8
  %108 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %57, align 4
  %110 = and i32 %109, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i.i.i.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i.i.i.i, label %if.then5.i.i.i.i, label %if.else.i.i.i.i

if.then5.i.i.i.i:                                 ; preds = %if.end.i.i28.i.i
  %vop_len.i.i.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 22
  %111 = ptrtoint ptr %vop_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vop_len.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %and.i.i.i.i, 8
  %113 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i.i.i.i, ptr %flags.i.i.i.i, align 8
  br i1 %cmp.not.i.i.i.i.i, label %if.then5.i.i.i.i.if.end12.i.i.i.i_crit_edge, label %if.then.i166.i.i.i.i

if.then5.i.i.i.i.if.end12.i.i.i.i_crit_edge:      ; preds = %if.then5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i.i.i

if.then.i166.i.i.i.i:                             ; preds = %if.then5.i.i.i.i
  %114 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %57, align 4
  %116 = and i32 %115, -61696
  %117 = call i32 @llvm.bswap.i32(i32 %116) #11
  %118 = ptrtoint ptr %vop_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vop_len.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %117, %119
  %length.i165.i.i.i.i = getelementptr i8, ptr %84, i32 -648
  %120 = ptrtoint ptr %length.i165.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %length.i165.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %add.i.i.i.i)
  %cmp1.i.i.i.i.i = icmp ult i32 %121, %add.i.i.i.i
  br i1 %cmp1.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %if.then.i166.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge

if.then.i166.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i166.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %if.then.i166.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge, !prof !100

land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split.sink.split.sink.split.i.i.i.i

land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i28.i.i
  %or10.i.i.i.i = or i32 %and.i.i.i.i, 16
  %122 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or10.i.i.i.i, ptr %flags.i.i.i.i, align 8
  br i1 %cmp.not.i.i.i.i.i, label %if.else.i.i.i.i.if.end12.i.i.i.i_crit_edge, label %if.then.i171.i.i.i.i

if.else.i.i.i.i.if.end12.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i.i.i

if.then.i171.i.i.i.i:                             ; preds = %if.else.i.i.i.i
  %123 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %57, align 4
  %125 = and i32 %124, -61696
  %126 = call i32 @llvm.bswap.i32(i32 %125) #11
  %length.i169.i.i.i.i = getelementptr i8, ptr %84, i32 -648
  %127 = ptrtoint ptr %length.i169.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %length.i169.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %126)
  %cmp1.i170.i.i.i.i = icmp ult i32 %128, %126
  br i1 %cmp1.i170.i.i.i.i, label %land.rhs.i173.i.i.i.i, label %if.then.i171.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge

if.then.i171.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i171.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split.i.i.i.i

land.rhs.i173.i.i.i.i:                            ; preds = %if.then.i171.i.i.i.i
  %.b1.i172.i.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i172.i.i.i.i, label %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge, label %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge, !prof !100

land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge: ; preds = %land.rhs.i173.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split.sink.split.sink.split.i.i.i.i

land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge: ; preds = %land.rhs.i173.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.sink.split.sink.split.i.i.i.i

if.end12.sink.split.sink.split.sink.split.i.i.i.i: ; preds = %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge
  %length.i169.sink.ph.i.i.i.i = phi ptr [ %length.i165.i.i.i.i, %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge ], [ %length.i169.i.i.i.i, %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge ]
  %skip.0.ph.ph.ph.i.i.i.i = phi i32 [ %112, %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge ], [ 0, %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.sink.split.i.i.i.i_crit_edge ]
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.end12.sink.split.sink.split.i.i.i.i

if.end12.sink.split.sink.split.i.i.i.i:           ; preds = %if.end12.sink.split.sink.split.sink.split.i.i.i.i, %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge
  %length.i169.sink.i.i.i.i = phi ptr [ %length.i165.i.i.i.i, %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge ], [ %length.i169.i.i.i.i, %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge ], [ %length.i169.sink.ph.i.i.i.i, %if.end12.sink.split.sink.split.sink.split.i.i.i.i ]
  %skip.0.ph.ph.i.i.i.i = phi i32 [ %112, %land.rhs.i.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge ], [ 0, %land.rhs.i173.i.i.i.i.if.end12.sink.split.sink.split.i.i.i.i_crit_edge ], [ %skip.0.ph.ph.ph.i.i.i.i, %if.end12.sink.split.sink.split.sink.split.i.i.i.i ]
  %129 = ptrtoint ptr %length.i169.sink.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %length.i169.sink.i.i.i.i, align 8
  br label %if.end12.sink.split.i.i.i.i

if.end12.sink.split.i.i.i.i:                      ; preds = %if.end12.sink.split.sink.split.i.i.i.i, %if.then.i171.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge, %if.then.i166.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge
  %size.addr.0.i176.sink.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i166.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge ], [ %126, %if.then.i171.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge ], [ %130, %if.end12.sink.split.sink.split.i.i.i.i ]
  %skip.0.ph.i.i.i.i = phi i32 [ %112, %if.then.i166.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge ], [ 0, %if.then.i171.i.i.i.i.if.end12.sink.split.i.i.i.i_crit_edge ], [ %skip.0.ph.ph.i.i.i.i, %if.end12.sink.split.sink.split.i.i.i.i ]
  %bytesused.i177.i.i.i.i = getelementptr i8, ptr %84, i32 -652
  %131 = ptrtoint ptr %bytesused.i177.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %size.addr.0.i176.sink.i.i.i.i, ptr %bytesused.i177.i.i.i.i, align 4
  br label %if.end12.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end12.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end12.i.i.i.i_crit_edge, %if.then5.i.i.i.i.if.end12.i.i.i.i_crit_edge
  %skip.0.i.i.i.i = phi i32 [ %112, %if.then5.i.i.i.i.if.end12.i.i.i.i_crit_edge ], [ 0, %if.else.i.i.i.i.if.end12.i.i.i.i_crit_edge ], [ %skip.0.ph.i.i.i.i, %if.end12.sink.split.i.i.i.i ]
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx.i.i, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133) #11
  %type.i.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %97, i32 0, i32 1
  %135 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp14.i.i.i.i = icmp eq i32 %136, 0
  %add17.i.i.i.i = select i1 %cmp14.i.i.i.i, i32 7405568, i32 9502720
  %sdram_size.i.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %97, i32 0, i32 52
  %137 = ptrtoint ptr %sdram_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sdram_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %138)
  %cmp18.i.i.i.i = icmp slt i32 %138, 33554433
  %mul21.i.i.i.i = select i1 %cmp18.i.i.i.i, i32 5898240, i32 20054016
  %add22.i.i.i.i = add nuw nsw i32 %mul21.i.i.i.i, %add17.i.i.i.i
  %nr_chans.i.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %97, i32 0, i32 6
  %139 = ptrtoint ptr %nr_chans.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nr_chans.i.i.i.i, align 8
  %mul24.i.i.i.i = mul i32 %140, 2621440
  %add25.i.i.i.i = add i32 %add22.i.i.i.i, %mul24.i.i.i.i
  %sub.i.i.i.i = add i32 %134, 64
  %add26.i.i.i.i = sub i32 %sub.i.i.i.i, %add25.i.i.i.i
  %mul28.i.i.i.i = shl i32 %140, 19
  %141 = add i32 %mul28.i.i.i.i, %add25.i.i.i.i
  %sub50.i.i.i.i = sub i32 %138, %141
  %142 = call i32 @llvm.smin.i32(i32 %sub50.i.i.i.i, i32 16711680) #11
  %143 = call i32 @llvm.smax.i32(i32 %mul28.i.i.i.i, i32 %142) #11
  %rem.i.i.i.i = urem i32 %add26.i.i.i.i, %143
  %144 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %57, align 4
  %146 = and i32 %145, -61696
  %147 = call i32 @llvm.bswap.i32(i32 %146) #11
  %add61.i.i.i.i = add i32 %skip.0.i.i.i.i, 4095
  %add62.i.i.i.i = add i32 %add61.i.i.i.i, %147
  %and63.i.i.i.i = and i32 %add62.i.i.i.i, -4096
  %call117.i.i.i.i = call fastcc i32 @solo_send_desc(ptr noundef nonnull %29, i32 noundef %skip.0.i.i.i.i, ptr noundef %call.i.i.i.i.i, i32 noundef %rem.i.i.i.i, i32 noundef %and63.i.i.i.i, i32 noundef %add25.i.i.i.i, i32 noundef %143) #11
  br label %sw.epilog.i.i.i

sw.default.i.i.i:                                 ; preds = %list_del.exit.i.i
  %148 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %29, align 4
  %call.i.i1.i.i.i = call ptr @vb2_plane_cookie(ptr noundef %add.ptr.i92.i, i32 noundef 0) #11
  %flags.i2.i.i.i = getelementptr i8, ptr %84, i32 -296
  %150 = ptrtoint ptr %flags.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags.i2.i.i.i, align 8
  %or.i3.i.i.i = or i32 %151, 8
  store i32 %or.i3.i.i.i, ptr %flags.i2.i.i.i, align 8
  %num_planes.i.i4.i.i.i = getelementptr i8, ptr %84, i32 -720
  %152 = ptrtoint ptr %num_planes.i.i4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_planes.i.i4.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp.not.i.i5.i.i.i = icmp eq i32 %153, 0
  br i1 %cmp.not.i.i5.i.i.i, label %sw.default.i.i.i.vb2_plane_size.exit.i12.i.i.i_crit_edge, label %if.then.i.i7.i.i.i

sw.default.i.i.i.vb2_plane_size.exit.i12.i.i.i_crit_edge: ; preds = %sw.default.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_plane_size.exit.i12.i.i.i

if.then.i.i7.i.i.i:                               ; preds = %sw.default.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %length.i.i6.i.i.i = getelementptr i8, ptr %84, i32 -648
  %154 = ptrtoint ptr %length.i.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %length.i.i6.i.i.i, align 8
  br label %vb2_plane_size.exit.i12.i.i.i

vb2_plane_size.exit.i12.i.i.i:                    ; preds = %if.then.i.i7.i.i.i, %sw.default.i.i.i.vb2_plane_size.exit.i12.i.i.i_crit_edge
  %retval.0.i.i8.i.i.i = phi i32 [ %155, %if.then.i.i7.i.i.i ], [ 0, %sw.default.i.i.i.vb2_plane_size.exit.i12.i.i.i_crit_edge ]
  %arrayidx.i.i9.i.i.i = getelementptr [16 x i32], ptr %57, i32 0, i32 4
  %156 = ptrtoint ptr %arrayidx.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i.i9.i.i.i, align 4
  %158 = and i32 %157, -61696
  %159 = call i32 @llvm.bswap.i32(i32 %158) #11
  %jpeg_len.i.i.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 24
  %160 = ptrtoint ptr %jpeg_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %jpeg_len.i.i.i.i, align 4
  %add.i10.i.i.i = add i32 %159, %161
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i8.i.i.i, i32 %add.i10.i.i.i)
  %cmp.i11.i.i.i = icmp ult i32 %retval.0.i.i8.i.i.i, %add.i10.i.i.i
  br i1 %cmp.i11.i.i.i, label %vb2_plane_size.exit.i12.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge, label %if.end.i14.i.i.i

vb2_plane_size.exit.i12.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge: ; preds = %vb2_plane_size.exit.i12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_fillbuf.exit.i.i

if.end.i14.i.i.i:                                 ; preds = %vb2_plane_size.exit.i12.i.i.i
  %add7.i.i.i.i = add i32 %add.i10.i.i.i, 4095
  %and.i13.i.i.i = and i32 %add7.i.i.i.i, -4096
  br i1 %cmp.not.i.i5.i.i.i, label %if.end.i14.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge, label %if.then.i247.i.i.i.i

if.end.i14.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge: ; preds = %if.end.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vb2_set_plane_payload.exit.i.i.i.i

if.then.i247.i.i.i.i:                             ; preds = %if.end.i14.i.i.i
  %length.i246.i.i.i.i = getelementptr i8, ptr %84, i32 -648
  %162 = ptrtoint ptr %length.i246.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %length.i246.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %add.i10.i.i.i)
  %cmp1.i.i15.i.i.i = icmp ult i32 %163, %add.i10.i.i.i
  br i1 %cmp1.i.i15.i.i.i, label %land.rhs.i.i17.i.i.i, label %if.then.i247.i.i.i.i.if.end42.i.i.i.i.i_crit_edge

if.then.i247.i.i.i.i.if.end42.i.i.i.i.i_crit_edge: ; preds = %if.then.i247.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i.i.i.i.i

land.rhs.i.i17.i.i.i:                             ; preds = %if.then.i247.i.i.i.i
  %.b1.i.i16.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i16.i.i.i, label %land.rhs.i.i17.i.i.i.if.then38.i.i.i.i.i_crit_edge, label %if.then8.i.i.i.i.i, !prof !100

land.rhs.i.i17.i.i.i.if.then38.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then38.i.i.i.i.i

if.then8.i.i.i.i.i:                               ; preds = %land.rhs.i.i17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 1163, i32 noundef 9, ptr noundef null) #11
  br label %if.then38.i.i.i.i.i

if.then38.i.i.i.i.i:                              ; preds = %if.then8.i.i.i.i.i, %land.rhs.i.i17.i.i.i.if.then38.i.i.i.i.i_crit_edge
  %164 = ptrtoint ptr %length.i246.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %length.i246.i.i.i.i, align 8
  br label %if.end42.i.i.i.i.i

if.end42.i.i.i.i.i:                               ; preds = %if.then38.i.i.i.i.i, %if.then.i247.i.i.i.i.if.end42.i.i.i.i.i_crit_edge
  %size.addr.0.i.i.i.i.i = phi i32 [ %165, %if.then38.i.i.i.i.i ], [ %add.i10.i.i.i, %if.then.i247.i.i.i.i.if.end42.i.i.i.i.i_crit_edge ]
  %bytesused.i.i.i.i.i = getelementptr i8, ptr %84, i32 -652
  %166 = ptrtoint ptr %bytesused.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %size.addr.0.i.i.i.i.i, ptr %bytesused.i.i.i.i.i, align 4
  br label %vb2_set_plane_payload.exit.i.i.i.i

vb2_set_plane_payload.exit.i.i.i.i:               ; preds = %if.end42.i.i.i.i.i, %if.end.i14.i.i.i.vb2_set_plane_payload.exit.i.i.i.i_crit_edge
  %167 = ptrtoint ptr %jpeg_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %jpeg_len.i.i.i.i, align 4
  %arrayidx.i248.i.i.i.i = getelementptr [16 x i32], ptr %57, i32 0, i32 3
  %169 = ptrtoint ptr %arrayidx.i248.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i248.i.i.i.i, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %170) #11
  %type.i18.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %149, i32 0, i32 1
  %172 = ptrtoint ptr %type.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %type.i18.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp13.i.i.i.i = icmp eq i32 %173, 0
  %add16.i.i.i.i = select i1 %cmp13.i.i.i.i, i32 7405568, i32 9502720
  %sdram_size.i19.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %149, i32 0, i32 52
  %174 = ptrtoint ptr %sdram_size.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sdram_size.i19.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %175)
  %cmp17.i.i.i.i = icmp slt i32 %175, 33554433
  %mul20.i.i.i.i = select i1 %cmp17.i.i.i.i, i32 5898240, i32 20054016
  %add21.i.i.i.i = add nuw nsw i32 %mul20.i.i.i.i, %add16.i.i.i.i
  %nr_chans.i20.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %149, i32 0, i32 6
  %176 = ptrtoint ptr %nr_chans.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nr_chans.i20.i.i.i, align 8
  %mul23.i.i.i.i = mul i32 %177, 2621440
  %add24.i.i.i.i = add i32 %add21.i.i.i.i, %mul23.i.i.i.i
  %mul26.i.i.i.i = shl i32 %177, 19
  %178 = add i32 %mul26.i.i.i.i, %add24.i.i.i.i
  %sub47.i.i.i.i = sub i32 %175, %178
  %179 = call i32 @llvm.smin.i32(i32 %sub47.i.i.i.i, i32 16711680) #11
  %180 = call i32 @llvm.smax.i32(i32 %mul26.i.i.i.i, i32 %179) #11
  %add57.i.i.i.i = add i32 %180, %add24.i.i.i.i
  %sub58.i.i.i.i = sub i32 %171, %add57.i.i.i.i
  %sub170.i.i.i.i = sub i32 %175, %add57.i.i.i.i
  %181 = call i32 @llvm.smin.i32(i32 %sub170.i.i.i.i, i32 16711680) #11
  %182 = call i32 @llvm.smax.i32(i32 %mul26.i.i.i.i, i32 %181) #11
  %call183.i.i.i.i = call fastcc i32 @solo_send_desc(ptr noundef nonnull %29, i32 noundef %168, ptr noundef %call.i.i1.i.i.i, i32 noundef %sub58.i.i.i.i, i32 noundef %and.i13.i.i.i, i32 noundef %add57.i.i.i.i, i32 noundef %182) #11
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %vb2_set_plane_payload.exit.i.i.i.i, %if.end12.i.i.i.i
  %ret.0.i.i.i = phi i32 [ %call117.i.i.i.i, %if.end12.i.i.i.i ], [ %call183.i.i.i.i, %vb2_set_plane_payload.exit.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %sw.epilog.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge

sw.epilog.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge: ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_fillbuf.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.epilog.i.i.i
  %sequence.i.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 27
  %183 = ptrtoint ptr %sequence.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sequence.i.i.i, align 4
  %inc.i.i.i = add i32 %184, 1
  store i32 %inc.i.i.i, ptr %sequence.i.i.i, align 4
  %sequence3.i.i.i = getelementptr i8, ptr %84, i32 -272
  %185 = ptrtoint ptr %sequence3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %sequence3.i.i.i, align 8
  %call.i.i29.i.i = call i64 @ktime_get() #11
  %timestamp.i.i.i = getelementptr i8, ptr %84, i32 -712
  %186 = ptrtoint ptr %timestamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %call.i.i29.i.i, ptr %timestamp.i.i.i, align 8
  %187 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %29, align 4
  %motion_mask.i.i.i.i = getelementptr inbounds %struct.solo_dev, ptr %188, i32 0, i32 9
  %189 = ptrtoint ptr %motion_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %motion_mask.i.i.i.i, align 4
  %191 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %ch.i.i, align 4
  %conv.i.i.i.i = zext i8 %192 to i32
  %193 = shl nuw i32 1, %conv.i.i.i.i
  %194 = and i32 %193, %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool6.not.i.i.i = icmp eq i32 %194, 0
  %brmerge.i = or i1 %tobool.not.i88.i, %tobool6.not.i.i.i
  br i1 %brmerge.i, label %if.then.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge, label %if.then8.i.i.i

if.then.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_enc_fillbuf.exit.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i.i.i) #11
  %195 = call ptr @memset(ptr %ev.i.i.i, i32 0, i32 136)
  %196 = ptrtoint ptr %ev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 6, ptr %ev.i.i.i, align 8
  %197 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %u.i.i.i, align 8
  %198 = ptrtoint ptr %sequence3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %sequence3.i.i.i, align 8
  %200 = ptrtoint ptr %frame_sequence.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %frame_sequence.i.i.i, align 4
  %201 = ptrtoint ptr %region_mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %region_mask.i.i.i, align 8
  %vfd.i.i.i = getelementptr inbounds %struct.solo_enc_dev, ptr %29, i32 0, i32 3
  %202 = ptrtoint ptr %vfd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %vfd.i.i.i, align 4
  call void @v4l2_event_queue(ptr noundef %203, ptr noundef nonnull %ev.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i.i.i) #11
  br label %solo_enc_fillbuf.exit.i.i

solo_enc_fillbuf.exit.i.i:                        ; preds = %if.then8.i.i.i, %if.then.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge, %sw.epilog.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge, %vb2_plane_size.exit.i12.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge, %vb2_plane_size.exit.i.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge
  %cond16.i.i.i = phi i32 [ 5, %if.then.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge ], [ 5, %if.then8.i.i.i ], [ 6, %sw.epilog.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge ], [ 6, %vb2_plane_size.exit.i.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge ], [ 6, %vb2_plane_size.exit.i12.i.i.i.solo_enc_fillbuf.exit.i.i_crit_edge ]
  call void @vb2_buffer_done(ptr noundef %add.ptr.i92.i, i32 noundef %cond16.i.i.i) #11
  br label %solo_enc_handle_one.exit.i

solo_enc_handle_one.exit.i:                       ; preds = %solo_enc_fillbuf.exit.i.i, %if.then8.i.i, %solo_motion_detected.exit.i.solo_enc_handle_one.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %solo_enc_handle_one.exit.i, %if.end30.i.cleanup.i_crit_edge, %enc_get_mpeg_dma.exit.i.cleanup.i_crit_edge, %if.end83.i.i.cleanup.i_crit_edge, %if.end27.i.cleanup.i_crit_edge, %do.end.i
  %204 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %205, i32 1644
  %206 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !98
  %207 = lshr i32 %206, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !99
  %208 = ptrtoint ptr %enc_idx.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %enc_idx.i, align 2
  %conv2.i = zext i8 %209 to i32
  %cmp.i = icmp eq i32 %207, %conv2.i
  br i1 %cmp.i, label %cleanup.i.solo_handle_ring.exit_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

cleanup.i.solo_handle_ring.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_handle_ring.exit

solo_handle_ring.exit:                            ; preds = %cleanup.i.solo_handle_ring.exit_crit_edge, %if.end.solo_handle_ring.exit_crit_edge
  %210 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i11 = and i32 %210, -16384
  %211 = inttoptr i32 %and.i.i11 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %flags.i, align 4
  %and.i12 = and i32 %215, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %if.then.i, label %solo_handle_ring.exit.if.end.i16_crit_edge

solo_handle_ring.exit.if.end.i16_crit_edge:       ; preds = %solo_handle_ring.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i16

if.then.i:                                        ; preds = %solo_handle_ring.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @debug_check_no_locks_held() #11
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i, %solo_handle_ring.exit.if.end.i16_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 57) #11
  %216 = call i32 @llvm.read_register.i32(metadata !84) #11
  %and.i.i.i = and i32 %216, -16384
  %217 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %217, i32 0, i32 2
  %218 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %220 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i.i.i15 = icmp eq i32 %220, 0
  br i1 %tobool.not.i.i.i15, label %if.end.i16.cleanup_crit_edge, label %freezing.exit.i.i, !prof !100

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

freezing.exit.i.i:                                ; preds = %if.end.i16
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %219) #11
  br i1 %call4.i.i.i, label %if.end.i.i17, label %freezing.exit.i.i.cleanup_crit_edge, !prof !101

freezing.exit.i.i.cleanup_crit_edge:              ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i17:                                     ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i17, %freezing.exit.i.i.cleanup_crit_edge, %if.end.i16.cleanup_crit_edge
  %call3 = call i32 @schedule_timeout_interruptible(i32 noundef 100) #11
  %cmp = icmp eq i32 %call3, -512
  br i1 %cmp, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false_crit_edge

cleanup.lor.lhs.false_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  call void @remove_wait_queue(ptr noundef %ring_thread_wait, ptr noundef nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma_t(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @solo_send_desc(ptr nocapture noundef %solo_enc, i32 noundef %skip, ptr nocapture noundef readonly %vbuf, i32 noundef %off, i32 noundef %size, i32 noundef %base, i32 noundef %base_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %solo_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %solo_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 409600, i32 %size)
  %cmp = icmp sgt i32 %size, 409600
  br i1 %cmp, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %entry
  %.b183 = load i1, ptr @solo_send_desc.__already_done, align 1
  br i1 %.b183, label %land.rhs.cleanup117_crit_edge, label %if.then, !prof !100

land.rhs.cleanup117_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @solo_send_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 317, i32 noundef 9, ptr noundef null) #11
  br label %cleanup117

if.end38:                                         ; preds = %entry
  %desc_count = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 30
  %2 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %desc_count, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %vbuf, i32 0, i32 1
  %3 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp39198.not = icmp eq i32 %4, 0
  br i1 %cmp39198.not, label %if.end38.cleanup117_crit_edge, label %for.body.lr.ph

if.end38.cleanup117_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

for.body.lr.ph:                                   ; preds = %if.end38
  %5 = ptrtoint ptr %vbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vbuf, align 4
  %desc_items = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 32
  %desc_nelts = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 31
  %desc_dma = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skip.addr.0204 = phi i32 [ %skip, %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  %off.addr.0202 = phi i32 [ %off, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %i.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %inc106, %for.inc.for.body_crit_edge ]
  %sg.0200 = phi ptr [ %6, %for.body.lr.ph ], [ %call107, %for.inc.for.body_crit_edge ]
  %size.addr.0199 = phi i32 [ %size, %for.body.lr.ph ], [ %sub81, %for.inc.for.body_crit_edge ]
  %sub = sub i32 %base_size, %off.addr.0202
  %7 = ptrtoint ptr %desc_items to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc_items, align 4
  %9 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_count, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %desc_count, align 4
  %arrayidx = getelementptr %struct.solo_p2m_desc, ptr %8, i32 %10
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0200, i32 0, i32 4
  %11 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %skip.addr.0204)
  %cmp42.not = icmp sgt i32 %12, %skip.addr.0204
  br i1 %cmp42.not, label %do.end58, label %do.body50, !prof !100

do.body50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #11, !srcloc !102
  unreachable

do.end58:                                         ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0200, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %sub61 = sub i32 %12, %skip.addr.0204
  %add = add i32 %14, %skip.addr.0204
  %sub62 = sub i32 %size.addr.0199, %skip.addr.0204
  %15 = tail call i32 @llvm.smin.i32(i32 %sub61, i32 %sub62)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub)
  %cmp66.not = icmp sgt i32 %15, %sub
  %add69 = add i32 %off.addr.0202, %base
  br i1 %cmp66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @solo_p2m_fill_desc(ptr noundef %arrayidx, i32 noundef 0, i32 noundef %add, i32 noundef %add69, i32 noundef %15, i32 noundef 0, i32 noundef 0) #11
  br label %if.end80

if.else:                                          ; preds = %do.end58
  %call = tail call i32 @solo_p2m_dma_t(ptr noundef %1, i32 noundef 0, i32 noundef %add, i32 noundef %add69, i32 noundef %sub, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool70.not = icmp eq i32 %call, 0
  br i1 %tobool70.not, label %if.end72, label %if.else.cleanup117_crit_edge

if.else.cleanup117_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.end72:                                         ; preds = %if.else
  %add73 = add i32 %add, %sub
  %sub74 = sub i32 %15, %sub
  %call75 = tail call i32 @solo_p2m_dma_t(ptr noundef %1, i32 noundef 0, i32 noundef %add73, i32 noundef %base, i32 noundef %sub74, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end72.cleanup117_crit_edge

if.end72.cleanup117_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc_count, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %desc_count, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end78, %if.then67
  %sub81 = sub i32 %sub62, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub81)
  %cmp82 = icmp slt i32 %sub81, 1
  br i1 %cmp82, label %if.end80.for.end_crit_edge, label %if.end84

if.end80.for.end_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end84:                                         ; preds = %if.end80
  %add85 = add i32 %15, %off.addr.0202
  call void @__sanitizer_cov_trace_cmp4(i32 %add85, i32 %base_size)
  %cmp86.not = icmp ult i32 %add85, %base_size
  %sub88 = select i1 %cmp86.not, i32 0, i32 %base_size
  %spec.select = sub i32 %add85, %sub88
  %18 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc_count, align 4
  %20 = ptrtoint ptr %desc_nelts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc_nelts, align 4
  %sub91 = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub91)
  %cmp92.not = icmp slt i32 %19, %sub91
  br i1 %cmp92.not, label %if.end84.for.inc_crit_edge, label %if.then93

if.end84.for.inc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then93:                                        ; preds = %if.end84
  %22 = ptrtoint ptr %desc_items to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc_items, align 4
  %24 = ptrtoint ptr %desc_dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc_dma, align 4
  %sub96 = add i32 %19, -1
  %call97 = tail call i32 @solo_p2m_dma_desc(ptr noundef %1, ptr noundef %23, i32 noundef %25, i32 noundef %sub96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.then93.cleanup117_crit_edge

if.then93.cleanup117_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.end100:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %desc_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end100, %if.end84.for.inc_crit_edge
  %inc106 = add nuw i32 %i.0201, 1
  %call107 = tail call ptr @sg_next(ptr noundef %sg.0200) #11
  %27 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nents, align 4
  %cmp39 = icmp ult i32 %inc106, %28
  br i1 %cmp39, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end80.for.end_crit_edge
  %29 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %desc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp109 = icmp slt i32 %.pr, 2
  br i1 %cmp109, label %for.end.cleanup117_crit_edge, label %if.end111

for.end.cleanup117_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.end111:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %desc_items112 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 32
  %30 = ptrtoint ptr %desc_items112 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_items112, align 4
  %desc_dma113 = getelementptr inbounds %struct.solo_enc_dev, ptr %solo_enc, i32 0, i32 33
  %32 = ptrtoint ptr %desc_dma113 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desc_dma113, align 4
  %sub115 = add nsw i32 %.pr, -1
  %call116 = tail call i32 @solo_p2m_dma_desc(ptr noundef %1, ptr noundef %31, i32 noundef %33, i32 noundef %sub115) #11
  br label %cleanup117

cleanup117:                                       ; preds = %if.end111, %for.end.cleanup117_crit_edge, %if.then93.cleanup117_crit_edge, %if.end72.cleanup117_crit_edge, %if.else.cleanup117_crit_edge, %if.end38.cleanup117_crit_edge, %if.then, %land.rhs.cleanup117_crit_edge
  %retval.2 = phi i32 [ %call116, %if.end111 ], [ -22, %if.then ], [ 0, %for.end.cleanup117_crit_edge ], [ -22, %land.rhs.cleanup117_crit_edge ], [ 0, %if.end38.cleanup117_crit_edge ], [ %call, %if.else.cleanup117_crit_edge ], [ %call75, %if.end72.cleanup117_crit_edge ], [ %call97, %if.then93.cleanup117_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_p2m_fill_desc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !77, !79, !80, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @solo_enc_v4l2_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1347, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1378, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @solo_enc_v4l2_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @solo_enc_v4l2_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @vop_6110_ntsc_cif, !12, !"vop_6110_ntsc_cif", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 67, i32 11}
!13 = !{ptr @vop_6110_pal_cif, !14, !"vop_6110_pal_cif", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 79, i32 11}
!15 = !{ptr @vop_6010_ntsc_cif, !16, !"vop_6010_ntsc_cif", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 39, i32 11}
!17 = !{ptr @vop_6010_pal_cif, !18, !"vop_6010_pal_cif", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 53, i32 11}
!19 = !{ptr @vop_6110_ntsc_d1, !20, !"vop_6110_ntsc_d1", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 61, i32 11}
!21 = !{ptr @vop_6110_pal_d1, !22, !"vop_6110_pal_d1", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 73, i32 11}
!23 = !{ptr @vop_6010_ntsc_d1, !24, !"vop_6010_ntsc_d1", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 32, i32 11}
!25 = !{ptr @vop_6010_pal_d1, !26, !"vop_6010_pal_d1", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 46, i32 11}
!27 = !{ptr @jpeg_dqt, !28, !"jpeg_dqt", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/solo6x10/solo6x10-jpeg.h", i32 100, i32 17}
!29 = !{ptr @solo_enc_alloc._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1221, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @solo_enc_alloc.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1254, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @solo_enc_alloc.__key.8, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1255, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @solo_enc_alloc.__key.10, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1282, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1313, i32 4}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1313, i32 22}
!45 = !{ptr @solo_ctrl_ops, !46, !"solo_ctrl_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1186, i32 35}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1193, i32 10}
!49 = !{ptr @solo_osd_text_ctrl, !50, !"solo_osd_text_ctrl", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1190, i32 38}
!51 = !{ptr @solo_md_thresholds, !52, !"solo_md_thresholds", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1200, i32 38}
!53 = !{ptr @solo_enc_video_qops, !54, !"solo_enc_video_qops", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 753, i32 29}
!55 = !{ptr @jpeg_header, !56, !"jpeg_header", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/solo6x10/solo6x10-jpeg.h", i32 15, i32 17}
!57 = !{ptr @solo_enc_template, !58, !"solo_enc_template", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1175, i32 34}
!59 = !{ptr @solo_enc_fops, !60, !"solo_enc_fops", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1133, i32 42}
!61 = !{ptr @solo_enc_ioctl_ops, !62, !"solo_enc_ioctl_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 1143, i32 36}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 770, i32 41}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 772, i32 49}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 786, i32 45}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 684, i32 26}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 607, i32 4}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @solo_handle_ring._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @solo_handle_ring._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!79 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/solo6x10/solo6x10-v4l2-enc.c", i32 317, i32 6}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = !{i64 2156819015}
!96 = !{i64 7233690}
!97 = !{i8 0, i8 2}
!98 = !{i64 7234108}
!99 = !{i64 2156818624}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2157032362, i64 2157032873, i64 2157032399, i64 2157032455, i64 2157032489, i64 2157032513, i64 2157032554, i64 2157032575, i64 2157032603, i64 2157032637}
