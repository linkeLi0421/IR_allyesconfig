; ModuleID = '/llk/IR_all_yes/kernel/power/main.c_pt.bc'
source_filename = "../kernel/power/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lock_system_sleep\22, \22a\22\09"
module asm "\09.weak\09__crc_lock_system_sleep\09\09\09\09"
module asm "\09.long\09__crc_lock_system_sleep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22lock_system_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_lock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unlock_system_sleep\22, \22a\22\09"
module asm "\09.weak\09__crc_unlock_system_sleep\09\09\09\09"
module asm "\09.long\09__crc_unlock_system_sleep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_system_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_system_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ksys_sync_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_ksys_sync_helper\09\09\09\09"
module asm "\09.long\09__crc_ksys_sync_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksys_sync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22ksys_sync_helper\22\09\09\09\09\09"
module asm "__kstrtabns_ksys_sync_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_pm_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_pm_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_pm_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_pm_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_pm_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_pm_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pm_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pm_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_wq\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_wq\09\09\09\09"
module asm "\09.long\09__crc_pm_wq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_wq\22\09\09\09\09\09"
module asm "__kstrtabns_pm_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.suspend_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [40 x i8]], i32, [2 x i32], i32, [2 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.102 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.103 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.105 = type { ptr }

@system_transition_mutex = external dso_local global %struct.mutex, align 4
@__kstrtab_lock_system_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_lock_system_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_lock_system_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lock_system_sleep to i32), ptr @__kstrtab_lock_system_sleep, ptr @__kstrtabns_lock_system_sleep }, section "___ksymtab_gpl+lock_system_sleep", align 4
@__kstrtab_unlock_system_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_system_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_system_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_system_sleep to i32), ptr @__kstrtab_unlock_system_sleep, ptr @__kstrtabns_unlock_system_sleep }, section "___ksymtab_gpl+unlock_system_sleep", align 4
@ksys_sync_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016Filesystems sync: %ld.%03ld seconds\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksys_sync_helper\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/power/main.c\00", [44 x i8] zeroinitializer }, align 32
@ksys_sync_helper._entry_ptr = internal global ptr @ksys_sync_helper._entry, section ".printk_index", align 4
@__kstrtab_ksys_sync_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksys_sync_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_ksys_sync_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksys_sync_helper to i32), ptr @__kstrtab_ksys_sync_helper, ptr @__kstrtabns_ksys_sync_helper }, section "___ksymtab_gpl+ksys_sync_helper", align 4
@pm_chain_head = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @pm_chain_head, i64 56), ptr getelementptr (i8, ptr @pm_chain_head, i64 56) }, ptr @pm_chain_head, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_register_pm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pm_notifier to i32), ptr @__kstrtab_register_pm_notifier, ptr @__kstrtabns_register_pm_notifier }, section "___ksymtab_gpl+register_pm_notifier", align 4
@__kstrtab_unregister_pm_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pm_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pm_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pm_notifier to i32), ptr @__kstrtab_unregister_pm_notifier, ptr @__kstrtabns_unregister_pm_notifier }, section "___ksymtab_gpl+unregister_pm_notifier", align 4
@pm_async_enabled = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sync_on_suspend_enabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@pm_test_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_main__300_460_pm_debugfs_init7 = internal global ptr @pm_debugfs_init, section ".initcall7.init", align 4
@__setup_str_pm_debug_messages_setup = internal constant [18 x i8] c"pm_debug_messages\00", section ".init.rodata", align 1
@__setup_pm_debug_messages_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pm_debug_messages_setup, ptr @pm_debug_messages_setup, i32 0 }, section ".init.setup", align 4
@pm_debug_messages_on = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@__pm_pr_dbg._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 570, ptr null, ptr null }, align 1
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017PM: %pV\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__pm_pr_dbg\00", [20 x i8] zeroinitializer }, align 32
@__pm_pr_dbg._entry_ptr = internal global ptr @__pm_pr_dbg._entry, section ".printk_index", align 4
@__pm_pr_dbg._entry.5 = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 572, ptr null, ptr null }, align 1
@__pm_pr_dbg._entry_ptr.6 = internal global ptr @__pm_pr_dbg._entry.5, section ".printk_index", align 4
@pm_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pm_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_wq to i32), ptr @__kstrtab_pm_wq, ptr @__kstrtabns_pm_wq }, section "___ksymtab_gpl+pm_wq", align 4
@__initcall__kmod_main__301_962_pm_init1 = internal global ptr @pm_init, section ".initcall1.init", align 4
@pm_print_times_enabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@power_kobj = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(pm_chain_head).rwsem.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(pm_chain_head).rwsem\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"suspend_stats\00", [18 x i8] zeroinitializer }, align 32
@suspend_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @suspend_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@suspend_stats = external dso_local global %struct.suspend_stats, align 4
@.str.10 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A%s: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failed_freeze\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"failed_prepare\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"failed_suspend\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed_suspend_late\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed_suspend_noirq\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failed_resume\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed_resume_early\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed_resume_noirq\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failures:\0A  last_failed_dev:\09%-s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09\09\09%-s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  last_failed_errno:\09%-d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09\09\09%-d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  last_failed_step:\09%-s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"freeze\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prepare\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"suspend\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"suspend_noirq\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"resume_noirq\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resume\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@attr_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @attr_group, ptr @suspend_attr_group, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @g, ptr null }, [44 x i8] zeroinitializer }, align 32
@suspend_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.9, ptr null, ptr null, ptr @suspend_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@g = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @state_attr, ptr @pm_async_attr, ptr @wakeup_count_attr, ptr @mem_sleep_attr, ptr @sync_on_suspend_attr, ptr @autosleep_attr, ptr @wake_lock_attr, ptr @wake_unlock_attr, ptr @pm_test_attr, ptr @pm_print_times_attr, ptr @pm_wakeup_irq_attr, ptr @pm_debug_messages_attr, ptr @pm_freeze_timeout_attr, ptr null], [40 x i8] zeroinitializer }, align 32
@state_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr @state_store }, [36 x i8] zeroinitializer }, align 32
@pm_async_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_async_show, ptr @pm_async_store }, [36 x i8] zeroinitializer }, align 32
@wakeup_count_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wakeup_count_show, ptr @wakeup_count_store }, [36 x i8] zeroinitializer }, align 32
@mem_sleep_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mem_sleep_show, ptr @mem_sleep_store }, [36 x i8] zeroinitializer }, align 32
@sync_on_suspend_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sync_on_suspend_show, ptr @sync_on_suspend_store }, [36 x i8] zeroinitializer }, align 32
@autosleep_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @autosleep_show, ptr @autosleep_store }, [36 x i8] zeroinitializer }, align 32
@wake_lock_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wake_lock_show, ptr @wake_lock_store }, [36 x i8] zeroinitializer }, align 32
@wake_unlock_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wake_unlock_show, ptr @wake_unlock_store }, [36 x i8] zeroinitializer }, align 32
@pm_test_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_test_show, ptr @pm_test_store }, [36 x i8] zeroinitializer }, align 32
@pm_print_times_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_print_times_show, ptr @pm_print_times_store }, [36 x i8] zeroinitializer }, align 32
@pm_wakeup_irq_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_wakeup_irq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pm_debug_messages_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_debug_messages_show, ptr @pm_debug_messages_store }, [36 x i8] zeroinitializer }, align 32
@pm_freeze_timeout_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_freeze_timeout_show, ptr @pm_freeze_timeout_store }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@pm_states = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"disk \00", [26 x i8] zeroinitializer }, align 32
@mem_sleep_current = external dso_local local_unnamed_addr global i32, align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"disk\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pm_async\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wakeup_count\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mem_sleep\00", [22 x i8] zeroinitializer }, align 32
@mem_sleep_states = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sync_on_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autosleep\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"disk\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wake_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wake_unlock\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pm_test\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"processors\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"freezer\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pm_print_times\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm_wakeup_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm_debug_messages\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm_freeze_timeout\00", [46 x i8] zeroinitializer }, align 32
@freeze_timeout_msecs = external dso_local local_unnamed_addr global i32, align 4
@suspend_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @success, ptr @fail, ptr @failed_freeze, ptr @failed_prepare, ptr @failed_suspend, ptr @failed_suspend_late, ptr @failed_suspend_noirq, ptr @failed_resume, ptr @failed_resume_early, ptr @failed_resume_noirq, ptr @last_failed_dev, ptr @last_failed_errno, ptr @last_failed_step, ptr null], [40 x i8] zeroinitializer }, align 32
@success = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @success_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@fail = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fail_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_freeze = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_freeze_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_prepare = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_prepare_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_suspend = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_suspend_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_suspend_late = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_suspend_late_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_suspend_noirq = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_suspend_noirq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_resume = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_resume_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_resume_early = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_resume_early_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@failed_resume_noirq = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @failed_resume_noirq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@last_failed_dev = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @last_failed_dev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@last_failed_errno = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @last_failed_errno_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@last_failed_step = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @last_failed_step_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"last_failed_dev\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"last_failed_errno\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"last_failed_step\00", [47 x i8] zeroinitializer }, align 32
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@switch.table.suspend_stats_show = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.suspend_stats_show.69 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@switch.table.last_failed_step_show = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.31], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 7, i64 8, i64 10]
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 62, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"pm_chain_head\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"pm_async_enabled\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 98, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"sync_on_suspend_enabled\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 200, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"pm_test_level\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 228, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 570, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"pm_wq\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 934, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [23 x i8] c"pm_print_times_enabled\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 472, i32 6 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"power_kobj\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 581, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 69, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 455, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"suspend_stats_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 451, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 406, i32 16 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 408, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 409, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 410, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 411, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 412, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 413, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 415, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 417, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 418, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 420, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 422, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 427, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 430, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 435, i32 17 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 438, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 294, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 296, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 298, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 300, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 302, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 304, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 306, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 952, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"attr_groups\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 926, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 939, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [11 x i8] c"attr_group\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 922, i32 37 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"suspend_attr_group\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 390, i32 37 }
@___asan_gen_.206 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 889, i32 27 }
@___asan_gen_.209 = private unnamed_addr constant [11 x i8] c"state_attr\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [14 x i8] c"pm_async_attr\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"wakeup_count_attr\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"mem_sleep_attr\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"sync_on_suspend_attr\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [15 x i8] c"autosleep_attr\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [15 x i8] c"wake_lock_attr\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"wake_unlock_attr\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [13 x i8] c"pm_test_attr\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"pm_print_times_attr\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"pm_wakeup_irq_attr\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [23 x i8] c"pm_debug_messages_attr\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [23 x i8] c"pm_freeze_timeout_attr\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 673, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 603, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 607, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 626, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 121, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 103, i32 22 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 743, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 711, i32 16 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 731, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 192, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 135, i32 21 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 224, i32 1 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 785, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 753, i32 23 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 757, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 758, i32 25 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 761, i32 22 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 775, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 804, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 821, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 287, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 231, i32 16 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 232, i32 16 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 233, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 234, i32 20 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 235, i32 19 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 236, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 496, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 513, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 539, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 885, i32 1 }
@___asan_gen_.341 = private unnamed_addr constant [14 x i8] c"suspend_attrs\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 373, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 318, i32 1 }
@___asan_gen_.347 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 319, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [14 x i8] c"failed_freeze\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 320, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"failed_prepare\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 321, i32 1 }
@___asan_gen_.356 = private unnamed_addr constant [15 x i8] c"failed_suspend\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 322, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c"failed_suspend_late\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 323, i32 1 }
@___asan_gen_.362 = private unnamed_addr constant [21 x i8] c"failed_suspend_noirq\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 324, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant [14 x i8] c"failed_resume\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 325, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c"failed_resume_early\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 326, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c"failed_resume_noirq\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 327, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [16 x i8] c"last_failed_dev\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 341, i32 30 }
@___asan_gen_.377 = private unnamed_addr constant [18 x i8] c"last_failed_errno\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 355, i32 30 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"last_failed_step\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 371, i32 30 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 341, i32 48 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 355, i32 50 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [23 x i8] c"../kernel/power/main.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 371, i32 49 }
@___asan_gen_.392 = private unnamed_addr constant [32 x i8] c"switch.table.suspend_stats_show\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [35 x i8] c"switch.table.suspend_stats_show.69\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [35 x i8] c"switch.table.last_failed_step_show\00", align 1
@llvm.compiler.used = appending global [124 x ptr] [ptr @__initcall__kmod_main__300_460_pm_debugfs_init7, ptr @__initcall__kmod_main__301_962_pm_init1, ptr @__ksymtab_ksys_sync_helper, ptr @__ksymtab_lock_system_sleep, ptr @__ksymtab_pm_wq, ptr @__ksymtab_register_pm_notifier, ptr @__ksymtab_unlock_system_sleep, ptr @__ksymtab_unregister_pm_notifier, ptr @__pm_pr_dbg._entry, ptr @__pm_pr_dbg._entry.5, ptr @__pm_pr_dbg._entry_ptr, ptr @__pm_pr_dbg._entry_ptr.6, ptr @__setup_pm_debug_messages_setup, ptr @ksys_sync_helper._entry, ptr @ksys_sync_helper._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pm_chain_head, ptr @pm_async_enabled, ptr @sync_on_suspend_enabled, ptr @pm_test_level, ptr @.str.3, ptr @.str.4, ptr @pm_wq, ptr @pm_print_times_enabled, ptr @power_kobj, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @suspend_stats_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @attr_groups, ptr @.str.34, ptr @attr_group, ptr @suspend_attr_group, ptr @g, ptr @state_attr, ptr @pm_async_attr, ptr @wakeup_count_attr, ptr @mem_sleep_attr, ptr @sync_on_suspend_attr, ptr @autosleep_attr, ptr @wake_lock_attr, ptr @wake_unlock_attr, ptr @pm_test_attr, ptr @pm_print_times_attr, ptr @pm_wakeup_irq_attr, ptr @pm_debug_messages_attr, ptr @pm_freeze_timeout_attr, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @suspend_attrs, ptr @success, ptr @fail, ptr @failed_freeze, ptr @failed_prepare, ptr @failed_suspend, ptr @failed_suspend_late, ptr @failed_suspend_noirq, ptr @failed_resume, ptr @failed_resume_early, ptr @failed_resume_noirq, ptr @last_failed_dev, ptr @last_failed_errno, ptr @last_failed_step, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @switch.table.suspend_stats_show, ptr @switch.table.suspend_stats_show.69, ptr @switch.table.last_failed_step_show], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksys_sync_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_chain_head to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_async_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_on_suspend_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_test_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_print_times_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_async_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeup_count_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_sleep_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_on_suspend_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autosleep_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_lock_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_unlock_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_test_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_print_times_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_wakeup_irq_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_debug_messages_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_freeze_timeout_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @success to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_freeze to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_prepare to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_suspend to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_suspend_late to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_suspend_noirq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_resume to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_resume_early to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_resume_noirq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_failed_dev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_failed_errno to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_failed_step to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.suspend_stats_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.suspend_stats_show.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.last_failed_step_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lock_system_sleep() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !224) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1073741824
  store i32 %or, ptr %flags, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @system_transition_mutex, i32 noundef 0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlock_system_sleep() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !224) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, -1073741825
  store i32 %and, ptr %flags, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksys_sync_helper() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #13
  tail call void @ksys_sync() #13
  %call1 = tail call i64 @ktime_get() #13
  %sub = sub i64 %call1, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #13
  %1 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %0) #16, !srcloc !234
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %0, i64 %1, i32 0) #16, !srcloc !235
  %asmresult10.i.i.i = extractvalue { i64, i32 } %2, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv = trunc i64 %cond213.i.i to i32
  %conv.frozen = freeze i32 %conv
  %div = sdiv i32 %conv.frozen, 1000
  %3 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %conv.frozen, %3
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %div, i32 noundef %rem.decomposed) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksys_sync() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_pm_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @pm_chain_head, ptr noundef %nb) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_pm_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @pm_chain_head, ptr noundef %nb) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_notifier_call_chain_robust(i32 noundef %val_up, i32 noundef %val_down) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_call_chain_robust(ptr noundef nonnull @pm_chain_head, i32 noundef %val_up, i32 noundef %val_down, ptr noundef null) #13
  %and.i = and i32 %call, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain_robust(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_notifier_call_chain(i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @pm_chain_head, i32 noundef %val, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_debugfs_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext -32476, ptr noundef null, ptr noundef null, ptr noundef nonnull @suspend_stats_fops) #13
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm_debug_messages_setup(ptr nocapture noundef readnone %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 1, ptr @pm_debug_messages_on, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pm_pr_dbg(i1 noundef zeroext %defer, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !236
  %1 = load i8, ptr @pm_debug_messages_on, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %2, align 4
  br i1 %defer, label %do.end, label %do.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call = call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.3, ptr noundef nonnull %vaf) #17
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %vaf) #17
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %do.end
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 0) #13
  store ptr %call.i, ptr @pm_wq, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @hibernate_image_size_init() #17
  tail call void @hibernate_reserved_size_init() #17
  tail call void @pm_states_init() #17
  %call1 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.33, ptr noundef null) #13
  store ptr %call1, ptr @power_kobj, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sysfs_create_groups(ptr noundef nonnull %call1, ptr noundef nonnull @attr_groups) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @initcall_debug to i32))
  %0 = load i8, ptr @initcall_debug, align 1, !range !237
  store i8 %0, ptr @pm_print_times_enabled, align 1
  %call9 = tail call i32 @pm_autosleep_init() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suspend_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @suspend_stats_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @suspend_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %sub = add i32 %0, 1
  %rem = srem i32 %sub, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12) to i32))
  %1 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %sub2 = add i32 %1, 1
  %rem3 = srem i32 %sub2, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %sub5 = add i32 %2, 1
  %rem6 = srem i32 %sub5, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suspend_stats to i32))
  %3 = load i32, ptr @suspend_stats, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4) to i32))
  %7 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5) to i32))
  %8 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8) to i32))
  %11 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9) to i32))
  %12 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %3, ptr noundef nonnull @.str.12, i32 noundef %4, ptr noundef nonnull @.str.13, i32 noundef %5, ptr noundef nonnull @.str.14, i32 noundef %6, ptr noundef nonnull @.str.15, i32 noundef %7, ptr noundef nonnull @.str.16, i32 noundef %8, ptr noundef nonnull @.str.17, i32 noundef %9, ptr noundef nonnull @.str.18, i32 noundef %10, ptr noundef nonnull @.str.19, i32 noundef %11, ptr noundef nonnull @.str.20, i32 noundef %12) #13
  %arrayidx = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %rem
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef %arrayidx) #13
  %13 = and i32 %rem, 1
  %rem96869 = xor i32 %13, 1
  %arrayidx10 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %rem96869
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef %arrayidx10) #13
  %arrayidx12 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %rem3
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %15) #13
  %16 = and i32 %rem3, 1
  %rem187071 = xor i32 %16, 1
  %arrayidx19 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %rem187071
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %18) #13
  %arrayidx23 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %rem6
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %switch.tableidx = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 8
  br i1 %21, label %switch.lookup, label %entry.suspend_step_name.exit_crit_edge

