; ModuleID = '/llk/IR_all_yes/drivers/mailbox/mailbox-test.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mbox_test_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.wait_queue_head, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
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
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__initcall__kmod_mailbox_test__229_441_mbox_test_driver_init6 = internal global ptr @mbox_test_driver_init, section ".initcall6.init", align 4
@mbox_test_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mbox_test_probe, ptr @mbox_test_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mbox_test_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mbox_test_driver_exit = internal global ptr @mbox_test_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [58 x i8] c"mailbox_test.description=Generic Mailbox Testing Facility\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [52 x i8] c"mailbox_test.author=Lee Jones <lee.jones@linaro.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [47 x i8] c"mailbox_test.file=drivers/mailbox/mailbox-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [28 x i8] c"mailbox_test.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mailbox_test\00", [19 x i8] zeroinitializer }, align 32
@mbox_test_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mailbox-test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@mbox_test_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tdev->lock\00", [20 x i8] zeroinitializer }, align 32
@mbox_test_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&tdev->waitq\00", [19 x i8] zeroinitializer }, align 32
@mbox_test_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 408, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Successfully registered\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mbox_test_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mailbox/mailbox-test.c\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mbox_test_probe._entry_ptr = internal global ptr @mbox_test_probe._entry, section ".printk_index", align 4
@mbox_test_request_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 342, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request %s channel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mbox_test_request_channel\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mbox_test_request_channel._entry_ptr = internal global ptr @mbox_test_request_channel._entry, section ".printk_index", align 4
@mbox_test_receive_message.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.8, ptr @.str.15, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mbox_test_receive_message\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Client: Received [MMIO]: \00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mbox_test_receive_message.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.8, ptr @.str.17, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Client: Received [API]: \00", [39 x i8] zeroinitializer }, align 32
@mbox_data_ready = internal global { i1, [31 x i8] } zeroinitializer, align 32
@mbox_test_message_sent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.8, i32 316, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Client: Message could not be sent: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mbox_test_message_sent\00", [41 x i8] zeroinitializer }, align 32
@mbox_test_message_sent._entry_ptr = internal global ptr @mbox_test_message_sent._entry, section ".printk_index", align 4
@mbox_test_message_sent._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.8, i32 319, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Client: Message sent\0A\00", [42 x i8] zeroinitializer }, align 32
@mbox_test_message_sent._entry_ptr.22 = internal global ptr @mbox_test_message_sent._entry.20, section ".printk_index", align 4
@mbox_test_add_debugfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.8, i32 263, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create Mailbox debugfs\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mbox_test_add_debugfs\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mbox_test_add_debugfs._entry_ptr = internal global ptr @mbox_test_add_debugfs._entry, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"message\00", [24 x i8] zeroinitializer }, align 32
@mbox_test_message_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @mbox_test_message_read, ptr @mbox_test_message_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbox_test_message_poll, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr @mbox_test_message_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@mbox_test_signal_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @mbox_test_signal_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"<NO RX CAPABILITY>\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mbox_test_message_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.8, i32 102, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Channel cannot do Tx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mbox_test_message_write\00", [40 x i8] zeroinitializer }, align 32
@mbox_test_message_write._entry_ptr = internal global ptr @mbox_test_message_write._entry, section ".printk_index", align 4
@mbox_test_message_write._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.8, i32 109, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Message length %zd greater than max allowed %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mbox_test_message_write._entry_ptr.34 = internal global ptr @mbox_test_message_write._entry.32, section ".printk_index", align 4
@mbox_test_message_write.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.8, ptr @.str.35, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Client: Sending: Signal: \00", [38 x i8] zeroinitializer }, align 32
@mbox_test_message_write.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.8, ptr @.str.36, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Client: Sending: Message: \00", [37 x i8] zeroinitializer }, align 32
@mbox_test_message_write._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.8, i32 140, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send message via mailbox\0A\00", [60 x i8] zeroinitializer }, align 32
@mbox_test_message_write._entry_ptr.39 = internal global ptr @mbox_test_message_write._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mbox_test_signal_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.43, ptr @.str.8, i32 53, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mbox_test_signal_write\00", [41 x i8] zeroinitializer }, align 32
@mbox_test_signal_write._entry_ptr = internal global ptr @mbox_test_signal_write._entry, section ".printk_index", align 4
@mbox_test_signal_write._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.8, i32 60, ptr @.str.25, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Signal length %zd greater than max allowed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mbox_test_signal_write._entry_ptr.46 = internal global ptr @mbox_test_signal_write._entry.44, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"mbox_test_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 433, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 435, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"mbox_test_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 427, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 381, i32 53 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 382, i32 53 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 394, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 407, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 408, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 342, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 284, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 287, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"mbox_data_ready\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 315, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 318, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 263, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 267, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant [22 x i8] c"mbox_test_message_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 246, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 270, i32 22 }
@___asan_gen_.153 = private unnamed_addr constant [21 x i8] c"mbox_test_signal_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 80, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 178, i32 30 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 102, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 107, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 128, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 135, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 140, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 230, i32 6 }
@___asan_gen_.190 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 156, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 53, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [34 x i8] c"../drivers/mailbox/mailbox-test.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 58, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_mbox_test_driver_exit, ptr @__initcall__kmod_mailbox_test__229_441_mbox_test_driver_init6, ptr @mbox_test_add_debugfs._entry, ptr @mbox_test_add_debugfs._entry_ptr, ptr @mbox_test_driver_exit, ptr @mbox_test_message_sent._entry, ptr @mbox_test_message_sent._entry.20, ptr @mbox_test_message_sent._entry_ptr, ptr @mbox_test_message_sent._entry_ptr.22, ptr @mbox_test_message_write._entry, ptr @mbox_test_message_write._entry.32, ptr @mbox_test_message_write._entry.37, ptr @mbox_test_message_write._entry_ptr, ptr @mbox_test_message_write._entry_ptr.34, ptr @mbox_test_message_write._entry_ptr.39, ptr @mbox_test_probe._entry, ptr @mbox_test_probe._entry_ptr, ptr @mbox_test_request_channel._entry, ptr @mbox_test_request_channel._entry_ptr, ptr @mbox_test_signal_write._entry, ptr @mbox_test_signal_write._entry.44, ptr @mbox_test_signal_write._entry_ptr, ptr @mbox_test_signal_write._entry_ptr.46, ptr @mbox_test_driver, ptr @.str, ptr @mbox_test_match, ptr @.str.1, ptr @.str.2, ptr @mbox_test_probe.__key, ptr @.str.3, ptr @mbox_test_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mbox_data_ready, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @mbox_test_message_ops, ptr @.str.27, ptr @mbox_test_signal_ops, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_request_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_data_ready to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_message_sent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_message_sent._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_add_debugfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_message_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_signal_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_message_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_message_write._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_message_write._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_signal_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_test_signal_write._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mbox_test_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mbox_test_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mbox_test_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #7
  %tx_mmio = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %tx_mmio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %tx_mmio, align 4
  %cmp = icmp eq ptr %call3, inttoptr (i32 -16 to ptr)
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end.i, align 4
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call1, align 4
  %sub.i = add i32 %2, 1
  %add.i = sub i32 %sub.i, %4
  %call9 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %4, i32 noundef %add.i) #7
  br label %if.end16.sink.split

