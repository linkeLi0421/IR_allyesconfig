; ModuleID = '/llk/IR_all_yes/sound/pci/mixart/mixart_core.c_pt.bc'
source_filename = "../sound/pci/mixart/mixart_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mixart_msg = type { i32, %struct.mixart_uid, ptr, i32 }
%struct.mixart_uid = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mixart_mgr = type { i32, [4 x ptr], ptr, i32, [2 x %struct.mem_area], i32, %struct.wait_queue_head, [16 x i32], i32, i32, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.mixart_uid, i32, i32, %struct.mutex }
%struct.mem_area = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.mixart_sample_pos = type { i32, i32, i32, i32 }
%struct.snd_mixart = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, [2 x [4 x %struct.mixart_stream]], [2 x %struct.mixart_stream], %struct.mixart_uid, %struct.mixart_uid, [2 x i32], [2 x i32], [2 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [2 x [2 x i32]], [2 x i32], [2 x i32] }
%struct.mixart_pipe = type { %struct.mixart_uid, i32, %struct.mixart_uid, %struct.mixart_uid, i32, i32, i32 }
%struct.mixart_stream = type { ptr, ptr, i32, i32, i64, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/pci/mixart/mixart_core.c\00", [33 x i8] zeroinitializer }, align 32
@snd_mixart_send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error: no response on msg %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_mixart_send_msg\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_mixart_send_msg._entry_ptr = internal global ptr @snd_mixart_send_msg._entry, section ".printk_index", align 4
@snd_mixart_send_msg._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RESPONSE ERROR!\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_mixart_send_msg._entry_ptr.7 = internal global ptr @snd_mixart_send_msg._entry.5, section ".printk_index", align 4
@snd_mixart_send_msg_wait_notif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: notification %x not received\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_mixart_send_msg_wait_notif\00", [33 x i8] zeroinitializer }, align 32
@snd_mixart_send_msg_wait_notif._entry_ptr = internal global ptr @snd_mixart_send_msg_wait_notif._entry, section ".printk_index", align 4
@mixart_msg_data = internal global { [128 x i32], [128 x i8] } zeroinitializer, align 32
@snd_mixart_threaded_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 436, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"interrupt: error(%d) reading mf %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_mixart_threaded_irq\00", [40 x i8] zeroinitializer }, align 32
@snd_mixart_threaded_irq._entry_ptr = internal global ptr @snd_mixart_threaded_irq._entry, section ".printk_index", align 4
@snd_mixart_threaded_irq._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 462, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"error MSG_SERVICES_TIMER_NOTIFY buffer_id (%x) pos(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_mixart_threaded_irq._entry_ptr.14 = internal global ptr @snd_mixart_threaded_irq._entry.12, section ".printk_index", align 4
@snd_mixart_threaded_irq.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.11, ptr @.str, ptr @.str.16, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_mixart\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIXART TRACE : %s\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_mixart_threaded_irq.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.11, ptr @.str, ptr @.str.17, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"command %x not handled\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_mixart_threaded_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str, i32 528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"canceled notification %x !\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_mixart_threaded_irq._entry_ptr.20 = internal global ptr @snd_mixart_threaded_irq._entry.18, section ".printk_index", align 4
@snd_mixart_threaded_irq.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.11, ptr @.str, ptr @.str.21, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupt received request %x\0A\00", [33 x i8] zeroinitializer }, align 32
@send_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error: no message frame available\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"send_msg\00", [23 x i8] zeroinitializer }, align 32
@send_msg._entry_ptr = internal global ptr @send_msg._entry, section ".printk_index", align 4
@get_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"problem with response size = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"get_msg\00", [24 x i8] zeroinitializer }, align 32
@get_msg._entry_ptr = internal global ptr @get_msg._entry, section ".printk_index", align 4
@snd_mixart_process_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error(%d) reading mf %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_mixart_process_msg\00", [41 x i8] zeroinitializer }, align 32
@snd_mixart_process_msg._entry_ptr = internal global ptr @snd_mixart_process_msg._entry, section ".printk_index", align 4
@snd_mixart_process_msg._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"error MSG_STREAM_ST***_***PUT_STAGE_PACKET status=%x\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_mixart_process_msg._entry_ptr.30 = internal global ptr @snd_mixart_process_msg._entry.28, section ".printk_index", align 4
@snd_mixart_process_msg.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.27, ptr @.str, ptr @.str.31, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"received mf(%x) : msg_id(%x) uid(%x, %x) size(%zd)\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_mixart_process_msg._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str, i32 382, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"doesn't know what to do with message %x\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_mixart_process_msg._entry_ptr.34 = internal global ptr @snd_mixart_process_msg._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1901572, i64 1902336]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1245191, i64 1245192, i64 1245194, i64 1245195]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 237, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 245, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 261, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 299, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"mixart_msg_data\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 326, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 434, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 460, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 513, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 520, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 527, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 549, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 145, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 81, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 352, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 364, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 369, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [34 x i8] c"../sound/pci/mixart/mixart_core.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 380, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @get_msg._entry, ptr @get_msg._entry_ptr, ptr @send_msg._entry, ptr @send_msg._entry_ptr, ptr @snd_mixart_process_msg._entry, ptr @snd_mixart_process_msg._entry.28, ptr @snd_mixart_process_msg._entry.32, ptr @snd_mixart_process_msg._entry_ptr, ptr @snd_mixart_process_msg._entry_ptr.30, ptr @snd_mixart_process_msg._entry_ptr.34, ptr @snd_mixart_send_msg._entry, ptr @snd_mixart_send_msg._entry.5, ptr @snd_mixart_send_msg._entry_ptr, ptr @snd_mixart_send_msg._entry_ptr.7, ptr @snd_mixart_send_msg_wait_notif._entry, ptr @snd_mixart_send_msg_wait_notif._entry_ptr, ptr @snd_mixart_threaded_irq._entry, ptr @snd_mixart_threaded_irq._entry.12, ptr @snd_mixart_threaded_irq._entry.18, ptr @snd_mixart_threaded_irq._entry_ptr, ptr @snd_mixart_threaded_irq._entry_ptr.14, ptr @snd_mixart_threaded_irq._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @mixart_msg_data, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_send_msg._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_send_msg_wait_notif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_msg_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_threaded_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_threaded_irq._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_threaded_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_process_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_process_msg._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_process_msg._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr nocapture noundef readonly %request, i32 noundef %max_resp_size, ptr noundef %resp_data) #0 align 64 {
entry:
  %resp = alloca %struct.mixart_msg, align 4
  %msg_frame = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp) #6
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg_frame) #6
  %4 = ptrtoint ptr %msg_frame to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %msg_frame, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %7 = getelementptr inbounds i8, ptr %wait, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 -1, ptr %7, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %13 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %wait, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @default_wake_function, ptr %6, align 4
  %msg_lock = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #6
  %call1 = call fastcc i32 @send_msg(ptr noundef %mgr, ptr noundef %request, i32 noundef %max_resp_size, i32 noundef 1, ptr noundef nonnull %msg_frame)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %__here, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %msg_lock) #6
  br label %cleanup

