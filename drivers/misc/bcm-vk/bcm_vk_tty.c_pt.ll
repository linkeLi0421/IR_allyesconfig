; ModuleID = '/llk/IR_all_yes/drivers/misc/bcm-vk/bcm_vk_tty.c_pt.bc'
source_filename = "../drivers/misc/bcm-vk/bcm_vk_tty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.70 = type { ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.38, %struct.anon.39, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.38 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.39 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcm_vk\00", [25 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@serial_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr null, ptr null, ptr @bcm_vk_tty_open, ptr @bcm_vk_tty_close, ptr null, ptr null, ptr @bcm_vk_tty_write, ptr null, ptr null, ptr @bcm_vk_tty_write_room, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@bcm_vk_tty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tty_register_driver failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk_tty_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/misc/bcm-vk/bcm_vk_tty.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_vk_tty_init._entry_ptr = internal global ptr @bcm_vk_tty_init._entry, section ".printk_index", align 4
@bcm_vk_tty_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&vk->tty_wq_work)\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tty\00", [28 x i8] zeroinitializer }, align 32
@bcm_vk_tty_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Fail to create tty workqueue thread\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm_vk_tty_init._entry_ptr.11 = internal global ptr @bcm_vk_tty_init._entry.9, section ".printk_index", align 4
@bcm_vk_tty_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&vk->serial_timer)\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm_vk_tty_wq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERROR: wq handler ttyVK%d wr:0x%x > 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm_vk_tty_wq_handler\00", [42 x i8] zeroinitializer }, align 32
@bcm_vk_tty_wq_handler._entry_ptr = internal global ptr @bcm_vk_tty_wq_handler._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 248, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"serial_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 224, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 262, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 280, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 281, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 283, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 164, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [36 x i8] c"../drivers/misc/bcm-vk/bcm_vk_tty.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 95, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @bcm_vk_tty_init._entry, ptr @bcm_vk_tty_init._entry.9, ptr @bcm_vk_tty_init._entry_ptr, ptr @bcm_vk_tty_init._entry_ptr.11, ptr @bcm_vk_tty_wq_handler._entry, ptr @bcm_vk_tty_wq_handler._entry_ptr, ptr @.str, ptr @serial_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcm_vk_tty_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @bcm_vk_tty_open.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serial_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_tty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_tty_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_tty_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_tty_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_tty_wq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_tty_irqhandler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tty_wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 12
  %0 = ptrtoint ptr %tty_wq_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty_wq_thread, align 4
  %tty_wq_work = getelementptr inbounds %struct.bcm_vk, ptr %dev_id, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %tty_wq_work) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_tty_init(ptr noundef %vk, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vk, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call ptr @__tty_alloc_driver(i32 noundef 2, ptr noundef null, i32 noundef 12) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup46

if.end:                                           ; preds = %entry
  %tty_drv4 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 9
  %3 = ptrtoint ptr %tty_drv4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %tty_drv4, align 4
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %driver_name, align 4
  %call5 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #6
  %name6 = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %name6, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.err_tty_driver_kref_put_crit_edge, label %if.end9

if.end.err_tty_driver_kref_put_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_tty_driver_kref_put

if.end9:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 12
  %8 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 20
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @serial_ops, ptr %ops.i, align 4
  %call10 = tail call i32 @tty_register_driver(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %if.end9
  %arrayidx = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 0
  tail call void @tty_port_init(ptr noundef %arrayidx) #6
  %call17 = tail call ptr @tty_port_register_device_attr(ptr noundef %arrayidx, ptr noundef %call, i32 noundef 0, ptr noundef %dev1, ptr noundef %vk, ptr noundef null) #6
  %cmp.i91 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %unwind, label %for.inc

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %err_kfree_tty_name

for.inc:                                          ; preds = %for.body.preheader
  %is_opened = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 0, i32 9
  %10 = ptrtoint ptr %is_opened to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_opened, align 1
  %arrayidx.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 1
  tail call void @tty_port_init(ptr noundef %arrayidx.1) #6
  %call17.1 = tail call ptr @tty_port_register_device_attr(ptr noundef %arrayidx.1, ptr noundef %call, i32 noundef 1, ptr noundef %dev1, ptr noundef %vk, ptr noundef null) #6
  %cmp.i91.1 = icmp ugt ptr %call17.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91.1, label %unwind.thread109, label %for.inc.1

unwind.thread109:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call17.1 to i32
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  %is_opened.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 1, i32 9
  %12 = ptrtoint ptr %is_opened.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_opened.1, align 1
  %tty_wq_work = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 13
  tail call void @__init_work(ptr noundef %tty_wq_work, i32 noundef 0) #6
  %13 = ptrtoint ptr %tty_wq_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %tty_wq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @bcm_vk_tty_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry28 = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 13, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry28, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @bcm_vk_tty_wq_handler, ptr %func, align 4
  %call32 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.7, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.8) #6
  %tty_wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 12
  %17 = ptrtoint ptr %tty_wq_thread to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call32, ptr %tty_wq_thread, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %unwind.thread, label %for.inc.1.cleanup46_crit_edge

for.inc.1.cleanup46_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

unwind.thread:                                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %while.body

unwind:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call17 to i32
  br label %while.end

while.body:                                       ; preds = %unwind.thread, %unwind.thread109
  %err.2108 = phi i32 [ -12, %unwind.thread ], [ %11, %unwind.thread109 ]
  %i.096106 = phi i32 [ 2, %unwind.thread ], [ 1, %unwind.thread109 ]
  %dec100 = add nsw i32 %i.096106, -1
  %arrayidx42 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 %dec100
  tail call void @tty_port_unregister_device(ptr noundef %arrayidx42, ptr noundef %call, i32 noundef %dec100) #6
  br i1 %cmp.i91.1, label %while.body.while.end_crit_edge, label %while.body.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %dec100.1 = add nsw i32 %i.096106, -2
  %arrayidx42.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 %dec100.1
  tail call void @tty_port_unregister_device(ptr noundef %arrayidx42.1, ptr noundef %call, i32 noundef %dec100.1) #6
  br label %while.end

while.end:                                        ; preds = %while.body.1, %while.body.while.end_crit_edge, %unwind
  %err.2107 = phi i32 [ %18, %unwind ], [ %err.2108, %while.body.1 ], [ %err.2108, %while.body.while.end_crit_edge ]
  tail call void @tty_unregister_driver(ptr noundef %call) #6
  br label %err_kfree_tty_name

err_kfree_tty_name:                               ; preds = %while.end, %do.end
  %err.3 = phi i32 [ %call10, %do.end ], [ %err.2107, %while.end ]
  %19 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name6, align 4
  tail call void @kfree(ptr noundef %20) #6
  %21 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %name6, align 4
  br label %err_tty_driver_kref_put

err_tty_driver_kref_put:                          ; preds = %err_kfree_tty_name, %if.end.err_tty_driver_kref_put_crit_edge
  %err.4 = phi i32 [ %err.3, %err_kfree_tty_name ], [ -12, %if.end.err_tty_driver_kref_put_crit_edge ]
  tail call void @tty_driver_kref_put(ptr noundef %call) #6
  br label %cleanup46

cleanup46:                                        ; preds = %err_tty_driver_kref_put, %for.inc.1.cleanup46_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.4, %err_tty_driver_kref_put ], [ 0, %for.inc.1.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_tty_wq_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2044
  %arrayidx.i = getelementptr i8, ptr %work, i32 -2040
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1040
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %tty = getelementptr i8, ptr %work, i32 -1220
  %arrayidx.i83 = getelementptr i8, ptr %work, i32 -2036
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.092 = phi i32 [ 0, %for.cond.preheader ], [ %inc46, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.092
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %arrayidx = getelementptr [2 x %struct.bcm_vk_tty], ptr %tty, i32 0, i32 %i.092
  %is_opened = getelementptr inbounds %struct.bcm_vk_tty, ptr %arrayidx, i32 0, i32 9
  %4 = ptrtoint ptr %is_opened to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_opened, align 1, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end4.for.inc_crit_edge, label %if.end6

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %if.end4
  %from_offset = getelementptr inbounds %struct.bcm_vk_tty, ptr %arrayidx, i32 0, i32 4
  %6 = ptrtoint ptr %from_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %from_offset, align 4
  %add = add i32 %7, 8
  %8 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #6, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %from_size = getelementptr inbounds %struct.bcm_vk_tty, ptr %arrayidx, i32 0, i32 5
  %12 = ptrtoint ptr %from_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %from_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.end6.for.inc_crit_edge, label %if.end11

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp13.not = icmp ult i32 %11, %13
  br i1 %cmp13.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %if.end11
  %rd = getelementptr inbounds %struct.bcm_vk_tty, ptr %arrayidx, i32 0, i32 6
  %14 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp20.not89 = icmp eq i32 %15, %11
  br i1 %cmp20.not89, label %while.cond.preheader.for.inc_crit_edge, label %while.body.lr.ph

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %arrayidx, i32 0, i32 8
  br label %while.body

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %i.092, i32 noundef %11, i32 noundef %13) #9
  br label %for.inc

while.body:                                       ; preds = %tty_insert_flip_char.exit.while.body_crit_edge, %while.body.lr.ph
  %18 = phi i32 [ %15, %while.body.lr.ph ], [ %42, %tty_insert_flip_char.exit.while.body_crit_edge ]
  %count.090 = phi i32 [ 0, %while.body.lr.ph ], [ %inc37, %tty_insert_flip_char.exit.while.body_crit_edge ]
  %19 = ptrtoint ptr %from_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %from_offset, align 4
  %add23 = add i32 %18, 16
  %add25 = add i32 %add23, %20
  %21 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i83, align 4
  %add.ptr.i86 = getelementptr i8, ptr %22, i32 %add25
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i86) #6, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %24 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rd, align 4
  %inc = add i32 %25, 1
  %26 = ptrtoint ptr %from_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %from_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %27)
  %cmp31.not = icmp ult i32 %inc, %27
  %spec.store.select = select i1 %cmp31.not, i32 %inc, i32 0
  %28 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select, ptr %rd, align 4
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i, align 4
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp3.i = icmp slt i32 %32, %34
  br i1 %cmp3.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %while.body
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 5
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.not.i, label %if.then8.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %34
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %add.ptr.i.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i, %if.then.i.if.end.i_crit_edge
  %38 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %used.i, align 4
  %data.i.i = getelementptr inbounds %struct.tty_buffer, ptr %30, i32 0, i32 6
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i, i32 %39
  %40 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %23, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %arrayidx, i8 noundef zeroext %23, i8 noundef zeroext 0) #6
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  %inc37 = add i32 %count.090, 1
  %41 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rd, align 4
  %cmp20.not = icmp eq i32 %42, %11
  br i1 %cmp20.not, label %while.end, label %tty_insert_flip_char.exit.while.body_crit_edge