if.else:                                          ; preds = %if.end
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else.if.end16.sink.split_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else.if.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.else.if.end16.sink.split_crit_edge, %if.then6
  %.sink = phi ptr [ %call9, %if.then6 ], [ null, %if.else.if.end16.sink.split_crit_edge ]
  %5 = ptrtoint ptr %tx_mmio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.sink, ptr %tx_mmio, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call17) #7
  %rx_mmio = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %rx_mmio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call19, ptr %rx_mmio, align 4
  %cmp22 = icmp eq ptr %call19, inttoptr (i32 -16 to ptr)
  br i1 %cmp22, label %if.then23, label %if.else29

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %end.i130 = getelementptr inbounds %struct.resource, ptr %call17, i32 0, i32 1
  %7 = ptrtoint ptr %end.i130 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i130, align 4
  %9 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call17, align 4
  %sub.i131 = add i32 %8, 1
  %add.i132 = sub i32 %sub.i131, %10
  %call27 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %10, i32 noundef %add.i132) #7
  br label %if.end36.sink.split

if.else29:                                        ; preds = %if.end16
  %cmp.i133 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then32, label %if.else29.if.end36_crit_edge

if.else29.if.end36_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %tx_mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_mmio, align 4
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.then32, %if.then23
  %.sink169 = phi ptr [ %12, %if.then32 ], [ %call27, %if.then23 ]
  %13 = ptrtoint ptr %rx_mmio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink169, ptr %rx_mmio, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else29.if.end36_crit_edge
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end36.mbox_test_request_channel.exit_crit_edge, label %if.end.i