entry.suspend_step_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %suspend_step_name.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.suspend_stats_show, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %suspend_step_name.exit

suspend_step_name.exit:                           ; preds = %switch.lookup, %entry.suspend_step_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %entry.suspend_step_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull %retval.0.i) #13
  %23 = and i32 %rem6, 1
  %rem297273 = xor i32 %23, 1
  %arrayidx30 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %rem297273
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 4
  %switch.tableidx75 = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx75)
  %26 = icmp ult i32 %switch.tableidx75, 8
  br i1 %26, label %switch.lookup74, label %suspend_step_name.exit.suspend_step_name.exit67_crit_edge

suspend_step_name.exit.suspend_step_name.exit67_crit_edge: ; preds = %suspend_step_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %suspend_step_name.exit67

switch.lookup74:                                  ; preds = %suspend_step_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep76 = getelementptr inbounds [8 x ptr], ptr @switch.table.suspend_stats_show.69, i32 0, i32 %switch.tableidx75
  %27 = ptrtoint ptr %switch.gep76 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load77 = load ptr, ptr %switch.gep76, align 4
  br label %suspend_step_name.exit67

suspend_step_name.exit67:                         ; preds = %switch.lookup74, %suspend_step_name.exit.suspend_step_name.exit67_crit_edge
  %retval.0.i66 = phi ptr [ %switch.load77, %switch.lookup74 ], [ @.str.32, %suspend_step_name.exit.suspend_step_name.exit67_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef nonnull %retval.0.i66) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hibernate_image_size_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @hibernate_reserved_size_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @pm_states_init() local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_autosleep_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, ptr noundef nonnull %0)
  %add.ptr = getelementptr i8, ptr %buf, i32 %call
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %s.1 = phi ptr [ %add.ptr, %if.then ], [ %buf, %entry.for.inc_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1, ptr noundef nonnull @.str.36, ptr noundef nonnull %1)
  %add.ptr.1 = getelementptr i8, ptr %s.1, i32 %call.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %s.1.1 = phi ptr [ %add.ptr.1, %if.then.1 ], [ %s.1, %for.inc.for.inc.1_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1.1, ptr noundef nonnull @.str.36, ptr noundef nonnull %2)
  %add.ptr.2 = getelementptr i8, ptr %s.1.1, i32 %call.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %s.1.2 = phi ptr [ %add.ptr.2, %if.then.2 ], [ %s.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %call2 = tail call zeroext i1 @hibernation_available() #13
  br i1 %call2, label %if.then3, label %for.inc.2.if.end6_crit_edge

for.inc.2.if.end6_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %3 = call ptr @memcpy(ptr %s.1.2, ptr @.str.37, i32 6)
  %add.ptr5 = getelementptr i8, ptr %s.1.2, i32 5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %for.inc.2.if.end6_crit_edge
  %s.2 = phi ptr [ %add.ptr5, %if.then3 ], [ %s.1.2, %for.inc.2.if.end6_crit_edge ]
  %cmp7.not = icmp eq ptr %s.2, %buf
  br i1 %cmp7.not, label %if.end6.if.end10_crit_edge, label %if.then8

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr9 = getelementptr i8, ptr %s.2, i32 -1
  %4 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %add.ptr9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %s.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_autosleep_lock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pm_autosleep_state() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %if.end3

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @decode_state(ptr noundef %buf, i32 noundef %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call4)
  %cmp7 = icmp eq i32 %call4, 3
  br i1 %cmp7, label %if.then8, label %if.then6.if.end9_crit_edge

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_sleep_current to i32))
  %0 = load i32, ptr @mem_sleep_current, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then6.if.end9_crit_edge
  %state.0 = phi i32 [ %0, %if.then8 ], [ %call4, %if.then6.if.end9_crit_edge ]
  %call10 = tail call i32 @pm_suspend(i32 noundef %state.0) #13
  br label %out

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp11 = icmp eq i32 %call4, 4
  br i1 %cmp11, label %if.then12, label %if.else.out.thread_crit_edge

