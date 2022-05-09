; ModuleID = '/llk/IR_all_yes/drivers/misc/bcm-vk/bcm_vk_msg.c_pt.bc'
source_filename = "../drivers/misc/bcm-vk/bcm_vk_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bcm_vk = type { ptr, [3 x ptr], i32, %struct.bcm_vk_card_info, %struct.bcm_vk_proc_mon_info, %struct.bcm_vk_dauth_info, %struct.mutex, %struct.miscdevice, i32, ptr, %struct.timer_list, [2 x %struct.bcm_vk_tty], ptr, %struct.work_struct, %struct.kref, %struct.spinlock, i16, [128 x i32], %struct.spinlock, [160 x %struct.bcm_vk_ctx], [128 x %struct.bcm_vk_ht_entry], i32, %struct.atomic_t, %struct.bcm_vk_msg_chan, %struct.bcm_vk_msg_chan, ptr, %struct.work_struct, [1 x i32], ptr, i32, %struct.notifier_block, i32, %struct.bcm_vk_hb_ctrl, %struct.spinlock, %struct.bcm_vk_alert, %struct.bcm_vk_alert, %struct.bcm_vk_alert_cnts, i32, %struct.bcm_vk_peer_log, i32 }
%struct.bcm_vk_card_info = type { i32, [64 x i8], [64 x i8], i32, [3 x i32], i32, i32, i32 }
%struct.bcm_vk_proc_mon_info = type { i32, i32, [8 x %struct.bcm_vk_proc_mon_entry_t] }
%struct.bcm_vk_proc_mon_entry_t = type { [8 x i8], i32, i32 }
%struct.bcm_vk_dauth_info = type { [4 x %struct.bcm_vk_dauth_key] }
%struct.bcm_vk_dauth_key = type { [72 x i8], [8 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bcm_vk_tty = type { %struct.tty_port, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bcm_vk_ctx = type { %struct.list_head, i32, i8, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head }
%struct.bcm_vk_ht_entry = type { %struct.list_head }
%struct.bcm_vk_msg_chan = type { i32, %struct.mutex, [4 x ptr], %struct.spinlock, [4 x %struct.list_head], [4 x %struct.bcm_vk_sync_qinfo] }
%struct.bcm_vk_sync_qinfo = type { ptr, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bcm_vk_hb_ctrl = type { %struct.timer_list, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bcm_vk_alert = type { i16, i16 }
%struct.bcm_vk_alert_cnts = type { i16, i16 }
%struct.bcm_vk_peer_log = type { i32, i32, i32, i32, [0 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.bcm_vk_wkent = type { %struct.list_head, ptr, [4 x %struct.bcm_vk_dma], i32, ptr, i32, i32, i32, [0 x %struct.vk_msg_blk] }
%struct.bcm_vk_dma = type { ptr, i32, i32, ptr, i32, i32 }
%struct.vk_msg_blk = type { i8, i8, i16, i32, i32, i32 }
%struct.bcm_vk_msgq = type { i16, i16, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct._vk_data = type <{ i32, i64 }>

@__param_str_hb_mon = internal constant [14 x i8] c"bcm_vk.hb_mon\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@hb_mon = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_hb_mon = internal constant %struct.kernel_param { ptr @__param_str_hb_mon, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @hb_mon } }, section "__param", align 4
@__UNIQUE_ID_hb_montype236 = internal constant [28 x i8] c"bcm_vk.parmtype=hb_mon:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_hb_mon237 = internal constant [55 x i8] c"bcm_vk.parm=hb_mon:Monitoring heartbeat continuously.\0A\00", section ".modinfo", align 1
@__param_str_batch_log = internal constant [17 x i8] c"bcm_vk.batch_log\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@batch_log = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_batch_log = internal constant %struct.kernel_param { ptr @__param_str_batch_log, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @batch_log } }, section "__param", align 4
@__UNIQUE_ID_batch_logtype238 = internal constant [30 x i8] c"bcm_vk.parmtype=batch_log:int\00", section ".modinfo", align 1
@__UNIQUE_ID_batch_log239 = internal constant [60 x i8] c"bcm_vk.parm=batch_log:Max num of logs per batch operation.\0A\00", section ".modinfo", align 1
@bcm_vk_hb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&hb->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm_vk_sync_msgq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"BAR1 msgq marker not initialized.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_vk_sync_msgq\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/misc/bcm-vk/bcm_vk_msg.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_vk_sync_msgq._entry_ptr = internal global ptr @bcm_vk_sync_msgq._entry, section ".printk_index", align 4
@bcm_vk_sync_msgq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 438, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Advertised msgq %d error - max %d allowed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@bcm_vk_sync_msgq._entry_ptr.9 = internal global ptr @bcm_vk_sync_msgq._entry.6, section ".printk_index", align 4
@bcm_vk_sync_msgq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Msgq info already in sync\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_sync_msgq._entry_ptr.12 = internal global ptr @bcm_vk_sync_msgq._entry.10, section ".printk_index", align 4
@bcm_vk_sync_msgq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"MsgQ[%d] type %d num %d, @ 0x%x, db_offset 0x%x rd_idx %d wr_idx %d, size %d, nxt 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_sync_msgq._entry_ptr.15 = internal global ptr @bcm_vk_sync_msgq._entry.13, section ".printk_index", align 4
@bcm_vk_send_shutdown_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCIe comm chan - invalid marker (0x%x)!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm_vk_send_shutdown_msg\00", [39 x i8] zeroinitializer }, align 32
@bcm_vk_send_shutdown_msg._entry_ptr = internal global ptr @bcm_vk_send_shutdown_msg._entry, section ".printk_index", align 4
@bcm_vk_send_shutdown_msg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 720, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sending shutdown message to q %d for pid %d fails.\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm_vk_send_shutdown_msg._entry_ptr.20 = internal global ptr @bcm_vk_send_shutdown_msg._entry.18, section ".printk_index", align 4
@bcm_to_h_msg_dequeue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 830, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid rd_idx 0x%x or size 0x%x => max 0x%x!\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_to_h_msg_dequeue\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@bcm_to_h_msg_dequeue._entry_ptr = internal global ptr @bcm_to_h_msg_dequeue._entry, section ".printk_index", align 4
@bcm_to_h_msg_dequeue._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.3, i32 855, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Kernel mem allocation failure.\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm_to_h_msg_dequeue._entry_ptr.26 = internal global ptr @bcm_to_h_msg_dequeue._entry.24, section ".printk_index", align 4
@bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.28, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcm_vk\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"MsgQ[%d] [Rd Wr] = [%d %d] blks extracted %d - Q = [u-%d a-%d]/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm_to_h_msg_dequeue._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 907, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Could not find MsgId[0x%x] for resp func %d bmap %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm_to_h_msg_dequeue._entry_ptr.31 = internal global ptr @bcm_to_h_msg_dequeue._entry.29, section ".printk_index", align 4
@bcm_to_h_msg_dequeue._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.3, i32 920, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Q[%d] Per loop processing exceeds %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm_to_h_msg_dequeue._entry_ptr.35 = internal global ptr @bcm_to_h_msg_dequeue._entry.32, section ".printk_index", align 4
@bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.22, ptr @.str.3, ptr @.str.36, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"total %d drained from queues\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm_vk_msgq_irqhandler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 962, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Interrupt %d received when msgq not inited\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcm_vk_msgq_irqhandler\00", [41 x i8] zeroinitializer }, align 32
@bcm_vk_msgq_irqhandler._entry_ptr = internal global ptr @bcm_vk_msgq_irqhandler._entry, section ".printk_index", align 4
@bcm_vk_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 983, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error allocating context\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm_vk_open\00", [20 x i8] zeroinitializer }, align 32
@bcm_vk_open._entry_ptr = internal global ptr @bcm_vk_open._entry, section ".printk_index", align 4
@bcm_vk_open.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ctx_returned with idx %d, pid %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_vk_read.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm_vk_read\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Buf count %zu\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm_vk_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 1067, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error return 1st block in -EMSGSIZE\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_read._entry_ptr = internal global ptr @bcm_vk_read._entry, section ".printk_index", align 4
@bcm_vk_write.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 1, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm_vk_write\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Msg count %zu\0A\00", [17 x i8] zeroinitializer }, align 32
@bcm_vk_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 1099, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failure with size %zu not multiple of %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_write._entry_ptr = internal global ptr @bcm_vk_write._entry, section ".printk_index", align 4
@bcm_vk_write._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.3, i32 1128, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Blk size %d exceed max queue size allowed %d\0A\00", [50 x i8] zeroinitializer }, align 32
@bcm_vk_write._entry_ptr.50 = internal global ptr @bcm_vk_write._entry.48, section ".printk_index", align 4
@bcm_vk_write._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.3, i32 1137, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msg_id overflow\0A\00", [47 x i8] zeroinitializer }, align 32
@bcm_vk_write._entry_ptr.53 = internal global ptr @bcm_vk_write._entry.51, section ".printk_index", align 4
@bcm_vk_write.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.45, ptr @.str.3, ptr @.str.54, i8 1, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[Q-%d]Message ctx id %d, usr_msg_id 0x%x sent msg_id 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm_vk_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.45, ptr @.str.3, ptr @.str.55, i8 1, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No Transfer allowed during reset, pid %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_write.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.45, ptr @.str.3, ptr @.str.56, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"In PID 0x%x(%d), converted PID 0x%x(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@bcm_vk_write._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.3, i32 1231, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fail to enqueue msg to to_v queue\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm_vk_write._entry_ptr.59 = internal global ptr @bcm_vk_write._entry.57, section ".printk_index", align 4
@bcm_vk_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 1266, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error cnt %d, setting back to 0\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm_vk_poll\00", [20 x i8] zeroinitializer }, align 32
@bcm_vk_poll._entry_ptr = internal global ptr @bcm_vk_poll._entry, section ".printk_index", align 4
@bcm_vk_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 1297, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d dma still pending for [fd-%d] pid %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_vk_release\00", [17 x i8] zeroinitializer }, align 32
@bcm_vk_release._entry_ptr = internal global ptr @bcm_vk_release._entry, section ".printk_index", align 4
@bcm_vk_release.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Draining for [fd-%d] pid %d - delay %d ms\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_msg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1327, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error initializing internal data structures\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk_msg_init\00", [16 x i8] zeroinitializer }, align 32
@bcm_vk_msg_init._entry_ptr = internal global ptr @bcm_vk_msg_init._entry, section ".printk_index", align 4
@bcm_vk_msg_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.3, i32 1333, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error initializing communication channel\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm_vk_msg_init._entry_ptr.69 = internal global ptr @bcm_vk_msg_init._entry.67, section ".printk_index", align 4
@bcm_vk_msg_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.3, i32 1340, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error reading comm msg Q info\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm_vk_msg_init._entry_ptr.72 = internal global ptr @bcm_vk_msg_init._entry.70, section ".printk_index", align 4
@bcm_vk_hb_poll.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_vk_hb_poll\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Last uptime %d current %d, lost %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm_vk_hb_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 174, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Heartbeat Misses %d times, %d s!\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_vk_hb_poll._entry_ptr = internal global ptr @bcm_vk_hb_poll._entry, section ".printk_index", align 4
@bcm_vk_drain_all_pend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Drained: fid %u size %u msg 0x%x(seq-%x) ctx 0x%x[fd-%d] args:[0x%x 0x%x] resp %s, bmap %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm_vk_drain_all_pend\00", [42 x i8] zeroinitializer }, align 32
@bcm_vk_drain_all_pend._entry_ptr = internal global ptr @bcm_vk_drain_all_pend._entry, section ".printk_index", align 4
@.str.78 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@bcm_vk_drain_all_pend._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.77, ptr @.str.3, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Total drained items %d [fd-%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm_vk_drain_all_pend._entry_ptr.82 = internal global ptr @bcm_vk_drain_all_pend._entry.80, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm_to_v_msg_enqueue.seq_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bcm_to_v_msg_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 614, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"number of blks %d not matching %d MsgId[0x%x]: func %d ctx 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_to_v_msg_enqueue\00", [43 x i8] zeroinitializer }, align 32
@bcm_to_v_msg_enqueue._entry_ptr = internal global ptr @bcm_to_v_msg_enqueue._entry, section ".printk_index", align 4
@bcm_to_v_msg_enqueue._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 646, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid wr_idx 0x%x => max 0x%x!\00", [63 x i8] zeroinitializer }, align 32
@bcm_to_v_msg_enqueue._entry_ptr.87 = internal global ptr @bcm_to_v_msg_enqueue._entry.85, section ".printk_index", align 4
@bcm_to_v_msg_enqueue.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.84, ptr @.str.3, ptr @.str.88, i8 0, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"MsgQ[%d] [Rd Wr] = [%d %d] blks inserted %d - Q = [u-%d a-%d]/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_vk_get_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 222, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No context allowed during reset by pid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_vk_get_ctx\00", [17 x i8] zeroinitializer }, align 32
@bcm_vk_get_ctx._entry_ptr = internal global ptr @bcm_vk_get_ctx._entry, section ".printk_index", align 4
@bcm_vk_get_ctx._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 236, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"All context in use\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm_vk_get_ctx._entry_ptr.93 = internal global ptr @bcm_vk_get_ctx._entry.91, section ".printk_index", align 4
@bcm_vk_get_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->rd_wq\00", [20 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm_vk_append_ib_sgl\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Skip inserting inband SGL, [0x%x/0x%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.98, ptr @.str.3, ptr @.str.100, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Num %u sgl items appended, size 0x%x, room 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@bcm_vk_free_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.3, i32 300, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NULL context detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk_free_ctx\00", [16 x i8] zeroinitializer }, align 32
@bcm_vk_free_ctx._entry_ptr = internal global ptr @bcm_vk_free_ctx._entry, section ".printk_index", align 4
@bcm_vk_free_ctx._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.3, i32 309, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"context[%d] not in use!\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm_vk_free_ctx._entry_ptr.105 = internal global ptr @bcm_vk_free_ctx._entry.103, section ".printk_index", align 4
@bcm_vk_handle_last_sess.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcm_vk_handle_last_sess\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No more sessions, shut down pid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@bcm_vk_data_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vk->ctx_lock\00", [18 x i8] zeroinitializer }, align 32
@bcm_vk_data_init.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&vk->msg_id_lock\00", [47 x i8] zeroinitializer }, align 32
@bcm_vk_data_init.__key.111 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vk->host_alert_lock\00", [43 x i8] zeroinitializer }, align 32
@bcm_vk_msg_chan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chan->msgq_mutex\00", [46 x i8] zeroinitializer }, align 32
@bcm_vk_msg_chan_init.__key.114 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chan->pendq_lock\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 9]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"hb_mon\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 32, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"batch_log\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 35, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 187, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 427, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 436, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 453, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 480, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 698, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 718, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 828, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 855, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 864, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 904, i32 6 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 919, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 927, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 961, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 983, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 996, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1021, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1067, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1094, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1098, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1127, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1137, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1144, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1160, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1219, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1231, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1266, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1296, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1304, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1327, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1333, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1340, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 156, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 172, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 380, i32 5 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 395, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [8 x i8] c"seq_num\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 594, i32 13 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 609, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 645, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 665, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 220, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 236, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 252, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 230, i32 6 }
@___asan_gen_.418 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.418, i32 214, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 174, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 559, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 574, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 300, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 309, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 743, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 939, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 945, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 946, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 513, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.481 = private constant [36 x i8] c"../drivers/misc/bcm-vk/bcm_vk_msg.c\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 514, i32 2 }
@llvm.compiler.used = appending global [159 x ptr] [ptr @__UNIQUE_ID_batch_log239, ptr @__UNIQUE_ID_batch_logtype238, ptr @__UNIQUE_ID_hb_mon237, ptr @__UNIQUE_ID_hb_montype236, ptr @__param_batch_log, ptr @__param_hb_mon, ptr @bcm_to_h_msg_dequeue._entry, ptr @bcm_to_h_msg_dequeue._entry.24, ptr @bcm_to_h_msg_dequeue._entry.29, ptr @bcm_to_h_msg_dequeue._entry.32, ptr @bcm_to_h_msg_dequeue._entry_ptr, ptr @bcm_to_h_msg_dequeue._entry_ptr.26, ptr @bcm_to_h_msg_dequeue._entry_ptr.31, ptr @bcm_to_h_msg_dequeue._entry_ptr.35, ptr @bcm_to_v_msg_enqueue._entry, ptr @bcm_to_v_msg_enqueue._entry.85, ptr @bcm_to_v_msg_enqueue._entry_ptr, ptr @bcm_to_v_msg_enqueue._entry_ptr.87, ptr @bcm_vk_drain_all_pend._entry, ptr @bcm_vk_drain_all_pend._entry.80, ptr @bcm_vk_drain_all_pend._entry_ptr, ptr @bcm_vk_drain_all_pend._entry_ptr.82, ptr @bcm_vk_free_ctx._entry, ptr @bcm_vk_free_ctx._entry.103, ptr @bcm_vk_free_ctx._entry_ptr, ptr @bcm_vk_free_ctx._entry_ptr.105, ptr @bcm_vk_get_ctx._entry, ptr @bcm_vk_get_ctx._entry.91, ptr @bcm_vk_get_ctx._entry_ptr, ptr @bcm_vk_get_ctx._entry_ptr.93, ptr @bcm_vk_hb_poll._entry, ptr @bcm_vk_hb_poll._entry_ptr, ptr @bcm_vk_msg_init._entry, ptr @bcm_vk_msg_init._entry.67, ptr @bcm_vk_msg_init._entry.70, ptr @bcm_vk_msg_init._entry_ptr, ptr @bcm_vk_msg_init._entry_ptr.69, ptr @bcm_vk_msg_init._entry_ptr.72, ptr @bcm_vk_msgq_irqhandler._entry, ptr @bcm_vk_msgq_irqhandler._entry_ptr, ptr @bcm_vk_open._entry, ptr @bcm_vk_open._entry_ptr, ptr @bcm_vk_poll._entry, ptr @bcm_vk_poll._entry_ptr, ptr @bcm_vk_read._entry, ptr @bcm_vk_read._entry_ptr, ptr @bcm_vk_release._entry, ptr @bcm_vk_release._entry_ptr, ptr @bcm_vk_send_shutdown_msg._entry, ptr @bcm_vk_send_shutdown_msg._entry.18, ptr @bcm_vk_send_shutdown_msg._entry_ptr, ptr @bcm_vk_send_shutdown_msg._entry_ptr.20, ptr @bcm_vk_sync_msgq._entry, ptr @bcm_vk_sync_msgq._entry.10, ptr @bcm_vk_sync_msgq._entry.13, ptr @bcm_vk_sync_msgq._entry.6, ptr @bcm_vk_sync_msgq._entry_ptr, ptr @bcm_vk_sync_msgq._entry_ptr.12, ptr @bcm_vk_sync_msgq._entry_ptr.15, ptr @bcm_vk_sync_msgq._entry_ptr.9, ptr @bcm_vk_write._entry, ptr @bcm_vk_write._entry.48, ptr @bcm_vk_write._entry.51, ptr @bcm_vk_write._entry.57, ptr @bcm_vk_write._entry_ptr, ptr @bcm_vk_write._entry_ptr.50, ptr @bcm_vk_write._entry_ptr.53, ptr @bcm_vk_write._entry_ptr.59, ptr @hb_mon, ptr @batch_log, ptr @bcm_vk_hb_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @bcm_to_v_msg_enqueue.seq_num, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @bcm_vk_get_ctx.__key, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @bcm_vk_data_init.__key, ptr @.str.108, ptr @bcm_vk_data_init.__key.109, ptr @.str.110, ptr @bcm_vk_data_init.__key.111, ptr @.str.112, ptr @bcm_vk_msg_chan_init.__key, ptr @.str.113, ptr @bcm_vk_msg_chan_init.__key.114, ptr @.str.115], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_mon to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batch_log to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_hb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_sync_msgq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_sync_msgq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_sync_msgq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_sync_msgq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_send_shutdown_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_send_shutdown_msg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_h_msg_dequeue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_h_msg_dequeue._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_h_msg_dequeue._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_h_msg_dequeue._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_msgq_irqhandler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_write._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_write._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_write._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_msg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_msg_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_msg_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_hb_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_drain_all_pend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_drain_all_pend._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_v_msg_enqueue.seq_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_v_msg_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_to_v_msg_enqueue._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_get_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_get_ctx._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_get_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_free_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_free_ctx._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_data_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_data_init.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_data_init.__key.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_msg_chan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_msg_chan_init.__key.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bcm_vk_drv_access_ok(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgq_inited = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited, i32 noundef 4) #9
  %0 = ptrtoint ptr %msgq_inited to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %msgq_inited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_set_host_alert(ptr noundef %vk, i32 noundef %bit_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_alert_lock = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 33
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host_alert_lock) #9
  %notfs = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 34, i32 1
  %0 = ptrtoint ptr %notfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %notfs, align 2
  %2 = trunc i32 %bit_mask to i16
  %conv6 = or i16 %1, %2
  store i16 %conv6, ptr %notfs, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host_alert_lock, i32 noundef %call2) #9
  %wq_offload = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 27
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %wq_offload) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 25
  %3 = ptrtoint ptr %wq_thread to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq_thread, align 4
  %wq_work = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %wq_work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_hb_init(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hb_ctrl = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 32
  tail call void @init_timer_key(ptr noundef %hb_ctrl, ptr noundef nonnull @bcm_vk_hb_poll, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @bcm_vk_hb_init.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 300
  %call = tail call i32 @mod_timer(ptr noundef %hb_ctrl, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_hb_poll(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %t, i32 -19060
  %msgq_inited.i = getelementptr i8, ptr %t, i32 -616
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %msgq_inited.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %msgq_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %entry.if.else17_crit_edge, label %land.lhs.true

entry.if.else17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr @hb_mon, align 1, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i46.not = icmp eq i8 %2, 0
  br i1 %tobool.i46.not, label %land.lhs.true.if.else17_crit_edge, label %if.then

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.then:                                          ; preds = %land.lhs.true
  %arrayidx.i = getelementptr i8, ptr %t, i32 -19056
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1092
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !249
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %last_uptime = getelementptr inbounds %struct.bcm_vk_hb_ctrl, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %last_uptime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_uptime, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  %lost_cnt = getelementptr inbounds %struct.bcm_vk_hb_ctrl, ptr %t, i32 0, i32 2
  br i1 %cmp, label %if.then6, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %lost_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lost_cnt, align 4
  %inc = add i32 %10, 1
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.then.do.body_crit_edge
  %inc.sink = phi i32 [ %inc, %if.then6 ], [ 0, %if.then.do.body_crit_edge ]
  %11 = ptrtoint ptr %lost_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc.sink, ptr %lost_cnt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_hb_poll.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_hb_poll, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !251

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr3, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %last_uptime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_uptime, align 4
  %lost_cnt14 = getelementptr inbounds %struct.bcm_vk_hb_ctrl, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %lost_cnt14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lost_cnt14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_hb_poll.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %15, i32 noundef %6, i32 noundef %17) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %18 = ptrtoint ptr %last_uptime to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %6, ptr %last_uptime, align 4
  br label %if.end19

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %entry.if.else17_crit_edge
  %lost_cnt18 = getelementptr inbounds %struct.bcm_vk_hb_ctrl, ptr %t, i32 0, i32 2
  %19 = ptrtoint ptr %lost_cnt18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %lost_cnt18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %do.end
  %lost_cnt20 = getelementptr inbounds %struct.bcm_vk_hb_ctrl, ptr %t, i32 0, i32 2
  %20 = ptrtoint ptr %lost_cnt20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lost_cnt20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp21 = icmp ugt i32 %21, 9
  br i1 %cmp21, label %do.end25, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end25:                                         ; preds = %if.end19
  %22 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr3, align 4
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.75, i32 noundef 9, i32 noundef 27) #12
  tail call void @bcm_vk_blk_drv_access(ptr noundef %add.ptr3) #9
  %host_alert_lock.i = getelementptr i8, ptr %t, i32 56
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host_alert_lock.i) #9
  %notfs.i = getelementptr i8, ptr %t, i32 102
  %24 = ptrtoint ptr %notfs.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %notfs.i, align 2
  %conv6.i = or i16 %25, 16384
  store i16 %conv6.i, ptr %notfs.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host_alert_lock.i, i32 noundef %call2.i) #9
  %wq_offload.i = getelementptr i8, ptr %t, i32 -28
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %wq_offload.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then.i, label %do.end25.if.end28_crit_edge

do.end25.if.end28_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then.i:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %wq_thread.i = getelementptr i8, ptr %t, i32 -76
  %26 = ptrtoint ptr %wq_thread.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wq_thread.i, align 4
  %wq_work.i = getelementptr i8, ptr %t, i32 -72
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %wq_work.i) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then.i, %do.end25.if.end28_crit_edge, %if.end19.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %28, 300
  %call29 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_hb_deinit(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hb_ctrl = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 32
  %call = tail call i32 @del_timer(ptr noundef %hb_ctrl) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_drain_msg_on_reset(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %to_v_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23
  tail call fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev, ptr noundef %to_v_msg_chan, ptr noundef null)
  %2 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %to_h_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24
  tail call fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev2, ptr noundef %to_h_msg_chan, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev, ptr noundef %chan, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %proc_cnt.i = alloca i32, align 4
  %del_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_q) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %del_q, i32 0, i32 1
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %ctx, i32 0, i32 6
  %1 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -728
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vk.0 = phi ptr [ %add.ptr, %if.then ], [ inttoptr (i32 -1 to ptr), %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %del_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %del_q, ptr %del_q, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %del_q, ptr %0, align 4
  %pendq_lock = getelementptr inbounds %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %pendq_lock) #9
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp141.not = icmp eq i32 %6, 0
  br i1 %cmp141.not, label %if.end.for.end29_crit_edge, label %for.body.lr.ph

if.end.for.end29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body.lr.ph:                                   ; preds = %if.end
  %idx18 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %num.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc28.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 4, i32 %num.0142
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp14.not137 = icmp eq ptr %8, %arrayidx
  br i1 %cmp14.not137, label %for.body.for.inc28_crit_edge, label %for.body.for.body15_crit_edge

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %entry1.0138 = phi ptr [ %tmp.0140, %for.inc.for.body15_crit_edge ], [ %8, %for.body.for.body15_crit_edge ]
  %9 = ptrtoint ptr %entry1.0138 to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.0140 = load ptr, ptr %entry1.0138, align 4
  br i1 %tobool.not, label %for.body15.if.then20_crit_edge, label %lor.lhs.false

for.body15.if.then20_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false:                                    ; preds = %for.body15
  %ctx17 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.0138, i32 0, i32 1
  %10 = ptrtoint ptr %ctx17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx17, align 4
  %idx = getelementptr inbounds %struct.bcm_vk_ctx, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %14 = ptrtoint ptr %idx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp19 = icmp eq i32 %13, %15
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %for.body15.if.then20_crit_edge
  %call.i.i128 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0138) #9
  br i1 %call.i.i128, label %if.end.i.i, label %if.then20.__list_del_entry.exit.i_crit_edge

