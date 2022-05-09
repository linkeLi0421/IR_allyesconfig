; ModuleID = '/llk/IR_all_yes/drivers/media/common/saa7146/saa7146_vbi.c_pt.bc'
source_filename = "../drivers/media/common/saa7146/saa7146_vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.saa7146_use_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue_ops = type { ptr, ptr, ptr, ptr }
%struct.saa7146_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.saa7146_vv = type { %struct.saa7146_dmaqueue, %struct.v4l2_vbi_format, %struct.timer_list, ptr, %struct.wait_queue_head, i32, ptr, i32, ptr, %struct.saa7146_overlay, %struct.v4l2_framebuffer, ptr, ptr, %struct.saa7146_dmaqueue, %struct.v4l2_pix_format, i32, ptr, i32, i32, i32, i32, %struct.saa7146_dma, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, [2 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.saa7146_overlay = type { ptr, %struct.v4l2_window, [16 x %struct.v4l2_clip], i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.88, i32, i32 }
%union.anon.88 = type { i32 }
%struct.saa7146_dma = type { i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.saa7146_fh = type { %struct.v4l2_fh, ptr, %struct.videobuf_queue, %struct.videobuf_queue, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.111, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.111 = type { ptr }
%struct.saa7146_ext_vv = type { i32, i32, i32, i32, ptr, i32, ptr, %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops, ptr, %struct.v4l2_file_operations }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.videobuf_buffer = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i64, i32, i32, i32, i32, ptr, i32, ptr }
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
%struct.saa7146_buf = type { %struct.videobuf_buffer, ptr, ptr, [3 x %struct.saa7146_pgtable] }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.videobuf_dmabuf = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.saa7146_video_dma = type { i32, i32, i32, i32, i32, i32 }

@saa7146_vbi_uops = dso_local constant { %struct.saa7146_use_ops, [44 x i8] } { %struct.saa7146_use_ops { ptr @vbi_init, ptr @vbi_open, ptr @vbi_close, ptr @vbi_irq_done, ptr @vbi_read }, [44 x i8] zeroinitializer }, align 32
@saa7146_debug = external dso_local local_unnamed_addr global i32, align 4
@vbi_init.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"saa7146_vv\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbi_init\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/common/saa7146/saa7146_vbi.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): dev:%p\0A\00", [18 x i8] zeroinitializer }, align 32
@vbi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&vv->vbi_dmaq.timeout)\00", [40 x i8] zeroinitializer }, align 32
@vbi_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vv->vbi_wq\00", [20 x i8] zeroinitializer }, align 32
@vbi_open.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbi_open\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): dev:%p, fh:%p\0A\00", [43 x i8] zeroinitializer }, align 32
@vbi_open.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): cannot get vbi RESOURCE_DMA3_BRS resource\0A\00", [47 x i8] zeroinitializer }, align 32
@vbi_qops = internal constant { %struct.videobuf_queue_ops, [16 x i8] } { %struct.videobuf_queue_ops { ptr @buffer_setup, ptr @buffer_prepare, ptr @buffer_queue, ptr @buffer_release }, [16 x i8] zeroinitializer }, align 32
@vbi_open.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(): vbi workaround failed!\0A\00", [34 x i8] zeroinitializer }, align 32
@buffer_setup.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): count:%d, size:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(): vb:%p\0A\00", [19 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s(): size mismatch\0A\00", [43 x i8] zeroinitializer }, align 32
@buffer_prepare.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): error out\0A\00", [47 x i8] zeroinitializer }, align 32
@buffer_activate.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer_activate\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): dev:%p, buf:%p, next:%p\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@buffer_queue.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.14, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_release.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.14, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_release\00", [17 x i8] zeroinitializer }, align 32
@vbi_read_timeout.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.8, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vbi_read_timeout\00", [47 x i8] zeroinitializer }, align 32
@vbi_stop.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.8, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbi_stop\00", [23 x i8] zeroinitializer }, align 32
@vbi_workaround.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vbi_workaround\00", [17 x i8] zeroinitializer }, align 32
@vbi_workaround.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): ...using port b\0A\00", [41 x i8] zeroinitializer }, align 32
@vbi_workaround.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): ...using port a\0A\00", [41 x i8] zeroinitializer }, align 32
@vbi_workaround.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s(): brs bug workaround %d/1\0A\00", [33 x i8] zeroinitializer }, align 32
@vbi_workaround.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): aborted (rps:0x%08x)\0A\00", [36 x i8] zeroinitializer }, align 32
@vbi_close.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.8, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vbi_close\00", [22 x i8] zeroinitializer }, align 32
@vbi_irq_done.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vbi_irq_done\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s(): dev:%p, curr:%p\0A\00", [41 x i8] zeroinitializer }, align 32
@vbi_irq_done.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@vbi_read.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.8, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vbi_read\00", [23 x i8] zeroinitializer }, align 32
@vbi_read.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): open %p is already using vbi capture\0A\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"saa7146_vbi_uops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 492, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 366, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 370, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 373, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 384, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 388, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"vbi_qops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 312, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 415, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 284, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 233, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 236, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 268, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 212, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 297, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 308, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 359, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 326, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 18, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 44, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 51, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 107, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 120, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 429, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 443, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 463, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [46 x i8] c"../drivers/media/common/saa7146/saa7146_vbi.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 472, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @saa7146_vbi_uops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vbi_init.__key, ptr @.str.4, ptr @vbi_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vbi_qops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7146_vbi_uops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_qops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_init(ptr noundef %dev, ptr noundef %vv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %0 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_init.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_init, %if.then5)) #5
          to label %do.end7 [label %if.then5], !srcloc !102

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_init.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %dev) #5
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  %queue = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %vv, i32 0, i32 2
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %vv, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %prev.i, align 4
  %timeout = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %vv, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @saa7146_buffer_timeout, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @vbi_init.__key) #5
  %3 = ptrtoint ptr %vv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %vv, align 4
  %vbi_wq = getelementptr inbounds %struct.saa7146_vv, ptr %vv, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %vbi_wq, ptr noundef nonnull @.str.6, ptr noundef nonnull @vbi_init.__key.5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_open(ptr noundef %dev, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %9 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.body3

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_open.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_open, %if.then9)) #5
          to label %do.end12 [label %if.then9], !srcloc !102

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_open.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef %1) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body3, %entry.do.end12_crit_edge
  %call13 = tail call i32 @saa7146_res_get(ptr noundef %1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %do.body15, label %if.end38

do.body15:                                        ; preds = %do.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %10 = load i32, ptr @saa7146_debug, align 4
  %and16 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.cleanup_crit_edge, label %do.body19

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body19:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_open.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_open, %if.then31)) #5
          to label %cleanup [label %if.then31], !srcloc !102

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_open.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end38:                                         ; preds = %do.end12
  %11 = and i32 %8, -7937
  %12 = or i32 %11, 7424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem, align 4
  %add.ptr44 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %12) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %add.ptr49 = getelementptr i8, ptr %16, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 268439552) #5, !srcloc !106
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 3
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  %v4l2_lock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 4
  tail call void @videobuf_queue_sg_init(ptr noundef %vbi_q, ptr noundef nonnull @vbi_qops, ptr noundef %dev50, ptr noundef %slock, i32 noundef 4, i32 noundef 5, i32 noundef 224, ptr noundef %file, ptr noundef %v4l2_lock) #5
  %function = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vbi_read_timeout, ptr %function, align 4
  %vbi_read_timeout_file = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %vbi_read_timeout_file to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %file, ptr %vbi_read_timeout_file, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 13
  %21 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ext_vv_data, align 4
  %flags = getelementptr inbounds %struct.saa7146_ext_vv, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and51 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52.not = icmp eq i32 %and51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem, align 4
  %add.ptr63 = getelementptr i8, ptr %26, i32 88
  br i1 %cmp52.not, label %do.body59, label %do.body54