if.else.out.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.thread

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 @hibernate() #13
  br label %out

out.thread:                                       ; preds = %if.else.out.thread_crit_edge, %if.end.out.thread_crit_edge
  %error.0.ph = phi i32 [ -22, %if.else.out.thread_crit_edge ], [ -16, %if.end.out.thread_crit_edge ]
  tail call void @pm_autosleep_unlock() #13
  br label %cleanup

out:                                              ; preds = %if.then12, %if.end9
  %error.0 = phi i32 [ %call10, %if.end9 ], [ %call13, %if.then12 ]
  tail call void @pm_autosleep_unlock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool17.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool17.not, i32 %n, i32 %error.0
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.0.ph, %out.thread ], [ %spec.select, %out ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hibernation_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_autosleep_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_autosleep_state() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @decode_state(ptr noundef %buf, i32 noundef %n) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %n) #18
  %tobool.not = icmp eq ptr %call, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %tobool.not, i32 %n, i32 %sub.ptr.sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond)
  %cmp = icmp eq i32 %cond, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.38, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i.not = icmp eq i32 %call1.i, 0
  br i1 %cmp.i.not, label %land.lhs.true.cleanup13_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup13

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  %tobool4.not = icmp eq ptr %0, null
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %land.lhs.true5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true5:                                   ; preds = %if.end
  %call6 = tail call i32 @strlen(ptr noundef nonnull %0) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %call6)
  %cmp7 = icmp eq i32 %cond, %call6
  br i1 %cmp7, label %land.lhs.true8, label %land.lhs.true5.for.inc_crit_edge

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %call9 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull %0, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.cleanup13_crit_edge, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true8.cleanup13_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup13