__here:                                           ; preds = %entry
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@snd_mixart_send_msg, %__here) to i32), ptr %task_state_change, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %19, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  %msg_sleep = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 6
  call void @add_wait_queue(ptr noundef %msg_sleep, ptr noundef nonnull %wait) #6
  call void @mutex_unlock(ptr noundef %msg_lock) #6
  %call68 = call i32 @schedule_timeout(i32 noundef 40) #6
  call void @remove_wait_queue(ptr noundef %msg_sleep, ptr noundef nonnull %wait) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool70.not = icmp eq i32 %call68, 0
  br i1 %tobool70.not, label %do.end74, label %if.end75

do.end74:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %21 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %msg_frame to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_frame, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %24) #9
  br label %cleanup

if.end75:                                         ; preds = %__here
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %resp, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %1, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resp_data, ptr %2, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %max_resp_size, ptr %3, align 4
  call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #6
  %30 = ptrtoint ptr %msg_frame to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_frame, align 4
  %call77 = call fastcc i32 @get_msg(ptr noundef %mgr, ptr noundef nonnull %resp, i32 noundef %31)
  call void @mutex_unlock(ptr noundef %msg_lock) #6
  %32 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %request, align 4
  %34 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.not = icmp eq i32 %33, %35
  br i1 %cmp.not, label %if.end75.cleanup_crit_edge, label %do.end84

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %pci85 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %36 = ptrtoint ptr %pci85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci85, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end75.cleanup_crit_edge, %do.end74, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -5, %do.end74 ], [ %call77, %do.end84 ], [ %call77, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg_frame) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_msg(ptr nocapture noundef %mgr, ptr nocapture noundef readonly %msg, i32 noundef %max_answersize, i32 noundef %mark_pending, ptr nocapture noundef %msg_event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.mixart_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %rem = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !83

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  %virt = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 65540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !84
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  %add.ptr26 = getelementptr i8, ptr %6, i32 65536
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp = icmp eq i32 %4, %7
  br i1 %cmp, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %10 = add i32 %4, -1064960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %10)
  %11 = icmp ult i32 %10, -16384
  br i1 %11, label %if.end32.cleanup_crit_edge, label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt, align 4
  %add.ptr40 = getelementptr i8, ptr %13, i32 %4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt, align 4
  %add.ptr48 = getelementptr i8, ptr %16, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #6, !srcloc !86
  %add = add nuw nsw i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1064955, i32 %4)
  %cmp49 = icmp ugt i32 %4, 1064955
  %spec.store.select152 = select i1 %cmp49, i32 1048576, i32 %add
  %17 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt, align 4
  %add.ptr55 = getelementptr i8, ptr %18, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %spec.store.select152) #6, !srcloc !86
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %add57 = add i32 %20, 36
  %21 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt, align 4
  %add.ptr61 = getelementptr i8, ptr %22, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %add57) #6, !srcloc !86
  %23 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg, align 4
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %add65 = add i32 %14, 4
  %add.ptr66 = getelementptr i8, ptr %26, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %24) #6, !srcloc !86
  %uid = getelementptr inbounds %struct.mixart_msg, ptr %msg, i32 0, i32 1
  %27 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %uid, align 4
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt, align 4
  %add70 = add i32 %14, 8
  %add.ptr71 = getelementptr i8, ptr %30, i32 %add70
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %28) #6, !srcloc !86
  %desc = getelementptr inbounds %struct.mixart_msg, ptr %msg, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc, align 4
  %33 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virt, align 4
  %add76 = add i32 %14, 12
  %add.ptr77 = getelementptr i8, ptr %34, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %32) #6, !srcloc !86
  %35 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %virt, align 4
  %add81 = add i32 %14, 16
  %add.ptr82 = getelementptr i8, ptr %36, i32 %add81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 36) #6, !srcloc !86
  %37 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt, align 4
  %add86 = add i32 %14, 20
  %add.ptr87 = getelementptr i8, ptr %38, i32 %add86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 36) #6, !srcloc !86
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %41 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt, align 4
  %add92 = add i32 %14, 24
  %add.ptr93 = getelementptr i8, ptr %42, i32 %add92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %40) #6, !srcloc !86
  %43 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt, align 4
  %add97 = add i32 %14, 28
  %add.ptr98 = getelementptr i8, ptr %44, i32 %add97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 36) #6, !srcloc !86
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virt, align 4
  %add102 = add i32 %14, 32
  %add.ptr103 = getelementptr i8, ptr %46, i32 %add102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #6, !srcloc !86
  %add104 = add i32 %max_answersize, 36
  %47 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virt, align 4
  %add108 = add i32 %14, 36
  %add.ptr109 = getelementptr i8, ptr %48, i32 %add108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %add104) #6, !srcloc !86
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp111215.not = icmp eq i32 %50, 0
  br i1 %cmp111215.not, label %if.end36.for.end_crit_edge, label %for.body.lr.ph

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %data = getelementptr inbounds %struct.mixart_msg, ptr %msg, i32 0, i32 2
  %add116 = add i32 %14, 40
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0216 = phi i32 [ 0, %for.body.lr.ph ], [ %add119, %for.body.for.body_crit_edge ]
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %add.ptr112 = getelementptr i8, ptr %52, i32 %i.0216
  %53 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr112, align 4
  %55 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %virt, align 4
  %add117 = add i32 %add116, %i.0216
  %add.ptr118 = getelementptr i8, ptr %56, i32 %add117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %54) #6, !srcloc !86
  %add119 = add i32 %i.0216, 4
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size, align 4
  %cmp111 = icmp ult i32 %add119, %58
  br i1 %cmp111, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end36.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mark_pending)
  %tobool120.not = icmp eq i32 %mark_pending, 0
  br i1 %tobool120.not, label %for.end.if.end126_crit_edge, label %if.then121