if.then20.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0138, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %entry1.0138 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entry1.0138, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then20.__list_del_entry.exit.i_crit_edge
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry1.0138, ptr noundef %23, ptr noundef nonnull %del_q) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry1.0138, ptr %0, align 4
  %25 = ptrtoint ptr %entry1.0138 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %del_q, ptr %entry1.0138, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0138, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry1.0138, ptr %23, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %tmp.0140, %arrayidx
  br i1 %cmp14.not, label %for.inc.for.inc28_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %inc = add nuw i32 %num.0142, 1
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chan, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.for.end29_crit_edge

for.inc28.for.end29_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end29:                                        ; preds = %for.inc28.for.end29_crit_edge, %if.end.for.end29_crit_edge
  call void @_raw_spin_unlock(ptr noundef %pendq_lock) #9
  %30 = ptrtoint ptr %del_q to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %del_q, align 4
  %cmp42.not144 = icmp eq ptr %31, %del_q
  br i1 %cmp42.not144, label %for.end29.if.end83_crit_edge, label %for.body44.lr.ph

for.end29.if.end83_crit_edge:                     ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

for.body44.lr.ph:                                 ; preds = %for.end29
  %bmap = getelementptr inbounds %struct.bcm_vk, ptr %vk.0, i32 0, i32 17
  %pend_cnt = getelementptr inbounds %struct.bcm_vk_ctx, ptr %ctx, i32 0, i32 7
  %msg_id_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk.0, i32 0, i32 15
  br label %for.body44

for.body44:                                       ; preds = %bcm_vk_free_wkent.exit.for.body44_crit_edge, %for.body44.lr.ph
  %num.1146 = phi i32 [ 0, %for.body44.lr.ph ], [ %inc46, %bcm_vk_free_wkent.exit.for.body44_crit_edge ]
  %entry1.1145 = phi ptr [ %31, %for.body44.lr.ph ], [ %tmp.1147, %bcm_vk_free_wkent.exit.for.body44_crit_edge ]
  %32 = ptrtoint ptr %entry1.1145 to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.1147 = load ptr, ptr %entry1.1145, align 4
  %call.i.i129 = call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.1145) #9
  br i1 %call.i.i129, label %if.end.i.i132, label %for.body44.list_del.exit_crit_edge

for.body44.list_del.exit_crit_edge:               ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i132:                                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i130 = getelementptr inbounds %struct.list_head, ptr %entry1.1145, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i130 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i130, align 4
  %35 = ptrtoint ptr %entry1.1145 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entry1.1145, align 4
  %prev1.i.i.i131 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i131, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i132, %for.body44.list_del.exit_crit_edge
  %39 = ptrtoint ptr %entry1.1145 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.1145, align 4
  %prev.i133 = getelementptr inbounds %struct.list_head, ptr %entry1.1145, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i133 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i133, align 4
  %inc46 = add i32 %num.1146, 1
  br i1 %tobool.not, label %list_del.exit.if.end68_crit_edge, label %if.then48

list_del.exit.if.end68_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then48:                                        ; preds = %list_del.exit
  %to_v_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 8
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 2
  %41 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %trans_id.i, align 2
  %43 = lshr i16 %42, 4
  %44 = zext i16 %43 to i32
  %div3.i = lshr i32 %44, 5
  %arrayidx.i = getelementptr i32, ptr %bmap, i32 %div3.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %44, 31
  %shr.i = lshr i32 %46, %and.i
  %and1.i = and i32 %shr.i, 1
  %to_h_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 4
  %47 = ptrtoint ptr %to_h_msg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %to_h_msg, align 4
  %tobool51.not = icmp eq ptr %48, null
  %49 = load i32, ptr @batch_log, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc46, i32 %49)
  %cmp53.not = icmp ugt i32 %inc46, %49
  br i1 %cmp53.not, label %if.then48.if.end61_crit_edge, label %do.end

if.then48.if.end61_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