for.inc:                                          ; preds = %land.lhs.true8.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %if.end.for.inc_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %tobool4.not.1 = icmp eq ptr %1, null
  br i1 %tobool4.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true5.1:                                 ; preds = %for.inc
  %call6.1 = tail call i32 @strlen(ptr noundef nonnull %1) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %call6.1)
  %cmp7.1 = icmp eq i32 %cond, %call6.1
  br i1 %cmp7.1, label %land.lhs.true8.1, label %land.lhs.true5.1.for.inc.1_crit_edge

land.lhs.true5.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true5.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true8.1:                                 ; preds = %land.lhs.true5.1
  %call9.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull %1, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %land.lhs.true8.1.cleanup13_crit_edge, label %land.lhs.true8.1.for.inc.1_crit_edge

land.lhs.true8.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true8.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true8.1.cleanup13_crit_edge:             ; preds = %land.lhs.true8.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup13

for.inc.1:                                        ; preds = %land.lhs.true8.1.for.inc.1_crit_edge, %land.lhs.true5.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  %tobool4.not.2 = icmp eq ptr %2, null
  br i1 %tobool4.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true5.2:                                 ; preds = %for.inc.1
  %call6.2 = tail call i32 @strlen(ptr noundef nonnull %2) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %call6.2)
  %cmp7.2 = icmp eq i32 %cond, %call6.2
  br i1 %cmp7.2, label %land.lhs.true8.2, label %land.lhs.true5.2.for.inc.2_crit_edge

land.lhs.true5.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true5.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true8.2:                                 ; preds = %land.lhs.true5.2
  %call9.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull %2, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %tobool10.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool10.not.2, label %land.lhs.true8.2.cleanup13_crit_edge, label %land.lhs.true8.2.for.inc.2_crit_edge

land.lhs.true8.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true8.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true8.2.cleanup13_crit_edge:             ; preds = %land.lhs.true8.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup13

for.inc.2:                                        ; preds = %land.lhs.true8.2.for.inc.2_crit_edge, %land.lhs.true5.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %cleanup13

cleanup13:                                        ; preds = %for.inc.2, %land.lhs.true8.2.cleanup13_crit_edge, %land.lhs.true8.1.cleanup13_crit_edge, %land.lhs.true8.cleanup13_crit_edge, %land.lhs.true.cleanup13_crit_edge
  %retval.2 = phi i32 [ 4, %land.lhs.true.cleanup13_crit_edge ], [ 1, %land.lhs.true8.cleanup13_crit_edge ], [ 2, %land.lhs.true8.1.cleanup13_crit_edge ], [ 3, %land.lhs.true8.2.cleanup13_crit_edge ], [ 0, %for.inc.2 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_suspend(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hibernate() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_autosleep_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_async_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pm_async_enabled, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_async_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store i32 %2, ptr @pm_async_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_count_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call = call zeroext i1 @pm_get_wakeup_count(ptr noundef nonnull %val, i1 noundef zeroext true) #13
  br i1 %call, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %2)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.true ], [ -4, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeup_count_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %n) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call = tail call i32 @pm_autosleep_lock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pm_autosleep_state() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.43, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then6, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then6:                                         ; preds = %if.end3
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call7 = call zeroext i1 @pm_save_wakeup_count(i32 noundef %2) #13
  br i1 %call7, label %if.then6.out_crit_edge, label %if.else

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  call void @pm_print_active_wakeup_sources() #13
  br label %out