do.body54:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 14432) #5, !srcloc !106
  br label %do.body92

do.body59:                                        ; preds = %if.end38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 16777216) #5, !srcloc !106
  %call64 = tail call fastcc i32 @vbi_workaround(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp eq i32 %call64, 0
  br i1 %cmp65.not, label %do.body59.do.body92_crit_edge, label %do.body67

do.body59.do.body92_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

do.body67:                                        ; preds = %do.body59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %27 = load i32, ptr @saa7146_debug, align 4
  %and68 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.do.body92_crit_edge, label %do.body71

do.body67.do.body92_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body92

do.body71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_open.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_open, %if.then83)) #5
          to label %do.body92 [label %if.then83], !srcloc !102

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_open.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #5
  br label %do.body92

do.body92:                                        ; preds = %if.then83, %do.body71, %do.body67.do.body92_crit_edge, %do.body59.do.body92_crit_edge, %do.body54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem, align 4
  %add.ptr96 = getelementptr i8, ptr %29, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 65537) #5, !srcloc !106
  br label %cleanup

cleanup:                                          ; preds = %do.body92, %if.then31, %do.body19, %do.body15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body92 ], [ -16, %if.then31 ], [ -16, %do.body15.cleanup_crit_edge ], [ -16, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_close(ptr noundef %dev, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_close.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_close, %if.then5)) #5
          to label %do.end8 [label %if.then5], !srcloc !102

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_close.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.29, ptr noundef %dev, ptr noundef %1) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %vbi_streaming = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %vbi_streaming to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vbi_streaming, align 4
  %cmp = icmp eq ptr %1, %6
  br i1 %cmp, label %if.then9, label %do.end8.if.end10_crit_edge

do.end8.if.end10_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vbi_stop(ptr noundef %1)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end8.if.end10_crit_edge
  tail call void @saa7146_res_free(ptr noundef %1, i32 noundef 4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_irq_done(ptr noundef %dev, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %slock) #5
  %curr = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr, align 4
  %tobool.not = icmp eq ptr %3, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and18 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %do.body17, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool19.not, label %do.body.do.end12_crit_edge, label %do.body3

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_irq_done.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_irq_done, %if.then7)) #5
          to label %do.end12 [label %if.then7], !srcloc !102

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %curr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_irq_done.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef %dev, ptr noundef %6) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %do.body.do.end12_crit_edge
  %vbi_fieldcount = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %vbi_fieldcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vbi_fieldcount, align 4
  %add = add i32 %8, 2
  store i32 %add, ptr %vbi_fieldcount, align 4
  %9 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curr, align 4
  %field_count = getelementptr inbounds %struct.videobuf_buffer, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %field_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %field_count, align 4
  tail call void @saa7146_buffer_finish(ptr noundef %dev, ptr noundef %1, i32 noundef 4) #5
  br label %if.end40