do.end:                                           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %to_v_msg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %to_v_msg, align 4
  %conv = zext i8 %51 to i32
  %size = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 1
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %size, align 1
  %conv55 = zext i8 %53 to i32
  %seq_num = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 7
  %54 = ptrtoint ptr %seq_num to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seq_num, align 4
  %context_id = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %context_id, align 4
  %ctx56 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 1
  %58 = ptrtoint ptr %ctx56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx56, align 4
  %idx57 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %idx57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %idx57, align 4
  %cmd = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 1, i32 1
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 1, i32 2
  %64 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arg, align 4
  %cond60 = select i1 %tobool51.not, ptr @.str.79, ptr @.str.78
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %conv, i32 noundef %conv55, i32 noundef %44, i32 noundef %55, i32 noundef %57, i32 noundef %61, i32 noundef %63, i32 noundef %65, ptr noundef nonnull %cond60, i32 noundef %and1.i) #12
  br label %if.end61

if.end61:                                         ; preds = %do.end, %if.then48.if.end61_crit_edge
  br i1 %tobool51.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pend_cnt, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %pend_cnt, i32 1, i32 3, i32 1) #9
  %66 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_cnt, ptr %pend_cnt, i32 1, ptr elementtype(i32) %pend_cnt) #9, !srcloc !252
  br label %if.end68

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool64.not = icmp eq i32 %and1.i, 0
  br i1 %tobool64.not, label %if.else.if.end68_crit_edge, label %if.then65

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_lock(ptr noundef %msg_id_lock.i) #9
  %shl.i.i.i = shl nuw i32 1, %and.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i, align 4
  %and.i.i.i = and i32 %68, %neg.i.i.i
  store i32 %and.i.i.i, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock(ptr noundef %msg_id_lock.i) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.else.if.end68_crit_edge, %if.then63, %list_del.exit.if.end68_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proc_cnt.i) #9
  %69 = ptrtoint ptr %proc_cnt.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %proc_cnt.i, align 4, !annotation !253
  %dma.i = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 2
  %call.i = call i32 @bcm_vk_sg_free(ptr noundef %dev, ptr noundef %dma.i, i32 noundef 4, ptr noundef nonnull %proc_cnt.i) #9
  %70 = ptrtoint ptr %proc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %proc_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i, label %if.end68.bcm_vk_free_wkent.exit_crit_edge, label %if.then.i

if.end68.bcm_vk_free_wkent.exit_crit_edge:        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_vk_free_wkent.exit

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %ctx.i = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 1
  %72 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctx.i, align 4
  %dma_cnt.i = getelementptr inbounds %struct.bcm_vk_ctx, ptr %73, i32 0, i32 8
  %call.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %dma_cnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %dma_cnt.i, i32 1, i32 3, i32 1) #9
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_cnt.i, ptr %dma_cnt.i, i32 1, ptr elementtype(i32) %dma_cnt.i) #9, !srcloc !252
  br label %bcm_vk_free_wkent.exit

bcm_vk_free_wkent.exit:                           ; preds = %if.then.i, %if.end68.bcm_vk_free_wkent.exit_crit_edge
  %to_h_msg.i = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.1145, i32 0, i32 4
  %75 = ptrtoint ptr %to_h_msg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %to_h_msg.i, align 4
  call void @kfree(ptr noundef %76) #9
  call void @kfree(ptr noundef %entry1.1145) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proc_cnt.i) #9
  %cmp42.not = icmp eq ptr %tmp.1147, %del_q
  br i1 %cmp42.not, label %for.end75, label %bcm_vk_free_wkent.exit.for.body44_crit_edge

bcm_vk_free_wkent.exit.for.body44_crit_edge:      ; preds = %bcm_vk_free_wkent.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.end75:                                        ; preds = %bcm_vk_free_wkent.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc46)
  %tobool76.not = icmp eq i32 %inc46, 0
  %brmerge = or i1 %tobool.not, %tobool76.not
  br i1 %brmerge, label %for.end75.if.end83_crit_edge, label %do.end81

for.end75.if.end83_crit_edge:                     ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end81:                                         ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #11
  %idx82 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %ctx, i32 0, i32 1
  %77 = ptrtoint ptr %idx82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %idx82, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %inc46, i32 noundef %78) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end81, %for.end75.if.end83_crit_edge, %for.end29.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_q) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_sync_msgq(ptr noundef %vk, i1 noundef zeroext %force_sync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %to_v_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23
  %to_h_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24
  %arrayidx.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1052
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %5 = and i32 %4, -66912256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66912256, i32 %5)
  %cmp.i = icmp eq i32 %5, -66912256
  br i1 %cmp.i, label %bcm_vk_msgq_marker_valid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

bcm_vk_msgq_marker_valid.exit:                    ; preds = %entry
  %arrayidx.i4.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 24768
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20254786, i32 %8)
  %phi.cmp.i = icmp eq i32 %8, -20254786
  br i1 %phi.cmp.i, label %if.end, label %bcm_vk_msgq_marker_valid.exit.do.end_crit_edge

bcm_vk_msgq_marker_valid.exit.do.end_crit_edge:   ; preds = %bcm_vk_msgq_marker_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %bcm_vk_msgq_marker_valid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %bcm_vk_msgq_marker_valid.exit
  %9 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i4.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24776
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %12 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i4.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %13, i32 24772
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #9, !srcloc !249
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %div124 = lshr i32 %15, 1
  %16 = add i32 %15, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %16)
  %17 = icmp ult i32 %16, -6
  br i1 %17, label %do.end7, label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %div124, i32 noundef 3) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %18 = ptrtoint ptr %to_v_msg_chan to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div124, ptr %to_v_msg_chan, align 4
  %19 = ptrtoint ptr %to_h_msg_chan to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div124, ptr %to_h_msg_chan, align 4
  %20 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i4.i, align 4
  %msgq_inited.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %msgq_inited.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %msgq_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not = icmp eq i32 %23, 0
  %brmerge = or i1 %tobool.i.not, %force_sync
  br i1 %brmerge, label %for.body23.preheader, label %do.end17

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %cleanup

for.body23.preheader:                             ; preds = %if.end8
  %24 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %add.ptr = getelementptr i8, ptr %21, i32 %24
  %umax = call i32 @llvm.umax.i32(i32 %div124, i32 1)
  %sync_qinfo = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5
  %25 = call ptr @memset(ptr %sync_qinfo, i32 0, i32 80)
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.preheader
  %msgq.1130 = phi ptr [ %incdec.ptr, %for.body23.for.body23_crit_edge ], [ %add.ptr, %for.body23.preheader ]
  %j.0129 = phi i32 [ %inc, %for.body23.for.body23_crit_edge ], [ 0, %for.body23.preheader ]
  %arrayidx25 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 2, i32 %j.0129
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msgq.1130, ptr %arrayidx25, align 4
  %start = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 2
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %start) #9, !srcloc !249
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %size = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 5
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %size) #9, !srcloc !249
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %nxt = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 6
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %nxt) #9, !srcloc !249
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %db_offset = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 7
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %db_offset) #9, !srcloc !249
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %and = and i32 %34, 65535
  %neg = xor i32 %34, -1
  %shr = lshr i32 %neg, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %shr)
  %cmp36 = icmp eq i32 %and, %shr
  %mul = shl i32 %j.0129, 3
  %add = add i32 %mul, 1156
  %msgq_db_offset.0 = select i1 %cmp36, i32 %and, i32 %add
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %msgq.1130) #9, !srcloc !254
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv = zext i16 %36 to i32
  %num = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 1
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %num) #9, !srcloc !254
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %conv48 = zext i16 %38 to i32
  %rd_idx = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 3
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx) #9, !srcloc !249
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %wr_idx = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130, i32 0, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx) #9, !srcloc !249
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %j.0129, i32 noundef %conv, i32 noundef %conv48, i32 noundef %28, i32 noundef %msgq_db_offset.0, i32 noundef %40, i32 noundef %42, i32 noundef %30, i32 noundef %32) #12
  %arrayidx56 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %j.0129
  %43 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i4.i, align 4
  %add.ptr59 = getelementptr i8, ptr %44, i32 %28
  %45 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr59, ptr %arrayidx56, align 4
  %q_size = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %j.0129, i32 1
  %46 = ptrtoint ptr %q_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %30, ptr %q_size, align 4
  %shr61 = lshr i32 %30, 1
  %q_low = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %j.0129, i32 3
  %47 = ptrtoint ptr %q_low to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shr61, ptr %q_low, align 4
  %sub = add i32 %30, -1
  %q_mask = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %j.0129, i32 2
  %48 = ptrtoint ptr %q_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub, ptr %q_mask, align 4
  %q_db_offset63 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %j.0129, i32 4
  %49 = ptrtoint ptr %q_db_offset63 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %msgq_db_offset.0, ptr %q_db_offset63, align 4
  %incdec.ptr = getelementptr %struct.bcm_vk_msgq, ptr %msgq.1130, i32 1
  %inc = add nuw nsw i32 %j.0129, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body23.preheader.1, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

for.body23.preheader.1:                           ; preds = %for.body23
  %sync_qinfo.1 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5
  %50 = call ptr @memset(ptr %sync_qinfo.1, i32 0, i32 80)
  br label %for.body23.1

for.body23.1:                                     ; preds = %for.body23.1.for.body23.1_crit_edge, %for.body23.preheader.1
  %msgq.1130.1 = phi ptr [ %incdec.ptr.1, %for.body23.1.for.body23.1_crit_edge ], [ %incdec.ptr, %for.body23.preheader.1 ]
  %j.0129.1 = phi i32 [ %inc.1, %for.body23.1.for.body23.1_crit_edge ], [ 0, %for.body23.preheader.1 ]
  %arrayidx25.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 2, i32 %j.0129.1
  %51 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msgq.1130.1, ptr %arrayidx25.1, align 4
  %start.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 2
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %start.1) #9, !srcloc !249
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %size.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 5
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %size.1) #9, !srcloc !249
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %nxt.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 6
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %nxt.1) #9, !srcloc !249
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %db_offset.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 7
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %db_offset.1) #9, !srcloc !249
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %and.1 = and i32 %59, 65535
  %neg.1 = xor i32 %59, -1
  %shr.1 = lshr i32 %neg.1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1, i32 %shr.1)
  %cmp36.1 = icmp eq i32 %and.1, %shr.1
  %mul.1 = shl i32 %j.0129.1, 3
  %add.1 = add i32 %mul.1, 1156
  %msgq_db_offset.0.1 = select i1 %cmp36.1, i32 %and.1, i32 %add.1
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %msgq.1130.1) #9, !srcloc !254
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv.1 = zext i16 %61 to i32
  %num.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 1
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %num.1) #9, !srcloc !254
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  %conv48.1 = zext i16 %63 to i32
  %rd_idx.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 3
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx.1) #9, !srcloc !249
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %wr_idx.1 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 0, i32 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx.1) #9, !srcloc !249
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %j.0129.1, i32 noundef %conv.1, i32 noundef %conv48.1, i32 noundef %53, i32 noundef %msgq_db_offset.0.1, i32 noundef %65, i32 noundef %67, i32 noundef %55, i32 noundef %57) #12
  %arrayidx56.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %j.0129.1
  %68 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i4.i, align 4
  %add.ptr59.1 = getelementptr i8, ptr %69, i32 %53
  %70 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr59.1, ptr %arrayidx56.1, align 4
  %q_size.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %j.0129.1, i32 1
  %71 = ptrtoint ptr %q_size.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %55, ptr %q_size.1, align 4
  %shr61.1 = lshr i32 %55, 1
  %q_low.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %j.0129.1, i32 3
  %72 = ptrtoint ptr %q_low.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr61.1, ptr %q_low.1, align 4
  %sub.1 = add i32 %55, -1
  %q_mask.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %j.0129.1, i32 2
  %73 = ptrtoint ptr %q_mask.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub.1, ptr %q_mask.1, align 4
  %q_db_offset63.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %j.0129.1, i32 4
  %74 = ptrtoint ptr %q_db_offset63.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %msgq_db_offset.0.1, ptr %q_db_offset63.1, align 4
  %incdec.ptr.1 = getelementptr %struct.bcm_vk_msgq, ptr %msgq.1130.1, i32 1
  %inc.1 = add nuw nsw i32 %j.0129.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %umax
  br i1 %exitcond.1.not, label %for.inc64.1, label %for.body23.1.for.body23.1_crit_edge

for.body23.1.for.body23.1_crit_edge:              ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.1

for.inc64.1:                                      ; preds = %for.body23.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msgq_inited.i, i32 noundef 4) #9
  %75 = ptrtoint ptr %msgq_inited.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 1, ptr %msgq_inited.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc64.1, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %for.inc64.1 ], [ -1, %do.end17 ], [ -11, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_to_v_q_doorbell(ptr nocapture noundef readonly %vk, i32 noundef %q_num, i32 noundef %db_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q_db_offset = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %q_num, i32 4
  %0 = ptrtoint ptr %q_db_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_db_offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %db_val) #9
  %bar1.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 1
  %3 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bar1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #9, !srcloc !256
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_send_shutdown_msg(ptr noundef %vk, i32 noundef %shut_type, i32 noundef %pid, i32 noundef %q_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %arrayidx.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1052
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %5 = and i32 %4, -66912256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66912256, i32 %5)
  %cmp.i = icmp eq i32 %5, -66912256
  br i1 %cmp.i, label %bcm_vk_msgq_marker_valid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

bcm_vk_msgq_marker_valid.exit:                    ; preds = %entry
  %arrayidx.i4.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i4.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %7, i32 24768
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20254786, i32 %8)
  %phi.cmp.i = icmp eq i32 %8, -20254786
  br i1 %phi.cmp.i, label %if.end, label %bcm_vk_msgq_marker_valid.exit.do.end_crit_edge

bcm_vk_msgq_marker_valid.exit.do.end_crit_edge:   ; preds = %bcm_vk_msgq_marker_valid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %bcm_vk_msgq_marker_valid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 24768
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !249
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.16, i32 noundef %12) #12
  br label %cleanup