out:                                              ; preds = %if.else, %if.then6.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ -22, %if.else ], [ -22, %if.end3.out_crit_edge ], [ -16, %if.end.out_crit_edge ], [ %n, %if.then6.out_crit_edge ]
  call void @pm_autosleep_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_get_wakeup_count(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_save_wakeup_count(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_print_active_wakeup_sources() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_sleep_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_sleep_current to i32))
  %1 = load i32, ptr @mem_sleep_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  %.str.45..str.36 = select i1 %cmp2, ptr @.str.45, ptr @.str.36
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.45..str.36, ptr noundef nonnull %0)
  %s.1 = getelementptr i8, ptr %buf, i32 %call4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %s.2 = phi ptr [ %s.1, %if.then ], [ %buf, %entry.for.inc_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 2), align 4
  %tobool.not.1 = icmp eq ptr %2, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_sleep_current to i32))
  %3 = load i32, ptr @mem_sleep_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.1 = icmp eq i32 %3, 2
  %.str.45..str.3628 = select i1 %cmp2.1, ptr @.str.45, ptr @.str.36
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.2, ptr noundef nonnull %.str.45..str.3628, ptr noundef nonnull %2)
  %s.1.1 = getelementptr i8, ptr %s.2, i32 %call.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %s.2.1 = phi ptr [ %s.1.1, %if.then.1 ], [ %s.2, %for.inc.for.inc.1_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 3) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 3), align 4
  %tobool.not.2 = icmp eq ptr %4, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_sleep_current to i32))
  %5 = load i32, ptr @mem_sleep_current, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp2.2 = icmp eq i32 %5, 3
  %.str.45..str.3629 = select i1 %cmp2.2, ptr @.str.45, ptr @.str.36
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.2.1, ptr noundef nonnull %.str.45..str.3629, ptr noundef nonnull %4)
  %s.1.2 = getelementptr i8, ptr %s.2.1, i32 %call.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %s.2.2 = phi ptr [ %s.1.2, %if.then.2 ], [ %s.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %cmp7.not = icmp eq ptr %s.2.2, %buf
  br i1 %cmp7.not, label %for.inc.2.if.end10_crit_edge, label %if.then8

for.inc.2.if.end10_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr9 = getelementptr i8, ptr %s.2.2, i32 -1
  %6 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %add.ptr9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %for.inc.2.if.end10_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %s.2.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mem_sleep_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_autosleep_lock() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pm_autosleep_state() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end3

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end3:                                          ; preds = %if.end
  %call.i = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %n) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cond.i = select i1 %tobool.not.i, i32 %n, i32 %sub.ptr.sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 1), align 4
  %tobool1.not.i = icmp eq ptr %0, null
  br i1 %tobool1.not.i, label %if.end3.for.inc.i_crit_edge, label %land.lhs.true.i

if.end3.for.inc.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end3
  %call2.i = tail call i32 @strlen(ptr noundef nonnull %0) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %call2.i)
  %cmp3.i = icmp eq i32 %cond.i, %call2.i
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull %0, i32 noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i._crit_edge, label %land.lhs.true4.i.for.inc.i_crit_edge

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true4.i._crit_edge:                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %3

for.inc.i:                                        ; preds = %land.lhs.true4.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end3.for.inc.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 2) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 2), align 4
  %tobool1.not.1.i = icmp eq ptr %1, null
  br i1 %tobool1.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %call2.1.i = tail call i32 @strlen(ptr noundef nonnull %1) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %call2.1.i)
  %cmp3.1.i = icmp eq i32 %cond.i, %call2.1.i
  br i1 %cmp3.1.i, label %land.lhs.true4.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

land.lhs.true4.1.i:                               ; preds = %land.lhs.true.1.i
  %call5.1.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull %1, i32 noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %tobool6.not.1.i = icmp eq i32 %call5.1.i, 0
  br i1 %tobool6.not.1.i, label %land.lhs.true4.1.i._crit_edge, label %land.lhs.true4.1.i.for.inc.1.i_crit_edge

land.lhs.true4.1.i.for.inc.1.i_crit_edge:         ; preds = %land.lhs.true4.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

land.lhs.true4.1.i._crit_edge:                    ; preds = %land.lhs.true4.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %3

for.inc.1.i:                                      ; preds = %land.lhs.true4.1.i.for.inc.1.i_crit_edge, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 3) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @mem_sleep_states, i32 0, i32 3), align 4
  %tobool1.not.2.i = icmp eq ptr %2, null
  br i1 %tobool1.not.2.i, label %for.inc.1.i.cleanup.sink.split_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.cleanup.sink.split_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %call2.2.i = tail call i32 @strlen(ptr noundef nonnull %2) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %call2.2.i)
  %cmp3.2.i = icmp eq i32 %cond.i, %call2.2.i
  br i1 %cmp3.2.i, label %land.lhs.true4.2.i, label %land.lhs.true.2.i.cleanup.sink.split_crit_edge

land.lhs.true.2.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true4.2.i:                               ; preds = %land.lhs.true.2.i
  %call5.2.i = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull %2, i32 noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2.i)
  %tobool6.not.2.i = icmp eq i32 %call5.2.i, 0
  br i1 %tobool6.not.2.i, label %land.lhs.true4.2.i._crit_edge, label %land.lhs.true4.2.i.cleanup.sink.split_crit_edge

land.lhs.true4.2.i.cleanup.sink.split_crit_edge:  ; preds = %land.lhs.true4.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true4.2.i._crit_edge:                    ; preds = %land.lhs.true4.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %3