for.end.if.end126_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then121:                                       ; preds = %for.end
  %59 = ptrtoint ptr %msg_event to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool122.not = icmp eq i32 %60, 0
  %pending_event124 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 5
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %pending_event124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %pending_event124, align 4
  br label %if.end126

if.else:                                          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %pending_event124 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %14, ptr %pending_event124, align 4
  %63 = ptrtoint ptr %msg_event to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %14, ptr %msg_event, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then123, %for.end.if.end126_crit_edge
  %64 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %virt, align 4
  %add.ptr130 = getelementptr i8, ptr %65, i32 65544
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #6, !srcloc !84
  %67 = add i32 %66, -1081344
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %67)
  %68 = icmp ult i32 %67, -16384
  br i1 %68, label %if.end126.cleanup_crit_edge, label %if.end136

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end136:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %14, 2
  %69 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt, align 4
  %add.ptr140 = getelementptr i8, ptr %70, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %or) #6, !srcloc !86
  %add141 = add nuw nsw i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1081339, i32 %66)
  %cmp142 = icmp ugt i32 %66, 1081339
  %spec.store.select = select i1 %cmp142, i32 1064960, i32 %add141
  %71 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %virt, align 4
  %add.ptr148 = getelementptr i8, ptr %72, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %spec.store.select) #6, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.end136, %if.end126.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end31 ], [ 0, %if.end136 ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %if.end126.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_msg(ptr nocapture noundef readonly %mgr, ptr nocapture noundef %resp, i32 noundef %msg_frame_address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %msg_frame_address
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !84
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt, align 4
  %add = add i32 %msg_frame_address, 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !84
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %resp, align 4
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt, align 4
  %add9 = add i32 %msg_frame_address, 8
  %add.ptr10 = getelementptr i8, ptr %8, i32 %add9
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !84
  %uid = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 1
  %10 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %uid, align 4
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt, align 4
  %add15 = add i32 %msg_frame_address, 12
  %add.ptr16 = getelementptr i8, ptr %12, i32 %add15
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !84
  %desc = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %2)
  %cmp = icmp ult i32 %2, 36
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %size19 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 3
  %15 = ptrtoint ptr %size19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size19, align 4
  %sub = add i32 %2, -36
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub)
  %cmp20 = icmp ult i32 %16, %sub
  br i1 %cmp20, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %2) #9
  br label %_clean_exit

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 2
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt, align 4
  %add25 = add i32 %msg_frame_address, 40
  %add.ptr26 = getelementptr i8, ptr %22, i32 %add25
  tail call void @mmiocpy(ptr noundef %20, ptr noundef %add.ptr26, i32 noundef %sub) #6
  %23 = ptrtoint ptr %size19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %size19, align 4
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 65552
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !84
  %27 = add i32 %26, -1114112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %27)
  %28 = icmp ult i32 %27, -16384
  br i1 %28, label %if.end._clean_exit_crit_edge, label %if.end37