if.end36.mbox_test_request_channel.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %mbox_test_request_channel.exit

if.end.i:                                         ; preds = %if.end36
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i.i, align 4
  %rx_callback.i = getelementptr inbounds %struct.mbox_client, ptr %call.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %rx_callback.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mbox_test_receive_message, ptr %rx_callback.i, align 4
  %tx_prepare.i = getelementptr inbounds %struct.mbox_client, ptr %call.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %tx_prepare.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mbox_test_prepare_message, ptr %tx_prepare.i, align 4
  %tx_done.i = getelementptr inbounds %struct.mbox_client, ptr %call.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mbox_test_message_sent, ptr %tx_done.i, align 4
  %tx_block.i = getelementptr inbounds %struct.mbox_client, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %tx_block.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %tx_block.i, align 4
  %knows_txdone.i = getelementptr inbounds %struct.mbox_client, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %knows_txdone.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %knows_txdone.i, align 4
  %tx_tout.i = getelementptr inbounds %struct.mbox_client, ptr %call.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %tx_tout.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 500, ptr %tx_tout.i, align 4
  %call4.i = tail call ptr @mbox_request_channel_byname(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.1) #7
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i.mbox_test_request_channel.exit_crit_edge

if.end.i.mbox_test_request_channel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mbox_test_request_channel.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1) #10
  br label %mbox_test_request_channel.exit

mbox_test_request_channel.exit:                   ; preds = %do.end.i, %if.end.i.mbox_test_request_channel.exit_crit_edge, %if.end36.mbox_test_request_channel.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call4.i, %if.end.i.mbox_test_request_channel.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end36.mbox_test_request_channel.exit_crit_edge ]
  %tx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i, ptr %tx_channel, align 4
  %call.i.i135 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not.i136 = icmp eq ptr %call.i.i135, null
  br i1 %tobool.not.i136, label %if.end44.thread, label %if.end.i145

if.end44.thread:                                  ; preds = %mbox_test_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rx_channel157 = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %rx_channel157 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -12 to ptr), ptr %rx_channel157, align 4
  br label %if.end54

if.end.i145:                                      ; preds = %mbox_test_request_channel.exit
  %23 = ptrtoint ptr %call.i.i135 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %call.i.i135, align 4
  %rx_callback.i137 = getelementptr inbounds %struct.mbox_client, ptr %call.i.i135, i32 0, i32 4
  %24 = ptrtoint ptr %rx_callback.i137 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mbox_test_receive_message, ptr %rx_callback.i137, align 4
  %tx_prepare.i138 = getelementptr inbounds %struct.mbox_client, ptr %call.i.i135, i32 0, i32 5
  %25 = ptrtoint ptr %tx_prepare.i138 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mbox_test_prepare_message, ptr %tx_prepare.i138, align 4
  %tx_done.i139 = getelementptr inbounds %struct.mbox_client, ptr %call.i.i135, i32 0, i32 6
  %26 = ptrtoint ptr %tx_done.i139 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mbox_test_message_sent, ptr %tx_done.i139, align 4
  %tx_block.i140 = getelementptr inbounds %struct.mbox_client, ptr %call.i.i135, i32 0, i32 1
  %27 = ptrtoint ptr %tx_block.i140 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %tx_block.i140, align 4
  %knows_txdone.i141 = getelementptr inbounds %struct.mbox_client, ptr %call.i.i135, i32 0, i32 3
  %28 = ptrtoint ptr %knows_txdone.i141 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %knows_txdone.i141, align 4
  %tx_tout.i142 = getelementptr inbounds %struct.mbox_client, ptr %call.i.i135, i32 0, i32 2
  %29 = ptrtoint ptr %tx_tout.i142 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 500, ptr %tx_tout.i142, align 4
  %call4.i143 = tail call ptr @mbox_request_channel_byname(ptr noundef nonnull %call.i.i135, ptr noundef nonnull @.str.2) #7
  %cmp.i.i144 = icmp ugt ptr %call4.i143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i144, label %do.end.i146, label %if.end.i145.mbox_test_request_channel.exit148_crit_edge