if.end:                                           ; preds = %bcm_vk_msgq_marker_valid.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 144) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %to_v_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %to_v_msg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %to_v_msg, align 8
  %15 = tail call i32 @llvm.umin.i32(i32 %q_num, i32 2) #9
  %16 = trunc i32 %15 to i16
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 2
  %17 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %trans_id.i, align 2
  %to_v_blks = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %to_v_blks, align 8
  %cmd = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call7.i.i, i32 1, i32 1
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shut_type, ptr %cmd, align 8
  %arg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call7.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %pid, ptr %arg, align 4
  %call16 = tail call fastcc i32 @bcm_to_v_msg_enqueue(ptr noundef %vk, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end7.if.end25_crit_edge, label %do.end21

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

do.end21:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %trans_id.i, align 2
  %23 = and i16 %22, 15
  %24 = tail call i16 @llvm.umin.i16(i16 %23, i16 2) #9
  %25 = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.19, i32 noundef %25, i32 noundef %pid) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %if.end7.if.end25_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call16, %if.end25 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_to_v_msg_enqueue(ptr noundef %vk, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %to_v_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 8
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 2
  %2 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %trans_id.i, align 2
  %4 = and i16 %3, 15
  %5 = tail call i16 @llvm.umin.i16(i16 %4, i16 2) #9
  %6 = zext i16 %5 to i32
  %to_v_blks = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 6
  %7 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %to_v_blks, align 4
  %size = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size, align 1
  %conv = zext i8 %10 to i32
  %add = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp.not = icmp eq i32 %8, %add
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = lshr i16 %3, 4
  %12 = zext i16 %11 to i32
  %13 = ptrtoint ptr %to_v_msg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %to_v_msg, align 4
  %conv9 = zext i8 %14 to i32
  %context_id = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %context_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.83, i32 noundef %8, i32 noundef %add, i32 noundef %12, i32 noundef %conv9, i32 noundef %16) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx11 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 2, i32 %6
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %6
  %msgq_mutex = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 1
  tail call void @mutex_lock_nested(ptr noundef %msgq_mutex, i32 noundef 0) #9
  %q_size.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %6, i32 1
  %19 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %q_size.i, align 4
  %wr_idx1.i.i = getelementptr inbounds %struct.bcm_vk_msgq, ptr %18, i32 0, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx1.i.i) #9, !srcloc !249
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %rd_idx3.i.i = getelementptr inbounds %struct.bcm_vk_msgq, ptr %18, i32 0, i32 3
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx3.i.i) #9, !srcloc !249
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %sub.i.i = sub i32 %22, %24
  %q_mask.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %6, i32 2
  %25 = ptrtoint ptr %q_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %q_mask.i.i, align 4
  %and.i.i = and i32 %sub.i.i, %26
  %27 = xor i32 %and.i.i, -1
  %sub1.i = add i32 %20, %27
  %28 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %to_v_blks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %29)
  %cmp15159 = icmp ult i32 %sub1.i, %29
  br i1 %cmp15159, label %if.end.land.rhs_crit_edge, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %retry.0160 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry.0160)
  %exitcond.not = icmp eq i32 %retry.0160, 10
  br i1 %exitcond.not, label %if.then24, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %retry.0160, 1
  tail call void @mutex_unlock(ptr noundef %msgq_mutex) #9
  tail call void @msleep(i32 noundef 50) #9
  tail call void @mutex_lock_nested(ptr noundef %msgq_mutex, i32 noundef 0) #9
  %30 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %q_size.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx1.i.i) #9, !srcloc !249
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx3.i.i) #9, !srcloc !249
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %sub.i.i141 = sub i32 %33, %35
  %36 = ptrtoint ptr %q_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q_mask.i.i, align 4
  %and.i.i143 = and i32 %sub.i.i141, %37
  %38 = xor i32 %and.i.i143, -1
  %sub1.i144 = add i32 %31, %38
  %39 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %to_v_blks, align 4
  %cmp15 = icmp ult i32 %sub1.i144, %40
  br i1 %cmp15, label %while.body.land.rhs_crit_edge, label %while.body.if.end26_crit_edge

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %msgq_mutex) #9
  br label %cleanup

if.end26:                                         ; preds = %while.body.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %41 = load i32, ptr @bcm_to_v_msg_enqueue.seq_num, align 4
  %inc27 = add i32 %41, 1
  store i32 %inc27, ptr @bcm_to_v_msg_enqueue.seq_num, align 4
  %seq_num = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 7
  %42 = ptrtoint ptr %seq_num to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %seq_num, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx1.i.i) #9, !srcloc !249
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %q_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp30.not = icmp ult i32 %44, %46
  br i1 %cmp30.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end26
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev2, ptr noundef nonnull @.str.86, i32 noundef %44, i32 noundef %46) #12
  tail call void @bcm_vk_blk_drv_access(ptr noundef %vk) #9
  %host_alert_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 33
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host_alert_lock.i) #9
  %notfs.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 34, i32 1
  %47 = ptrtoint ptr %notfs.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %notfs.i, align 2
  %conv6.i = or i16 %48, -32768
  store i16 %conv6.i, ptr %notfs.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host_alert_lock.i, i32 noundef %call2.i) #9
  %wq_offload.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 27
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %wq_offload.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then.i, label %do.end35.idx_err_crit_edge

do.end35.idx_err_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %idx_err

if.then.i:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  %wq_thread.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 25
  %49 = ptrtoint ptr %wq_thread.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq_thread.i, align 4
  %wq_work.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %wq_work.i) #9
  br label %idx_err

if.end37:                                         ; preds = %if.end26
  %51 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %to_v_blks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp40161.not = icmp eq i32 %52, 0
  br i1 %cmp40161.not, label %if.end37.do.body45_crit_edge, label %for.body.preheader

if.end37.do.body45_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

for.body.preheader:                               ; preds = %if.end37
  %53 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx12, align 4
  %mul.i = shl i32 %44, 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %mul.i
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %src.0165 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %to_v_msg, %for.body.preheader ]
  %dst.0164 = phi ptr [ %add.ptr.i146, %for.body.for.body_crit_edge ], [ %add.ptr.i, %for.body.preheader ]
  %wr_idx.0163 = phi i32 [ %and.i, %for.body.for.body_crit_edge ], [ %44, %for.body.preheader ]
  %i.0162 = phi i32 [ %inc44, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @mmiocpy(ptr noundef %dst.0164, ptr noundef %src.0165, i32 noundef 16) #9
  %incdec.ptr = getelementptr %struct.vk_msg_blk, ptr %src.0165, i32 1
  %add.i = add i32 %wr_idx.0163, 1
  %55 = ptrtoint ptr %q_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %q_mask.i.i, align 4
  %and.i = and i32 %56, %add.i
  %57 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx12, align 4
  %mul.i145 = shl i32 %and.i, 4
  %add.ptr.i146 = getelementptr i8, ptr %58, i32 %mul.i145
  %inc44 = add nuw i32 %i.0162, 1
  %59 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %to_v_blks, align 4
  %cmp40 = icmp ult i32 %inc44, %60
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.do.body45_crit_edge

for.body.do.body45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body45:                                        ; preds = %for.body.do.body45_crit_edge, %if.end37.do.body45_crit_edge
  %wr_idx.0.lcssa = phi i32 [ %44, %if.end37.do.body45_crit_edge ], [ %and.i, %for.body.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %wr_idx.0.lcssa)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %wr_idx1.i.i, i32 %61) #9, !srcloc !256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_to_v_msg_enqueue.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_to_v_msg_enqueue, %if.then54)) #9
          to label %do.end70 [label %if.then54], !srcloc !251

if.then54:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %num = getelementptr inbounds %struct.bcm_vk_msgq, ptr %18, i32 0, i32 1
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %num) #9, !srcloc !249
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx3.i.i) #9, !srcloc !249
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %to_v_blks, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx1.i.i) #9, !srcloc !249
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #9
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx3.i.i) #9, !srcloc !249
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #9
  %sub.i = sub i32 %69, %71
  %72 = ptrtoint ptr %q_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %q_mask.i.i, align 4
  %and.i148 = and i32 %sub.i, %73
  %74 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %q_size.i, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx1.i.i) #9, !srcloc !249
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx3.i.i) #9, !srcloc !249
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %sub.i.i152 = sub i32 %77, %79
  %80 = ptrtoint ptr %q_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %q_mask.i.i, align 4
  %and.i.i154 = and i32 %sub.i.i152, %81
  %82 = xor i32 %and.i.i154, -1
  %sub1.i155 = add i32 %75, %82
  %size65 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %18, i32 0, i32 5
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %size65) #9, !srcloc !249
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_to_v_msg_enqueue.__UNIQUE_ID_ddebug243, ptr noundef %dev2, ptr noundef nonnull @.str.88, i32 noundef %63, i32 noundef %65, i32 noundef %wr_idx.0.lcssa, i32 noundef %67, i32 noundef %and.i148, i32 noundef %sub1.i155, i32 noundef %84) #9
  br label %do.end70

do.end70:                                         ; preds = %if.then54, %do.body45
  %add71 = add i32 %wr_idx.0.lcssa, 1
  %q_db_offset.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %6, i32 4
  %85 = ptrtoint ptr %q_db_offset.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %q_db_offset.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void @arm_heavy_mb() #9
  %87 = tail call i32 @llvm.bswap.i32(i32 %add71) #9
  %bar1.i.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 1
  %88 = ptrtoint ptr %bar1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bar1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %87) #9, !srcloc !256
  br label %idx_err

idx_err:                                          ; preds = %do.end70, %if.then.i, %do.end35.idx_err_crit_edge
  tail call void @mutex_unlock(ptr noundef %msgq_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %idx_err, %if.then24, %do.end
  %retval.0 = phi i32 [ -90, %do.end ], [ -11, %if.then24 ], [ 0, %idx_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_to_h_msg_dequeue(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %to_h_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24
  %msgq_mutex = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 1
  tail call void @mutex_lock_nested(ptr noundef %msgq_mutex, i32 noundef 0) #9
  %2 = ptrtoint ptr %to_h_msg_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to_h_msg_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp257.not = icmp eq i32 %3, 0
  br i1 %cmp257.not, label %entry.idx_err_crit_edge, label %for.body.lr.ph

entry.idx_err_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %idx_err

for.body.lr.ph:                                   ; preds = %entry
  %to_v_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23
  %bmap = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc103.for.body_crit_edge, %for.body.lr.ph
  %q_num.0260 = phi i32 [ 0, %for.body.lr.ph ], [ %inc104, %for.inc103.for.body_crit_edge ]
  %total.0259 = phi i32 [ 0, %for.body.lr.ph ], [ %total.1.lcssa, %for.inc103.for.body_crit_edge ]
  %cnt.0258 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.1.lcssa, %for.inc103.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 2, i32 %q_num.0260
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %q_num.0260
  %q_size = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %q_num.0260, i32 1
  %6 = ptrtoint ptr %q_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_size, align 4
  %mul = shl i32 %7, 1
  %rd_idx5 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %5, i32 0, i32 3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx5) #9, !srcloc !249
  %wr_idx7 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %5, i32 0, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx7) #9, !srcloc !249
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp10.not248 = icmp eq i32 %8, %9
  br i1 %cmp10.not248, label %for.body.for.inc103_crit_edge, label %while.body.lr.ph

for.body.for.inc103_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc103

while.body.lr.ph:                                 ; preds = %for.body
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = tail call i32 @llvm.bswap.i32(i32 %8)
  %q_mask = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 5, i32 %q_num.0260, i32 2
  %num = getelementptr inbounds %struct.bcm_vk_msgq, ptr %5, i32 0, i32 1
  %size57 = getelementptr inbounds %struct.bcm_vk_msgq, ptr %5, i32 0, i32 5
  %conv69 = trunc i32 %q_num.0260 to i16
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %rd_idx.0255 = phi i32 [ %11, %while.body.lr.ph ], [ %and.i219, %cleanup.while.body_crit_edge ]
  %wr_idx.0254 = phi i32 [ %10, %while.body.lr.ph ], [ %wr_idx.1, %cleanup.while.body_crit_edge ]
  %total.1253 = phi i32 [ %total.0259, %while.body.lr.ph ], [ %inc34, %cleanup.while.body_crit_edge ]
  %cnt.1252 = phi i32 [ %cnt.0258, %while.body.lr.ph ], [ %cnt.3, %cleanup.while.body_crit_edge ]
  %msg_processed.0251 = phi i32 [ 0, %while.body.lr.ph ], [ %msg_processed.1, %cleanup.while.body_crit_edge ]
  %12 = ptrtoint ptr %q_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %q_mask, align 4
  %and = and i32 %13, %rd_idx.0255
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  %mul.i = shl i32 %and, 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  %size = getelementptr inbounds %struct.vk_msg_blk, ptr %add.ptr.i, i32 0, i32 1
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %size) #9, !srcloc !258
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  %17 = ptrtoint ptr %q_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rd_idx.0255, i32 %18)
  %cmp17.not = icmp uge i32 %rd_idx.0255, %18
  %conv = zext i8 %16 to i32
  %sub = add i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp19 = icmp ult i32 %sub, %conv
  %or.cond = select i1 %cmp17.not, i1 true, i1 %cmp19
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %rd_idx.0255, i32 noundef %conv, i32 noundef %18) #12
  tail call void @bcm_vk_blk_drv_access(ptr noundef %vk) #9
  %host_alert_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 33
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host_alert_lock.i) #9
  %notfs.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 34, i32 1
  %19 = ptrtoint ptr %notfs.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %notfs.i, align 2
  %conv6.i = or i16 %20, -32768
  store i16 %conv6.i, ptr %notfs.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host_alert_lock.i, i32 noundef %call2.i) #9
  %wq_offload.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 27
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %wq_offload.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then.i, label %do.end.idx_err_crit_edge

do.end.idx_err_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %idx_err

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %wq_thread.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 25
  %21 = ptrtoint ptr %wq_thread.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wq_thread.i, align 4
  %wq_work.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 26
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %wq_work.i) #9
  br label %idx_err

if.end:                                           ; preds = %while.body
  %add = add nuw nsw i32 %conv, 1
  %mul24 = shl nuw nsw i32 %add, 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul24, i32 noundef 3520) #14
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %do.end37, label %if.end.for.body31_crit_edge

if.end.for.body31_crit_edge:                      ; preds = %if.end
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %if.end.for.body31_crit_edge
  %src.0247 = phi ptr [ %add.ptr.i221, %for.body31.for.body31_crit_edge ], [ %add.ptr.i, %if.end.for.body31_crit_edge ]
  %dst.0246 = phi ptr [ %incdec.ptr, %for.body31.for.body31_crit_edge ], [ %call9.i.i, %if.end.for.body31_crit_edge ]
  %rd_idx.1245 = phi i32 [ %and.i219, %for.body31.for.body31_crit_edge ], [ %rd_idx.0255, %if.end.for.body31_crit_edge ]
  %j.0244 = phi i32 [ %inc, %for.body31.for.body31_crit_edge ], [ 0, %if.end.for.body31_crit_edge ]
  tail call void @mmiocpy(ptr noundef %dst.0246, ptr noundef %src.0247, i32 noundef 16) #9
  %incdec.ptr = getelementptr %struct.vk_msg_blk, ptr %dst.0246, i32 1
  %add.i = add i32 %rd_idx.1245, 1
  %23 = ptrtoint ptr %q_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %q_mask, align 4
  %and.i219 = and i32 %24, %add.i
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx4, align 4
  %mul.i220 = shl i32 %and.i219, 4
  %add.ptr.i221 = getelementptr i8, ptr %26, i32 %mul.i220
  %inc = add nuw nsw i32 %j.0244, 1
  %exitcond = icmp eq i32 %j.0244, %conv
  br i1 %exitcond, label %for.end, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

for.end:                                          ; preds = %for.body31
  %inc34 = add i32 %total.1253, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %and.i219)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rd_idx5, i32 %27) #9, !srcloc !256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_to_h_msg_dequeue, %if.then50)) #9
          to label %do.end62 [label %if.then50], !srcloc !251

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %dev1, ptr noundef nonnull @.str.25) #12
  br label %idx_err

if.then50:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %num) #9, !srcloc !249
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx7) #9, !srcloc !249
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx5) #9, !srcloc !249
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  %sub.i = sub i32 %31, %33
  %34 = ptrtoint ptr %q_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %q_mask, align 4
  %and.i223 = and i32 %sub.i, %35
  %36 = ptrtoint ptr %q_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %q_size, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx7) #9, !srcloc !249
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx5) #9, !srcloc !249
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #9
  %sub.i.i = sub i32 %39, %41
  %42 = ptrtoint ptr %q_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %q_mask, align 4
  %and.i.i = and i32 %sub.i.i, %43
  %44 = xor i32 %and.i.i, -1
  %sub1.i = add i32 %37, %44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %size57) #9, !srcloc !249
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %29, i32 noundef %and.i219, i32 noundef %wr_idx.0254, i32 noundef %add, i32 noundef %and.i223, i32 noundef %sub1.i, i32 noundef %46) #9
  br label %do.end62

do.end62:                                         ; preds = %if.then50, %for.end
  %47 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %48)
  %cmp64 = icmp eq i8 %48, 8
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