if.end._clean_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %_clean_exit

if.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt, align 4
  %add.ptr41 = getelementptr i8, ptr %30, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %msg_frame_address) #6, !srcloc !86
  %add42 = add nuw nsw i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114107, i32 %26)
  %cmp43 = icmp ugt i32 %26, 1114107
  %spec.store.select = select i1 %cmp43, i32 1097728, i32 %add42
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt, align 4
  %add.ptr49 = getelementptr i8, ptr %32, i32 65552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %spec.store.select) #6, !srcloc !86
  br label %_clean_exit

_clean_exit:                                      ; preds = %if.end37, %if.end._clean_exit_crit_edge, %if.then
  %err.0 = phi i32 [ -22, %if.then ], [ 0, %if.end37 ], [ -22, %if.end._clean_exit_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_send_msg_wait_notif(ptr noundef %mgr, ptr nocapture noundef readonly %request, i32 noundef %notif_event) #0 align 64 {
entry:
  %notif_event.addr = alloca i32, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notif_event.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %notif_event, ptr %notif_event.addr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #6
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %notif_event)
  %tobool.not = icmp eq i32 %notif_event, 0
  %3 = getelementptr inbounds i8, ptr %wait, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !87

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 274, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %and = and i32 %notif_event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end56, label %do.end40, !prof !83

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %notif_event)
  %tobool59.not = icmp sgt i32 %notif_event, -1
  br i1 %tobool59.not, label %if.end91, label %do.end75, !prof !83

do.end75:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end91:                                         ; preds = %if.end56
  %5 = tail call i32 @llvm.read_register.i32(metadata !72) #6
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wait, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %msg_lock = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #6
  %call92 = call fastcc i32 @send_msg(ptr noundef %mgr, ptr noundef %request, i32 noundef 512, i32 noundef 1, ptr noundef nonnull %notif_event.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %__here, label %if.then94

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %msg_lock) #6
  br label %cleanup

__here:                                           ; preds = %if.end91
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@snd_mixart_send_msg_wait_notif, %__here) to i32), ptr %task_state_change, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !88
  %msg_sleep = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 6
  call void @add_wait_queue(ptr noundef %msg_sleep, ptr noundef nonnull %wait) #6
  call void @mutex_unlock(ptr noundef %msg_lock) #6
  %call172 = call i32 @schedule_timeout(i32 noundef 40) #6
  call void @remove_wait_queue(ptr noundef %msg_sleep, ptr noundef nonnull %wait) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool174.not = icmp eq i32 %call172, 0
  br i1 %tobool174.not, label %do.end178, label %__here.cleanup_crit_edge

__here.cleanup_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end178:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %notif_event.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %notif_event.addr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %__here.cleanup_crit_edge, %if.then94, %do.end75, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ -22, %do.end75 ], [ %call92, %if.then94 ], [ -5, %do.end178 ], [ 0, %__here.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_send_msg_nonblock(ptr noundef %mgr, ptr nocapture noundef readonly %request) local_unnamed_addr #0 align 64 {
entry:
  %message_frame = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %message_frame) #6
  %0 = ptrtoint ptr %message_frame to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %message_frame, align 4, !annotation !89
  %msg_lock = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #6
  %call = call fastcc i32 @send_msg(ptr noundef %mgr, ptr noundef %request, i32 noundef 512, i32 noundef 0, ptr noundef nonnull %message_frame)
  tail call void @mutex_unlock(ptr noundef %msg_lock) #6
  %msg_processed = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msg_processed, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %msg_processed, i32 1, i32 3, i32 1) #6
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_processed, ptr %msg_processed, i32 1, ptr elementtype(i32) %msg_processed) #6, !srcloc !90
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %message_frame) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr %struct.mixart_mgr, ptr %dev_id, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !84
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 721420288) #6, !srcloc !86
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #6, !srcloc !86
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt, align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 134217728) #6, !srcloc !86
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_threaded_irq(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.mixart_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp) #6
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 2
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 3
  %lock = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 11
  %2 = getelementptr inbounds i8, ptr %resp, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %virt.i = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt.i, align 4
  %add.ptr.i314 = getelementptr i8, ptr %5, i32 65564
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i314) #6, !srcloc !84
  %7 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt.i, align 4
  %add.ptr4.i315 = getelementptr i8, ptr %8, i32 65560
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i315) #6, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp.i316 = icmp eq i32 %6, %9
  %10 = add i32 %6, -1097728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %10)
  %11 = icmp ult i32 %10, -16384
  %12 = or i1 %11, %cmp.i316
  br i1 %12, label %entry.while.end211_crit_edge, label %while.body.lr.ph