3:                                                ; preds = %land.lhs.true4.2.i._crit_edge, %land.lhs.true4.1.i._crit_edge, %land.lhs.true4.i._crit_edge
  %retval.2.i.ph = phi i32 [ 3, %land.lhs.true4.2.i._crit_edge ], [ 2, %land.lhs.true4.1.i._crit_edge ], [ 1, %land.lhs.true4.i._crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @mem_sleep_current to i32))
  store i32 %retval.2.i.ph, ptr @mem_sleep_current, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %3, %land.lhs.true4.2.i.cleanup.sink.split_crit_edge, %land.lhs.true.2.i.cleanup.sink.split_crit_edge, %for.inc.1.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %n, %3 ], [ -22, %land.lhs.true4.2.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup.sink.split_crit_edge ], [ -22, %for.inc.1.i.cleanup.sink.split_crit_edge ], [ -16, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @pm_autosleep_unlock() #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_on_suspend_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @sync_on_suspend_enabled, align 1, !range !237
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_on_suspend_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3 = icmp ne i32 %2, 0
  %frombool = zext i1 %tobool3 to i8
  store i8 %frombool, ptr @sync_on_suspend_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autosleep_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_autosleep_state() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.48, i32 5)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp2 = icmp slt i32 %call, 4
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [0 x ptr], ptr @pm_states, i32 0, i32 %call
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  %spec.select = select i1 %tobool.not, ptr @.str.50, ptr %2
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, ptr noundef nonnull %spec.select)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = call ptr @memcpy(ptr %buf, ptr @.str.51, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ %call5, %if.then3 ], [ 5, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autosleep_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @decode_state(ptr noundef %buf, i32 noundef %n)
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.if.end7_crit_edge [
    i32 0, label %land.lhs.true
    i32 3, label %if.then6
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.52) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true2

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = tail call i32 @strcmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.48) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end7_crit_edge, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true2.if.end7_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_sleep_current to i32))
  %1 = load i32, ptr @mem_sleep_current, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true2.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %state.0 = phi i32 [ %1, %if.then6 ], [ %call, %entry.if.end7_crit_edge ], [ 0, %land.lhs.true2.if.end7_crit_edge ], [ 0, %land.lhs.true.if.end7_crit_edge ]
  %call8 = tail call i32 @pm_autosleep_set_state(i32 noundef %state.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %n.call8 = select i1 %tobool9.not, i32 %n, i32 %call8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true2.cleanup_crit_edge
  %retval.0 = phi i32 [ %n.call8, %if.end7 ], [ -22, %land.lhs.true2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_autosleep_set_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wake_lock_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_show_wakelocks(ptr noundef %buf, i1 noundef zeroext true) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wake_lock_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_wake_lock(ptr noundef %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %n.call = select i1 %tobool.not, i32 %n, i32 %call
  ret i32 %n.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_show_wakelocks(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_wake_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wake_unlock_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_show_wakelocks(ptr noundef %buf, i1 noundef zeroext false) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wake_unlock_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_wake_unlock(ptr noundef %buf) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %n.call = select i1 %tobool.not, i32 %n, i32 %call
  ret i32 %n.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_wake_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_test_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %.str.45..str.36 = select i1 %cmp1, ptr @.str.45, ptr @.str.36
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str.45..str.36, ptr noundef nonnull @.str.56)
  %s.1 = getelementptr i8, ptr %buf, i32 %call5
  %1 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.1 = icmp eq i32 %1, 1
  %.str.45.sink = select i1 %cmp1.1, ptr @.str.45, ptr @.str.36
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1, ptr noundef nonnull %.str.45.sink, ptr noundef nonnull @.str.57)
  %s.1.1 = getelementptr i8, ptr %s.1, i32 %call.1
  %2 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1.2 = icmp eq i32 %2, 2
  %.str.45.sink27 = select i1 %cmp1.2, ptr @.str.45, ptr @.str.36
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1.1, ptr noundef nonnull %.str.45.sink27, ptr noundef nonnull @.str.58)
  %s.1.2 = getelementptr i8, ptr %s.1.1, i32 %call.2
  %3 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1.3 = icmp eq i32 %3, 3
  %.str.45.sink28 = select i1 %cmp1.3, ptr @.str.45, ptr @.str.36
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1.2, ptr noundef nonnull %.str.45.sink28, ptr noundef nonnull @.str.59)
  %s.1.3 = getelementptr i8, ptr %s.1.2, i32 %call.3
  %4 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp1.4 = icmp eq i32 %4, 4
  %.str.45.sink29 = select i1 %cmp1.4, ptr @.str.45, ptr @.str.36
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1.3, ptr noundef nonnull %.str.45.sink29, ptr noundef nonnull @.str.60)
  %s.1.4 = getelementptr i8, ptr %s.1.3, i32 %call.4
  %5 = load i32, ptr @pm_test_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp1.5 = icmp eq i32 %5, 5
  %.str.45.sink30 = select i1 %cmp1.5, ptr @.str.45, ptr @.str.36
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %s.1.4, ptr noundef nonnull %.str.45.sink30, ptr noundef nonnull @.str.61)
  %s.1.5 = getelementptr i8, ptr %s.1.4, i32 %call.5
  %cmp8.not = icmp eq ptr %s.1.5, %buf
  br i1 %cmp8.not, label %entry.if.end11_crit_edge, label %if.then9

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr10 = getelementptr i8, ptr %s.1.5, i32 -1
  %6 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %add.ptr10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %entry.if.end11_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %s.1.5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_test_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
land.lhs.true:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %n) #18
  %tobool.not = icmp eq ptr %call, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cond = select i1 %tobool.not, i32 %n, i32 %sub.ptr.sub
  %0 = tail call i32 @llvm.read_register.i32(metadata !224) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %5, 1073741824
  store i32 %or.i, ptr %flags.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @system_transition_mutex, i32 noundef 0) #13
  %6 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %cond, label %land.lhs.true.for.end_crit_edge [
    i32 4, label %land.lhs.true4
    i32 10, label %land.lhs.true4.2
    i32 8, label %land.lhs.true4.3
    i32 7, label %land.lhs.true4.4
  ]

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.then_crit_edge, label %land.lhs.true4.1

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %land.lhs.true4.5.if.then_crit_edge, %land.lhs.true4.4.if.then_crit_edge, %land.lhs.true4.3.if.then_crit_edge, %land.lhs.true4.2.if.then_crit_edge, %land.lhs.true4.1.if.then_crit_edge, %land.lhs.true4.if.then_crit_edge
  %level.030.lcssa = phi i32 [ 0, %land.lhs.true4.if.then_crit_edge ], [ 1, %land.lhs.true4.1.if.then_crit_edge ], [ 2, %land.lhs.true4.2.if.then_crit_edge ], [ 3, %land.lhs.true4.3.if.then_crit_edge ], [ 4, %land.lhs.true4.4.if.then_crit_edge ], [ 5, %land.lhs.true4.5.if.then_crit_edge ]
  store i32 %level.030.lcssa, ptr @pm_test_level, align 4
  br label %for.end

land.lhs.true4.1:                                 ; preds = %land.lhs.true4
  %call5.1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %land.lhs.true4.1.if.then_crit_edge, label %land.lhs.true4.1.for.end_crit_edge

land.lhs.true4.1.for.end_crit_edge:               ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true4.1.if.then_crit_edge:               ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true4.2:                                 ; preds = %land.lhs.true
  %call5.2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %land.lhs.true4.2.if.then_crit_edge, label %land.lhs.true4.2.for.end_crit_edge

land.lhs.true4.2.for.end_crit_edge:               ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true4.2.if.then_crit_edge:               ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true4.3:                                 ; preds = %land.lhs.true
  %call5.3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %land.lhs.true4.3.if.then_crit_edge, label %land.lhs.true4.3.for.end_crit_edge

land.lhs.true4.3.for.end_crit_edge:               ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true4.3.if.then_crit_edge:               ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true4.4:                                 ; preds = %land.lhs.true
  %call5.4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.60, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %land.lhs.true4.4.if.then_crit_edge, label %land.lhs.true4.5

land.lhs.true4.4.if.then_crit_edge:               ; preds = %land.lhs.true4.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

land.lhs.true4.5:                                 ; preds = %land.lhs.true4.4
  %call5.5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %land.lhs.true4.5.if.then_crit_edge, label %land.lhs.true4.5.for.end_crit_edge

land.lhs.true4.5.for.end_crit_edge:               ; preds = %land.lhs.true4.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