if.end67:                                         ; preds = %do.end62
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %call9.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %trans_id.i, align 2
  %51 = lshr i16 %50, 4
  %52 = zext i16 %51 to i32
  %call71 = tail call fastcc ptr @bcm_vk_dequeue_pending(ptr noundef %vk, ptr noundef %to_v_msg_chan, i16 noundef zeroext %conv69, i16 noundef zeroext %51)
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.else76, label %if.then73

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %to_h_blks = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call71, i32 0, i32 3
  %53 = ptrtoint ptr %to_h_blks to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add, ptr %to_h_blks, align 4
  %to_h_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call71, i32 0, i32 4
  %54 = ptrtoint ptr %to_h_msg to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call9.i.i, ptr %to_h_msg, align 4
  tail call fastcc void @bcm_vk_append_pendq(ptr noundef %to_h_msg_chan, i16 noundef zeroext %conv69, ptr noundef nonnull %call71)
  br label %if.end88

if.else76:                                        ; preds = %if.end67
  %inc77 = add i32 %cnt.1252, 1
  %55 = load i32, ptr @batch_log, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.1252, i32 %55)
  %cmp78 = icmp slt i32 %cnt.1252, %55
  br i1 %cmp78, label %do.end83, label %if.else76.if.end87_crit_edge

if.else76.if.end87_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

do.end83:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %call9.i.i, align 128
  %conv85 = zext i8 %57 to i32
  %div3.i = lshr i32 %52, 5
  %arrayidx.i = getelementptr i32, ptr %bmap, i32 %div3.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %52, 31
  %shr.i = lshr i32 %59, %and.i
  %and1.i = and i32 %shr.i, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %52, i32 noundef %conv85, i32 noundef %and1.i) #12
  br label %if.end87

if.end87:                                         ; preds = %do.end83, %if.else76.if.end87_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then73
  %cnt.2 = phi i32 [ %cnt.1252, %if.then73 ], [ %inc77, %if.end87 ]
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx7) #9, !srcloc !249
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %inc95 = add i32 %msg_processed.0251, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc95, i32 %mul)
  %cmp96.not = icmp slt i32 %inc95, %mul
  br i1 %cmp96.not, label %if.end88.cleanup_crit_edge, label %cleanup.thread

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef %q_num.0260, i32 noundef %mul) #12
  br label %for.inc103

cleanup:                                          ; preds = %if.end88.cleanup_crit_edge, %if.then66
  %msg_processed.1 = phi i32 [ %msg_processed.0251, %if.then66 ], [ %inc95, %if.end88.cleanup_crit_edge ]
  %cnt.3 = phi i32 [ %cnt.1252, %if.then66 ], [ %cnt.2, %if.end88.cleanup_crit_edge ]
  %wr_idx.1 = phi i32 [ %wr_idx.0254, %if.then66 ], [ %61, %if.end88.cleanup_crit_edge ]
  %cmp10.not = icmp eq i32 %and.i219, %wr_idx.1
  br i1 %cmp10.not, label %cleanup.for.inc103_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.for.inc103_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc103

for.inc103:                                       ; preds = %cleanup.for.inc103_crit_edge, %cleanup.thread, %for.body.for.inc103_crit_edge
  %cnt.1.lcssa = phi i32 [ %cnt.0258, %for.body.for.inc103_crit_edge ], [ %cnt.2, %cleanup.thread ], [ %cnt.3, %cleanup.for.inc103_crit_edge ]
  %total.1.lcssa = phi i32 [ %total.0259, %for.body.for.inc103_crit_edge ], [ %inc34, %cleanup.thread ], [ %inc34, %cleanup.for.inc103_crit_edge ]
  %inc104 = add nuw i32 %q_num.0260, 1
  %62 = ptrtoint ptr %to_h_msg_chan to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %to_h_msg_chan, align 4
  %cmp = icmp ult i32 %inc104, %63
  br i1 %cmp, label %for.inc103.for.body_crit_edge, label %for.inc103.idx_err_crit_edge

for.inc103.idx_err_crit_edge:                     ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #11
  br label %idx_err

for.inc103.for.body_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

idx_err:                                          ; preds = %for.inc103.idx_err_crit_edge, %do.end37, %if.then.i, %do.end.idx_err_crit_edge, %entry.idx_err_crit_edge
  %total.3 = phi i32 [ %total.1253, %if.then.i ], [ %total.1253, %do.end.idx_err_crit_edge ], [ -12, %do.end37 ], [ 0, %entry.idx_err_crit_edge ], [ %total.1.lcssa, %for.inc103.idx_err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %msgq_mutex) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_to_h_msg_dequeue, %if.then119)) #9
          to label %cleanup123 [label %if.then119], !srcloc !251

if.then119:                                       ; preds = %idx_err
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %total.3) #9
  br label %cleanup123

cleanup123:                                       ; preds = %if.then119, %idx_err
  ret i32 %total.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_blk_drv_access(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bcm_vk_dequeue_pending(ptr noundef %vk, ptr noundef %chan, i16 noundef zeroext %q_num, i16 noundef zeroext %msg_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pendq_lock = getelementptr inbounds %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pendq_lock) #9
  %idxprom = zext i16 %q_num to i32
  %arrayidx = getelementptr %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 4, i32 %idxprom
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %arrayidx, %entry ], [ %entry1.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %arrayidx
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %to_v_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1.0, i32 0, i32 8
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 2
  %1 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %trans_id.i, align 2
  %3 = lshr i16 %2, 4
  %cmp6 = icmp eq i16 %3, %msg_id
  br i1 %cmp6, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  %conv.le = zext i16 %msg_id to i32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.0) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %msg_id_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %msg_id_lock.i) #9
  %bmap.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 17
  %rem.i.i.i = and i32 %conv.le, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.le, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %bmap.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %13, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %msg_id_lock.i) #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %spec.select = phi ptr [ %entry1.0, %list_del.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %pendq_lock) #9
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_append_pendq(ptr noundef %chan, i16 noundef zeroext %q_num, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pendq_lock = getelementptr inbounds %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %pendq_lock) #9
  %idxprom = zext i16 %q_num to i32
  %arrayidx = getelementptr %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 4, i32 %idxprom
  %prev.i = getelementptr %struct.bcm_vk_msg_chan, ptr %chan, i32 0, i32 4, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i9 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %1, ptr noundef %arrayidx) #9
  br i1 %call.i.i9, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry1, ptr %prev.i, align 4
  %3 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %entry1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %entry1, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry1, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %to_h_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 4
  %6 = ptrtoint ptr %to_h_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %to_h_msg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %list_add_tail.exit.if.end_crit_edge, label %if.then

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ctx2 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 1
  %8 = ptrtoint ptr %ctx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx2, align 4
  %pend_cnt = getelementptr inbounds %struct.bcm_vk_ctx, ptr %9, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %pend_cnt, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_cnt, ptr %pend_cnt, i32 1, ptr elementtype(i32) %pend_cnt) #9, !srcloc !262
  %rd_wq = getelementptr inbounds %struct.bcm_vk_ctx, ptr %9, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %rd_wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add_tail.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pendq_lock) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_msgq_irqhandler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msgq_inited.i = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %msgq_inited.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %msgq_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %irq) #12
  br label %skip_schedule_work

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 25
  %4 = ptrtoint ptr %wq_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq_thread, align 4
  %wq_work = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %wq_work) #9
  br label %skip_schedule_work

skip_schedule_work:                               ; preds = %if.end, %do.end
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef %p_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %p_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -728
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %4 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 69
  %8 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tgid.i, align 4
  %mul.i.i.i = mul i32 %9, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 25
  %ctx_lock.i = getelementptr i8, ptr %1, i32 1924
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock.i) #9
  %reset_pid.i = getelementptr i8, ptr %1, i32 17712
  %10 = ptrtoint ptr %reset_pid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reset_pid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %entry.for.body.i_crit_edge, label %do.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.89, i32 noundef %11) #12
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.054.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %in_use.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i, i32 2
  %14 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %in_use.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i = icmp eq i8 %15, 0
  br i1 %tobool3.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 160
  br i1 %exitcond.not.i, label %for.inc.i.do.end15.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end15.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i

for.end.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i
  %16 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %in_use.i, align 4
  %tobool11.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool11.not.i, label %for.end.i.do.end15.i_crit_edge, label %if.end18.i

for.end.i.do.end15.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i

do.end15.i:                                       ; preds = %for.end.i.do.end15.i_crit_edge, %for.inc.i.do.end15.i_crit_edge
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %dev17.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i, ptr noundef nonnull @.str.92) #12
  br label %do.end

if.end18.i:                                       ; preds = %for.end.i
  %pid19.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i, i32 3
  %19 = ptrtoint ptr %pid19.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %9, ptr %pid19.i, align 4
  %hash_idx20.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i, i32 4
  %20 = ptrtoint ptr %hash_idx20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i.i, ptr %hash_idx20.i, align 4
  %arrayidx21.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 20, i32 %shr.i.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx21.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %call.i.i50.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %arrayidx.i, ptr noundef %22, ptr noundef %arrayidx21.i) #9
  br i1 %call.i.i50.i, label %if.end.i.i.i, label %if.end18.i.list_add_tail.exit.i_crit_edge

if.end18.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx21.i, ptr %arrayidx.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %arrayidx.i, ptr %22, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end18.i.list_add_tail.exit.i_crit_edge
  %kref.i = getelementptr i8, ptr %1, i32 1360
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !263
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !264

list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_add_tail.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.else_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !265

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.else_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.else

do.end:                                           ; preds = %do.end15.i, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #12
  br label %if.end15

if.else:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.else_crit_edge
  %pend_cnt.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cnt.i, i32 noundef 4) #9
  %29 = ptrtoint ptr %pend_cnt.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %pend_cnt.i, align 4
  %dma_cnt.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i, i32 8
  %call.i.i49.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_cnt.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %dma_cnt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %dma_cnt.i, align 4
  %rd_wq.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %i.054.i, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %rd_wq.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @bcm_vk_get_ctx.__key) #9
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #9
  %miscdev4 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %arrayidx.i, i32 0, i32 6
  %31 = ptrtoint ptr %miscdev4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %miscdev4, align 4
  %32 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx.i, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_open.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_open, %if.then12)) #9
          to label %if.end15 [label %if.then12], !srcloc !251

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %idx = getelementptr inbounds %struct.bcm_vk_ctx, ptr %arrayidx.i, i32 0, i32 1
  %33 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx, align 4
  %pid = getelementptr inbounds %struct.bcm_vk_ctx, ptr %arrayidx.i, i32 0, i32 3
  %35 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_open.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef %34, i32 noundef %36) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else, %do.end
  %rc.0 = phi i32 [ 0, %if.then12 ], [ -12, %do.end ], [ 0, %if.else ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_read(ptr nocapture noundef readonly %p_file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) local_unnamed_addr #0 align 64 {
entry:
  %proc_cnt.i = alloca i32, align 4
  %tmp_msg = alloca %struct.vk_msg_blk, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %p_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -728
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %to_h_msg_chan = getelementptr i8, ptr %3, i32 17988
  %msgq_inited.i = getelementptr i8, ptr %3, i32 17716
  %call.i.i.i117 = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %msgq_inited.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %msgq_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_read.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_read, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !251

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_read.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %pendq_lock = getelementptr i8, ptr %3, i32 18100
  tail call void @_raw_spin_lock(ptr noundef %pendq_lock) #9
  %8 = ptrtoint ptr %to_h_msg_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_h_msg_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp141.not = icmp eq i32 %9, 0
  br i1 %cmp141.not, label %do.end.if.else46_crit_edge, label %for.body.lr.ph

do.end.if.else46_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46

for.body.lr.ph:                                   ; preds = %do.end
  %pendq = getelementptr i8, ptr %3, i32 18144
  %idx20 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %for.body.lr.ph
  %q_num.0142 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc33.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %pendq, i32 0, i32 %q_num.0142
  br label %for.cond12

for.cond12:                                       ; preds = %for.body18.for.cond12_crit_edge, %for.body
  %entry2.1.in = phi ptr [ %arrayidx, %for.body ], [ %entry2.1, %for.body18.for.cond12_crit_edge ]
  %10 = ptrtoint ptr %entry2.1.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry2.1 = load ptr, ptr %entry2.1.in, align 4
  %cmp15.not = icmp eq ptr %entry2.1, %arrayidx
  br i1 %cmp15.not, label %for.inc33, label %for.body18

for.body18:                                       ; preds = %for.cond12
  %ctx19 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 1
  %11 = ptrtoint ptr %ctx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx19, align 4
  %idx = getelementptr inbounds %struct.bcm_vk_ctx, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  %15 = ptrtoint ptr %idx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx20, align 4
  %cmp21 = icmp eq i32 %14, %16
  br i1 %cmp21, label %if.then22, label %for.body18.for.cond12_crit_edge

for.body18.for.cond12_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond12

if.then22:                                        ; preds = %for.body18
  %ctx19.le = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 1
  %to_h_blks = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 3
  %17 = ptrtoint ptr %to_h_blks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %to_h_blks, align 4
  %mul = shl i32 %18, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %count)
  %cmp23.not = icmp ugt i32 %mul, %count
  br i1 %cmp23.not, label %if.then48, label %if.then24

if.then24:                                        ; preds = %if.then22
  %call.i.i118 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry2.1) #9
  br i1 %call.i.i118, label %if.end.i.i119, label %if.then24.if.then37_crit_edge

if.then24.if.then37_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then37

if.end.i.i119:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry2.1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %entry2.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %entry2.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %if.then37

for.inc33:                                        ; preds = %for.cond12
  %inc = add nuw i32 %q_num.0142, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc33.if.else46_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc33.if.else46_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else46

if.then37:                                        ; preds = %if.end.i.i119, %if.then24.if.then37_crit_edge
  %25 = ptrtoint ptr %entry2.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %entry2.1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry2.1, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pend_cnt = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %pend_cnt, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pend_cnt, ptr %pend_cnt, i32 1, ptr elementtype(i32) %pend_cnt) #9, !srcloc !252
  tail call void @_raw_spin_unlock(ptr noundef %pendq_lock) #9
  %to_h_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 4
  %28 = ptrtoint ptr %to_h_msg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %to_h_msg, align 4
  %usr_msg_id = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 5
  %30 = ptrtoint ptr %usr_msg_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %usr_msg_id, align 4
  %trans_id.i.i = getelementptr inbounds %struct.vk_msg_blk, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %trans_id.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %trans_id.i.i, align 2
  %34 = and i16 %33, 15
  %35 = tail call i16 @llvm.umin.i16(i16 %34, i16 2) #9
  %val.tr.i = trunc i32 %31 to i16
  %36 = shl i16 %val.tr.i, 4
  %conv.i = or i16 %35, %36
  %37 = ptrtoint ptr %trans_id.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %trans_id.i.i, align 2
  %38 = ptrtoint ptr %to_h_blks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %to_h_blks, align 4
  %mul40 = shl i32 %39, 4
  %40 = ptrtoint ptr %to_h_msg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %to_h_msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul40)
  %cmp9.i.i = icmp slt i32 %mul40, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then37
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !265

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.then37
  tail call void @__check_object_size(ptr noundef %41, i32 noundef %mul40, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i100 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i100, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %42 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %mul40, i32 -1226833920) #15, !srcloc !266
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %41, i32 noundef %mul40) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %41, i32 noundef %mul40) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul40, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul40, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %cmp43 = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %cmp43, i32 %mul40, i32 -42
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %43 = phi i32 [ -42, %if.then27.i.i ], [ -42, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proc_cnt.i) #9
  %44 = ptrtoint ptr %proc_cnt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %proc_cnt.i, align 4, !annotation !253
  %dma.i = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 2
  %call.i = call i32 @bcm_vk_sg_free(ptr noundef %dev1, ptr noundef %dma.i, i32 noundef 4, ptr noundef nonnull %proc_cnt.i) #9
  %45 = ptrtoint ptr %proc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %proc_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.thread.bcm_vk_free_wkent.exit_crit_edge, label %if.then.i121