entry.while.end211_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end211

while.body.lr.ph:                                 ; preds = %entry
  %pci206 = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 2
  %msg_lock = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 12
  %pending_event = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 5
  %msg_fifo_writeptr = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 9
  %msg_sleep = getelementptr inbounds %struct.mixart_mgr, ptr %dev_id, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %13 = phi i32 [ %6, %while.body.lr.ph ], [ %93, %sw.epilog.while.body_crit_edge ]
  %14 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 %13
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #6, !srcloc !84
  %add.i = add nuw nsw i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1097723, i32 %13)
  %cmp17.i = icmp ugt i32 %13, 1097723
  %spec.store.select.i = select i1 %cmp17.i, i32 1081344, i32 %add.i
  %17 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %18, i32 65564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %spec.store.select.i) #6, !srcloc !86
  %and = and i32 %16, 3
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %while.body.unreachabledefault [
    i32 1, label %sw.bb
    i32 0, label %sw.bb168
    i32 3, label %while.body.sw.bb179_crit_edge
    i32 2, label %do.body193
  ]

while.body.sw.bb179_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb179

sw.bb:                                            ; preds = %while.body
  %20 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %resp, align 4
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mixart_msg_data, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 512, ptr %1, align 4
  %and1 = and i32 %16, -4
  %call2 = call fastcc i32 @get_msg(ptr noundef %dev_id, ptr noundef nonnull %resp, i32 noundef %and1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %pci206 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci206, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call2, i32 noundef %16) #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %25 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %26, label %do.body149 [
    i32 1901572, label %if.then5
    i32 1902336, label %if.then123
  ]

if.then5:                                         ; preds = %if.end
  %28 = load i32, ptr @mixart_msg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %28)
  %cmp9 = icmp ugt i32 %28, 31
  br i1 %cmp9, label %do.end21, label %for.cond.preheader, !prof !87

for.cond.preheader:                               ; preds = %if.then5
  %29 = load i32, ptr @mixart_msg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp38311.not = icmp eq i32 %29, 0
  br i1 %cmp38311.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end21:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 446, i32 noundef 9, ptr noundef null) #6
  br label %sw.epilog

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0312 = phi i32 [ %inc116, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [31 x %struct.mixart_sample_pos], ptr getelementptr inbounds ([128 x i32], ptr @mixart_msg_data, i32 0, i32 1), i32 0, i32 %i.0312
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %and40 = lshr i32 %31, 12
  %shr = and i32 %and40, 15
  %and41 = lshr i32 %31, 8
  %shr42 = and i32 %and41, 15
  %and43 = and i32 %31, 127
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %33)
  %cmp48.not = icmp uge i32 %shr, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr42)
  %cmp50 = icmp ugt i32 %shr42, 1
  %or.cond = select i1 %cmp48.not, i1 true, i1 %cmp50
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and43)
  %cmp53 = icmp ugt i32 %and43, 3
  %or.cond280 = select i1 %or.cond, i1 true, i1 %cmp53
  br i1 %or.cond280, label %cleanup107, label %if.end63

if.end63:                                         ; preds = %for.body
  %arrayidx47 = getelementptr %struct.mixart_mgr, ptr %dev_id, i32 0, i32 1, i32 %shr
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx47, align 4
  %and44 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45.not = icmp eq i32 %and44, 0
  %arrayidx66 = getelementptr %struct.snd_mixart, ptr %35, i32 0, i32 11, i32 %shr42
  %arrayidx68 = getelementptr %struct.snd_mixart, ptr %35, i32 0, i32 10, i32 %shr42, i32 %and43
  %stream.0 = select i1 %cmp45.not, ptr %arrayidx68, ptr %arrayidx66
  %36 = ptrtoint ptr %stream.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stream.0, align 8
  %tobool70.not = icmp eq ptr %37, null
  br i1 %tobool70.not, label %if.end63.for.inc_crit_edge, label %land.lhs.true

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end63
  %status = getelementptr inbounds %struct.mixart_stream, ptr %stream.0, i32 0, i32 3
  %38 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp71 = icmp eq i32 %39, 2
  br i1 %cmp71, label %if.then73, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then73:                                        ; preds = %land.lhs.true
  %runtime75 = getelementptr inbounds %struct.snd_pcm_substream, ptr %37, i32 0, i32 11
  %40 = ptrtoint ptr %runtime75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime75, align 4
  %sample_pos_high_part = getelementptr [31 x %struct.mixart_sample_pos], ptr getelementptr inbounds ([128 x i32], ptr @mixart_msg_data, i32 0, i32 1), i32 0, i32 %i.0312, i32 2
  %42 = ptrtoint ptr %sample_pos_high_part to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sample_pos_high_part, align 4
  %conv78 = zext i32 %43 to i64
  %shl = shl nuw i64 %conv78, 32
  %sample_pos_low_part81 = getelementptr [31 x %struct.mixart_sample_pos], ptr getelementptr inbounds ([128 x i32], ptr @mixart_msg_data, i32 0, i32 1), i32 0, i32 %i.0312, i32 3
  %44 = ptrtoint ptr %sample_pos_low_part81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sample_pos_low_part81, align 4
  %conv82 = zext i32 %45 to i64
  %or = or i64 %shl, %conv82
  %abs_period_elapsed = getelementptr inbounds %struct.mixart_stream, ptr %stream.0, i32 0, i32 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 16
  %46 = ptrtoint ptr %abs_period_elapsed to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %abs_period_elapsed, align 8
  %48 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %period_size, align 4
  %conv85306 = zext i32 %49 to i64
  %add307 = add i64 %47, %conv85306
  call void @__sanitizer_cov_trace_cmp8(i64 %add307, i64 %or)
  %cmp86308 = icmp ugt i64 %add307, %or
  br i1 %cmp86308, label %for.inc.critedge, label %cleanup.lr.ph