land.lhs.true4.5.if.then_crit_edge:               ; preds = %land.lhs.true4.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.end:                                          ; preds = %land.lhs.true4.5.for.end_crit_edge, %land.lhs.true4.3.for.end_crit_edge, %land.lhs.true4.2.for.end_crit_edge, %land.lhs.true4.1.for.end_crit_edge, %if.then, %land.lhs.true.for.end_crit_edge
  %n.error.0 = phi i32 [ %n, %if.then ], [ -22, %land.lhs.true4.5.for.end_crit_edge ], [ -22, %land.lhs.true4.3.for.end_crit_edge ], [ -22, %land.lhs.true4.1.for.end_crit_edge ], [ -22, %land.lhs.true4.2.for.end_crit_edge ], [ -22, %land.lhs.true.for.end_crit_edge ]
  %7 = tail call i32 @llvm.read_register.i32(metadata !224) #13
  %and.i.i25 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i25 to ptr
  %task.i26 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i26, align 8
  %flags.i27 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i27, align 4
  %and.i = and i32 %12, -1073741825
  store i32 %and.i, ptr %flags.i27, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #13
  ret i32 %n.error.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_print_times_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @pm_print_times_enabled, align 1, !range !237
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_print_times_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3 = icmp ne i32 %2, 0
  %frombool = zext i1 %tobool3 to i8
  store i8 %frombool, ptr @pm_print_times_enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_wakeup_irq_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_wakeup_irq() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @pm_wakeup_irq() #13
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %call1)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -61, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_wakeup_irq() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_debug_messages_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @pm_debug_messages_on, align 1, !range !237
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_debug_messages_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3 = icmp ne i32 %2, 0
  %frombool = zext i1 %tobool3 to i8
  store i8 %frombool, ptr @pm_debug_messages_on, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_freeze_timeout_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @freeze_timeout_msecs to i32))
  %0 = load i32, ptr @freeze_timeout_msecs, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_freeze_timeout_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !236
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @freeze_timeout_msecs to i32))
  store i32 %2, ptr @freeze_timeout_msecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @success_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suspend_stats to i32))
  %0 = load i32, ptr @suspend_stats, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_freeze_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_prepare_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_suspend_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_suspend_late_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_suspend_noirq_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_resume_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_resume_early_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failed_resume_noirq_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9), align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @last_failed_dev_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %sub = add i32 %0, 1
  %rem = srem i32 %sub, 2
  %arrayidx = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %rem
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, ptr noundef %arrayidx)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @last_failed_errno_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %sub = add i32 %0, 1
  %rem = srem i32 %sub, 2
  %arrayidx = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %rem
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %2)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @last_failed_step_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %sub = add i32 %0, 1
  %rem = srem i32 %sub, 2
  %arrayidx = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %rem
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %switch.tableidx = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 8
  br i1 %3, label %switch.lookup, label %entry.suspend_step_name.exit_crit_edge

entry.suspend_step_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %suspend_step_name.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.last_failed_step_show, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %suspend_step_name.exit