copy_to_user.exit.thread.bcm_vk_free_wkent.exit_crit_edge: ; preds = %copy_to_user.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_vk_free_wkent.exit

if.then.i121:                                     ; preds = %copy_to_user.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %ctx19.le to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx19.le, align 4
  %dma_cnt.i = getelementptr inbounds %struct.bcm_vk_ctx, ptr %48, i32 0, i32 8
  %call.i.i.i120 = call zeroext i1 @__kasan_check_write(ptr noundef %dma_cnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %dma_cnt.i, i32 1, i32 3, i32 1) #9
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_cnt.i, ptr %dma_cnt.i, i32 1, ptr elementtype(i32) %dma_cnt.i) #9, !srcloc !252
  br label %bcm_vk_free_wkent.exit

bcm_vk_free_wkent.exit:                           ; preds = %if.then.i121, %copy_to_user.exit.thread.bcm_vk_free_wkent.exit_crit_edge
  %50 = ptrtoint ptr %to_h_msg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %to_h_msg, align 4
  call void @kfree(ptr noundef %51) #9
  call void @kfree(ptr noundef %entry2.1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proc_cnt.i) #9
  br label %cleanup

if.else46:                                        ; preds = %for.inc33.if.else46_crit_edge, %do.end.if.else46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pendq_lock) #9
  br label %cleanup

if.then48:                                        ; preds = %if.then22
  tail call void @_raw_spin_unlock(ptr noundef %pendq_lock) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp_msg) #9
  %52 = getelementptr inbounds %struct.vk_msg_blk, ptr %tmp_msg, i32 0, i32 1
  %53 = getelementptr inbounds %struct.vk_msg_blk, ptr %tmp_msg, i32 0, i32 2
  %to_h_msg49 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 4
  %54 = ptrtoint ptr %to_h_msg49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %to_h_msg49, align 4
  %56 = call ptr @memcpy(ptr %tmp_msg, ptr %55, i32 16)
  %usr_msg_id51 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry2.1, i32 0, i32 5
  %57 = ptrtoint ptr %usr_msg_id51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usr_msg_id51, align 4
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %53, align 2
  %61 = and i16 %60, 15
  %62 = tail call i16 @llvm.umin.i16(i16 %61, i16 2) #9
  %val.tr.i123 = trunc i32 %58 to i16
  %63 = shl i16 %val.tr.i123, 4
  %conv.i124 = or i16 %62, %63
  %64 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i124, ptr %53, align 2
  %65 = ptrtoint ptr %to_h_blks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %to_h_blks, align 4
  %67 = trunc i32 %66 to i8
  %conv = add i8 %67, -1
  %68 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv, ptr %52, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 174) #9
  %call.i.i107 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i107, label %if.then48.do.end59_crit_edge, label %if.end.i.i111

if.then48.do.end59_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end.i.i111:                                    ; preds = %if.then48
  %69 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 16, i32 -1226833920) #15, !srcloc !266
  %asmresult.i.i109 = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109)
  %cmp.i6.i110 = icmp eq i32 %asmresult.i.i109, 0
  br i1 %cmp.i6.i110, label %copy_to_user.exit116, label %if.end.i.i111.do.end59_crit_edge

if.end.i.i111.do.end59_crit_edge:                 ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

copy_to_user.exit116:                             ; preds = %if.end.i.i111
  %call.i.i.i112 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp_msg, i32 noundef 16) #9
  %call.i12.i.i113 = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %tmp_msg, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i113)
  %cmp54.not = icmp eq i32 %call.i12.i.i113, 0
  br i1 %cmp54.not, label %copy_to_user.exit116.if.end60_crit_edge, label %copy_to_user.exit116.do.end59_crit_edge

copy_to_user.exit116.do.end59_crit_edge:          ; preds = %copy_to_user.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

copy_to_user.exit116.if.end60_crit_edge:          ; preds = %copy_to_user.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end59:                                         ; preds = %copy_to_user.exit116.do.end59_crit_edge, %if.end.i.i111.do.end59_crit_edge, %if.then48.do.end59_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.44) #12
  br label %if.end60

if.end60:                                         ; preds = %do.end59, %copy_to_user.exit116.if.end60_crit_edge
  %rc.2 = phi i32 [ -14, %do.end59 ], [ -90, %copy_to_user.exit116.if.end60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp_msg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.else46, %bcm_vk_free_wkent.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %43, %bcm_vk_free_wkent.exit ], [ %rc.2, %if.end60 ], [ -42, %if.else46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_write(ptr nocapture noundef readonly %p_file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %f_pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %p_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -728
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %msgq_inited.i = getelementptr i8, ptr %3, i32 17716
  %call.i.i.i312 = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %msgq_inited.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %msgq_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %entry.cleanup209_crit_edge, label %do.body

entry.cleanup209_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup209

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_write.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_write, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !251

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_write.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %count) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %and = and i32 %count, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %count, i32 noundef 16) #12
  br label %cleanup209

if.end14:                                         ; preds = %do.end
  %ib_sgl_size = getelementptr i8, ptr %3, i32 18328
  %add = add i32 %count, 128
  %8 = ptrtoint ptr %ib_sgl_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ib_sgl_size, align 4
  %add15 = add i32 %add, %9
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add15, i32 noundef 3520) #14
  %tobool17.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool17.not, label %if.end14.cleanup209_crit_edge, label %if.end19

if.end14.cleanup209_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup209

if.end19:                                         ; preds = %if.end14
  %to_v_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end19
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.write_free_ent_crit_edge, label %if.then27.i.i, !prof !265

land.rhs16.i.i.write_free_ent_crit_edge:          ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_free_ent

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %write_free_ent

if.then.i.i.i:                                    ; preds = %if.end19
  tail call void @__check_object_size(ptr noundef %to_v_msg, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.97, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #15, !srcloc !267
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !265

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to_v_msg, i32 noundef %count) #9
  %11 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !268
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to_v_msg, ptr noundef %buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end23, label %if.then11.i.i, !prof !265

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %to_v_msg, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %write_free_ent

if.end23:                                         ; preds = %if.end.i.i
  %shr = lshr i32 %count, 4
  %to_v_blks = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %to_v_blks, align 8
  %ctx24 = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %ctx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %ctx24, align 8
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 2
  %17 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %trans_id.i, align 2
  %19 = and i16 %18, 15
  %20 = tail call i16 @llvm.umin.i16(i16 %19, i16 2) #9
  %21 = zext i16 %20 to i32
  %to_v_msg_chan = getelementptr i8, ptr %3, i32 17720
  %msgq28 = getelementptr i8, ptr %3, i32 17816
  %arrayidx29 = getelementptr [4 x ptr], ptr %msgq28, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx29, align 4
  %size = getelementptr inbounds %struct.bcm_vk_msgq, ptr %23, i32 0, i32 5
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %size) #9, !srcloc !249
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %to_v_blks, align 8
  %28 = ptrtoint ptr %ib_sgl_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ib_sgl_size, align 4
  %shr34 = lshr i32 %29, 4
  %add35 = add i32 %shr34, %27
  %sub = add i32 %25, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %sub)
  %cmp = icmp ugt i32 %add35, %sub
  br i1 %cmp, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %27, i32 noundef %sub) #12
  br label %write_free_ent

if.end42:                                         ; preds = %if.end23
  %30 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %trans_id.i, align 2
  %32 = lshr i16 %31, 4
  %33 = zext i16 %32 to i32
  %usr_msg_id = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %usr_msg_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %usr_msg_id, align 4
  %msg_id_lock.i = getelementptr i8, ptr %3, i32 1364
  tail call void @_raw_spin_lock(ptr noundef %msg_id_lock.i) #9
  %msg_id.i = getelementptr i8, ptr %3, i32 1408
  %bmap.i = getelementptr i8, ptr %3, i32 1412
  %35 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %msg_id.promoted.i = load i16, ptr %msg_id.i, align 4
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %inc10.i = add nuw nsw i16 %test_bit_count.031.i, 1
  %cmp.i = icmp ult i16 %test_bit_count.031.i, 4094
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %bcm_vk_get_msg_id.exit.thread

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end42
  %test_bit_count.031.i = phi i16 [ 0, %if.end42 ], [ %inc10.i, %while.cond.i.while.body.i_crit_edge ]
  %spec.select2830.i = phi i16 [ %msg_id.promoted.i, %if.end42 ], [ %spec.select.i, %while.cond.i.while.body.i_crit_edge ]
  %inc.i = add i16 %spec.select2830.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %inc.i)
  %cmp4.i = icmp eq i16 %inc.i, 4096
  %spec.select.i = select i1 %cmp4.i, i16 1, i16 %inc.i
  %conv8.i = zext i16 %spec.select.i to i32
  %div3.i.i = lshr i32 %conv8.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %bmap.i, i32 %div3.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv8.i, 31
  %38 = shl nuw i32 1, %and.i.i
  %39 = and i32 %38, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %bcm_vk_get_msg_id.exit, label %while.cond.i

bcm_vk_get_msg_id.exit.thread:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %spec.select.i, ptr %msg_id.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %msg_id_lock.i) #9
  br label %do.end52

bcm_vk_get_msg_id.exit:                           ; preds = %while.body.i
  %arrayidx.i.i.le = getelementptr i32, ptr %bmap.i, i32 %div3.i.i
  %41 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %spec.select.i, ptr %msg_id.i, align 4
  %or.i.i.i = or i32 %38, %37
  %42 = ptrtoint ptr %arrayidx.i.i.le to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i.i.i, ptr %arrayidx.i.i.le, align 4
  tail call void @_raw_spin_unlock(ptr noundef %msg_id_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %spec.select.i)
  %cmp47 = icmp eq i16 %spec.select.i, -1
  br i1 %cmp47, label %bcm_vk_get_msg_id.exit.do.end52_crit_edge, label %if.end53

bcm_vk_get_msg_id.exit.do.end52_crit_edge:        ; preds = %bcm_vk_get_msg_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

do.end52:                                         ; preds = %bcm_vk_get_msg_id.exit.do.end52_crit_edge, %bcm_vk_get_msg_id.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52) #12
  br label %write_free_ent

if.end53:                                         ; preds = %bcm_vk_get_msg_id.exit
  %43 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %trans_id.i, align 2
  %45 = and i16 %44, 15
  %46 = tail call i16 @llvm.umin.i16(i16 %45, i16 2) #9
  %47 = shl i16 %spec.select.i, 4
  %conv.i = or i16 %46, %47
  %48 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i, ptr %trans_id.i, align 2
  %q_num56 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %q_num56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %21, ptr %q_num56, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_write.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_write, %if.then69)) #9
          to label %do.end77 [label %if.then69], !srcloc !251

if.then69:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %q_num56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %q_num56, align 4
  %idx = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx, align 4
  %54 = ptrtoint ptr %usr_msg_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usr_msg_id, align 4
  %56 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %trans_id.i, align 2
  %58 = lshr i16 %57, 4
  %59 = zext i16 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_write.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %59) #9
  br label %do.end77

do.end77:                                         ; preds = %if.then69, %if.end53
  %60 = ptrtoint ptr %to_v_msg to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %to_v_msg, align 128
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i8 %61, label %do.end77.if.end189_crit_edge [
    i8 5, label %if.then83
    i8 9, label %land.lhs.true
  ]

do.end77.if.end189_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then83:                                        ; preds = %do.end77
  %reset_pid = getelementptr i8, ptr %3, i32 17712
  %63 = ptrtoint ptr %reset_pid to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %reset_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool84.not = icmp eq i32 %64, 0
  br i1 %tobool84.not, label %if.end102, label %do.body86

do.body86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_write, %if.then98)) #9
          to label %write_free_msgid [label %if.then98], !srcloc !251

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %pid = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_write.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %66) #9
  br label %write_free_msgid

if.end102:                                        ; preds = %if.then83
  %cmd = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 1, i32 1
  %67 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmd, align 8
  %and105 = and i32 %68, 15
  %size116 = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 1
  %69 = ptrtoint ptr %size116 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %size116, align 1
  %conv117 = zext i8 %70 to i32
  %71 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %to_v_blks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv117)
  %cmp119 = icmp ult i32 %72, %conv117
  br i1 %cmp119, label %if.end102.write_free_msgid_crit_edge, label %if.end122

if.end102.write_free_msgid_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_free_msgid

if.end122:                                        ; preds = %if.end102
  %and109 = and i32 %68, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and109)
  %cmp110 = icmp eq i32 %and109, 1280
  %. = select i1 %cmp110, i32 2, i32 1
  %add124 = add nuw nsw i32 %conv117, 1
  %arrayidx125 = getelementptr %struct.bcm_vk_wkent, ptr %call9.i.i, i32 0, i32 8, i32 %add124
  %idx.neg = sub nsw i32 0, %and105
  %add.ptr126 = getelementptr %struct._vk_data, ptr %arrayidx125, i32 %idx.neg
  %dma = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 0, i32 2
  %call127 = tail call i32 @bcm_vk_sg_alloc(ptr noundef %dev1, ptr noundef %dma, i32 noundef %., ptr noundef %add.ptr126, i32 noundef %and105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %cleanup.thread337, label %if.end122.write_free_msgid_crit_edge

if.end122.write_free_msgid_crit_edge:             ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_free_msgid

cleanup.thread337:                                ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %dma_cnt = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 8
  %call.i.i308 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dma_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %dma_cnt, i32 1, i32 3, i32 1) #9
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dma_cnt, ptr %dma_cnt, i32 1, ptr elementtype(i32) %dma_cnt) #9, !srcloc !262
  %call131 = tail call fastcc i32 @bcm_vk_append_ib_sgl(ptr noundef %add.ptr, ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr126, i32 noundef %and105)
  %74 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %to_v_blks, align 8
  %add133 = add i32 %75, %call131
  store i32 %add133, ptr %to_v_blks, align 8
  %76 = ptrtoint ptr %size116 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %size116, align 1
  %78 = trunc i32 %call131 to i8
  %conv139 = add i8 %77, %78
  store i8 %conv139, ptr %size116, align 1
  br label %if.end189

land.lhs.true:                                    ; preds = %do.end77
  %context_id = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %context_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %context_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp151 = icmp eq i32 %80, 0
  br i1 %cmp151, label %if.then153, label %land.lhs.true.if.end189_crit_edge

land.lhs.true.if.end189_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

if.then153:                                       ; preds = %land.lhs.true
  %arg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %call9.i.i, i32 1, i32 2
  %81 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arg, align 4
  %shr158 = lshr i32 %82, 8
  %83 = tail call i32 @llvm.read_register.i32(metadata !238) #9
  %and.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task, align 8
  %tgid.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 69
  %87 = ptrtoint ptr %tgid.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tgid.i, align 4
  %and164 = and i32 %82, 255
  %shl = shl i32 %88, 8
  %or = or i32 %shl, %and164
  %89 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr158, i32 %88)
  %cmp168.not = icmp eq i32 %shr158, %88
  br i1 %cmp168.not, label %if.then153.if.end189_crit_edge, label %do.body171

if.then153.if.end189_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end189

do.body171:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_write.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_write, %if.then183)) #9
          to label %if.end189 [label %if.then183], !srcloc !251

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_write.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef %shr158, i32 noundef %shr158, i32 noundef %88, i32 noundef %88) #9
  br label %if.end189