cleanup.lr.ph:                                    ; preds = %if.then73
  %buf_periods = getelementptr inbounds %struct.mixart_stream, ptr %stream.0, i32 0, i32 5
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %cleanup.lr.ph
  %add309 = phi i64 [ %add307, %cleanup.lr.ph ], [ %add, %cleanup.cleanup_crit_edge ]
  %50 = ptrtoint ptr %buf_periods to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_periods, align 8
  %inc = add i32 %51, 1
  store i32 %inc, ptr %buf_periods, align 8
  %52 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %53)
  %cmp91.not = icmp ult i32 %inc, %53
  %spec.store.select = select i1 %cmp91.not, i32 %inc, i32 0
  %54 = ptrtoint ptr %buf_periods to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %spec.store.select, ptr %buf_periods, align 8
  %55 = ptrtoint ptr %abs_period_elapsed to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add309, ptr %abs_period_elapsed, align 8
  %56 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %period_size, align 4
  %conv85 = zext i32 %57 to i64
  %add = add i64 %add309, %conv85
  %cmp86 = icmp ugt i64 %add, %or
  br i1 %cmp86, label %while.end, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %abs_period_elapsed to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %abs_period_elapsed, align 8
  %60 = trunc i64 %59 to i32
  %conv99 = sub i32 %45, %60
  %buf_period_frag = getelementptr inbounds %struct.mixart_stream, ptr %stream.0, i32 0, i32 6
  %61 = ptrtoint ptr %buf_period_frag to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv99, ptr %buf_period_frag, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %62 = ptrtoint ptr %stream.0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stream.0, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %63) #6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  br label %for.inc

cleanup107:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %pci206 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pci206, align 4
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %sample_pos_low_part = getelementptr [31 x %struct.mixart_sample_pos], ptr getelementptr inbounds ([128 x i32], ptr @mixart_msg_data, i32 0, i32 1), i32 0, i32 %i.0312, i32 3
  %66 = ptrtoint ptr %sample_pos_low_part to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sample_pos_low_part, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.13, i32 noundef %31, i32 noundef %67) #9
  br label %sw.epilog

for.inc.critedge:                                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %abs_period_elapsed to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %abs_period_elapsed, align 8
  %70 = trunc i64 %69 to i32
  %conv99.c = sub i32 %45, %70
  %buf_period_frag.c = getelementptr inbounds %struct.mixart_stream, ptr %stream.0, i32 0, i32 6
  %71 = ptrtoint ptr %buf_period_frag.c to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv99.c, ptr %buf_period_frag.c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.critedge, %while.end, %land.lhs.true.for.inc_crit_edge, %if.end63.for.inc_crit_edge
  %inc116 = add nuw i32 %i.0312, 1
  %72 = load i32, ptr @mixart_msg_data, align 4
  %cmp38 = icmp ult i32 %inc116, %72
  br i1 %cmp38, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then123:                                       ; preds = %if.end
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp125 = icmp ugt i32 %74, 1
  br i1 %cmp125, label %if.then127, label %if.then123.sw.epilog_crit_edge

if.then123.sw.epilog_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then127:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  %sub129 = add i32 %74, -1
  %arrayidx130 = getelementptr i8, ptr @mixart_msg_data, i32 %sub129
  %75 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx130, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_threaded_irq, %if.then141)) #6
          to label %sw.epilog [label %if.then141], !srcloc !93

if.then141:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %pci206 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pci206, align 4
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug242, ptr noundef %dev143, ptr noundef nonnull @.str.16, ptr noundef nonnull @mixart_msg_data) #6
  br label %sw.epilog

do.body149:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_threaded_irq, %if.then161)) #6
          to label %sw.epilog [label %if.then161], !srcloc !93

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %pci206 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pci206, align 4
  %dev163 = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug243, ptr noundef %dev163, ptr noundef nonnull @.str.17, i32 noundef %26) #6
  br label %sw.epilog

sw.bb168:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool170.not = icmp sgt i32 %16, -1
  br i1 %tobool170.not, label %sw.bb168.sw.bb179_crit_edge, label %if.then171

sw.bb168.sw.bb179_crit_edge:                      ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb179