do.body17:                                        ; preds = %entry
  br i1 %tobool19.not, label %do.body17.if.end40_crit_edge, label %do.body21

do.body17.if.end40_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.body21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_irq_done.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_irq_done, %if.then33)) #5
          to label %if.end40 [label %if.then33], !srcloc !102

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_irq_done.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef %dev) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %do.body21, %do.body17.if.end40_crit_edge, %do.end12
  tail call void @saa7146_buffer_next(ptr noundef %dev, ptr noundef %1, i32 noundef 1) #5
  tail call void @_raw_spin_unlock(ptr noundef %slock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbi_read(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_read.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_read, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_read.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32, ptr noundef %3, ptr noundef %1) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %vbi_streaming = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %vbi_streaming to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbi_streaming, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then10, label %do.end9.if.end12_crit_edge

do.end9.if.end12_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %vbi_streaming to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %vbi_streaming, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end9.if.end12_crit_edge
  %10 = ptrtoint ptr %vbi_streaming to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbi_streaming, align 4
  %cmp14.not = icmp eq ptr %1, %11
  br i1 %cmp14.not, label %if.end40, label %do.body16

do.body16:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %12 = load i32, ptr @saa7146_debug, align 4
  %and17 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.cleanup_crit_edge, label %do.body20

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_read.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_read, %if.then32)) #5
          to label %cleanup [label %if.then32], !srcloc !102

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %vbi_streaming to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbi_streaming, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_read.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, ptr noundef %14) #5
  br label %cleanup

if.end40:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %vbi_read_timeout = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 50
  %call41 = tail call i32 @mod_timer(ptr noundef %vbi_read_timeout, i32 noundef %add) #5
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %1, i32 0, i32 3
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags, align 4
  %and42 = and i32 %17, 2048
  %call43 = tail call i32 @videobuf_read_stream(ptr noundef %vbi_q, ptr noundef %data, i32 noundef %count, ptr noundef %ppos, i32 noundef 1, i32 noundef %and42) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then32, %do.body20, %do.body16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end40 ], [ -16, %if.then32 ], [ -16, %do.body16.cleanup_crit_edge ], [ -16, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_buffer_timeout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_sg_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vbi_read_timeout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vbi_read_timeout_file = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %vbi_read_timeout_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vbi_read_timeout_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_read_timeout.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_read_timeout, %if.then7)) #5
          to label %do.end10 [label %if.then7], !srcloc !102

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_read_timeout.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.21, ptr noundef %5, ptr noundef %3) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  tail call fastcc void @vbi_stop(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vbi_workaround(ptr noundef %dev) #0 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #5
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_addr, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #5
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #5
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @default_wake_function, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %16 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_workaround.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_workaround, %if.then7)) #5
          to label %do.end10 [label %if.then7], !srcloc !102

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_workaround.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef %dev) #5
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev11, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 3264, i32 noundef 0) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %do.body15

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body15:                                        ; preds = %do.end10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_addr, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_addr, align 4
  %add = add i32 %25, 1440
  %26 = call i32 @llvm.bswap.i32(i32 %add)
  %27 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem, align 4
  %add.ptr22 = getelementptr i8, ptr %28, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %26) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr, align 4
  %add26 = add i32 %30, 4096
  %31 = call i32 @llvm.bswap.i32(i32 %add26)
  %32 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem, align 4
  %add.ptr28 = getelementptr i8, ptr %33, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %31) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem, align 4
  %add.ptr33 = getelementptr i8, ptr %35, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1610285056) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem, align 4
  %add.ptr38 = getelementptr i8, ptr %37, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  call void @arm_heavy_mb() #5
  %38 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem, align 4
  %add.ptr43 = getelementptr i8, ptr %39, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1610284544) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  call void @arm_heavy_mb() #5
  %40 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mem, align 4
  %add.ptr48 = getelementptr i8, ptr %41, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 268439552) #5, !srcloc !106
  %d_rps1 = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22
  %cpu_addr = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22, i32 1
  %42 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpu_addr, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 369164432, ptr %43, align 4
  %45 = load ptr, ptr %cpu_addr, align 4
  %arrayidx56 = getelementptr i32, ptr %45, i32 1
  %46 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1946156864, ptr %arrayidx56, align 4
  %ext_vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 13
  %47 = ptrtoint ptr %ext_vv_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ext_vv_data, align 4
  %flags59 = getelementptr inbounds %struct.saa7146_ext_vv, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags59, align 4
  %and60 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %cmp61.not = icmp eq i32 %and60, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %51 = load i32, ptr @saa7146_debug, align 4
  %and101 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %cmp61.not, label %do.body100, label %do.body63

do.body63:                                        ; preds = %do.body15
  br i1 %tobool102.not, label %do.body63.do.body86_crit_edge, label %do.body67

do.body63.do.body86_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

do.body67:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_workaround.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_workaround, %if.then79)) #5
          to label %do.body86 [label %if.then79], !srcloc !102

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_workaround.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #5
  br label %do.body86