if.end189:                                        ; preds = %if.then183, %do.body171, %if.then153.if.end189_crit_edge, %land.lhs.true.if.end189_crit_edge, %cleanup.thread337, %do.end77.if.end189_crit_edge
  tail call fastcc void @bcm_vk_append_pendq(ptr noundef %to_v_msg_chan, i16 noundef zeroext %20, ptr noundef nonnull %call9.i.i)
  %call192 = tail call fastcc i32 @bcm_to_v_msg_enqueue(ptr noundef %add.ptr, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end189.cleanup209_crit_edge, label %do.end197

if.end189.cleanup209_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup209

do.end197:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58) #12
  %90 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %trans_id.i, align 2
  %92 = lshr i16 %91, 4
  %call204 = tail call fastcc ptr @bcm_vk_dequeue_pending(ptr noundef %add.ptr, ptr noundef %to_v_msg_chan, i16 noundef zeroext %20, i16 noundef zeroext %92)
  br label %write_free_ent

write_free_msgid:                                 ; preds = %if.end122.write_free_msgid_crit_edge, %if.end102.write_free_msgid_crit_edge, %if.then98, %do.body86
  %rc.0336 = phi i32 [ -13, %do.body86 ], [ %call127, %if.end122.write_free_msgid_crit_edge ], [ -90, %if.end102.write_free_msgid_crit_edge ], [ -13, %if.then98 ]
  %93 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %trans_id.i, align 2
  %95 = lshr i16 %94, 4
  %96 = zext i16 %95 to i32
  tail call fastcc void @bcm_vk_msgid_bitmap_clear(ptr noundef %add.ptr, i32 noundef %96)
  br label %write_free_ent

write_free_ent:                                   ; preds = %write_free_msgid, %do.end197, %do.end52, %do.end39, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.write_free_ent_crit_edge
  %entry2.0 = phi ptr [ %call9.i.i, %do.end39 ], [ %call9.i.i, %do.end52 ], [ %call9.i.i, %write_free_msgid ], [ %call204, %do.end197 ], [ %call9.i.i, %if.then11.i.i ], [ %call9.i.i, %if.then27.i.i ], [ %call9.i.i, %land.rhs16.i.i.write_free_ent_crit_edge ]
  %rc.1 = phi i32 [ -22, %do.end39 ], [ -75, %do.end52 ], [ %rc.0336, %write_free_msgid ], [ %call192, %do.end197 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.write_free_ent_crit_edge ]
  tail call void @kfree(ptr noundef %entry2.0) #9
  br label %cleanup209

cleanup209:                                       ; preds = %write_free_ent, %if.end189.cleanup209_crit_edge, %if.end14.cleanup209_crit_edge, %do.end13, %entry.cleanup209_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup209_crit_edge ], [ %count, %if.end189.cleanup209_crit_edge ], [ -22, %do.end13 ], [ %rc.1, %write_free_ent ], [ -12, %if.end14.cleanup209_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_sg_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_append_ib_sgl(ptr nocapture noundef readonly %vk, ptr nocapture noundef %entry1, ptr nocapture noundef readonly %data, i32 noundef %num_planes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %to_v_msg = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 8
  %to_v_blks = getelementptr inbounds %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 6
  %2 = ptrtoint ptr %to_v_blks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to_v_blks, align 4
  %trans_id.i = getelementptr inbounds %struct.vk_msg_blk, ptr %to_v_msg, i32 0, i32 2
  %4 = ptrtoint ptr %trans_id.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %trans_id.i, align 2
  %6 = and i16 %5, 15
  %7 = tail call i16 @llvm.umin.i16(i16 %6, i16 2) #9
  %8 = zext i16 %7 to i32
  %arrayidx6 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 2, i32 %8
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx6, align 4
  %q_size.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %8, i32 1
  %11 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %q_size.i, align 4
  %wr_idx1.i.i = getelementptr inbounds %struct.bcm_vk_msgq, ptr %10, i32 0, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %wr_idx1.i.i) #9, !srcloc !249
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %rd_idx3.i.i = getelementptr inbounds %struct.bcm_vk_msgq, ptr %10, i32 0, i32 3
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rd_idx3.i.i) #9, !srcloc !249
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %sub.i.i = sub i32 %14, %16
  %q_mask.i.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %8, i32 2
  %17 = ptrtoint ptr %q_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q_mask.i.i, align 4
  %and.i.i = and i32 %sub.i.i, %18
  %19 = xor i32 %and.i.i, -1
  %sub1.i = add i32 %12, %19
  %q_low = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 5, i32 %8, i32 3
  %20 = ptrtoint ptr %q_low to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %q_low, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %21)
  %cmp = icmp ult i32 %sub1.i, %21
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_append_ib_sgl, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !251

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %q_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %q_size.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug241, ptr noundef %dev2, ptr noundef nonnull @.str.99, i32 noundef %sub1.i, i32 noundef %23) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_planes)
  %cmp1493.not = icmp eq i32 %num_planes, 0
  br i1 %cmp1493.not, label %if.end13.do.body31_crit_edge, label %for.body.lr.ph

if.end13.do.body31_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

for.body.lr.ph:                                   ; preds = %if.end13
  %arrayidx4 = getelementptr %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 8, i32 %3
  %ib_sgl_size18 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %for.inc.for.body_crit_edge ]
  %item_cnt.096 = phi i32 [ 0, %for.body.lr.ph ], [ %item_cnt.1, %for.inc.for.body_crit_edge ]
  %buf.095 = phi ptr [ %arrayidx4, %for.body.lr.ph ], [ %buf.1, %for.inc.for.body_crit_edge ]
  %ib_sgl_size.094 = phi i32 [ 0, %for.body.lr.ph ], [ %ib_sgl_size.1, %for.inc.for.body_crit_edge ]
  %arrayidx15 = getelementptr %struct._vk_data, ptr %data, i32 %i.097
  %address = getelementptr %struct._vk_data, ptr %data, i32 %i.097, i32 1
  %24 = ptrtoint ptr %address to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %address, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool16.not = icmp eq i64 %25, 0
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx15, align 1
  %add = add i32 %27, %ib_sgl_size.094
  %28 = ptrtoint ptr %ib_sgl_size18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ib_sgl_size18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %29)
  %cmp19.not = icmp ugt i32 %add, %29
  br i1 %cmp19.not, label %land.lhs.true.for.inc_crit_edge, label %if.then20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %item_cnt.096, 1
  %sglist = getelementptr %struct.bcm_vk_wkent, ptr %entry1, i32 0, i32 2, i32 %i.097, i32 3
  %30 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sglist, align 4
  %32 = call ptr @memcpy(ptr %buf.095, ptr %31, i32 %27)
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %arrayidx15, align 1
  %add26 = add i32 %34, %ib_sgl_size.094
  %add.ptr = getelementptr i8, ptr %buf.095, i32 %34
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ib_sgl_size.1 = phi i32 [ %add26, %if.then20 ], [ %ib_sgl_size.094, %land.lhs.true.for.inc_crit_edge ], [ %ib_sgl_size.094, %for.body.for.inc_crit_edge ]
  %buf.1 = phi ptr [ %add.ptr, %if.then20 ], [ %buf.095, %land.lhs.true.for.inc_crit_edge ], [ %buf.095, %for.body.for.inc_crit_edge ]
  %item_cnt.1 = phi i32 [ %inc, %if.then20 ], [ %item_cnt.096, %land.lhs.true.for.inc_crit_edge ], [ %item_cnt.096, %for.body.for.inc_crit_edge ]
  %inc30 = add nuw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc30, %num_planes
  br i1 %exitcond.not, label %for.inc.do.body31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

do.body31:                                        ; preds = %for.inc.do.body31_crit_edge, %if.end13.do.body31_crit_edge
  %ib_sgl_size.0.lcssa = phi i32 [ 0, %if.end13.do.body31_crit_edge ], [ %ib_sgl_size.1, %for.inc.do.body31_crit_edge ]
  %item_cnt.0.lcssa = phi i32 [ 0, %if.end13.do.body31_crit_edge ], [ %item_cnt.1, %for.inc.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_append_ib_sgl, %if.then43)) #9
          to label %do.end47 [label %if.then43], !srcloc !251

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %ib_sgl_size44 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 31
  %35 = ptrtoint ptr %ib_sgl_size44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ib_sgl_size44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.100, i32 noundef %item_cnt.0.lcssa, i32 noundef %ib_sgl_size.0.lcssa, i32 noundef %36) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %sub = add i32 %ib_sgl_size.0.lcssa, 15
  %shr = lshr i32 %sub, 4
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then12, %do.body
  %retval.0 = phi i32 [ %shr, %do.end47 ], [ 0, %if.then12 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_msgid_bitmap_clear(ptr noundef %vk, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_id_lock = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %msg_id_lock) #9
  %bmap = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 17
  %rem.i.i = and i32 %start, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %start, 5
  %add.ptr.i.i = getelementptr i32, ptr %bmap, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %1, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %msg_id_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_poll(ptr noundef %p_file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %p_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -728
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %rd_wq = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  %tobool3.not.i = icmp eq ptr %rd_wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %p_file, ptr noundef nonnull %rd_wq, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %pend_cnt = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pend_cnt, i32 noundef 4) #9
  %8 = ptrtoint ptr %pend_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %pend_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %poll_wait.exit.if.end4_crit_edge, label %if.then

poll_wait.exit.if.end4_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %9) #12
  %call.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pend_cnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %pend_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %pend_cnt, align 4
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %poll_wait.exit.if.end4_crit_edge
  %ret.0 = phi i32 [ 65, %do.end ], [ 65, %if.then.if.end4_crit_edge ], [ 0, %poll_wait.exit.if.end4_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %p_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %p_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %miscdev = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %miscdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %miscdev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -728
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %pid2 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pid2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 200
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub76 = sub i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76)
  %cmp77 = icmp slt i32 %sub76, 0
  br i1 %cmp77, label %entry.do.end_crit_edge, label %if.end.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %dma_cnt4 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 8
  br label %if.end

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body.do.end_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %dma_cnt.0.lcssa = phi i32 [ -1, %entry.do.end_crit_edge ], [ %14, %do.body.do.end_crit_edge ]
  %idx = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %dma_cnt.0.lcssa, i32 noundef %12, i32 noundef %7) #12
  br label %do.body19

if.end:                                           ; preds = %do.body.if.end_crit_edge, %if.end.lr.ph
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_cnt4, i32 noundef 4) #9
  %13 = ptrtoint ptr %dma_cnt4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dma_cnt4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !272
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 1302, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end.do.body19_crit_edge, label %do.body

if.end.do.body19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.body19:                                        ; preds = %if.end.do.body19_crit_edge, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_release.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_release, %if.then25)) #9
          to label %do.end31 [label %if.then25], !srcloc !251

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %idx26 = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %idx26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idx26, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub27 = sub i32 %17, %8
  %call28 = tail call i32 @jiffies_to_msecs(i32 noundef %sub27) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_release.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.64, i32 noundef %16, i32 noundef %7, i32 noundef %call28) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.body19
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %to_v_msg_chan = getelementptr i8, ptr %3, i32 17720
  tail call fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev33, ptr noundef %to_v_msg_chan, ptr noundef %1)
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %to_h_msg_chan = getelementptr i8, ptr %3, i32 17988
  tail call fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev35, ptr noundef %to_h_msg_chan, ptr noundef %1)
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %bcm_vk_free_ctx.exit.thread, label %if.end.i

bcm_vk_free_ctx.exit.thread:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.101) #12
  br label %if.end40

if.end.i:                                         ; preds = %do.end31
  %idx2.i = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %idx2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx2.i, align 4
  %26 = ptrtoint ptr %pid2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid2, align 4
  %ctx_lock.i = getelementptr i8, ptr %3, i32 1924
  tail call void @_raw_spin_lock(ptr noundef %ctx_lock.i) #9
  %in_use.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %25, i32 2
  %28 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %in_use.i, align 4, !range !248
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool5.not.i = icmp eq i8 %29, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %if.else.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.104, i32 noundef %25) #12
  br label %bcm_vk_free_ctx.exit.thread71

if.else.i:                                        ; preds = %if.end.i
  %32 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %in_use.i, align 4
  %miscdev.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 19, i32 %25, i32 6
  %33 = ptrtoint ptr %miscdev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %miscdev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_del.exit.i_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %hash_idx17.i = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %hash_idx17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hash_idx17.i, align 4
  %arrayidx18.i = getelementptr %struct.bcm_vk, ptr %add.ptr, i32 0, i32 20, i32 %43
  %44 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %entry1.057.i = load ptr, ptr %arrayidx18.i, align 4
  %cmp.not58.i = icmp eq ptr %entry1.057.i, %arrayidx18.i
  br i1 %cmp.not58.i, label %list_del.exit.i.bcm_vk_free_ctx.exit.thread71_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  br label %for.body.i

list_del.exit.i.bcm_vk_free_ctx.exit.thread71_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm_vk_free_ctx.exit.thread71

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.i.for.body.i_crit_edge
  %entry1.060.i = phi ptr [ %entry1.0.i, %for.body.i.for.body.i_crit_edge ], [ %entry1.057.i, %list_del.exit.i.for.body.i_crit_edge ]
  %count.059.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.i.for.body.i_crit_edge ]
  %pid23.i = getelementptr inbounds %struct.bcm_vk_ctx, ptr %entry1.060.i, i32 0, i32 3
  %45 = ptrtoint ptr %pid23.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %27)
  %cmp24.i = icmp eq i32 %46, %27
  %inc.i = zext i1 %cmp24.i to i32
  %spec.select.i = add i32 %count.059.i, %inc.i
  %47 = ptrtoint ptr %entry1.060.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %entry1.0.i = load ptr, ptr %entry1.060.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, %arrayidx18.i
  br i1 %cmp.not.i, label %bcm_vk_free_ctx.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

bcm_vk_free_ctx.exit.thread71:                    ; preds = %list_del.exit.i.bcm_vk_free_ctx.exit.thread71_crit_edge, %do.end9.i
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #9
  br label %if.then38

bcm_vk_free_ctx.exit:                             ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %ctx_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp37 = icmp eq i32 %spec.select.i, 0
  br i1 %cmp37, label %bcm_vk_free_ctx.exit.if.then38_crit_edge, label %bcm_vk_free_ctx.exit.if.end40_crit_edge

bcm_vk_free_ctx.exit.if.end40_crit_edge:          ; preds = %bcm_vk_free_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

bcm_vk_free_ctx.exit.if.then38_crit_edge:         ; preds = %bcm_vk_free_ctx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %bcm_vk_free_ctx.exit.if.then38_crit_edge, %bcm_vk_free_ctx.exit.thread71
  %q_num = getelementptr inbounds %struct.bcm_vk_ctx, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %q_num, align 4
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %msgq_inited.i.i = getelementptr i8, ptr %3, i32 17716
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msgq_inited.i.i, i32 noundef 4) #9
  %52 = ptrtoint ptr %msgq_inited.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %msgq_inited.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %do.body.i

if.then.i:                                        ; preds = %if.then38
  %reset_pid.i = getelementptr i8, ptr %3, i32 17712
  %54 = ptrtoint ptr %reset_pid.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reset_pid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %7)
  %cmp.i = icmp eq i32 %55, %7
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end40_crit_edge

if.then.i.if.end40_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %reset_pid.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %reset_pid.i, align 4
  br label %if.end40

do.body.i:                                        ; preds = %if.then38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_handle_last_sess.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_release, %if.then8.i)) #9
          to label %do.end.i64 [label %if.then8.i], !srcloc !251

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_handle_last_sess.__UNIQUE_ID_ddebug244, ptr noundef %dev1.i, ptr noundef nonnull @.str.107, i32 noundef %7) #9
  br label %do.end.i64

do.end.i64:                                       ; preds = %if.then8.i, %do.body.i
  %reset_pid10.i = getelementptr i8, ptr %3, i32 17712
  %57 = ptrtoint ptr %reset_pid10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reset_pid10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %7)
  %cmp11.not.i = icmp eq i32 %58, %7
  br i1 %cmp11.not.i, label %if.else.i65, label %if.then12.i