if.then171:                                       ; preds = %sw.bb168
  call void @__sanitizer_cov_trace_pc() #8
  %and172 = and i32 %16, 2147483647
  %80 = ptrtoint ptr %pci206 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci206, align 4
  %dev177 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev177, ptr noundef nonnull @.str.19, i32 noundef %and172) #9
  br label %sw.bb179

sw.bb179:                                         ; preds = %if.then171, %sw.bb168.sw.bb179_crit_edge, %while.body.sw.bb179_crit_edge
  %msg.2 = phi i32 [ %16, %while.body.sw.bb179_crit_edge ], [ %16, %sw.bb168.sw.bb179_crit_edge ], [ %and172, %if.then171 ]
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #6
  %and180 = and i32 %msg.2, -4
  %82 = ptrtoint ptr %pending_event to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pending_event, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and180, i32 %83)
  %cmp181 = icmp eq i32 %and180, %83
  br i1 %cmp181, label %if.then183, label %if.else185

if.then183:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef %msg_sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %84 = ptrtoint ptr %pending_event to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %pending_event, align 4
  br label %if.end190

if.else185:                                       ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %msg_fifo_writeptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_fifo_writeptr, align 4
  %arrayidx186 = getelementptr %struct.mixart_mgr, ptr %dev_id, i32 0, i32 7, i32 %86
  %87 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %msg.2, ptr %arrayidx186, align 4
  %88 = load i32, ptr %msg_fifo_writeptr, align 4
  %inc188 = add i32 %88, 1
  %rem = srem i32 %inc188, 16
  store i32 %rem, ptr %msg_fifo_writeptr, align 4
  tail call fastcc void @snd_mixart_process_msg(ptr noundef %dev_id)
  br label %if.end190

if.end190:                                        ; preds = %if.else185, %if.then183
  tail call void @mutex_unlock(ptr noundef %msg_lock) #6
  br label %sw.epilog

while.body.unreachabledefault:                    ; preds = %while.body
  unreachable

do.body193:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_threaded_irq, %if.then205)) #6
          to label %sw.epilog [label %if.then205], !srcloc !93

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %pci206 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pci206, align 4
  %dev207 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug244, ptr noundef %dev207, ptr noundef nonnull @.str.21, i32 noundef %16) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then205, %do.body193, %if.end190, %if.then161, %do.body149, %if.then141, %if.then127, %if.then123.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %cleanup107, %do.end21, %for.cond.preheader.sw.epilog_crit_edge, %do.end
  %91 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %92, i32 65564
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !84
  %94 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %virt.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %95, i32 65560
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !84
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %96)
  %cmp.i = icmp eq i32 %93, %96
  %97 = add i32 %93, -1097728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16384, i32 %97)
  %98 = icmp ult i32 %97, -16384
  %99 = or i1 %98, %cmp.i
  br i1 %99, label %sw.epilog.while.end211_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog.while.end211_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end211

while.end211:                                     ; preds = %sw.epilog.while.end211_crit_edge, %entry.while.end211_crit_edge
  %virt = getelementptr %struct.mixart_mgr, ptr %dev_id, i32 0, i32 4, i32 1, i32 1
  %100 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %101, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 587202560) #6, !srcloc !86
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mixart_process_msg(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  %resp = alloca %struct.mixart_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp) #6
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %resp, i32 0, i32 3
  %msg_fifo_readptr = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 8
  %msg_fifo_writeptr = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 9
  %4 = getelementptr inbounds i8, ptr %resp, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  %6 = ptrtoint ptr %msg_fifo_readptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_fifo_readptr, align 4
  %8 = ptrtoint ptr %msg_fifo_writeptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_fifo_writeptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not55 = icmp eq i32 %7, %9
  br i1 %cmp.not55, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pci34 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %msg_processed = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %sw.epilog36.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %7, %while.body.lr.ph ], [ %37, %sw.epilog36.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 7, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %10, 1
  %rem = srem i32 %inc, 16
  %13 = ptrtoint ptr %msg_fifo_readptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem, ptr %msg_fifo_readptr, align 4
  %and4 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and4)
  %cond = icmp eq i32 %and4, 3
  br i1 %cond, label %sw.bb, label %do.end33

sw.bb:                                            ; preds = %while.body
  %and = and i32 %12, -4
  %14 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %resp, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mixart_msg_data, ptr %2, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %3, align 4
  %call = call fastcc i32 @get_msg(ptr noundef %mgr, ptr noundef nonnull %resp, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci34, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call, i32 noundef %12) #9
  br label %sw.epilog36

if.end:                                           ; preds = %sw.bb
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %20, label %do.body15 [
    i32 1245191, label %if.end.sw.bb7_crit_edge
    i32 1245192, label %if.end.sw.bb7_crit_edge56
    i32 1245194, label %if.end.sw.bb7_crit_edge57
    i32 1245195, label %if.end.sw.bb7_crit_edge58
  ]

if.end.sw.bb7_crit_edge58:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end.sw.bb7_crit_edge57:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end.sw.bb7_crit_edge56:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge56, %if.end.sw.bb7_crit_edge57, %if.end.sw.bb7_crit_edge58
  %22 = load i32, ptr @mixart_msg_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %sw.bb7.sw.epilog36_crit_edge, label %do.end11