if.end.i145.mbox_test_request_channel.exit148_crit_edge: ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %mbox_test_request_channel.exit148

do.end.i146:                                      ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #10
  br label %mbox_test_request_channel.exit148

mbox_test_request_channel.exit148:                ; preds = %do.end.i146, %if.end.i145.mbox_test_request_channel.exit148_crit_edge
  %retval.0.i147 = phi ptr [ null, %do.end.i146 ], [ %call4.i143, %if.end.i145.mbox_test_request_channel.exit148_crit_edge ]
  %rx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %rx_channel to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i147, ptr %rx_channel, align 4
  %31 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_channel, align 4
  %tobool40.not = icmp eq ptr %32, null
  %tobool42.not = icmp eq ptr %retval.0.i147, null
  %or.cond = select i1 %tobool40.not, i1 %tobool42.not, i1 false
  br i1 %or.cond, label %mbox_test_request_channel.exit148.cleanup_crit_edge, label %if.end44

mbox_test_request_channel.exit148.cleanup_crit_edge: ; preds = %mbox_test_request_channel.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %mbox_test_request_channel.exit148
  br i1 %tobool42.not, label %land.lhs.true47, label %if.end44.if.end54_crit_edge

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.lhs.true47:                                  ; preds = %if.end44
  %33 = ptrtoint ptr %rx_mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_mmio, align 4
  %35 = ptrtoint ptr %tx_mmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_mmio, align 4
  %cmp50.not = icmp eq ptr %34, %36
  br i1 %cmp50.not, label %land.lhs.true47.if.end54_crit_edge, label %if.then51

land.lhs.true47.if.end54_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %rx_channel to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %32, ptr %rx_channel, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %land.lhs.true47.if.end54_crit_edge, %if.end44.if.end54_crit_edge, %if.end44.thread
  %rx_channel161165 = phi ptr [ %rx_channel157, %if.end44.thread ], [ %rx_channel, %if.then51 ], [ %rx_channel, %land.lhs.true47.if.end54_crit_edge ], [ %rx_channel, %if.end44.if.end54_crit_edge ]
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mbox_test_probe.__key, i16 noundef signext 3) #7
  %40 = ptrtoint ptr %rx_channel161165 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_channel161165, align 4
  %tobool59.not = icmp eq ptr %41, null
  br i1 %tobool59.not, label %if.end54.if.end67_crit_edge, label %if.then60

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then60:                                        ; preds = %if.end54
  %call.i149 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #7
  %rx_buffer = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 5
  %42 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i149, ptr %rx_buffer, align 4
  %tobool64.not = icmp eq ptr %call.i149, null
  br i1 %tobool64.not, label %if.then60.cleanup_crit_edge, label %if.then60.if.end67_crit_edge

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %if.end54.if.end67_crit_edge
  %call.i150 = tail call zeroext i1 @debugfs_initialized() #7
  br i1 %call.i150, label %if.end.i152, label %if.end67.do.body72_crit_edge

if.end67.do.body72_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

if.end.i152:                                      ; preds = %if.end67
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i152.dev_name.exit.i_crit_edge

if.end.i152.dev_name.exit.i_crit_edge:            ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i152
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i152.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %46, %if.end.i.i ], [ %44, %if.end.i152.dev_name.exit.i_crit_edge ]
  %call2.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i, ptr noundef null) #7
  %root_debugfs_dir.i = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 11
  %47 = ptrtoint ptr %root_debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call2.i, ptr %root_debugfs_dir.i, align 4
  %tobool.not.i153 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i153, label %mbox_test_add_debugfs.exit, label %if.end6.i

if.end6.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 384, ptr noundef nonnull %call2.i, ptr noundef nonnull %call.i, ptr noundef nonnull @mbox_test_message_ops) #7
  %48 = ptrtoint ptr %root_debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %root_debugfs_dir.i, align 4
  %call10.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 128, ptr noundef %49, ptr noundef nonnull %call.i, ptr noundef nonnull @mbox_test_signal_ops) #7
  br label %do.body72

mbox_test_add_debugfs.exit:                       ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