do.body86:                                        ; preds = %if.then79, %do.body67, %do.body63.do.body86_crit_edge
  %52 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpu_addr, align 4
  %arrayidx90 = getelementptr i32, ptr %53, i32 2
  %54 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2113576, ptr %arrayidx90, align 4
  br label %do.body131

do.body100:                                       ; preds = %do.body15
  br i1 %tobool102.not, label %do.body100.do.body131_crit_edge, label %do.body104

do.body100.do.body131_crit_edge:                  ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body131

do.body104:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_workaround.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_workaround, %if.then116)) #5
          to label %do.body131 [label %if.then116], !srcloc !102

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_workaround.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #5
  br label %do.body131

do.body131:                                       ; preds = %if.then116, %do.body104, %do.body100.do.body131_crit_edge, %do.body86
  %.sink587 = phi i32 [ 3, %do.body86 ], [ 2, %do.body104 ], [ 2, %do.body100.do.body131_crit_edge ], [ 2, %if.then116 ]
  %.sink = phi i32 [ 4210728, %do.body86 ], [ 262176, %do.body104 ], [ 262176, %do.body100.do.body131_crit_edge ], [ 262176, %if.then116 ]
  %count.0 = phi i32 [ 4, %do.body86 ], [ 3, %do.body104 ], [ 3, %do.body100.do.body131_crit_edge ], [ 3, %if.then116 ]
  %55 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cpu_addr, align 4
  %arrayidx97 = getelementptr i32, ptr %56, i32 %.sink587
  %57 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %arrayidx97, align 4
  %58 = load ptr, ptr %cpu_addr, align 4
  %inc134 = add nuw nsw i32 %count.0, 1
  %arrayidx135 = getelementptr i32, ptr %58, i32 %count.0
  %59 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 65600, ptr %arrayidx135, align 4
  %60 = load ptr, ptr %cpu_addr, align 4
  %inc141 = add nuw nsw i32 %count.0, 2
  %arrayidx142 = getelementptr i32, ptr %60, i32 %inc134
  %61 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 369164432, ptr %arrayidx142, align 4
  %62 = load ptr, ptr %cpu_addr, align 4
  %inc150 = add nuw nsw i32 %count.0, 3
  %arrayidx151 = getelementptr i32, ptr %62, i32 %inc141
  %63 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 9439232, ptr %arrayidx151, align 4
  %64 = load ptr, ptr %cpu_addr, align 4
  %inc157 = add nuw nsw i32 %count.0, 4
  %arrayidx158 = getelementptr i32, ptr %64, i32 %inc150
  %65 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 65568, ptr %arrayidx158, align 4
  %66 = load ptr, ptr %cpu_addr, align 4
  %inc164 = add nuw nsw i32 %count.0, 5
  %arrayidx165 = getelementptr i32, ptr %66, i32 %inc157
  %67 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 65600, ptr %arrayidx165, align 4
  %68 = load ptr, ptr %cpu_addr, align 4
  %inc171 = add nuw nsw i32 %count.0, 6
  %arrayidx172 = getelementptr i32, ptr %68, i32 %inc164
  %69 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 285278352, ptr %arrayidx172, align 4
  %70 = load ptr, ptr %cpu_addr, align 4
  %inc179 = add nuw nsw i32 %count.0, 7
  %arrayidx180 = getelementptr i32, ptr %70, i32 %inc171
  %71 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1610284544, ptr %arrayidx180, align 4
  %72 = load ptr, ptr %cpu_addr, align 4
  %inc186 = or i32 %count.0, 8
  %arrayidx187 = getelementptr i32, ptr %72, i32 %inc179
  %73 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 369164432, ptr %arrayidx187, align 4
  %74 = load ptr, ptr %cpu_addr, align 4
  %inc193 = add nuw nsw i32 %count.0, 9
  %arrayidx194 = getelementptr i32, ptr %74, i32 %inc186
  %75 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 928000, ptr %arrayidx194, align 4
  %76 = load ptr, ptr %cpu_addr, align 4
  %inc200 = add nuw nsw i32 %count.0, 10
  %arrayidx201 = getelementptr i32, ptr %76, i32 %inc193
  %77 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 65568, ptr %arrayidx201, align 4
  %78 = load ptr, ptr %cpu_addr, align 4
  %inc207 = add nuw nsw i32 %count.0, 11
  %arrayidx208 = getelementptr i32, ptr %78, i32 %inc200
  %79 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 268501056, ptr %arrayidx208, align 4
  %80 = load ptr, ptr %cpu_addr, align 4
  %inc214 = add nuw nsw i32 %count.0, 12
  %arrayidx215 = getelementptr i32, ptr %80, i32 %inc207
  %81 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1057030288, ptr %arrayidx215, align 4
  %82 = load ptr, ptr %cpu_addr, align 4
  %inc221 = add nuw nsw i32 %count.0, 13
  %arrayidx222 = getelementptr i32, ptr %82, i32 %inc214
  %83 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 268439552, ptr %arrayidx222, align 4
  %84 = load ptr, ptr %cpu_addr, align 4
  %inc228 = add nuw nsw i32 %count.0, 14
  %arrayidx229 = getelementptr i32, ptr %84, i32 %inc221
  %85 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 96, ptr %arrayidx229, align 4
  %86 = load ptr, ptr %cpu_addr, align 4
  %arrayidx236 = getelementptr i32, ptr %86, i32 %inc228
  %87 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 80, ptr %arrayidx236, align 4
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 10
  %vbi_wq = getelementptr inbounds %struct.saa7146_vv, ptr %1, i32 0, i32 4
  br label %do.body240