tty_insert_flip_char.exit.while.body_crit_edge:   ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %tty_insert_flip_char.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc37)
  %tobool38.not = icmp eq i32 %inc37, 0
  br i1 %tobool38.not, label %while.end.for.inc_crit_edge, label %if.then39

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then39:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_flip_buffer_push(ptr noundef %arrayidx) #6
  %43 = ptrtoint ptr %rd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rd, align 4
  %45 = ptrtoint ptr %from_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %from_offset, align 4
  %add43 = add i32 %46, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %48 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i83, align 4
  %add.ptr.i88 = getelementptr i8, ptr %49, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %47) #6, !srcloc !46
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %while.end.for.inc_crit_edge, %do.end, %while.cond.preheader.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc46 = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc46, 2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_unregister_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_tty_exit(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_timer = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 10
  %call = tail call i32 @del_timer_sync(ptr noundef %serial_timer) #6
  %tty_drv = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 9
  %arrayidx = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 0
  %0 = ptrtoint ptr %tty_drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty_drv, align 4
  tail call void @tty_port_unregister_device(ptr noundef %arrayidx, ptr noundef %1, i32 noundef 0) #6
  tail call void @tty_port_destroy(ptr noundef %arrayidx) #6
  %arrayidx.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %tty_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tty_drv, align 4
  tail call void @tty_port_unregister_device(ptr noundef %arrayidx.1, ptr noundef %3, i32 noundef 1) #6
  tail call void @tty_port_destroy(ptr noundef %arrayidx.1) #6
  %4 = ptrtoint ptr %tty_drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty_drv, align 4
  tail call void @tty_unregister_driver(ptr noundef %5) #6
  %6 = ptrtoint ptr %tty_drv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty_drv, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %9) #6
  %10 = ptrtoint ptr %tty_drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty_drv, align 4
  %name7 = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %name7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %name7, align 4
  %13 = load ptr, ptr %tty_drv, align 4
  tail call void @tty_driver_kref_put(ptr noundef %13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_tty_terminate_tty_user(ptr nocapture noundef readonly %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pid = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 0, i32 7
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @find_vpid(i32 noundef %1) #6
  %call2 = tail call i32 @kill_pid(ptr noundef %call, i32 noundef 9, i32 noundef 1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %pid.1 = getelementptr %struct.bcm_vk, ptr %vk, i32 0, i32 11, i32 1, i32 7
  %2 = ptrtoint ptr %pid.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %call.1 = tail call ptr @find_vpid(i32 noundef %3) #6
  %call2.1 = tail call i32 @kill_pid(ptr noundef %call.1, i32 noundef 9, i32 noundef 1) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm_vk_tty_wq_exit(ptr noundef %vk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tty_wq_work = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 13
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %tty_wq_work) #6
  %tty_wq_thread = getelementptr inbounds %struct.bcm_vk, ptr %vk, i32 0, i32 12
  %0 = ptrtoint ptr %tty_wq_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty_wq_thread, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_vk_tty_open(ptr nocapture noundef %tty, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %5 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !30) #6
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid.i, align 8
  %pid = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 7
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pid, align 4
  %mul5 = shl i32 %6, 21
  %add = add i32 %mul5, 3145728
  %to_offset = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 1
  %14 = ptrtoint ptr %to_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %to_offset, align 4
  %add9 = add i32 %mul5, 4194304
  %from_offset = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 4
  %15 = ptrtoint ptr %from_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add9, ptr %from_offset, align 4
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1040
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp11 = icmp eq i32 %18, -1
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %shl = shl nuw nsw i32 1, %6
  %and = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %to_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %to_offset, align 4
  %add16 = add i32 %21, 4
  %arrayidx.i67 = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %23, i32 %add16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #6, !srcloc !40
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %to_size = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 2
  %26 = ptrtoint ptr %to_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %to_size, align 4
  %27 = ptrtoint ptr %to_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %to_offset, align 4
  %add19 = add i32 %28, 8
  %29 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i67, align 4
  %add.ptr.i70 = getelementptr i8, ptr %30, i32 %add19
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #6, !srcloc !40
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %wr = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 3
  %33 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %wr, align 4
  %34 = ptrtoint ptr %from_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %from_offset, align 4
  %add23 = add i32 %35, 4
  %36 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i67, align 4
  %add.ptr.i72 = getelementptr i8, ptr %37, i32 %add23
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #6, !srcloc !40
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %from_size = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 5
  %40 = ptrtoint ptr %from_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %from_size, align 4
  %41 = ptrtoint ptr %from_offset to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %from_offset, align 4
  %add27 = add i32 %42, 12
  %43 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i67, align 4
  %add.ptr.i74 = getelementptr i8, ptr %44, i32 %add27
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #6, !srcloc !40
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %rd = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 6
  %47 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rd, align 4
  %is_opened = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 9
  %48 = ptrtoint ptr %is_opened to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %is_opened, align 1
  %count = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 17
  %49 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp30 = icmp eq i32 %50, 1
  br i1 %cmp30, label %land.lhs.true, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end14
  %irq_enabled = getelementptr %struct.bcm_vk, ptr %4, i32 0, i32 11, i32 %6, i32 8
  %51 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %irq_enabled, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %serial_timer = getelementptr inbounds %struct.bcm_vk, ptr %4, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %serial_timer, ptr noundef nonnull @bcm_vk_tty_poll, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @bcm_vk_tty_open.__key) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add34 = add i32 %53, 10
  %call35 = tail call i32 @mod_timer(ptr noundef %serial_timer, i32 noundef %add34) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %land.lhs.true.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_tty_close(ptr nocapture noundef readonly %tty, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_opened = getelementptr %struct.bcm_vk, ptr %3, i32 0, i32 11, i32 %5, i32 9
  %6 = ptrtoint ptr %is_opened to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_opened, align 1
  %count = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 17
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %serial_timer = getelementptr inbounds %struct.bcm_vk, ptr %3, i32 0, i32 10
  %call5 = tail call i32 @del_timer_sync(ptr noundef %serial_timer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm_vk_tty_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buffer, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %dev = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp31 = icmp sgt i32 %count, 0
  br i1 %cmp31, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %to_offset = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 11, i32 %1, i32 1
  %wr = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 11, i32 %1, i32 3
  %arrayidx.i = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 1, i32 1
  %to_size = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 11, i32 %1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.body.for.body_crit_edge ]
  %arrayidx3 = getelementptr i8, ptr %buffer, i32 %i.032
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %8 = ptrtoint ptr %to_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_offset, align 4
  %add = add i32 %9, 16
  %10 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wr, align 4
  %add4 = add i32 %add, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %7) #6, !srcloc !48
  %14 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr, align 4
  %inc = add i32 %15, 1
  %16 = ptrtoint ptr %to_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %to_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %17)
  %cmp7.not = icmp ult i32 %inc, %17
  %spec.store.select = select i1 %cmp7.not, i32 %inc, i32 0
  %18 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.store.select, ptr %wr, align 4
  %inc10 = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc10, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %wr11 = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 11, i32 %1, i32 3
  %19 = ptrtoint ptr %wr11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wr11, align 4
  %to_offset12 = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 11, i32 %1, i32 1
  %21 = ptrtoint ptr %to_offset12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %to_offset12, align 4
  %add13 = add i32 %22, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %arrayidx.i29 = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %25, i32 %add13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %23) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %arrayidx.i.i = getelementptr %struct.bcm_vk, ptr %5, i32 0, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 3312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !46
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm_vk_tty_write_room(ptr nocapture noundef readonly %tty) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %to_size = getelementptr %struct.bcm_vk, ptr %3, i32 0, i32 11, i32 %5, i32 2
  %6 = ptrtoint ptr %to_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %to_size, align 4
  %sub = add i32 %7, -1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm_vk_tty_poll(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tty_wq_thread = getelementptr i8, ptr %t, i32 1264
  %0 = ptrtoint ptr %tty_wq_thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty_wq_thread, align 4
  %tty_wq_work = getelementptr i8, ptr %t, i32 1268
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %tty_wq_work) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 10
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !20, !22, !24, !25, !27, !28, !29}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 248, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 262, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bcm_vk_tty_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @bcm_vk_tty_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @bcm_vk_tty_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 280, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 281, i32 22}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 283, i32 3}
!18 = !{ptr @bcm_vk_tty_init._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm_vk_tty_init._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @serial_ops, !21, !"serial_ops", i1 false, i1 false}
!21 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 224, i32 36}
!22 = !{ptr @bcm_vk_tty_open.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 164, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/bcm-vk/bcm_vk_tty.c", i32 95, i32 4}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcm_vk_tty_wq_handler._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm_vk_tty_wq_handler._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 5797806}
!41 = !{i64 2154694816}
!42 = !{i8 0, i8 2}
!43 = !{i64 5797586}
!44 = !{i64 2154695799}
!45 = !{i64 2154695205}
!46 = !{i64 5797388}
!47 = !{i64 2154696188}
!48 = !{i64 5797191}