do.body72:                                        ; preds = %if.end6.i, %if.end67.do.body72_crit_edge
  %waitq = getelementptr inbounds %struct.mbox_test_device, ptr %call.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.5, ptr noundef nonnull @mbox_test_probe.__key.4) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body72, %mbox_test_add_debugfs.exit, %if.then60.cleanup_crit_edge, %mbox_test_request_channel.exit148.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body72 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %mbox_test_request_channel.exit148.cleanup_crit_edge ], [ -12, %if.then60.cleanup_crit_edge ], [ -22, %mbox_test_add_debugfs.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %root_debugfs_dir = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %root_debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %3) #7
  %tx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_channel, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mbox_free_channel(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_channel, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mbox_free_channel(ptr noundef nonnull %7) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbox_test_receive_message(ptr nocapture noundef readonly %client, ptr noundef %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %rx_mmio = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rx_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_mmio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buffer = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buffer, align 4
  tail call void @mmiocpy(ptr noundef %7, ptr noundef nonnull %5, i32 noundef 128) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_test_receive_message.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_test_receive_message, %if.then13)) #7
          to label %if.end37 [label %if.then13], !srcloc !123

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buffer, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %9, i32 noundef 128, i1 noundef zeroext true) #7
  br label %if.end37

if.else:                                          ; preds = %entry
  %tobool17.not = icmp eq ptr %message, null
  br i1 %tobool17.not, label %if.else.if.end37_crit_edge, label %do.body19

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.body19:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_test_receive_message.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_test_receive_message, %if.then31)) #7
          to label %do.end34 [label %if.then31], !srcloc !123

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %message, i32 noundef 128, i1 noundef zeroext true) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  %rx_buffer35 = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %rx_buffer35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buffer35, align 4
  %12 = call ptr @memcpy(ptr %11, ptr %message, i32 128)
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.else.if.end37_crit_edge, %if.then13, %if.then
  store i1 true, ptr @mbox_data_ready, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %waitq = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %async_queue = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %async_queue, i32 noundef 29, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbox_test_prepare_message(ptr nocapture noundef readonly %client, ptr noundef %message) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tx_mmio = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tx_mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_mmio, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %signal = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then.if.end6.sink.split_crit_edge, label %if.then2

if.then.if.end6.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %message4 = getelementptr inbounds %struct.mbox_test_device, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %message4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %message4, align 4
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then2, %if.then.if.end6.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.then2 ], [ %message, %if.then.if.end6.sink.split_crit_edge ]
  tail call void @mmiocpy(ptr noundef nonnull %5, ptr noundef %.sink, i32 noundef 128) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbox_test_message_sent(ptr nocapture noundef readonly %client, ptr nocapture noundef readnone %message, i32 noundef %r) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r)
  %tobool.not = icmp eq i32 %r, 0
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  br i1 %tobool.not, label %do.end2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %r) #10
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.21) #10
  br label %if.end

if.end:                                           ; preds = %do.end2, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_message_read(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !113) #7
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @default_wake_function, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 529) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_channel, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memcpy(ptr %call7.i.i, ptr @.str.28, i32 20)
  %call7 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef 19) #7
  br label %kfree_err

if.end8:                                          ; preds = %if.end
  %waitq = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %waitq, ptr noundef nonnull %wait) #7
  %lock.i = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 8
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  br label %__here

__here:                                           ; preds = %if.end76, %if.end8
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 212
  %21 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 ptrtoint (ptr blockaddress(@mbox_test_message_read, %__here) to i32), ptr %task_state_change, align 4
  %22 = load ptr, ptr %task, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %22, align 128
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %.b8.i = load i1, ptr @mbox_data_ready, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  br i1 %.b8.i, label %do.body80, label %if.end67

if.end67:                                         ; preds = %__here
  %24 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_flags, align 4
  %and = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.end70, label %if.end67.__here148_crit_edge

if.end67.__here148_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here148

if.end70:                                         ; preds = %if.end67
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end70.__here148_crit_edge, !prof !124

if.end70.__here148_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here148

signal_pending.exit:                              ; preds = %if.end70
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  %tobool74.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool74.not, label %if.end76, label %signal_pending.exit.__here148_crit_edge

signal_pending.exit.__here148_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here148

if.end76:                                         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @schedule() #7
  br label %__here