for.cond:                                         ; preds = %signal_pending.exit
  br i1 %cmp239, label %for.cond.do.body240_crit_edge, label %for.end

for.cond.do.body240_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body240

do.body240:                                       ; preds = %for.cond.do.body240_crit_edge, %do.body131
  %cmp239 = phi i1 [ true, %do.body131 ], [ false, %for.cond.do.body240_crit_edge ]
  %i.0584 = phi i32 [ 0, %do.body131 ], [ 1, %for.cond.do.body240_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mem, align 4
  %add.ptr244 = getelementptr i8, ptr %89, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 8388736) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mem, align 4
  %add.ptr249 = getelementptr i8, ptr %91, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr249, i32 33554688) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mem, align 4
  %add.ptr254 = getelementptr i8, ptr %93, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 268439552) #5, !srcloc !106
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mem, align 4
  %add.ptr.i = getelementptr i8, ptr %95, i32 220
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  %97 = or i32 %96, 16
  %98 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem, align 4
  %add.ptr12.i = getelementptr i8, ptr %99, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %97) #5, !srcloc !106
  call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #5
  call void @add_wait_queue(ptr noundef %vbi_wq, ptr noundef nonnull %wait) #5
  br label %__here

__here:                                           ; preds = %do.body240
  %100 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 212
  %102 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 ptrtoint (ptr blockaddress(@vbi_workaround, %__here) to i32), ptr %task_state_change, align 4
  %103 = load ptr, ptr %task, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile i32 1, ptr %103, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %d_rps1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %d_rps1, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %108 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mem, align 4
  %add.ptr333 = getelementptr i8, ptr %109, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 %107) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mem, align 4
  %add.ptr338 = getelementptr i8, ptr %111, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr338, i32 2097184) #5, !srcloc !106
  call void @schedule() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %112 = load i32, ptr @saa7146_debug, align 4
  %and340 = and i32 %112, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %__here.do.end361_crit_edge, label %do.body343

__here.do.end361_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end361

do.body343:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_workaround.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_workaround, %if.then355)) #5
          to label %do.end361 [label %if.then355], !srcloc !102

if.then355:                                       ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_workaround.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef %i.0584) #5
  br label %do.end361

do.end361:                                        ; preds = %if.then355, %do.body343, %__here.do.end361_crit_edge
  call void @remove_wait_queue(ptr noundef %vbi_wq, ptr noundef nonnull %wait) #5
  br label %__here413

__here413:                                        ; preds = %do.end361
  %113 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task, align 8
  %task_state_change417 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 212
  %115 = ptrtoint ptr %task_state_change417 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 ptrtoint (ptr blockaddress(@vbi_workaround, %__here413) to i32), ptr %task_state_change417, align 4
  %116 = load ptr, ptr %task, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %116, align 128
  %call2.i572 = call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mem, align 4
  %add.ptr.i574 = getelementptr i8, ptr %119, i32 220
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i574) #5, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %121 = and i32 %120, -17
  %122 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mem, align 4
  %add.ptr12.i575 = getelementptr i8, ptr %123, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i575, i32 %121) #5, !srcloc !106
  call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i572) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mem, align 4
  %add.ptr438 = getelementptr i8, ptr %125, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr438, i32 4096) #5, !srcloc !106
  %126 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %stack.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %132 = and i32 %131, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %__here413.do.body444_crit_edge, !prof !128

__here413.do.body444_crit_edge:                   ; preds = %__here413
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body444

signal_pending.exit:                              ; preds = %__here413
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %129, align 4
  %and1.i.i.i.i.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool442.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool442.not, label %for.cond, label %signal_pending.exit.do.body444_crit_edge

signal_pending.exit.do.body444_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body444

do.body444:                                       ; preds = %signal_pending.exit.do.body444_crit_edge, %__here413.do.body444_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %135 = load i32, ptr @saa7146_debug, align 4
  %and445 = and i32 %135, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and445)
  %tobool446.not = icmp eq i32 %and445, 0
  br i1 %tobool446.not, label %do.body444.do.body472_crit_edge, label %do.body448

do.body444.do.body472_crit_edge:                  ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body472

do.body448:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_workaround.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_workaround, %if.then460)) #5
          to label %do.body472 [label %if.then460], !srcloc !102

if.then460:                                       ; preds = %do.body448
  call void @__sanitizer_cov_trace_pc() #7
  %136 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mem, align 4
  %add.ptr462 = getelementptr i8, ptr %137, i32 264
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr462) #5, !srcloc !103
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_workaround.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.23, i32 noundef %139) #5
  br label %do.body472