if.then12.i:                                      ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 @bcm_vk_send_shutdown_msg(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %7, i32 noundef %49) #9
  br label %if.end40

if.else.i65:                                      ; preds = %do.end.i64
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %reset_pid10.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %reset_pid10.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else.i65, %if.then12.i, %if.then2.i, %if.then.i.if.end40_crit_edge, %bcm_vk_free_ctx.exit.if.end40_crit_edge, %bcm_vk_free_ctx.exit.thread
  %ret.0 = phi i32 [ 0, %bcm_vk_free_ctx.exit.if.end40_crit_edge ], [ 0, %bcm_vk_free_ctx.exit.thread ], [ -1, %if.then2.i ], [ -1, %if.then.i.if.end40_crit_edge ], [ %call13.i, %if.then12.i ], [ 0, %if.else.i65 ]
  %kref = getelementptr i8, ptr %3, i32 1360
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !274
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i67, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !265

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i67:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void @bcm_vk_release_data(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i67, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_vk_release_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_msg_init(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %ctx_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %ctx_lock.i, ptr noundef nonnull @.str.108, ptr noundef nonnull @bcm_vk_data_init.__key, i16 noundef signext 3) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %in_use.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 19, i32 %i.01.i, i32 2
  %2 = ptrtoint ptr %in_use.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %in_use.i, align 4
  %idx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 19, i32 %i.01.i, i32 1
  %3 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %i.01.i, ptr %idx.i, align 4
  %miscdev.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 19, i32 %i.01.i, i32 6
  %4 = ptrtoint ptr %miscdev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %miscdev.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 160
  br i1 %exitcond.not.i, label %do.body5.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body5.i:                                       ; preds = %for.body.i
  %msg_id_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %msg_id_lock.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @bcm_vk_data_init.__key.109, i16 noundef signext 3) #9
  %host_alert_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %host_alert_lock.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @bcm_vk_data_init.__key.111, i16 noundef signext 3) #9
  %msg_id.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 16
  %5 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %msg_id.i, align 4
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %do.body5.i
  %i.12.i = phi i32 [ 0, %do.body5.i ], [ %inc18.i, %for.body15.i.for.body15.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 20, i32 %i.12.i
  %6 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx16.i, ptr %arrayidx16.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx16.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx16.i, ptr %prev.i.i, align 4
  %inc18.i = add nuw nsw i32 %i.12.i, 1
  %exitcond3.not.i = icmp eq i32 %inc18.i, 128
  br i1 %exitcond3.not.i, label %bcm_vk_data_init.exit, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body15.i

bcm_vk_data_init.exit:                            ; preds = %for.body15.i
  %msgq_mutex.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 1
  tail call void @__mutex_init(ptr noundef %msgq_mutex.i, ptr noundef nonnull @.str.113, ptr noundef nonnull @bcm_vk_msg_chan_init.__key) #9
  %pendq_lock.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %pendq_lock.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @bcm_vk_msg_chan_init.__key.114, i16 noundef signext 3) #9
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i26 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.i, ptr %prev.i.i26, align 4
  %arrayidx.1.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i.3.i = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 23, i32 4, i32 3, i32 1
  %15 = ptrtoint ptr %prev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.3.i, ptr %prev.i.3.i, align 4
  %msgq_mutex.i27 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 1
  tail call void @__mutex_init(ptr noundef %msgq_mutex.i27, ptr noundef nonnull @.str.113, ptr noundef nonnull @bcm_vk_msg_chan_init.__key) #9
  %pendq_lock.i28 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %pendq_lock.i28, ptr noundef nonnull @.str.115, ptr noundef nonnull @bcm_vk_msg_chan_init.__key.114, i16 noundef signext 3) #9
  %arrayidx.i29 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4
  %16 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %arrayidx.i29, ptr %arrayidx.i29, align 4
  %prev.i.i30 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i29, ptr %prev.i.i30, align 4
  %arrayidx.1.i31 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i31 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx.1.i31, ptr %arrayidx.1.i31, align 4
  %prev.i.1.i32 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.1.i32 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.1.i31, ptr %prev.i.1.i32, align 4
  %arrayidx.2.i33 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i33 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %arrayidx.2.i33, ptr %arrayidx.2.i33, align 4
  %prev.i.2.i34 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.2.i34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.2.i33, ptr %prev.i.2.i34, align 4
  %arrayidx.3.i35 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx.3.i35, ptr %arrayidx.3.i35, align 4
  %prev.i.3.i36 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 24, i32 4, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i.3.i36 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx.3.i35, ptr %prev.i.3.i36, align 4
  %call11 = tail call i32 @bcm_vk_sync_msgq(ptr noundef %vk, i1 noundef zeroext false)
  %24 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call11, label %do.end16 [
    i32 0, label %bcm_vk_data_init.exit.cleanup_crit_edge
    i32 -11, label %bcm_vk_data_init.exit.cleanup_crit_edge37
  ]

bcm_vk_data_init.exit.cleanup_crit_edge37:        ; preds = %bcm_vk_data_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bcm_vk_data_init.exit.cleanup_crit_edge:          ; preds = %bcm_vk_data_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end16:                                         ; preds = %bcm_vk_data_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.71) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %bcm_vk_data_init.exit.cleanup_crit_edge, %bcm_vk_data_init.exit.cleanup_crit_edge37
  %retval.0 = phi i32 [ -5, %do.end16 ], [ 0, %bcm_vk_data_init.exit.cleanup_crit_edge ], [ 0, %bcm_vk_data_init.exit.cleanup_crit_edge37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_msg_remove(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bcm_vk_blk_drv_access(ptr noundef %vk) #9
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %to_v_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 23
  tail call fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev, ptr noundef %to_v_msg_chan, ptr noundef null)
  %2 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vk, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %to_h_msg_chan = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 24
  tail call fastcc void @bcm_vk_drain_all_pend(ptr noundef %dev2, ptr noundef %to_h_msg_chan, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_vk_sg_free(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !165, !166, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !201, !203, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237}
!llvm.named.register.sp = !{!238}
!llvm.module.flags = !{!239, !240, !241, !242, !243, !244, !245, !246}
!llvm.ident = !{!247}

!0 = !{ptr @__param_hb_mon, !1, !"__param_hb_mon", i1 false, i1 false}
!1 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_hb_montype236, !1, !"__UNIQUE_ID_hb_montype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_hb_mon237, !4, !"__UNIQUE_ID_hb_mon237", i1 false, i1 false}
!4 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 34, i32 1}
!5 = !{ptr @__param_batch_log, !6, !"__param_batch_log", i1 false, i1 false}
!6 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_batch_logtype238, !6, !"__UNIQUE_ID_batch_logtype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_batch_log239, !9, !"__UNIQUE_ID_batch_log239", i1 false, i1 false}
!9 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 37, i32 1}
!10 = !{ptr @bcm_vk_hb_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 187, i32 2}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 427, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bcm_vk_sync_msgq._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @bcm_vk_sync_msgq._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 436, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcm_vk_sync_msgq._entry.6, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm_vk_sync_msgq._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 453, i32 3}
!28 = !{ptr @bcm_vk_sync_msgq._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm_vk_sync_msgq._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 480, i32 4}
!32 = !{ptr @bcm_vk_sync_msgq._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm_vk_sync_msgq._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 698, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm_vk_send_shutdown_msg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm_vk_send_shutdown_msg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 718, i32 3}
!41 = !{ptr @bcm_vk_send_shutdown_msg._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm_vk_send_shutdown_msg._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 828, i32 5}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bcm_to_h_msg_dequeue._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @bcm_to_h_msg_dequeue._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 855, i32 5}
!51 = !{ptr @bcm_to_h_msg_dequeue._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bcm_to_h_msg_dequeue._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 864, i32 4}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug245, !54, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 904, i32 6}
!59 = !{ptr @bcm_to_h_msg_dequeue._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm_to_h_msg_dequeue._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 919, i32 5}
!63 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @bcm_to_h_msg_dequeue._entry.32, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @bcm_to_h_msg_dequeue._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 927, i32 2}
!68 = !{ptr @bcm_to_h_msg_dequeue.__UNIQUE_ID_ddebug246, !67, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 961, i32 3}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bcm_vk_msgq_irqhandler._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @bcm_vk_msgq_irqhandler._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 983, i32 3}
!76 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @bcm_vk_open._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @bcm_vk_open._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 996, i32 3}
!81 = !{ptr @bcm_vk_open.__UNIQUE_ID_ddebug247, !80, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1021, i32 2}
!84 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bcm_vk_read.__UNIQUE_ID_ddebug248, !83, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1067, i32 4}
!88 = !{ptr @bcm_vk_read._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @bcm_vk_read._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1094, i32 2}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @bcm_vk_write.__UNIQUE_ID_ddebug249, !91, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1098, i32 3}
!96 = !{ptr @bcm_vk_write._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @bcm_vk_write._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1127, i32 3}
!100 = !{ptr @bcm_vk_write._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @bcm_vk_write._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1137, i32 3}
!104 = !{ptr @bcm_vk_write._entry.51, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @bcm_vk_write._entry_ptr.53, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1144, i32 2}
!108 = !{ptr @bcm_vk_write.__UNIQUE_ID_ddebug250, !107, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1160, i32 4}
!111 = !{ptr @bcm_vk_write.__UNIQUE_ID_ddebug251, !110, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1219, i32 4}
!114 = !{ptr @bcm_vk_write.__UNIQUE_ID_ddebug252, !113, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1231, i32 3}
!117 = !{ptr @bcm_vk_write._entry.57, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @bcm_vk_write._entry_ptr.59, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1266, i32 4}
!121 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @bcm_vk_poll._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @bcm_vk_poll._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1296, i32 4}
!126 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @bcm_vk_release._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @bcm_vk_release._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1304, i32 2}
!131 = !{ptr @bcm_vk_release.__UNIQUE_ID_ddebug253, !130, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1327, i32 3}
!134 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @bcm_vk_msg_init._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @bcm_vk_msg_init._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1333, i32 3}
!139 = !{ptr @bcm_vk_msg_init._entry.67, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @bcm_vk_msg_init._entry_ptr.69, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 1340, i32 3}
!143 = !{ptr @bcm_vk_msg_init._entry.70, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @bcm_vk_msg_init._entry_ptr.72, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @__param_str_hb_mon, !1, !"__param_str_hb_mon", i1 false, i1 false}
!146 = !{ptr @hb_mon, !147, !"hb_mon", i1 false, i1 false}
!147 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 32, i32 13}
!148 = !{ptr @__param_str_batch_log, !6, !"__param_str_batch_log", i1 false, i1 false}
!149 = !{ptr @batch_log, !150, !"batch_log", i1 false, i1 false}
!150 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 35, i32 12}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 156, i32 3}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @bcm_vk_hb_poll.__UNIQUE_ID_ddebug240, !152, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 172, i32 3}
!157 = !{ptr @bcm_vk_hb_poll._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @bcm_vk_hb_poll._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 380, i32 5}
!161 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @bcm_vk_drain_all_pend._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @bcm_vk_drain_all_pend._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 395, i32 3}
!168 = !{ptr @bcm_vk_drain_all_pend._entry.80, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @bcm_vk_drain_all_pend._entry_ptr.82, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @bcm_to_v_msg_enqueue.seq_num, !171, !"seq_num", i1 false, i1 false}
!171 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 594, i32 13}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 609, i32 3}
!174 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @bcm_to_v_msg_enqueue._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @bcm_to_v_msg_enqueue._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 645, i32 3}
!179 = !{ptr @bcm_to_v_msg_enqueue._entry.85, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @bcm_to_v_msg_enqueue._entry_ptr.87, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 665, i32 2}
!183 = !{ptr @bcm_to_v_msg_enqueue.__UNIQUE_ID_ddebug243, !182, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 220, i32 3}
!186 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @bcm_vk_get_ctx._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @bcm_vk_get_ctx._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.92, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 236, i32 3}
!191 = !{ptr @bcm_vk_get_ctx._entry.91, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @bcm_vk_get_ctx._entry_ptr.93, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @bcm_vk_get_ctx.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 252, i32 2}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = distinct !{null, !197, !"__already_done", i1 false, i1 false}
!197 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!198 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 559, i32 3}
!205 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug241, !204, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 574, i32 2}
!209 = !{ptr @bcm_vk_append_ib_sgl.__UNIQUE_ID_ddebug242, !208, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 300, i32 3}
!212 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @bcm_vk_free_ctx._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @bcm_vk_free_ctx._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 309, i32 3}
!217 = !{ptr @bcm_vk_free_ctx._entry.103, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @bcm_vk_free_ctx._entry_ptr.105, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 743, i32 2}
!221 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @bcm_vk_handle_last_sess.__UNIQUE_ID_ddebug244, !220, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!223 = !{ptr @bcm_vk_data_init.__key, !224, !"__key", i1 false, i1 false}
!224 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 939, i32 2}
!225 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @bcm_vk_data_init.__key.109, !227, !"__key", i1 false, i1 false}
!227 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 945, i32 2}
!228 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @bcm_vk_data_init.__key.111, !230, !"__key", i1 false, i1 false}
!230 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 946, i32 2}
!231 = !{ptr @.str.112, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @bcm_vk_msg_chan_init.__key, !233, !"__key", i1 false, i1 false}
!233 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 513, i32 2}
!234 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @bcm_vk_msg_chan_init.__key.114, !236, !"__key", i1 false, i1 false}
!236 = !{!"../drivers/misc/bcm-vk/bcm_vk_msg.c", i32 514, i32 2}
!237 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!238 = !{!"sp"}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 1, !"min_enum_size", i32 4}
!241 = !{i32 8, !"branch-target-enforcement", i32 0}
!242 = !{i32 8, !"sign-return-address", i32 0}
!243 = !{i32 8, !"sign-return-address-all", i32 0}
!244 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!245 = !{i32 7, !"uwtable", i32 1}
!246 = !{i32 7, !"frame-pointer", i32 2}
!247 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!248 = !{i8 0, i8 2}
!249 = !{i64 5192632}
!250 = !{i64 2154727433}
!251 = !{i64 2148789987, i64 2148789992, i64 2148790005, i64 2148790049, i64 2148790083, i64 2148790104}
!252 = !{i64 2148224787, i64 2148224813, i64 2148224842, i64 2148224876, i64 2148224907, i64 2148224930}
!253 = !{!"auto-init"}
!254 = !{i64 5191794}
!255 = !{i64 2154727822}
!256 = !{i64 5192214}
!257 = !{i64 2154796642}
!258 = !{i64 5192412}
!259 = !{i64 2154812127}
!260 = !{i64 2154816189}
!261 = !{i64 2154822703}
!262 = !{i64 2148222322, i64 2148222348, i64 2148222377, i64 2148222411, i64 2148222442, i64 2148222465}
!263 = !{i64 2148223852, i64 2148223884, i64 2148223913, i64 2148223947, i64 2148223978, i64 2148224001}
!264 = !{!"branch_weights", i32 1, i32 2000}
!265 = !{!"branch_weights", i32 2000, i32 1}
!266 = !{i64 2152206474, i64 2152206499}
!267 = !{i64 2152205793, i64 2152205818}
!268 = !{i64 4701348}
!269 = !{i64 4701545}
!270 = !{i64 2152186778}
!271 = !{i64 2154872839}
!272 = !{i64 2154872681}
!273 = !{i64 2148311853}
!274 = !{i64 2148226317, i64 2148226349, i64 2148226378, i64 2148226412, i64 2148226443, i64 2148226466}
!275 = !{i64 2149590571}