do.body80:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %rx_buffer = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_buffer, align 4
  %call90 = call i32 @hex_dump_to_buffer(ptr noundef %36, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %call7.i.i, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91 = getelementptr i8, ptr %36, i32 16
  %add.ptr92 = getelementptr i8, ptr %call7.i.i, i32 65
  %37 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %add.ptr92, align 1
  %add.ptr.1 = getelementptr i8, ptr %call7.i.i, i32 66
  %call90.1 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.1, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91.1 = getelementptr i8, ptr %36, i32 32
  %add.ptr92.1 = getelementptr i8, ptr %call7.i.i, i32 131
  %38 = ptrtoint ptr %add.ptr92.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 10, ptr %add.ptr92.1, align 1
  %add.ptr.2 = getelementptr i8, ptr %call7.i.i, i32 132
  %call90.2 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91.1, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.2, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91.2 = getelementptr i8, ptr %36, i32 48
  %add.ptr92.2 = getelementptr i8, ptr %call7.i.i, i32 197
  %39 = ptrtoint ptr %add.ptr92.2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 10, ptr %add.ptr92.2, align 1
  %add.ptr.3 = getelementptr i8, ptr %call7.i.i, i32 198
  %call90.3 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91.2, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.3, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91.3 = getelementptr i8, ptr %36, i32 64
  %add.ptr92.3 = getelementptr i8, ptr %call7.i.i, i32 263
  %40 = ptrtoint ptr %add.ptr92.3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 10, ptr %add.ptr92.3, align 1
  %add.ptr.4 = getelementptr i8, ptr %call7.i.i, i32 264
  %call90.4 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91.3, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.4, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91.4 = getelementptr i8, ptr %36, i32 80
  %add.ptr92.4 = getelementptr i8, ptr %call7.i.i, i32 329
  %41 = ptrtoint ptr %add.ptr92.4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 10, ptr %add.ptr92.4, align 1
  %add.ptr.5 = getelementptr i8, ptr %call7.i.i, i32 330
  %call90.5 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91.4, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.5, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91.5 = getelementptr i8, ptr %36, i32 96
  %add.ptr92.5 = getelementptr i8, ptr %call7.i.i, i32 395
  %42 = ptrtoint ptr %add.ptr92.5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %add.ptr92.5, align 1
  %add.ptr.6 = getelementptr i8, ptr %call7.i.i, i32 396
  %call90.6 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91.5, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.6, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr91.6 = getelementptr i8, ptr %36, i32 112
  %add.ptr92.6 = getelementptr i8, ptr %call7.i.i, i32 461
  %43 = ptrtoint ptr %add.ptr92.6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %add.ptr92.6, align 1
  %add.ptr.7 = getelementptr i8, ptr %call7.i.i, i32 462
  %call90.7 = call i32 @hex_dump_to_buffer(ptr noundef %add.ptr91.6, i32 noundef 16, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.7, i32 noundef 66, i1 noundef zeroext true) #7
  %add.ptr92.7 = getelementptr i8, ptr %call7.i.i, i32 527
  %44 = ptrtoint ptr %add.ptr92.7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %add.ptr92.7, align 1
  %add.ptr93 = getelementptr i8, ptr %call7.i.i, i32 528
  %45 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %add.ptr93, align 8
  %46 = ptrtoint ptr %rx_buffer to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_buffer, align 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 128)
  store i1 false, ptr @mbox_data_ready, align 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call83) #7
  %call96 = call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef 528) #7
  br label %__here148

__here148:                                        ; preds = %do.body80, %signal_pending.exit.__here148_crit_edge, %if.end70.__here148_crit_edge, %if.end67.__here148_crit_edge
  %ret.0 = phi i32 [ %call96, %do.body80 ], [ -512, %if.end70.__here148_crit_edge ], [ -512, %signal_pending.exit.__here148_crit_edge ], [ -11, %if.end67.__here148_crit_edge ]
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %task_state_change152 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 212
  %51 = ptrtoint ptr %task_state_change152 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 ptrtoint (ptr blockaddress(@mbox_test_message_read, %__here148) to i32), ptr %task_state_change152, align 4
  %52 = load ptr, ptr %task, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %52, align 128
  call void @remove_wait_queue(ptr noundef %waitq, ptr noundef nonnull %wait) #7
  br label %kfree_err