do.body472:                                       ; preds = %if.then460, %do.body448, %do.body444.do.body472_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  call void @arm_heavy_mb() #5
  %140 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mem, align 4
  %add.ptr476 = getelementptr i8, ptr %141, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr476, i32 32) #5, !srcloc !106
  %142 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pci, align 4
  %dev478 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 44
  %144 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dma_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev478, i32 noundef 4096, ptr noundef nonnull %call.i, i32 noundef %145, i32 noundef 0) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pci, align 4
  %dev482 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %148 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dma_addr, align 4
  call void @dma_free_attrs(ptr noundef %dev482, i32 noundef 4096, ptr noundef nonnull %call.i, i32 noundef %149, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body472, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %do.body472 ], [ 0, %for.end ], [ -12, %do.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_setup(ptr nocapture noundef readnone %q, ptr nocapture noundef %count, ptr nocapture noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 46080, ptr %size, align 4
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %2 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_setup.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_setup, %if.then5)) #5
          to label %do.end8 [label %if.then5], !srcloc !102

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_setup.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %4, i32 noundef %6) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %q, ptr noundef %vb, i32 noundef %field) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %vb) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %baddr = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 16
  %7 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %baddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.end9.if.end37_crit_edge, label %land.lhs.true

do.end9.if.end37_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

land.lhs.true:                                    ; preds = %do.end9
  %bsize = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 14
  %9 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46080, i32 %10)
  %cmp12 = icmp ult i32 %10, 46080
  br i1 %cmp12, label %do.body14, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.body14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %11 = load i32, ptr @saa7146_debug, align 4
  %and15 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.cleanup96_crit_edge, label %do.body18

do.body14.cleanup96_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup96

do.body18:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then30)) #5
          to label %cleanup96 [label %if.then30], !srcloc !102

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #5
  br label %cleanup96

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %do.end9.if.end37_crit_edge
  %size39 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 5
  %12 = ptrtoint ptr %size39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46080, i32 %13)
  %cmp40.not = icmp eq i32 %13, 46080
  br i1 %cmp40.not, label %if.end37.if.end42_crit_edge, label %if.then41

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7146_dma_free(ptr noundef %5, ptr noundef %q, ptr noundef %vb) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end37.if.end42_crit_edge
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp44 = icmp eq i32 %15, 0
  br i1 %cmp44, label %if.then45, label %if.end42.if.end70_crit_edge

if.end42.if.end70_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then45:                                        ; preds = %if.end42
  %call47 = tail call ptr @videobuf_to_dma(ptr noundef %vb) #5
  %width = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 2
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1440, ptr %width, align 8
  %height = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 3
  %17 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %height, align 4
  %18 = ptrtoint ptr %size39 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 46080, ptr %size39, align 4
  %field53 = getelementptr inbounds %struct.videobuf_buffer, ptr %vb, i32 0, i32 6
  %19 = ptrtoint ptr %field53 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %field, ptr %field53, align 8
  %pci = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %arrayidx = getelementptr %struct.saa7146_buf, ptr %vb, i32 0, i32 3, i32 2
  tail call void @saa7146_pgtable_free(ptr noundef %21, ptr noundef %arrayidx) #5
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %call57 = tail call i32 @saa7146_pgtable_alloc(ptr noundef %23, ptr noundef %arrayidx) #5
  %call59 = tail call i32 @videobuf_iolock(ptr noundef %q, ptr noundef %vb, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %do.body73

if.end62:                                         ; preds = %if.then45
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 4
  %sglist = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call47, i32 0, i32 9
  %26 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sglist, align 4
  %sglen = getelementptr inbounds %struct.videobuf_dmabuf, ptr %call47, i32 0, i32 10
  %28 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sglen, align 4
  %call66 = tail call i32 @saa7146_pgtable_build_single(ptr noundef %25, ptr noundef %arrayidx, ptr noundef %27, i32 noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67.not = icmp eq i32 %call66, 0
  br i1 %cmp67.not, label %if.end62.if.end70_crit_edge, label %if.end62.cleanup96_crit_edge

if.end62.cleanup96_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup96

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.end70:                                         ; preds = %if.end62.if.end70_crit_edge, %if.end42.if.end70_crit_edge
  %30 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %state, align 4
  %activate = getelementptr inbounds %struct.saa7146_buf, ptr %vb, i32 0, i32 2
  %31 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @buffer_activate, ptr %activate, align 4
  br label %cleanup96

do.body73:                                        ; preds = %if.then45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %32 = load i32, ptr @saa7146_debug, align 4
  %and74 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body73.do.end95_crit_edge, label %do.body77

do.body73.do.end95_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end95

do.body77:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_prepare.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_prepare, %if.then89)) #5
          to label %do.end95 [label %if.then89], !srcloc !102

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_prepare.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #5
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.body77, %do.body73.do.end95_crit_edge
  tail call void @saa7146_dma_free(ptr noundef %5, ptr noundef %q, ptr noundef %vb) #5
  br label %cleanup96