sw.bb7.sw.epilog36_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog36

do.end11:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci34, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.29, i32 noundef %22) #9
  br label %sw.epilog36

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_process_msg.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_process_msg, %if.then20)) #6
          to label %sw.epilog36 [label %if.then20], !srcloc !93

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci34, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_process_msg.__UNIQUE_ID_ddebug240, ptr noundef %dev22, ptr noundef nonnull @.str.31, i32 noundef %12, i32 noundef %20, i32 noundef %28, i32 noundef %30, i32 noundef %32) #6
  br label %sw.epilog36

do.end33:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.33, i32 noundef %12) #9
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %do.end33, %if.then20, %do.body15, %do.end11, %sw.bb7.sw.epilog36_crit_edge, %do.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msg_processed, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %msg_processed, i32 1, i32 3, i32 1) #6
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msg_processed, ptr %msg_processed, i32 1, ptr elementtype(i32) %msg_processed) #6, !srcloc !94
  %36 = ptrtoint ptr %msg_fifo_readptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_fifo_readptr, align 4
  %38 = ptrtoint ptr %msg_fifo_writeptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_fifo_writeptr, align 4
  %cmp.not = icmp eq i32 %37, %39
  br i1 %cmp.not, label %sw.epilog36.while.end_crit_edge, label %sw.epilog36.while.body_crit_edge

sw.epilog36.while.body_crit_edge:                 ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sw.epilog36.while.end_crit_edge:                  ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sw.epilog36.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_mixart_init_mailbox(ptr nocapture noundef readonly %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %virt = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 870500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 870504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #6, !srcloc !86
  %irq = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %virt9 = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 1, i32 1
  %6 = ptrtoint ptr %virt9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt9, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 587202560) #6, !srcloc !86
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_mixart_exit_mailbox(ptr nocapture noundef readonly %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 721420288) #6, !srcloc !86
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_mixart_reset_board(ptr nocapture noundef readonly %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1) #6, !srcloc !86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../sound/pci/mixart/mixart_core.c", i32 237, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/pci/mixart/mixart_core.c", i32 245, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snd_mixart_send_msg._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @snd_mixart_send_msg._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/mixart/mixart_core.c", i32 261, i32 3}
!12 = !{ptr @snd_mixart_send_msg._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @snd_mixart_send_msg._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../sound/pci/mixart/mixart_core.c", i32 291, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/mixart/mixart_core.c", i32 299, i32 3}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @snd_mixart_send_msg_wait_notif._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @snd_mixart_send_msg_wait_notif._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/mixart/mixart_core.c", i32 434, i32 5}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snd_mixart_threaded_irq._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @snd_mixart_threaded_irq._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/mixart/mixart_core.c", i32 460, i32 7}
!28 = !{ptr @snd_mixart_threaded_irq._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @snd_mixart_threaded_irq._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/mixart/mixart_core.c", i32 513, i32 6}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug242, !31, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/mixart/mixart_core.c", i32 520, i32 4}
!36 = !{ptr @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug243, !35, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/mixart/mixart_core.c", i32 527, i32 5}
!39 = !{ptr @snd_mixart_threaded_irq._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @snd_mixart_threaded_irq._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/mixart/mixart_core.c", i32 549, i32 4}
!43 = !{ptr @snd_mixart_threaded_irq.__UNIQUE_ID_ddebug244, !42, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!44 = !{ptr @mixart_msg_data, !45, !"mixart_msg_data", i1 false, i1 false}
!45 = !{!"../sound/pci/mixart/mixart_core.c", i32 326, i32 12}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/mixart/mixart_core.c", i32 145, i32 3}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @send_msg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @send_msg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/mixart/mixart_core.c", i32 81, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @get_msg._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @get_msg._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/mixart/mixart_core.c", i32 352, i32 5}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @snd_mixart_process_msg._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @snd_mixart_process_msg._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/mixart/mixart_core.c", i32 364, i32 6}
!63 = !{ptr @snd_mixart_process_msg._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @snd_mixart_process_msg._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/mixart/mixart_core.c", i32 369, i32 5}
!67 = !{ptr @snd_mixart_process_msg.__UNIQUE_ID_ddebug240, !66, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/mixart/mixart_core.c", i32 380, i32 4}
!70 = !{ptr @snd_mixart_process_msg._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @snd_mixart_process_msg._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{!"sp"}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2154662861}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 4214202}
!85 = !{i64 2154654197}
!86 = !{i64 4213784}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{i64 2154672699}
!89 = !{!"auto-init"}
!90 = !{i64 2148251161, i64 2148251187, i64 2148251216, i64 2148251250, i64 2148251281, i64 2148251304}
!91 = !{i64 2154683901}
!92 = !{i64 2154684175}
!93 = !{i64 2148732976, i64 2148732981, i64 2148732994, i64 2148733038, i64 2148733072, i64 2148733093}
!94 = !{i64 2148253626, i64 2148253652, i64 2148253681, i64 2148253715, i64 2148253746, i64 2148253769}
!95 = !{i64 2154700941}
!96 = !{i64 2154701751}