kfree_err:                                        ; preds = %__here148, %if.then5
  %ret.1 = phi i32 [ %ret.0, %__here148 ], [ %call7, %if.then5 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %kfree_err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %kfree_err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_message_write(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_channel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %count)
  %cmp = icmp ugt i32 %count, 128
  br i1 %cmp, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %count, i32 noundef 128) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 128) #11
  %message = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %message, align 4
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then.i.i.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end6
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %count, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #12, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !124

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef %count) #7
  %11 = tail call i32 @llvm.read_register.i32(metadata !113) #7
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !126
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call7.i.i, ptr noundef %userbuf, i32 noundef %count) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.then11.i.i, !prof !124

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end15:                                         ; preds = %if.end.i.i
  %tx_mmio = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %tx_mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_mmio, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.end15.do.body32_crit_edge, label %land.lhs.true

if.end15.do.body32_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

land.lhs.true:                                    ; preds = %if.end15
  %signal = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal, align 4
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %land.lhs.true.do.body32_crit_edge, label %do.body19

land.lhs.true.do.body32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

do.body19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_test_message_write.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_test_message_write, %if.then24)) #7
          to label %do.body32 [label %if.then24], !srcloc !123

if.then24:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.35, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %20, i32 noundef 8, i1 noundef zeroext true) #7
  br label %do.body32

do.body32:                                        ; preds = %if.then24, %do.body19, %land.lhs.true.do.body32_crit_edge, %if.end15.do.body32_crit_edge
  %data.0.in = phi ptr [ %signal, %if.then24 ], [ %message, %land.lhs.true.do.body32_crit_edge ], [ %message, %if.end15.do.body32_crit_edge ], [ %signal, %do.body19 ]
  %21 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %data.0 = load ptr, ptr %data.0.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_test_message_write.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_test_message_write, %if.then44)) #7
          to label %do.end48 [label %if.then44], !srcloc !123

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %message, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %23, i32 noundef 128, i1 noundef zeroext true) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body32
  %24 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_channel, align 4
  %call50 = tail call i32 @mbox_send_message(ptr noundef %25, ptr noundef %data.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %do.end48.out_crit_edge

do.end48.out_crit_edge:                           ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end55:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.38) #10
  br label %out

out:                                              ; preds = %do.end55, %do.end48.out_crit_edge, %if.then11.i.i
  %ret.0 = phi i32 [ %call50, %do.end55 ], [ %call50, %do.end48.out_crit_edge ], [ -14, %if.then11.i.i ]
  %signal58 = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %signal58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal58, align 4
  tail call void @kfree(ptr noundef %29) #7
  %30 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %message, align 4
  tail call void @kfree(ptr noundef %31) #7
  %32 = ptrtoint ptr %signal58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %signal58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp61 = icmp slt i32 %ret.0, 0
  %spec.select = select i1 %cmp61, i32 %ret.0, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end6.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ -22, %do.end ], [ -12, %if.end6.cleanup_crit_edge ], [ %spec.select, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_message_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %.b8.i = load i1, ptr @mbox_data_ready, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %. = select i1 %.b8.i, i32 65, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_message_fasync(i32 noundef %fd, ptr noundef %filp, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 10
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filp, i32 noundef %on, ptr noundef %async_queue) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbox_test_signal_write(ptr nocapture noundef readonly %filp, ptr noundef %userbuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tx_channel = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_channel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ugt i32 %count, 8
  br i1 %cmp, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %count, i32 noundef 8) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %signal = getelementptr inbounds %struct.mbox_test_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 8) #11
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %signal, align 4
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %12 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal, align 4
  tail call void @__check_object_size(ptr noundef %13, i32 noundef %count, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end14.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end14.if.end.i.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end14
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %userbuf, i32 %count, i32 -1226833920) #12, !srcloc !125
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !124

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef %count) #7
  %15 = tail call i32 @llvm.read_register.i32(metadata !113) #7
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !126
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %13, ptr noundef %userbuf, i32 noundef %count) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end14.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.end14.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !124

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  %19 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %signal, align 4
  tail call void @kfree(ptr noundef %20) #7
  %21 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ -14, %if.then11.i.i ], [ -22, %do.end ], [ -12, %if.then8.cleanup_crit_edge ], [ %count, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !99, !101, !103, !105, !106, !107, !109, !110, !111}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_mailbox_test__229_441_mbox_test_driver_init6, !1, !"__initcall__kmod_mailbox_test__229_441_mbox_test_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/mailbox-test.c", i32 441, i32 1}