cleanup96:                                        ; preds = %do.end95, %if.end70, %if.end62.cleanup96_crit_edge, %if.then30, %do.body18, %do.body14.cleanup96_crit_edge
  %retval.1 = phi i32 [ %call59, %do.end95 ], [ 0, %if.end70 ], [ -22, %if.then30 ], [ -22, %do.body14.cleanup96_crit_edge ], [ -22, %do.body18 ], [ %call66, %if.end62.cleanup96_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr nocapture noundef readonly %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %8 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_queue.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_queue, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_queue.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19, ptr noundef %vb) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %call10 = tail call i32 @saa7146_buffer_queue(ptr noundef %5, ptr noundef %7, ptr noundef %vb) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_release(ptr noundef %q, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.videobuf_queue, ptr %q, i32 0, i32 16
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %6 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_release.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_release, %if.then6)) #5
          to label %do.end9 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_release.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.20, ptr noundef %vb) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  tail call void @saa7146_dma_free(ptr noundef %5, ptr noundef %q, ptr noundef %vb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_dma_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_pgtable_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_pgtable_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_iolock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_pgtable_build_single(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_activate(ptr noundef %dev, ptr noundef %buf, ptr noundef %next) #0 align 64 {
entry:
  %vdma3.i = alloca %struct.saa7146_video_dma, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vv_data, align 4
  %state = getelementptr inbounds %struct.videobuf_buffer, ptr %buf, i32 0, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %3 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @buffer_activate.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@buffer_activate, %if.then5)) #5
          to label %do.end8 [label %if.then5], !srcloc !102

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @buffer_activate.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %dev, ptr noundef %buf, ptr noundef %next) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %4 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vv_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %vdma3.i) #5
  %6 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3.i, i32 0, i32 4
  %10 = getelementptr inbounds %struct.saa7146_video_dma, ptr %vdma3.i, i32 0, i32 5
  %current_hps_sync.i = getelementptr inbounds %struct.saa7146_vv, ptr %5, i32 0, i32 20
  %11 = ptrtoint ptr %current_hps_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_hps_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  %offset.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 3
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %6, align 4
  %add.i = add i32 %14, 23040
  %16 = ptrtoint ptr %vdma3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %vdma3.i, align 4
  %add11.i = add i32 %14, 46080
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add11.i, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1440, ptr %8, align 4
  %dma.i = getelementptr %struct.saa7146_buf, ptr %buf, i32 0, i32 3, i32 2, i32 2
  %19 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma.i, align 8
  %or.i = or i32 %20, 2048
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %9, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1050016, ptr %10, align 4
  call void @saa7146_write_out_dma(ptr noundef %dev, i32 noundef 3, ptr noundef nonnull %vdma3.i) #5
  %d_rps1.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22
  %cpu_addr.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 22, i32 1
  %23 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpu_addr.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1073807504, ptr %24, align 4
  %26 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %26, i32 1
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1048592, ptr %arrayidx20.i, align 4
  %28 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx27.i = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1056964800, ptr %arrayidx27.i, align 4
  %30 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %30, i32 3
  %31 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 268439552, ptr %arrayidx34.i, align 4
  %32 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx41.i = getelementptr i32, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 268439552, ptr %arrayidx41.i, align 4
  %or45.i = select i1 %cmp.i, i32 536875008, i32 536887296
  %34 = call i32 @llvm.bswap.i32(i32 %or45.i) #5
  %35 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx49.i = getelementptr i32, ptr %36, i32 5
  %37 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %arrayidx49.i, align 4
  %or53.i = select i1 %cmp.i, i32 536872960, i32 536879104
  %38 = call i32 @llvm.bswap.i32(i32 %or53.i) #5
  %39 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx57.i = getelementptr i32, ptr %40, i32 6
  %41 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx57.i, align 4
  %42 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx64.i = getelementptr i32, ptr %42, i32 7
  %43 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 96, ptr %arrayidx64.i, align 4
  %44 = load ptr, ptr %cpu_addr.i, align 4
  %arrayidx71.i = getelementptr i32, ptr %44, i32 8
  %45 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 80, ptr %arrayidx71.i, align 4
  %int_slock.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 10
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  call void @arm_heavy_mb() #5
  %mem.i.i = getelementptr inbounds %struct.saa7146_dev, ptr %dev, i32 0, i32 5
  %46 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 220
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  %49 = or i32 %48, 16
  %50 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mem.i.i, align 4
  %add.ptr12.i.i = getelementptr i8, ptr %51, i32 220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i.i, i32 %49) #5, !srcloc !106
  call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i.i, i32 noundef %call2.i.i) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %d_rps1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %d_rps1.i, align 4
  %54 = call i32 @llvm.bswap.i32(i32 %53) #5
  %55 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %56, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %54) #5, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mem.i.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %58, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 2097184) #5, !srcloc !106
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %vdma3.i) #5
  %timeout = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %59, 50
  %call9 = call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_write_out_dma(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7146_buffer_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vbi_stop(ptr noundef %fh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vv_data = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vv_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7146_debug to i32))
  %4 = load i32, ptr @saa7146_debug, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.body2

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vbi_stop.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vbi_stop, %if.then6)) #5
          to label %do.body11 [label %if.then6], !srcloc !102

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vbi_stop.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.22, ptr noundef %1, ptr noundef %fh) #5
  br label %do.body11

do.body11:                                        ; preds = %if.then6, %do.body2, %entry.do.body11_crit_edge
  %slock = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 3
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %mem = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32) #5, !srcloc !106
  %int_slock.i = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %int_slock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 220
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %10 = and i32 %9, -17
  %11 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mem, align 4
  %add.ptr12.i = getelementptr i8, ptr %12, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %10) #5, !srcloc !106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %int_slock.i, i32 noundef %call2.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem, align 4
  %add.ptr26 = getelementptr i8, ptr %14, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 4096) #5, !srcloc !106
  %curr = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %curr, align 4
  %tobool27.not = icmp eq ptr %16, null
  br i1 %tobool27.not, label %do.body11.if.end30_crit_edge, label %if.then28