suspend_step_name.exit:                           ; preds = %switch.lookup, %entry.suspend_step_name.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %entry.suspend_step_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.49, ptr noundef nonnull %retval.0.i)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !114, !116, !118, !120, !122, !123, !125, !127, !128, !130, !132, !134, !135, !137, !139, !140, !142, !143, !145, !147, !149, !151, !153, !155, !156, !158, !159, !161, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222}
!llvm.named.register.sp = !{!224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__ksymtab_lock_system_sleep, !1, !"__ksymtab_lock_system_sleep", i1 false, i1 false}
!1 = !{!"../kernel/power/main.c", i32 29, i32 1}
!2 = !{ptr @__ksymtab_unlock_system_sleep, !3, !"__ksymtab_unlock_system_sleep", i1 false, i1 false}
!3 = !{!"../kernel/power/main.c", i32 52, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/power/main.c", i32 62, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ksys_sync_helper._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ksys_sync_helper._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_ksys_sync_helper, !11, !"__ksymtab_ksys_sync_helper", i1 false, i1 false}
!11 = !{!"../kernel/power/main.c", i32 65, i32 1}
!12 = !{ptr @__ksymtab_register_pm_notifier, !13, !"__ksymtab_register_pm_notifier", i1 false, i1 false}
!13 = !{!"../kernel/power/main.c", i32 75, i32 1}
!14 = !{ptr @__ksymtab_unregister_pm_notifier, !15, !"__ksymtab_unregister_pm_notifier", i1 false, i1 false}
!15 = !{!"../kernel/power/main.c", i32 81, i32 1}
!16 = !{ptr @pm_async_enabled, !17, !"pm_async_enabled", i1 false, i1 false}
!17 = !{!"../kernel/power/main.c", i32 98, i32 5}
!18 = !{ptr @sync_on_suspend_enabled, !19, !"sync_on_suspend_enabled", i1 false, i1 false}
!19 = !{!"../kernel/power/main.c", i32 200, i32 6}
!20 = !{ptr @pm_test_level, !21, !"pm_test_level", i1 false, i1 false}
!21 = !{!"../kernel/power/main.c", i32 228, i32 5}
!22 = !{ptr @__initcall__kmod_main__300_460_pm_debugfs_init7, !23, !"__initcall__kmod_main__300_460_pm_debugfs_init7", i1 false, i1 false}
!23 = !{!"../kernel/power/main.c", i32 460, i32 1}
!24 = !{ptr @__setup_pm_debug_messages_setup, !25, !"__setup_pm_debug_messages_setup", i1 false, i1 false}
!25 = !{!"../kernel/power/main.c", i32 546, i32 1}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/power/main.c", i32 570, i32 3}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__pm_pr_dbg._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @__pm_pr_dbg._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__pm_pr_dbg._entry.5, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../kernel/power/main.c", i32 572, i32 3}
!33 = !{ptr @__pm_pr_dbg._entry_ptr.6, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_pm_wq, !35, !"__ksymtab_pm_wq", i1 false, i1 false}
!35 = !{!"../kernel/power/main.c", i32 935, i32 1}
!36 = !{ptr @__initcall__kmod_main__301_962_pm_init1, !37, !"__initcall__kmod_main__301_962_pm_init1", i1 false, i1 false}
!37 = !{!"../kernel/power/main.c", i32 962, i32 1}
!38 = !{ptr @pm_print_times_enabled, !39, !"pm_print_times_enabled", i1 false, i1 false}
!39 = !{!"../kernel/power/main.c", i32 472, i32 6}
!40 = !{ptr @pm_debug_messages_on, !41, !"pm_debug_messages_on", i1 false, i1 false}
!41 = !{!"../kernel/power/main.c", i32 515, i32 6}
!42 = !{ptr @power_kobj, !43, !"power_kobj", i1 false, i1 false}
!43 = !{!"../kernel/power/main.c", i32 581, i32 17}
!44 = !{ptr @pm_wq, !45, !"pm_wq", i1 false, i1 false}
!45 = !{!"../kernel/power/main.c", i32 934, i32 26}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/power/main.c", i32 69, i32 8}
!48 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pm_chain_head, !47, !"pm_chain_head", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/power/main.c", i32 455, i32 22}
!52 = !{ptr @suspend_stats_fops, !53, !"suspend_stats_fops", i1 false, i1 false}
!53 = !{!"../kernel/power/main.c", i32 451, i32 1}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/power/main.c", i32 406, i32 16}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/power/main.c", i32 408, i32 4}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/power/main.c", i32 409, i32 4}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/power/main.c", i32 410, i32 4}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/power/main.c", i32 411, i32 4}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/power/main.c", i32 412, i32 4}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/power/main.c", i32 413, i32 4}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/power/main.c", i32 415, i32 4}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/power/main.c", i32 417, i32 4}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/power/main.c", i32 418, i32 4}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/power/main.c", i32 420, i32 4}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/power/main.c", i32 422, i32 16}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/power/main.c", i32 427, i32 17}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/power/main.c", i32 430, i32 16}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/power/main.c", i32 435, i32 17}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/power/main.c", i32 438, i32 16}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/power/main.c", i32 294, i32 10}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/power/main.c", i32 296, i32 10}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/power/main.c", i32 298, i32 10}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/power/main.c", i32 300, i32 10}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/power/main.c", i32 302, i32 10}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/power/main.c", i32 304, i32 10}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/power/main.c", i32 306, i32 10}
!100 = !{ptr @__setup_str_pm_debug_messages_setup, !25, !"__setup_str_pm_debug_messages_setup", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/power/main.c", i32 952, i32 38}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../kernel/power/main.c", i32 939, i32 26}
!105 = !{ptr @attr_groups, !106, !"attr_groups", i1 false, i1 false}
!106 = !{!"../kernel/power/main.c", i32 926, i32 38}
!107 = !{ptr @attr_group, !108, !"attr_group", i1 false, i1 false}
!108 = !{!"../kernel/power/main.c", i32 922, i32 37}
!109 = !{ptr @g, !110, !"g", i1 false, i1 false}
!110 = !{!"../kernel/power/main.c", i32 889, i32 27}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../kernel/power/main.c", i32 673, i32 1}
!113 = !{ptr @state_attr, !112, !"state_attr", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/power/main.c", i32 603, i32 19}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/power/main.c", i32 607, i32 19}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/power/main.c", i32 626, i32 38}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/power/main.c", i32 121, i32 1}
!122 = !{ptr @pm_async_attr, !121, !"pm_async_attr", i1 false, i1 false}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../kernel/power/main.c", i32 103, i32 22}
!125 = !{ptr @.str.41, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../kernel/power/main.c", i32 743, i32 1}
!127 = !{ptr @wakeup_count_attr, !126, !"wakeup_count_attr", i1 false, i1 false}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/power/main.c", i32 711, i32 16}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/power/main.c", i32 731, i32 18}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/power/main.c", i32 192, i32 1}
!134 = !{ptr @mem_sleep_attr, !133, !"mem_sleep_attr", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../kernel/power/main.c", i32 135, i32 21}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../kernel/power/main.c", i32 224, i32 1}
!139 = !{ptr @sync_on_suspend_attr, !138, !"sync_on_suspend_attr", i1 false, i1 false}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/power/main.c", i32 785, i32 1}
!142 = !{ptr @autosleep_attr, !141, !"autosleep_attr", i1 false, i1 false}
!143 = !{ptr @.str.48, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../kernel/power/main.c", i32 753, i32 23}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../kernel/power/main.c", i32 757, i32 23}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../kernel/power/main.c", i32 758, i32 25}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../kernel/power/main.c", i32 761, i32 22}
!151 = !{ptr @.str.52, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../kernel/power/main.c", i32 775, i32 21}
!153 = !{ptr @.str.53, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../kernel/power/main.c", i32 804, i32 1}
!155 = !{ptr @wake_lock_attr, !154, !"wake_lock_attr", i1 false, i1 false}
!156 = !{ptr @.str.54, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/power/main.c", i32 821, i32 1}
!158 = !{ptr @wake_unlock_attr, !157, !"wake_unlock_attr", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../kernel/power/main.c", i32 287, i32 1}
!161 = !{ptr @pm_test_attr, !160, !"pm_test_attr", i1 false, i1 false}
!162 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/power/main.c", i32 231, i32 16}
!164 = !{ptr @.str.57, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../kernel/power/main.c", i32 232, i32 16}
!166 = !{ptr @.str.58, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/power/main.c", i32 233, i32 16}
!168 = !{ptr @.str.59, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../kernel/power/main.c", i32 234, i32 20}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/power/main.c", i32 235, i32 19}
!172 = !{ptr @.str.61, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/power/main.c", i32 236, i32 19}
!174 = distinct !{null, !175, !"pm_tests", i1 false, i1 false}
!175 = !{!"../kernel/power/main.c", i32 230, i32 27}
!176 = !{ptr @.str.62, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/power/main.c", i32 496, i32 1}
!178 = !{ptr @pm_print_times_attr, !177, !"pm_print_times_attr", i1 false, i1 false}
!179 = !{ptr @.str.63, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../kernel/power/main.c", i32 513, i32 1}
!181 = !{ptr @pm_wakeup_irq_attr, !180, !"pm_wakeup_irq_attr", i1 false, i1 false}
!182 = !{ptr @.str.64, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/power/main.c", i32 539, i32 1}
!184 = !{ptr @pm_debug_messages_attr, !183, !"pm_debug_messages_attr", i1 false, i1 false}
!185 = !{ptr @.str.65, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../kernel/power/main.c", i32 885, i32 1}
!187 = !{ptr @pm_freeze_timeout_attr, !186, !"pm_freeze_timeout_attr", i1 false, i1 false}
!188 = !{ptr @suspend_attr_group, !189, !"suspend_attr_group", i1 false, i1 false}
!189 = !{!"../kernel/power/main.c", i32 390, i32 37}
!190 = !{ptr @suspend_attrs, !191, !"suspend_attrs", i1 false, i1 false}
!191 = !{!"../kernel/power/main.c", i32 373, i32 26}
!192 = !{ptr @success, !193, !"success", i1 false, i1 false}
!193 = !{!"../kernel/power/main.c", i32 318, i32 1}
!194 = !{ptr @fail, !195, !"fail", i1 false, i1 false}
!195 = !{!"../kernel/power/main.c", i32 319, i32 1}
!196 = !{ptr @failed_freeze, !197, !"failed_freeze", i1 false, i1 false}
!197 = !{!"../kernel/power/main.c", i32 320, i32 1}
!198 = !{ptr @failed_prepare, !199, !"failed_prepare", i1 false, i1 false}
!199 = !{!"../kernel/power/main.c", i32 321, i32 1}
!200 = !{ptr @failed_suspend, !201, !"failed_suspend", i1 false, i1 false}
!201 = !{!"../kernel/power/main.c", i32 322, i32 1}
!202 = !{ptr @failed_suspend_late, !203, !"failed_suspend_late", i1 false, i1 false}
!203 = !{!"../kernel/power/main.c", i32 323, i32 1}
!204 = !{ptr @failed_suspend_noirq, !205, !"failed_suspend_noirq", i1 false, i1 false}
!205 = !{!"../kernel/power/main.c", i32 324, i32 1}
!206 = !{ptr @failed_resume, !207, !"failed_resume", i1 false, i1 false}
!207 = !{!"../kernel/power/main.c", i32 325, i32 1}
!208 = !{ptr @failed_resume_early, !209, !"failed_resume_early", i1 false, i1 false}
!209 = !{!"../kernel/power/main.c", i32 326, i32 1}
!210 = !{ptr @failed_resume_noirq, !211, !"failed_resume_noirq", i1 false, i1 false}
!211 = !{!"../kernel/power/main.c", i32 327, i32 1}
!212 = !{ptr @.str.66, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../kernel/power/main.c", i32 341, i32 48}
!214 = !{ptr @last_failed_dev, !215, !"last_failed_dev", i1 false, i1 false}
!215 = !{!"../kernel/power/main.c", i32 341, i32 30}
!216 = !{ptr @.str.67, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../kernel/power/main.c", i32 355, i32 50}
!218 = !{ptr @last_failed_errno, !219, !"last_failed_errno", i1 false, i1 false}
!219 = !{!"../kernel/power/main.c", i32 355, i32 30}
!220 = !{ptr @.str.68, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../kernel/power/main.c", i32 371, i32 49}
!222 = !{ptr @last_failed_step, !223, !"last_failed_step", i1 false, i1 false}
!223 = !{!"../kernel/power/main.c", i32 371, i32 30}
!224 = !{!"sp"}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i64 885572, i64 885599}
!235 = !{i64 886267, i64 886294, i64 886327, i64 886348, i64 886375, i64 886401}
!236 = !{!"auto-init"}
!237 = !{i8 0, i8 2}