!2 = !{ptr @__exitcall_mbox_test_driver_exit, !1, !"__exitcall_mbox_test_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/mailbox-test.c", i32 443, i32 1}
!5 = !{ptr @__UNIQUE_ID_author231, !6, !"__UNIQUE_ID_author231", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/mailbox-test.c", i32 444, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/mailbox-test.c", i32 445, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/mailbox-test.c", i32 435, i32 11}
!12 = !{ptr @mbox_test_driver, !13, !"mbox_test_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/mailbox-test.c", i32 433, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/mailbox-test.c", i32 381, i32 53}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/mailbox-test.c", i32 382, i32 53}
!18 = !{ptr @mbox_test_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/mailbox/mailbox-test.c", i32 394, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mbox_test_probe.__key.4, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/mailbox/mailbox-test.c", i32 407, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/mailbox-test.c", i32 408, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mbox_test_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @mbox_test_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mailbox/mailbox-test.c", i32 342, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mbox_test_request_channel._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @mbox_test_request_channel._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mailbox/mailbox-test.c", i32 284, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mbox_test_receive_message.__UNIQUE_ID_ddebug227, !39, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!42 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mailbox/mailbox-test.c", i32 287, i32 3}
!45 = !{ptr @mbox_test_receive_message.__UNIQUE_ID_ddebug228, !44, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!46 = distinct !{null, !47, !"mbox_data_ready", i1 false, i1 false}
!47 = !{!"../drivers/mailbox/mailbox-test.c", i32 29, i32 13}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mailbox/mailbox-test.c", i32 315, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mbox_test_message_sent._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @mbox_test_message_sent._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mailbox/mailbox-test.c", i32 318, i32 3}
!55 = !{ptr @mbox_test_message_sent._entry.20, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mbox_test_message_sent._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mailbox/mailbox-test.c", i32 263, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mbox_test_add_debugfs._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @mbox_test_add_debugfs._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mailbox/mailbox-test.c", i32 267, i32 22}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mailbox/mailbox-test.c", i32 270, i32 22}
!67 = !{ptr @mbox_test_message_ops, !68, !"mbox_test_message_ops", i1 false, i1 false}
!68 = !{!"../drivers/mailbox/mailbox-test.c", i32 246, i32 37}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mailbox/mailbox-test.c", i32 178, i32 30}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/mailbox/mailbox-test.c", i32 187, i32 3}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/mailbox/mailbox-test.c", i32 227, i32 2}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mailbox/mailbox-test.c", i32 102, i32 3}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mbox_test_message_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mbox_test_message_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mailbox/mailbox-test.c", i32 107, i32 3}
!82 = !{ptr @mbox_test_message_write._entry.32, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mbox_test_message_write._entry_ptr.34, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mailbox/mailbox-test.c", i32 128, i32 3}
!86 = !{ptr @mbox_test_message_write.__UNIQUE_ID_ddebug223, !85, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mailbox/mailbox-test.c", i32 135, i32 2}
!89 = !{ptr @mbox_test_message_write.__UNIQUE_ID_ddebug224, !88, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mailbox/mailbox-test.c", i32 140, i32 3}
!92 = !{ptr @mbox_test_message_write._entry.37, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mbox_test_message_write._entry_ptr.39, !91, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!101 = !{ptr @mbox_test_signal_ops, !102, !"mbox_test_signal_ops", i1 false, i1 false}
!102 = !{!"../drivers/mailbox/mailbox-test.c", i32 80, i32 37}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mailbox/mailbox-test.c", i32 53, i32 3}
!105 = !{ptr @mbox_test_signal_write._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mbox_test_signal_write._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mailbox/mailbox-test.c", i32 58, i32 3}
!109 = !{ptr @mbox_test_signal_write._entry.44, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mbox_test_signal_write._entry_ptr.46, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @mbox_test_match, !112, !"mbox_test_match", i1 false, i1 false}
!112 = !{!"../drivers/mailbox/mailbox-test.c", i32 427, i32 34}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148497464, i64 2148497469, i64 2148497482, i64 2148497526, i64 2148497560, i64 2148497581}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 2152185345, i64 2152185370}
!126 = !{i64 4680900}
!127 = !{i64 4681097}
!128 = !{i64 2152166330}