do.body11.if.end30_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @saa7146_buffer_finish(ptr noundef %1, ptr noundef %3, i32 noundef 4) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %do.body11.if.end30_crit_edge
  %vbi_q = getelementptr inbounds %struct.saa7146_fh, ptr %fh, i32 0, i32 3
  tail call void @videobuf_queue_cancel(ptr noundef %vbi_q) #5
  %vbi_streaming = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %vbi_streaming to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vbi_streaming, align 4
  %timeout = getelementptr inbounds %struct.saa7146_dmaqueue, ptr %3, i32 0, i32 3
  %call32 = tail call i32 @del_timer(ptr noundef %timeout) #5
  %vbi_read_timeout = getelementptr inbounds %struct.saa7146_vv, ptr %3, i32 0, i32 2
  %call33 = tail call i32 @del_timer(ptr noundef %vbi_read_timeout) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call14) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_buffer_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @videobuf_queue_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_res_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7146_buffer_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @videobuf_read_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !80, !82, !83, !84, !86, !88, !89, !91}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @saa7146_vbi_uops, !1, !"saa7146_vbi_uops", i1 false, i1 false}
!1 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 492, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 366, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vbi_init.__UNIQUE_ID_ddebug312, !3, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!8 = !{ptr @vbi_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 370, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vbi_init.__key.5, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 373, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 384, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @vbi_open.__UNIQUE_ID_ddebug313, !15, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 388, i32 3}
!20 = !{ptr @vbi_open.__UNIQUE_ID_ddebug314, !19, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 415, i32 4}
!23 = !{ptr @vbi_open.__UNIQUE_ID_ddebug315, !22, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!24 = !{ptr @vbi_qops, !25, !"vbi_qops", i1 false, i1 false}
!25 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 312, i32 40}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 284, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @buffer_setup.__UNIQUE_ID_ddebug307, !27, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!30 = distinct !{null, !31, !"vbi_pixel_to_capture", i1 false, i1 false}
!31 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 4, i32 12}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 233, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug304, !33, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 236, i32 3}
!38 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug305, !37, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 268, i32 2}
!41 = !{ptr @buffer_prepare.__UNIQUE_ID_ddebug306, !40, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 212, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @buffer_activate.__UNIQUE_ID_ddebug303, !43, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 297, i32 2}
!48 = !{ptr @buffer_queue.__UNIQUE_ID_ddebug308, !47, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 308, i32 2}
!51 = !{ptr @buffer_release.__UNIQUE_ID_ddebug309, !50, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 359, i32 2}
!54 = !{ptr @vbi_read_timeout.__UNIQUE_ID_ddebug311, !53, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 326, i32 2}
!57 = !{ptr @vbi_stop.__UNIQUE_ID_ddebug310, !56, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 18, i32 2}
!60 = !{ptr @vbi_workaround.__UNIQUE_ID_ddebug296, !59, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 44, i32 3}
!63 = !{ptr @vbi_workaround.__UNIQUE_ID_ddebug297, !62, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 51, i32 3}
!66 = !{ptr @vbi_workaround.__UNIQUE_ID_ddebug298, !65, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 99, i32 3}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 107, i32 3}
!71 = !{ptr @vbi_workaround.__UNIQUE_ID_ddebug300, !70, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 110, i32 3}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 120, i32 4}
!76 = !{ptr @vbi_workaround.__UNIQUE_ID_ddebug302, !75, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 429, i32 2}
!79 = !{ptr @vbi_close.__UNIQUE_ID_ddebug316, !78, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 443, i32 3}
!82 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @vbi_irq_done.__UNIQUE_ID_ddebug317, !81, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!84 = !{ptr @vbi_irq_done.__UNIQUE_ID_ddebug318, !85, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!85 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 449, i32 3}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 463, i32 2}
!88 = !{ptr @vbi_read.__UNIQUE_ID_ddebug319, !87, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/common/saa7146/saa7146_vbi.c", i32 472, i32 3}
!91 = !{ptr @vbi_read.__UNIQUE_ID_ddebug320, !90, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148822617, i64 2148822622, i64 2148822635, i64 2148822679, i64 2148822713, i64 2148822734}
!103 = !{i64 7162753}
!104 = !{i64 2156674955}
!105 = !{i64 2156680561}
!106 = !{i64 7162335}
!107 = !{i64 2156681117}
!108 = !{i64 2156685446}
!109 = !{!"auto-init"}
!110 = !{i64 2156609964}
!111 = !{i64 2156610493}
!112 = !{i64 2156611053}
!113 = !{i64 2156611579}
!114 = !{i64 2156612092}
!115 = !{i64 2156612618}
!116 = !{i64 2156613241}
!117 = !{i64 2156624254}
!118 = !{i64 2156624799}
!119 = !{i64 2156625359}
!120 = !{i64 2156595615}
!121 = !{i64 2156596527}
!122 = !{i64 2156630368}
!123 = !{i64 2156630680}
!124 = !{i64 2156631270}
!125 = !{i64 2156592878}
!126 = !{i64 2156593792}
!127 = !{i64 2156638865}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2156642385}
!130 = !{i64 2156642681}
!131 = !{i64 2156645491}
!132 = !{i64 2156646081}
!133 = !{i64 2156666992}
!134 = !{i64 2156667511}
