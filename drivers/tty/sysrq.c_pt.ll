; ModuleID = '/llk/IR_all_yes/drivers/tty/sysrq.c_pt.bc'
source_filename = "../drivers/tty/sysrq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sysrq_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_sysrq_mask\09\09\09\09"
module asm "\09.long\09__crc_sysrq_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysrq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22sysrq_mask\22\09\09\09\09\09"
module asm "__kstrtabns_sysrq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+handle_sysrq\22, \22a\22\09"
module asm "\09.weak\09__crc_handle_sysrq\09\09\09\09"
module asm "\09.long\09__crc_handle_sysrq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_handle_sysrq:\09\09\09\09\09"
module asm "\09.asciz \09\22handle_sysrq\22\09\09\09\09\09"
module asm "__kstrtabns_handle_sysrq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sysrq_toggle_support\22, \22a\22\09"
module asm "\09.weak\09__crc_sysrq_toggle_support\09\09\09\09"
module asm "\09.long\09__crc_sysrq_toggle_support\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysrq_toggle_support:\09\09\09\09\09"
module asm "\09.asciz \09\22sysrq_toggle_support\22\09\09\09\09\09"
module asm "__kstrtabns_sysrq_toggle_support:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_sysrq_key\22, \22a\22\09"
module asm "\09.weak\09__crc_register_sysrq_key\09\09\09\09"
module asm "\09.long\09__crc_register_sysrq_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysrq_key\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_sysrq_key\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_sysrq_key\09\09\09\09"
module asm "\09.long\09__crc_unregister_sysrq_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_sysrq_key\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_sysrq_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.sysrq_key_op = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.104 }
%union.anon.104 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.vc = type { ptr, %struct.work_struct }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.oom_control = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.sysrq_state = type { %struct.input_handle, %struct.work_struct, [24 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, [24 x i32], i32, i32, i32, %struct.timer_list }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@sysrq_always_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sysrq_enabled = internal unnamed_addr global i32 1, section ".data..read_mostly", align 4
@__kstrtab_sysrq_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysrq_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_sysrq_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysrq_mask to i32), ptr @__kstrtab_sysrq_mask, ptr @__kstrtabns_sysrq_mask }, section "___ksymtab_gpl+sysrq_mask", align 4
@__setup_str_sysrq_always_enabled_setup = internal constant [21 x i8] c"sysrq_always_enabled\00", section ".init.rodata", align 1
@__setup_sysrq_always_enabled_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_sysrq_always_enabled_setup, ptr @sysrq_always_enabled_setup, i32 0 }, section ".init.setup", align 4
@sysrq_reboot_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_reboot, ptr @.str.17, ptr @.str.18, i32 128 }, [16 x i8] zeroinitializer }, align 32
@__sysrq_reboot_op = dso_local local_unnamed_addr global ptr @sysrq_reboot_op, align 4
@suppress_printk = external dso_local local_unnamed_addr global i32, align 4
@console_printk = external dso_local local_unnamed_addr global [0 x i32], align 4
@__handle_sysrq._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 597, ptr null, ptr null }, align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016sysrq: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__handle_sysrq\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/tty/sysrq.c\00", [44 x i8] zeroinitializer }, align 32
@__handle_sysrq._entry_ptr = internal global ptr @__handle_sysrq._entry, section ".printk_index", align 4
@__handle_sysrq._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 601, ptr null, ptr null }, align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016sysrq: This sysrq operation is disabled.\0A\00", [52 x i8] zeroinitializer }, align 32
@__handle_sysrq._entry_ptr.5 = internal global ptr @__handle_sysrq._entry.3, section ".printk_index", align 4
@__handle_sysrq._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 605, ptr null, ptr null }, align 1
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016sysrq: HELP : \00", [47 x i8] zeroinitializer }, align 32
@__handle_sysrq._entry_ptr.8 = internal global ptr @__handle_sysrq._entry.6, section ".printk_index", align 4
@__handle_sysrq._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 616, ptr null, ptr null }, align 1
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s \00", [26 x i8] zeroinitializer }, align 32
@__handle_sysrq._entry_ptr.11 = internal global ptr @__handle_sysrq._entry.9, section ".printk_index", align 4
@__handle_sysrq._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 619, ptr null, ptr null }, align 1
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@__handle_sysrq._entry_ptr.14 = internal global ptr @__handle_sysrq._entry.12, section ".printk_index", align 4
@__kstrtab_handle_sysrq = external dso_local constant [0 x i8], align 1
@__kstrtabns_handle_sysrq = external dso_local constant [0 x i8], align 1
@__ksymtab_handle_sysrq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @handle_sysrq to i32), ptr @__kstrtab_handle_sysrq, ptr @__kstrtabns_handle_sysrq }, section "___ksymtab+handle_sysrq", align 4
@__param_str_reset_seq = internal constant [16 x i8] c"sysrq.reset_seq\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_reset_seq = internal constant %struct.kparam_array { i32 20, i32 2, ptr @sysrq_reset_seq_len, ptr @param_ops_sysrq_reset_seq, ptr @sysrq_reset_seq }, align 4
@__param_reset_seq = internal constant %struct.kernel_param { ptr @__param_str_reset_seq, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.104 { ptr @__param_arr_reset_seq } }, section "__param", align 4
@__UNIQUE_ID_reset_seqtype301 = internal constant [50 x i8] c"sysrq.parmtype=reset_seq:array of sysrq_reset_seq\00", section ".modinfo", align 1
@__param_str_sysrq_downtime_ms = internal constant [24 x i8] c"sysrq.sysrq_downtime_ms\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@sysrq_reset_downtime_ms = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_sysrq_downtime_ms = internal constant %struct.kernel_param { ptr @__param_str_sysrq_downtime_ms, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.104 { ptr @sysrq_reset_downtime_ms } }, section "__param", align 4
@__UNIQUE_ID_sysrq_downtime_mstype302 = internal constant [37 x i8] c"sysrq.parmtype=sysrq_downtime_ms:int\00", section ".modinfo", align 1
@__kstrtab_sysrq_toggle_support = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysrq_toggle_support = external dso_local constant [0 x i8], align 1
@__ksymtab_sysrq_toggle_support = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysrq_toggle_support to i32), ptr @__kstrtab_sysrq_toggle_support, ptr @__kstrtabns_sysrq_toggle_support }, section "___ksymtab_gpl+sysrq_toggle_support", align 4
@__kstrtab_register_sysrq_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysrq_key = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysrq_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysrq_key to i32), ptr @__kstrtab_register_sysrq_key, ptr @__kstrtabns_register_sysrq_key }, section "___ksymtab+register_sysrq_key", align 4
@__kstrtab_unregister_sysrq_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_sysrq_key = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_sysrq_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_sysrq_key to i32), ptr @__kstrtab_unregister_sysrq_key, ptr @__kstrtabns_unregister_sysrq_key }, section "___ksymtab+unregister_sysrq_key", align 4
@__initcall__kmod_sysrq__303_1195_sysrq_init6 = internal global ptr @sysrq_init, section ".initcall6.init", align 4
@sysrq_always_enabled_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016sysrq: sysrq always enabled.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sysrq_always_enabled_setup\00", [37 x i8] zeroinitializer }, align 32
@sysrq_always_enabled_setup._entry_ptr = internal global ptr @sysrq_always_enabled_setup._entry, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reboot(b)\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Resetting\00", [22 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sysrq_loglevel_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_loglevel, ptr @.str.22, ptr @.str.23, i32 2 }, [16 x i8] zeroinitializer }, align 32
@sysrq_crash_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_crash, ptr @.str.26, ptr @.str.27, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_showlocks_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_showlocks, ptr @.str.29, ptr @.str.30, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysrq_term_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_term, ptr @.str.31, ptr @.str.32, i32 64 }, [16 x i8] zeroinitializer }, align 32
@sysrq_moom_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_moom, ptr @.str.33, ptr @.str.34, i32 64 }, [16 x i8] zeroinitializer }, align 32
@sysrq_kill_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_kill, ptr @.str.38, ptr @.str.39, i32 64 }, [16 x i8] zeroinitializer }, align 32
@sysrq_thaw_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_thaw, ptr @.str.40, ptr @.str.41, i32 64 }, [16 x i8] zeroinitializer }, align 32
@sysrq_SAK_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_SAK, ptr @.str.42, ptr @.str.43, i32 4 }, [16 x i8] zeroinitializer }, align 32
@sysrq_showallcpus_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_showallcpus, ptr @.str.44, ptr @.str.45, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_showmem_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_showmem, ptr @.str.53, ptr @.str.54, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_unrt_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_unrt, ptr @.str.55, ptr @.str.56, i32 256 }, [16 x i8] zeroinitializer }, align 32
@sysrq_showregs_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_showregs, ptr @.str.57, ptr @.str.58, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_show_timers_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_show_timers, ptr @.str.59, ptr @.str.60, i32 0 }, [16 x i8] zeroinitializer }, align 32
@sysrq_unraw_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_unraw, ptr @.str.61, ptr @.str.62, i32 4 }, [16 x i8] zeroinitializer }, align 32
@sysrq_sync_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_sync, ptr @.str.63, ptr @.str.64, i32 16 }, [16 x i8] zeroinitializer }, align 32
@sysrq_showstate_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_showstate, ptr @.str.65, ptr @.str.66, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_mountro_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_mountro, ptr @.str.67, ptr @.str.68, i32 32 }, [16 x i8] zeroinitializer }, align 32
@sysrq_showstate_blocked_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_handle_showstate_blocked, ptr @.str.69, ptr @.str.70, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_ftrace_dump_op = internal constant { %struct.sysrq_key_op, [16 x i8] } { %struct.sysrq_key_op { ptr @sysrq_ftrace_dump, ptr @.str.71, ptr @.str.72, i32 8 }, [16 x i8] zeroinitializer }, align 32
@sysrq_key_table = internal global { <{ [36 x ptr], [26 x ptr] }>, [40 x i8] } { <{ [36 x ptr], [26 x ptr] }> <{ [36 x ptr] [ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr @sysrq_loglevel_op, ptr null, ptr @sysrq_reboot_op, ptr @sysrq_crash_op, ptr @sysrq_showlocks_op, ptr @sysrq_term_op, ptr @sysrq_moom_op, ptr null, ptr null, ptr @sysrq_kill_op, ptr @sysrq_thaw_op, ptr @sysrq_SAK_op, ptr @sysrq_showallcpus_op, ptr @sysrq_showmem_op, ptr @sysrq_unrt_op, ptr null, ptr @sysrq_showregs_op, ptr @sysrq_show_timers_op, ptr @sysrq_unraw_op, ptr @sysrq_sync_op, ptr @sysrq_showstate_op, ptr @sysrq_mountro_op, ptr null, ptr @sysrq_showstate_blocked_op, ptr null, ptr null, ptr @sysrq_ftrace_dump_op], [26 x ptr] zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"loglevel(0-9)\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Changing Loglevel\00", [46 x i8] zeroinitializer }, align 32
@sysrq_handle_loglevel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016sysrq: Loglevel set to %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sysrq_handle_loglevel\00", [42 x i8] zeroinitializer }, align 32
@sysrq_handle_loglevel._entry_ptr = internal global ptr @sysrq_handle_loglevel._entry, section ".printk_index", align 4
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"crash(c)\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Trigger a crash\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysrq triggered crash\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"show-all-locks(d)\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Show Locks Held\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"terminate-all-tasks(e)\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Terminate All Tasks\00", [44 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@init_task = external dso_local global %struct.task_struct, align 128
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"memory-full-oom-kill(f)\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Manual OOM execution\00", [43 x i8] zeroinitializer }, align 32
@moom_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @moom_work, i64 4), ptr getelementptr (i8, ptr @moom_work, i64 4) }, ptr @moom_callback, %struct.lockdep_map { ptr @moom_work, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"moom_work\00", [22 x i8] zeroinitializer }, align 32
@oom_lock = external dso_local global %struct.mutex, align 4
@moom_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016sysrq: OOM request ignored. No task eligible\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"moom_callback\00", [18 x i8] zeroinitializer }, align 32
@moom_callback._entry_ptr = internal global ptr @moom_callback._entry, section ".printk_index", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kill-all-tasks(i)\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kill All Tasks\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thaw-filesystems(j)\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Emergency Thaw of all frozen filesystems\00", [55 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sak(k)\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAK\00", [28 x i8] zeroinitializer }, align 32
@vc_cons = external dso_local global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"show-backtrace-all-active-cpus(l)\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Show backtrace of all active CPUs\00", [62 x i8] zeroinitializer }, align 32
@sysrq_handle_showallcpus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016sysrq: CPU%d:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sysrq_handle_showallcpus\00", [39 x i8] zeroinitializer }, align 32
@sysrq_handle_showallcpus._entry_ptr = internal global ptr @sysrq_handle_showallcpus._entry, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@showacpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.50, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"showacpu\00", [23 x i8] zeroinitializer }, align 32
@showacpu._entry_ptr = internal global ptr @showacpu._entry, section ".printk_index", align 4
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"show-memory-usage(m)\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Show Memory\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nice-all-RT-tasks(n)\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Nice All RT Tasks\00", [46 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"show-registers(p)\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Show Regs\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"show-all-timers(q)\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Show clockevent devices & pending hrtimers (no others)\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unraw(r)\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Keyboard mode set to system default\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sync(s)\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Emergency Sync\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"show-task-states(t)\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Show State\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unmount(u)\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Emergency Remount R/O\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"show-blocked-tasks(w)\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Show Blocked State\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dump-ftrace-buffer(z)\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dump ftrace buffer\00", [45 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sysrq_reset_seq_len = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_sysrq_reset_seq = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @sysrq_reset_seq_param_set, ptr @param_get_ushort, ptr null }, [16 x i8] zeroinitializer }, align 32
@sysrq_reset_seq = internal global { [20 x i16], [56 x i8] } zeroinitializer, align 32
@sysrq_reset_seq_version = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@sysrq_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr null, ptr null, ptr @sysrq_filter, ptr null, ptr @sysrq_connect, ptr @sysrq_disconnect, ptr null, i8 0, i32 0, ptr @.str.77, ptr @sysrq_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sysrq_register_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013sysrq: Failed to register input handler, error %d\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sysrq_register_handler\00", [41 x i8] zeroinitializer }, align 32
@sysrq_register_handler._entry_ptr = internal global ptr @sysrq_register_handler._entry, section ".printk_index", align 4
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"/chosen/linux,sysrq-reset-seq\00", [34 x i8] zeroinitializer }, align 32
@sysrq_of_get_keyreset_config.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.2, ptr @.str.79, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sysrq\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sysrq_of_get_keyreset_config\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No sysrq node found\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sysrq: No sysrq node found\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keyset\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timeout-ms\00", [21 x i8] zeroinitializer }, align 32
@sysrq_xlate = internal constant { [768 x i8], [192 x i8] } { [768 x i8] c"\00\1B1234567890-=\7F\09qwertyuiop[]\0D\00asdfghjkl;'`\00\\zxcvbnm,./\00*\00 \00\81\82\83\84\85\86\87\88\89\8A\00\00789-456+1230\7F\00\00\8B\8C\00\00\00\00\00\00\00\00\00\00\0D\00/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [192 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sysrq_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&sysrq->reinject_work)\00", [55 x i8] zeroinitializer }, align 32
@sysrq_connect.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&sysrq->keyreset_timer)\00", [39 x i8] zeroinitializer }, align 32
@sysrq_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013sysrq: Failed to register input sysrq handler, error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sysrq_connect\00", [18 x i8] zeroinitializer }, align 32
@sysrq_connect._entry_ptr = internal global ptr @sysrq_connect._entry, section ".printk_index", align 4
@sysrq_connect._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013sysrq: Failed to open input device, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@sysrq_connect._entry_ptr.90 = internal global ptr @sysrq_connect._entry.88, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sysrq_ids = internal constant { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ i32, i32, [22 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id }>, [88 x i8] } { <{ { i32, i16, i16, i16, i16, [1 x i32], <{ i32, i32, [22 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }, %struct.input_device_id }> <{ { i32, i16, i16, i16, i16, [1 x i32], <{ i32, i32, [22 x i32] }>, [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 } { i32 48, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], <{ i32, i32, [22 x i32] }> <{ i32 0, i32 16777216, [22 x i32] zeroinitializer }>, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer }>, [88 x i8] zeroinitializer }, align 32
@sysrq_key_table_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.92, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sysrq_key_table_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sysrq-trigger\00", [18 x i8] zeroinitializer }, align 32
@sysrq_trigger_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr null, ptr null, ptr @write_sysrq_trigger, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@sysrq_init_procfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013sysrq: Failed to register proc interface\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sysrq_init_procfs\00", [46 x i8] zeroinitializer }, align 32
@sysrq_init_procfs._entry_ptr = internal global ptr @sysrq_init_procfs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 42, i64 54, i64 56, i64 99, i64 100]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"sysrq_reboot_op\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 170, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 597, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 601, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 605, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 616, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 619, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [24 x i8] c"sysrq_reset_downtime_ms\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 636, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 93, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 172, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 173, i32 16 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 695, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"sysrq_loglevel_op\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 110, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"sysrq_crash_op\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 157, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"sysrq_showlocks_op\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 218, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"sysrq_term_op\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 371, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"sysrq_moom_op\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 401, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"sysrq_kill_op\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 424, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"sysrq_thaw_op\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 412, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"sysrq_SAK_op\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 124, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"sysrq_showallcpus_op\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 271, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"sysrq_showmem_op\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 340, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"sysrq_unrt_op\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 435, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [18 x i8] c"sysrq_showregs_op\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 289, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"sysrq_show_timers_op\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 195, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"sysrq_unraw_op\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 140, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"sysrq_sync_op\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 183, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant [19 x i8] c"sysrq_showstate_op\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 301, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"sysrq_mountro_op\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 205, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"sysrq_showstate_blocked_op\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 312, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"sysrq_ftrace_dump_op\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 326, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"sysrq_key_table\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 445, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 112, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 113, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 107, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 159, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 160, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 155, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 220, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 221, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 373, i32 14 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 374, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 403, i32 14 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 404, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant [10 x i8] c"moom_work\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 395, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 391, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 426, i32 14 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 427, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 414, i32 14 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 415, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 126, i32 14 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 127, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 273, i32 14 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 274, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 264, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 239, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 342, i32 14 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 343, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 437, i32 14 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 438, i32 16 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 291, i32 14 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 292, i32 16 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 197, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 198, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 142, i32 14 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 143, i32 16 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 185, i32 14 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 186, i32 16 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 303, i32 14 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 304, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 207, i32 14 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 208, i32 16 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 314, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 315, i32 16 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 328, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 329, i32 16 }
@___asan_gen_.365 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 723, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c"sysrq_reset_seq_len\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 672, i32 21 }
@___asan_gen_.370 = private unnamed_addr constant [26 x i8] c"param_ops_sysrq_reset_seq\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1066, i32 38 }
@___asan_gen_.373 = private unnamed_addr constant [16 x i8] c"sysrq_reset_seq\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 671, i32 23 }
@___asan_gen_.376 = private unnamed_addr constant [24 x i8] c"sysrq_reset_seq_version\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 673, i32 21 }
@___asan_gen_.379 = private unnamed_addr constant [14 x i8] c"sysrq_handler\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1023, i32 29 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1039, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 763, i32 28 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 765, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 772, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 781, i32 27 }
@___asan_gen_.412 = private unnamed_addr constant [12 x i8] c"sysrq_xlate\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 639, i32 28 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 967, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 973, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 977, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 984, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [10 x i8] c"sysrq_ids\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1013, i32 37 }
@___asan_gen_.445 = private unnamed_addr constant [21 x i8] c"sysrq_key_table_lock\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 443, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1173, i32 19 }
@___asan_gen_.454 = private unnamed_addr constant [23 x i8] c"sysrq_trigger_proc_ops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1166, i32 30 }
@___asan_gen_.457 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.464 = private constant [23 x i8] c"../drivers/tty/sysrq.c\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 1175, i32 3 }
@llvm.compiler.used = appending global [152 x ptr] [ptr @__UNIQUE_ID_reset_seqtype301, ptr @__UNIQUE_ID_sysrq_downtime_mstype302, ptr @__handle_sysrq._entry, ptr @__handle_sysrq._entry.12, ptr @__handle_sysrq._entry.3, ptr @__handle_sysrq._entry.6, ptr @__handle_sysrq._entry.9, ptr @__handle_sysrq._entry_ptr, ptr @__handle_sysrq._entry_ptr.11, ptr @__handle_sysrq._entry_ptr.14, ptr @__handle_sysrq._entry_ptr.5, ptr @__handle_sysrq._entry_ptr.8, ptr @__initcall__kmod_sysrq__303_1195_sysrq_init6, ptr @__ksymtab_handle_sysrq, ptr @__ksymtab_register_sysrq_key, ptr @__ksymtab_sysrq_mask, ptr @__ksymtab_sysrq_toggle_support, ptr @__ksymtab_unregister_sysrq_key, ptr @__param_reset_seq, ptr @__param_sysrq_downtime_ms, ptr @__setup_sysrq_always_enabled_setup, ptr @moom_callback._entry, ptr @moom_callback._entry_ptr, ptr @showacpu._entry, ptr @showacpu._entry_ptr, ptr @sysrq_always_enabled_setup._entry, ptr @sysrq_always_enabled_setup._entry_ptr, ptr @sysrq_connect._entry, ptr @sysrq_connect._entry.88, ptr @sysrq_connect._entry_ptr, ptr @sysrq_connect._entry_ptr.90, ptr @sysrq_handle_loglevel._entry, ptr @sysrq_handle_loglevel._entry_ptr, ptr @sysrq_handle_showallcpus._entry, ptr @sysrq_handle_showallcpus._entry_ptr, ptr @sysrq_init_procfs._entry, ptr @sysrq_init_procfs._entry_ptr, ptr @sysrq_register_handler._entry, ptr @sysrq_register_handler._entry_ptr, ptr @sysrq_reboot_op, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @sysrq_reset_downtime_ms, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sysrq_loglevel_op, ptr @sysrq_crash_op, ptr @sysrq_showlocks_op, ptr @sysrq_term_op, ptr @sysrq_moom_op, ptr @sysrq_kill_op, ptr @sysrq_thaw_op, ptr @sysrq_SAK_op, ptr @sysrq_showallcpus_op, ptr @sysrq_showmem_op, ptr @sysrq_unrt_op, ptr @sysrq_showregs_op, ptr @sysrq_show_timers_op, ptr @sysrq_unraw_op, ptr @sysrq_sync_op, ptr @sysrq_showstate_op, ptr @sysrq_mountro_op, ptr @sysrq_showstate_blocked_op, ptr @sysrq_ftrace_dump_op, ptr @sysrq_key_table, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @moom_work, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @sysrq_reset_seq_len, ptr @param_ops_sysrq_reset_seq, ptr @sysrq_reset_seq, ptr @sysrq_reset_seq_version, ptr @sysrq_handler, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @sysrq_xlate, ptr @sysrq_connect.__key, ptr @.str.83, ptr @sysrq_connect.__key.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @sysrq_ids, ptr @sysrq_key_table_lock, ptr @.str.92, ptr @.str.93, ptr @sysrq_trigger_proc_ops, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_reboot_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_reset_downtime_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_always_enabled_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_loglevel_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_crash_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_showlocks_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_term_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_moom_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_kill_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_thaw_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_SAK_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_showallcpus_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_showmem_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_unrt_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_showregs_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_show_timers_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_unraw_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_sync_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_showstate_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_mountro_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_showstate_blocked_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_ftrace_dump_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_key_table to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_handle_loglevel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moom_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moom_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_handle_showallcpus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @showacpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_reset_seq_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_sysrq_reset_seq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_reset_seq to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_reset_seq_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_register_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_xlate to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_connect.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_connect._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_ids to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_key_table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_trigger_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysrq_init_procfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sysrq_mask() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @sysrq_always_enabled, align 1
  br i1 %.b1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @sysrq_enabled, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %0, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sysrq_always_enabled_setup(ptr nocapture noundef readnone %str) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @sysrq_always_enabled, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #14
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__handle_sysrq(i32 noundef %key, i1 noundef zeroext %check_mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suppress_printk to i32))
  %0 = load i32, ptr @suppress_printk, align 4
  store i32 0, ptr @suppress_printk, align 4
  tail call void @rcu_sysrq_start() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !290
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  %5 = load i32, ptr @console_printk, align 4
  store i32 7, ptr @console_printk, align 4
  %6 = add i32 %key, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %7 = icmp ult i32 %6, 10
  br i1 %7, label %rcu_read_lock.exit.__sysrq_get_key_op.exit_crit_edge, label %if.else.i.i

rcu_read_lock.exit.__sysrq_get_key_op.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_get_key_op.exit

if.else.i.i:                                      ; preds = %rcu_read_lock.exit
  %8 = add i32 %key, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %8)
  %9 = icmp ult i32 %8, 26
  br i1 %9, label %if.then6.i.i, label %if.else8.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub7.i.i = add nsw i32 %key, -87
  br label %__sysrq_get_key_op.exit

if.else8.i.i:                                     ; preds = %if.else.i.i
  %sub14.i.i = add i32 %key, -29
  %10 = add i32 %key, -91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26, i32 %10)
  %11 = icmp ult i32 %10, -26
  br i1 %11, label %if.else8.i.i.do.end13_crit_edge, label %if.else8.i.i.__sysrq_get_key_op.exit_crit_edge

if.else8.i.i.__sysrq_get_key_op.exit_crit_edge:   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_get_key_op.exit

if.else8.i.i.do.end13_crit_edge:                  ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

__sysrq_get_key_op.exit:                          ; preds = %if.else8.i.i.__sysrq_get_key_op.exit_crit_edge, %if.then6.i.i, %rcu_read_lock.exit.__sysrq_get_key_op.exit_crit_edge
  %retval1.0.i4.i = phi i32 [ %6, %rcu_read_lock.exit.__sysrq_get_key_op.exit_crit_edge ], [ %sub7.i.i, %if.then6.i.i ], [ %sub14.i.i, %if.else8.i.i.__sysrq_get_key_op.exit_crit_edge ]
  %arrayidx.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %retval1.0.i4.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %__sysrq_get_key_op.exit.do.end13_crit_edge, label %if.then

__sysrq_get_key_op.exit.do.end13_crit_edge:       ; preds = %__sysrq_get_key_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

if.then:                                          ; preds = %__sysrq_get_key_op.exit
  br i1 %check_mask, label %lor.lhs.false, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then
  %.b2.i = load i1, ptr @sysrq_always_enabled, align 1
  br i1 %.b2.i, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.i

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %lor.lhs.false
  %enable_mask = getelementptr inbounds %struct.sysrq_key_op, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_mask, align 4
  %16 = load i32, ptr @sysrq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp eq i32 %16, 1
  %and.i = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool1.i
  br i1 %or.cond, label %lor.lhs.false.i.do.end_crit_edge, label %do.end7

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.i.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then.do.end_crit_edge
  %action_msg = getelementptr inbounds %struct.sysrq_key_op, ptr %13, i32 0, i32 2
  %17 = ptrtoint ptr %action_msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %action_msg, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %18) #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %5, ptr @console_printk, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %13, align 4
  tail call void %20(i32 noundef %key) #11
  br label %if.end41

do.end7:                                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %5, ptr @console_printk, align 4
  br label %if.end41

do.end13:                                         ; preds = %__sysrq_get_key_op.exit.do.end13_crit_edge, %if.else8.i.i.do.end13_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %do.end13
  %i.068 = phi i32 [ 0, %do.end13 ], [ %inc34, %for.inc33.for.body_crit_edge ]
  %arrayidx = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %i.068
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %for.body.for.inc33_crit_edge, label %for.body.for.cond18_crit_edge

for.body.for.cond18_crit_edge:                    ; preds = %for.body
  br label %for.cond18

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc33

for.cond18:                                       ; preds = %for.cond18.for.cond18_crit_edge, %for.body.for.cond18_crit_edge
  %j.0 = phi i32 [ %inc, %for.cond18.for.cond18_crit_edge ], [ 0, %for.body.for.cond18_crit_edge ]
  %arrayidx20 = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %j.0
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx20, align 4
  %cmp21.not = icmp eq ptr %22, %24
  %inc = add i32 %j.0, 1
  br i1 %cmp21.not, label %for.end, label %for.cond18.for.cond18_crit_edge

for.cond18.for.cond18_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond18

for.end:                                          ; preds = %for.cond18
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %i.068)
  %cmp23.not = icmp eq i32 %j.0, %i.068
  br i1 %cmp23.not, label %do.end28, label %for.end.for.inc33_crit_edge

for.end.for.inc33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc33

do.end28:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %help_msg = getelementptr inbounds %struct.sysrq_key_op, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %help_msg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %help_msg, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %26) #14
  br label %for.inc33

for.inc33:                                        ; preds = %do.end28, %for.end.for.inc33_crit_edge, %for.body.for.inc33_crit_edge
  %inc34 = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc34, 62
  br i1 %exitcond.not, label %do.end38, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end38:                                         ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %5, ptr @console_printk, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %do.end7, %do.end
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i56, label %if.end41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

if.end41.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %if.end41
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.73) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %if.end41.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !291
  %27 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i.i.i.i.i63 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @rcu_sysrq_end() #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @suppress_printk to i32))
  store i32 %0, ptr @suppress_printk, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sysrq_start() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.73) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !291
  %0 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sysrq_end() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @handle_sysrq(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sysrq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %sysrq_on.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sysrq_on.exit:                                    ; preds = %entry
  %.b2.i = load i1, ptr @sysrq_always_enabled, align 1
  br i1 %.b2.i, label %sysrq_on.exit.if.then_crit_edge, label %sysrq_on.exit.if.end_crit_edge

sysrq_on.exit.if.end_crit_edge:                   ; preds = %sysrq_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sysrq_on.exit.if.then_crit_edge:                  ; preds = %sysrq_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %sysrq_on.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @__handle_sysrq(i32 noundef %key, i1 noundef zeroext true)
  br label %if.end

if.end:                                           ; preds = %if.then, %sysrq_on.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysrq_toggle_support(i32 noundef %enable_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sysrq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %sysrq_on.exit, label %sysrq_on.exit.thread

sysrq_on.exit:                                    ; preds = %entry
  %.b2.i = load i1, ptr @sysrq_always_enabled, align 1
  store i32 %enable_mask, ptr @sysrq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_mask)
  %tobool.not.i7 = icmp eq i32 %enable_mask, 0
  br i1 %tobool.not.i7, label %sysrq_on.exit10, label %sysrq_on.exit.sysrq_on.exit10_crit_edge

sysrq_on.exit.thread:                             ; preds = %entry
  store i32 %enable_mask, ptr @sysrq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable_mask)
  %tobool.not.i716 = icmp eq i32 %enable_mask, 0
  br i1 %tobool.not.i716, label %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge, label %sysrq_on.exit.thread.if.end6_crit_edge

sysrq_on.exit.thread.if.end6_crit_edge:           ; preds = %sysrq_on.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

sysrq_on.exit.thread.sysrq_on.exit10_crit_edge:   ; preds = %sysrq_on.exit.thread
  %.b2.i817 = load i1, ptr @sysrq_always_enabled, align 1
  br i1 %.b2.i817, label %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.if.end6_crit_edge, label %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.sysrq_on.exit14_crit_edge

sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.sysrq_on.exit14_crit_edge: ; preds = %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %sysrq_on.exit14

sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.if.end6_crit_edge: ; preds = %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

sysrq_on.exit.sysrq_on.exit10_crit_edge:          ; preds = %sysrq_on.exit
  br i1 %.b2.i, label %sysrq_on.exit.sysrq_on.exit10_crit_edge.if.end6_crit_edge, label %sysrq_on.exit.sysrq_on.exit10_crit_edge.if.then5_crit_edge

sysrq_on.exit.sysrq_on.exit10_crit_edge.if.then5_crit_edge: ; preds = %sysrq_on.exit.sysrq_on.exit10_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

sysrq_on.exit.sysrq_on.exit10_crit_edge.if.end6_crit_edge: ; preds = %sysrq_on.exit.sysrq_on.exit10_crit_edge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

sysrq_on.exit10:                                  ; preds = %sysrq_on.exit
  %.b2.i8 = load i1, ptr @sysrq_always_enabled, align 1
  %1 = xor i1 %.b2.i, %.b2.i8
  br i1 %1, label %sysrq_on.exit10.sysrq_on.exit14_crit_edge, label %sysrq_on.exit10.if.end6_crit_edge

sysrq_on.exit10.if.end6_crit_edge:                ; preds = %sysrq_on.exit10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

sysrq_on.exit10.sysrq_on.exit14_crit_edge:        ; preds = %sysrq_on.exit10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sysrq_on.exit14

sysrq_on.exit14:                                  ; preds = %sysrq_on.exit10.sysrq_on.exit14_crit_edge, %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.sysrq_on.exit14_crit_edge
  %.b2.i12 = phi i1 [ %.b2.i817, %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.sysrq_on.exit14_crit_edge ], [ %.b2.i8, %sysrq_on.exit10.sysrq_on.exit14_crit_edge ]
  br i1 %.b2.i12, label %sysrq_on.exit14.if.then5_crit_edge, label %if.else

sysrq_on.exit14.if.then5_crit_edge:               ; preds = %sysrq_on.exit14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5

if.then5:                                         ; preds = %sysrq_on.exit14.if.then5_crit_edge, %sysrq_on.exit.sysrq_on.exit10_crit_edge.if.then5_crit_edge
  tail call fastcc void @sysrq_of_get_keyreset_config() #11
  %call.i = tail call i32 @input_register_handler(ptr noundef nonnull @sysrq_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i15 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i15, label %if.then5.if.end6_crit_edge, label %do.end.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %call.i) #14
  br label %if.end6

if.else:                                          ; preds = %sysrq_on.exit14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @input_unregister_handler(ptr noundef nonnull @sysrq_handler) #11
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end.i, %if.then5.if.end6_crit_edge, %sysrq_on.exit10.if.end6_crit_edge, %sysrq_on.exit.sysrq_on.exit10_crit_edge.if.end6_crit_edge, %sysrq_on.exit.thread.sysrq_on.exit10_crit_edge.if.end6_crit_edge, %sysrq_on.exit.thread.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_sysrq_key(i32 noundef %key, ptr noundef %op_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysrq_key_table_lock) #11
  %0 = add i32 %key, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %1 = icmp ult i32 %0, 10
  br i1 %1, label %__sysrq_get_key_op.exit.thread13.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %2 = add i32 %key, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %3 = icmp ult i32 %2, 26
  br i1 %3, label %__sysrq_get_key_op.exit.i, label %if.else8.i.i.i

if.else8.i.i.i:                                   ; preds = %if.else.i.i.i
  %4 = add i32 %key, -91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26, i32 %4)
  %5 = icmp ult i32 %4, -26
  br i1 %5, label %if.else8.i.i.i.__sysrq_swap_key_ops.exit_crit_edge, label %__sysrq_get_key_op.exit.thread19.i

if.else8.i.i.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.i:                        ; preds = %if.else.i.i.i
  %sub7.i.i.i = add nsw i32 %key, -87
  %arrayidx.i.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %sub7.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge, label %__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge

__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %__sysrq_get_key_op.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge: ; preds = %__sysrq_get_key_op.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i10.i

__sysrq_get_key_op.exit.thread19.i:               ; preds = %if.else8.i.i.i
  %sub14.i.i.i = add nsw i32 %key, -29
  %arrayidx.i21.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %sub14.i.i.i
  %8 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i21.i, align 4
  %cmp22.i = icmp eq ptr %9, null
  br i1 %cmp22.i, label %__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge, label %__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge

__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i10.i

__sysrq_get_key_op.exit.thread13.i:               ; preds = %entry
  %arrayidx.i15.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %0
  %10 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i15.i, align 4
  %cmp16.i = icmp eq ptr %11, null
  br i1 %cmp16.i, label %__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge, label %__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge

__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i10.i

if.then.i10.i:                                    ; preds = %__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge, %__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge, %__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge
  %retval1.0.i4.i8.i = phi i32 [ %0, %__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge ], [ %sub7.i.i.i, %__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge ], [ %sub14.i.i.i, %__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge ]
  %arrayidx.i9.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %retval1.0.i4.i8.i
  %12 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %op_p, ptr %arrayidx.i9.i, align 4
  br label %__sysrq_swap_key_ops.exit

__sysrq_swap_key_ops.exit:                        ; preds = %if.then.i10.i, %__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge, %__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge, %__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge, %if.else8.i.i.i.__sysrq_swap_key_ops.exit_crit_edge
  %retval1.0.i = phi i32 [ -1, %__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge ], [ 0, %if.then.i10.i ], [ -1, %__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge ], [ -1, %__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge ], [ 0, %if.else8.i.i.i.__sysrq_swap_key_ops.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysrq_key_table_lock) #11
  tail call void @synchronize_rcu() #11
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_sysrq_key(i32 noundef %key, ptr noundef readnone %op_p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysrq_key_table_lock) #11
  %0 = add i32 %key, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %1 = icmp ult i32 %0, 10
  br i1 %1, label %__sysrq_get_key_op.exit.thread13.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %2 = add i32 %key, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %2)
  %3 = icmp ult i32 %2, 26
  br i1 %3, label %__sysrq_get_key_op.exit.i, label %if.else8.i.i.i

if.else8.i.i.i:                                   ; preds = %if.else.i.i.i
  %4 = add i32 %key, -91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26, i32 %4)
  %5 = icmp ult i32 %4, -26
  br i1 %5, label %__sysrq_get_key_op.exit.thread.i, label %__sysrq_get_key_op.exit.thread19.i

__sysrq_get_key_op.exit.i:                        ; preds = %if.else.i.i.i
  %sub7.i.i.i = add nsw i32 %key, -87
  %arrayidx.i.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %sub7.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i = icmp eq ptr %7, %op_p
  br i1 %cmp.i, label %__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge, label %__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge

__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %__sysrq_get_key_op.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge: ; preds = %__sysrq_get_key_op.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i10.i

__sysrq_get_key_op.exit.thread19.i:               ; preds = %if.else8.i.i.i
  %sub14.i.i.i = add nsw i32 %key, -29
  %arrayidx.i21.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %sub14.i.i.i
  %8 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i21.i, align 4
  %cmp22.i = icmp eq ptr %9, %op_p
  br i1 %cmp22.i, label %__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge, label %__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge

__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i10.i

__sysrq_get_key_op.exit.thread13.i:               ; preds = %entry
  %arrayidx.i15.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %0
  %10 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i15.i, align 4
  %cmp16.i = icmp eq ptr %11, %op_p
  br i1 %cmp16.i, label %__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge, label %__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge

__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__sysrq_swap_key_ops.exit

__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge: ; preds = %__sysrq_get_key_op.exit.thread13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i10.i

__sysrq_get_key_op.exit.thread.i:                 ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %cmp12.i = icmp ne ptr %op_p, null
  %spec.select.i = sext i1 %cmp12.i to i32
  br label %__sysrq_swap_key_ops.exit

if.then.i10.i:                                    ; preds = %__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge, %__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge, %__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge
  %retval1.0.i4.i8.i = phi i32 [ %0, %__sysrq_get_key_op.exit.thread13.i.if.then.i10.i_crit_edge ], [ %sub7.i.i.i, %__sysrq_get_key_op.exit.i.if.then.i10.i_crit_edge ], [ %sub14.i.i.i, %__sysrq_get_key_op.exit.thread19.i.if.then.i10.i_crit_edge ]
  %arrayidx.i9.i = getelementptr [62 x ptr], ptr @sysrq_key_table, i32 0, i32 %retval1.0.i4.i8.i
  %12 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i9.i, align 4
  br label %__sysrq_swap_key_ops.exit

__sysrq_swap_key_ops.exit:                        ; preds = %if.then.i10.i, %__sysrq_get_key_op.exit.thread.i, %__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge, %__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge, %__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge
  %retval1.0.i = phi i32 [ -1, %__sysrq_get_key_op.exit.i.__sysrq_swap_key_ops.exit_crit_edge ], [ 0, %if.then.i10.i ], [ -1, %__sysrq_get_key_op.exit.thread13.i.__sysrq_swap_key_ops.exit_crit_edge ], [ -1, %__sysrq_get_key_op.exit.thread19.i.__sysrq_swap_key_ops.exit_crit_edge ], [ %spec.select.i, %__sysrq_get_key_op.exit.thread.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysrq_key_table_lock) #11
  tail call void @synchronize_rcu() #11
  ret i32 %retval1.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sysrq_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @proc_create(ptr noundef nonnull @.str.93, i16 noundef zeroext 128, ptr noundef null, ptr noundef nonnull @sysrq_trigger_proc_ops) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.sysrq_init_procfs.exit_crit_edge

entry.sysrq_init_procfs.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sysrq_init_procfs.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #14
  br label %sysrq_init_procfs.exit

sysrq_init_procfs.exit:                           ; preds = %do.end.i, %entry.sysrq_init_procfs.exit_crit_edge
  %0 = load i32, ptr @sysrq_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i1 = icmp eq i32 %0, 0
  br i1 %tobool.not.i1, label %sysrq_on.exit, label %sysrq_init_procfs.exit.if.then_crit_edge

sysrq_init_procfs.exit.if.then_crit_edge:         ; preds = %sysrq_init_procfs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

sysrq_on.exit:                                    ; preds = %sysrq_init_procfs.exit
  %.b2.i = load i1, ptr @sysrq_always_enabled, align 1
  br i1 %.b2.i, label %sysrq_on.exit.if.then_crit_edge, label %sysrq_on.exit.if.end_crit_edge

sysrq_on.exit.if.end_crit_edge:                   ; preds = %sysrq_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sysrq_on.exit.if.then_crit_edge:                  ; preds = %sysrq_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %sysrq_on.exit.if.then_crit_edge, %sysrq_init_procfs.exit.if.then_crit_edge
  tail call fastcc void @sysrq_of_get_keyreset_config() #11
  %call.i2 = tail call i32 @input_register_handler(ptr noundef nonnull @sysrq_handler) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %if.then.if.end_crit_edge, label %do.end.i5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end.i5:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %call.i2) #14
  br label %if.end

if.end:                                           ; preds = %do.end.i5, %if.then.if.end_crit_edge, %sysrq_on.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_reboot(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %lockdep_recursion = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 143
  %4 = ptrtoint ptr %lockdep_recursion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockdep_recursion, align 4
  %add = add i32 %5, 65536
  store i32 %add, ptr %lockdep_recursion, align 4
  tail call void @trace_hardirqs_on() #11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !292
  tail call void @emergency_restart() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_loglevel(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %key, -48
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 7, ptr @console_printk, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %sub) #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 %sub, ptr @console_printk, align 4
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_crash(i32 noundef %key) #8 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rcu_read_unlock()
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.28) #15
  unreachable
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_showlocks(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_show_all_locks() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_show_all_locks() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_term(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr9.i = getelementptr i8, ptr %0, i32 -1136
  %cmp.not10.i = icmp eq ptr %add.ptr9.i, @init_task
  br i1 %cmp.not10.i, label %entry.send_sig_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.send_sig_all.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_sig_all.exit

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %add.ptr11.i = phi ptr [ %add.ptr.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %add.ptr9.i, %entry.for.body.i_crit_edge ]
  %1 = phi ptr [ %7, %for.cond.backedge.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %1, i32 -1124
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.cond.backedge.i_crit_edge

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.end.i:                                         ; preds = %for.body.i
  %tgid.i.i.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 1
  br i1 %cmp.i.not.i, label %if.end.i.for.cond.backedge.i_crit_edge, label %if.end4.i

if.end.i.for.cond.backedge.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call i32 @do_send_sig_info(i32 noundef 15, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %add.ptr11.i, i32 noundef 4) #11
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.end4.i, %if.end.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %tasks.i = getelementptr inbounds %struct.task_struct, ptr %add.ptr11.i, i32 0, i32 50
  %6 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tasks.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 -1136
  %cmp.not.i = icmp eq ptr %add.ptr.i, @init_task
  br i1 %cmp.not.i, label %for.cond.backedge.i.send_sig_all.exit_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.backedge.i.send_sig_all.exit_crit_edge:  ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_sig_all.exit

send_sig_all.exit:                                ; preds = %for.cond.backedge.i.send_sig_all.exit_crit_edge, %entry.send_sig_all.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 10, ptr @console_printk, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_moom(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @moom_work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moom_callback(ptr nocapture noundef readnone %ignored) #2 align 64 {
entry:
  %oc = alloca %struct.oom_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %oc) #11
  %0 = ptrtoint ptr %oc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), ptr %oc, align 4
  %nodemask = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 1
  %1 = ptrtoint ptr %nodemask to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %nodemask, align 4
  %memcg = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 2
  %2 = ptrtoint ptr %memcg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %memcg, align 4
  %gfp_mask1 = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 3
  %3 = ptrtoint ptr %gfp_mask1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3264, ptr %gfp_mask1, align 4
  %order = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 4
  %4 = ptrtoint ptr %order to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %order, align 4
  %totalpages = getelementptr inbounds %struct.oom_control, ptr %oc, i32 0, i32 5
  %5 = call ptr @memset(ptr %totalpages, i32 0, i32 16)
  tail call void @mutex_lock_nested(ptr noundef nonnull @oom_lock, i32 noundef 0) #11
  %call2 = call zeroext i1 @out_of_memory(ptr noundef nonnull %oc) #11
  br i1 %call2, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @oom_lock) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %oc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @out_of_memory(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_kill(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50) to i32))
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50), align 16
  %add.ptr9.i = getelementptr i8, ptr %0, i32 -1136
  %cmp.not10.i = icmp eq ptr %add.ptr9.i, @init_task
  br i1 %cmp.not10.i, label %entry.send_sig_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.send_sig_all.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_sig_all.exit

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %add.ptr11.i = phi ptr [ %add.ptr.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %add.ptr9.i, %entry.for.body.i_crit_edge ]
  %1 = phi ptr [ %7, %for.cond.backedge.i.for.body.i_crit_edge ], [ %0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr i8, ptr %1, i32 -1124
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.cond.backedge.i_crit_edge

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.end.i:                                         ; preds = %for.body.i
  %tgid.i.i.i = getelementptr i8, ptr %1, i32 172
  %4 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, 1
  br i1 %cmp.i.not.i, label %if.end.i.for.cond.backedge.i_crit_edge, label %if.end4.i

if.end.i.for.cond.backedge.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %add.ptr11.i, i32 noundef 4) #11
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %if.end4.i, %if.end.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %tasks.i = getelementptr inbounds %struct.task_struct, ptr %add.ptr11.i, i32 0, i32 50
  %6 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tasks.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 -1136
  %cmp.not.i = icmp eq ptr %add.ptr.i, @init_task
  br i1 %cmp.not.i, label %for.cond.backedge.i.send_sig_all.exit_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.backedge.i.send_sig_all.exit_crit_edge:  ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %send_sig_all.exit

send_sig_all.exit:                                ; preds = %for.cond.backedge.i.send_sig_all.exit_crit_edge, %entry.send_sig_all.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @console_printk to i32))
  store i32 10, ptr @console_printk, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_thaw(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @emergency_thaw_all() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_thaw_all() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_SAK(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %SAK_work1 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %SAK_work1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_showallcpus(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_showmem(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @show_mem(i32 noundef 0, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_unrt(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @normalize_rt_tasks() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @normalize_rt_tasks() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_showregs(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i.i6 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i6 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @__irq_regs to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @show_regs(ptr noundef nonnull %12) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @perf_event_print_debug() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_print_debug() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_show_timers(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysrq_timer_list_show() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysrq_timer_list_show() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_unraw(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  tail call void @vt_reset_unicode(i32 noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vt_reset_unicode(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_sync(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @emergency_sync() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_sync() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_showstate(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @show_state_filter(i32 noundef 0) #11
  tail call void @show_all_workqueues() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_all_workqueues() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_mountro(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @emergency_remount() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_remount() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_handle_showstate_blocked(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @show_state_filter(i32 noundef 2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_ftrace_dump(i32 noundef %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ftrace_dump(i32 noundef 1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysrq_reset_seq_param_set(ptr noundef %buffer, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !293
  %call.i = call i32 @_kstrtoul(ptr noundef %buffer, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %2)
  %cmp1 = icmp ugt i32 %2, 767
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %2 to i16
  %3 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %5, align 2
  %7 = load i32, ptr @sysrq_reset_seq_version, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @sysrq_reset_seq_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ushort(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysrq_of_get_keyreset_config() unnamed_addr #2 align 64 {
entry:
  %key = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #11
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %key, align 4, !annotation !293
  %call.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.76, ptr noundef null) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sysrq_of_get_keyreset_config.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sysrq_of_get_keyreset_config, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !294

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sysrq_of_get_keyreset_config.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.80) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  store i32 0, ptr @sysrq_reset_seq_len, align 4
  %call7 = tail call ptr @of_find_property(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.81, ptr noundef null) #11
  %call8 = call ptr @of_prop_next_u32(ptr noundef %call7, ptr noundef null, ptr noundef nonnull %key) #11
  %tobool9.not27 = icmp eq ptr %call8, null
  br i1 %tobool9.not27, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %if.end6.for.body_crit_edge
  %p.028 = phi ptr [ %call15, %if.end14.for.body_crit_edge ], [ %call8, %if.end6.for.body_crit_edge ]
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %3 = add i32 %2, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 -767, i32 %3)
  %4 = icmp ult i32 %3, -767
  br i1 %4, label %for.body.for.end_crit_edge, label %lor.lhs.false11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

lor.lhs.false11:                                  ; preds = %for.body
  %5 = load i32, ptr @sysrq_reset_seq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %5)
  %cmp12 = icmp eq i32 %5, 20
  br i1 %cmp12, label %lor.lhs.false11.for.end_crit_edge, label %if.end14

lor.lhs.false11.for.end_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end14:                                         ; preds = %lor.lhs.false11
  %conv = trunc i32 %2 to i16
  %inc = add i32 %5, 1
  store i32 %inc, ptr @sysrq_reset_seq_len, align 4
  %arrayidx = getelementptr [20 x i16], ptr @sysrq_reset_seq, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %arrayidx, align 2
  %call15 = call ptr @of_prop_next_u32(ptr noundef %call7, ptr noundef nonnull %p.028, ptr noundef nonnull %key) #11
  %tobool9.not = icmp eq ptr %call15, null
  br i1 %tobool9.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %lor.lhs.false11.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @sysrq_reset_downtime_ms, i32 noundef 1, i32 noundef 0) #11
  call void @of_node_put(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then5, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sysrq_filter(ptr nocapture noundef readonly %handle, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %reinjecting = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %reinjecting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reinjecting, align 2, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %active.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active.i, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %code, label %sw.default.i [
    i32 56, label %sw.bb1.sw.bb.i_crit_edge
    i32 100, label %sw.bb1.sw.bb.i_crit_edge9
    i32 42, label %sw.bb1.sw.bb11.i_crit_edge
    i32 54, label %sw.bb1.sw.bb11.i_crit_edge10
    i32 99, label %sw.bb25.i
  ]

sw.bb1.sw.bb11.i_crit_edge10:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb1.sw.bb11.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11.i

sw.bb1.sw.bb.i_crit_edge9:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb1.sw.bb.i_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.bb1.sw.bb.i_crit_edge, %sw.bb1.sw.bb.i_crit_edge9
  %8 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %value, label %if.then7.i [
    i32 0, label %if.then.i
    i32 2, label %sw.epilog.thread.i
  ]

if.then.i:                                        ; preds = %sw.bb.i
  br i1 %tobool.not.i, label %if.then.i.if.then60.i.sink.split_crit_edge, label %land.lhs.true.i

if.then.i.if.then60.i.sink.split_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i.sink.split

land.lhs.true.i:                                  ; preds = %if.then.i
  %alt_use.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %alt_use.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alt_use.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %code)
  %cmp.i = icmp eq i32 %10, %code
  br i1 %cmp.i, label %sw.epilog.thread152.thread.i, label %sw.epilog.thread152.i

sw.epilog.thread152.thread.i:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %active.i, align 4
  br label %if.then60.i.sink.split

if.then7.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %alt8.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %alt8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %code, ptr %alt8.i, align 4
  %need_reinject.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %need_reinject.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %need_reinject.i, align 1
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %sw.bb1.sw.bb11.i_crit_edge, %sw.bb1.sw.bb11.i_crit_edge10
  %14 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %value, label %if.then16.i [
    i32 0, label %sw.bb11.i.if.end19.sink.split.i_crit_edge
    i32 2, label %sw.bb11.i.if.end19.i_crit_edge
  ]

sw.bb11.i.if.end19.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

sw.bb11.i.if.end19.sink.split.i_crit_edge:        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.sink.split.i

if.then16.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.then16.i, %sw.bb11.i.if.end19.sink.split.i_crit_edge
  %code.sink.i = phi i32 [ %code, %if.then16.i ], [ %value, %sw.bb11.i.if.end19.sink.split.i_crit_edge ]
  %shift17.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %shift17.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %code.sink.i, ptr %shift17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %sw.bb11.i.if.end19.i_crit_edge
  br i1 %tobool.not.i, label %if.end19.i.sw.epilog.i_crit_edge, label %if.then22.i

if.end19.i.sw.epilog.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %shift23.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %shift23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift23.i, align 4
  %shift_use.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %shift_use.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %shift_use.i, align 4
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp26.i = icmp eq i32 %value, 1
  br i1 %cmp26.i, label %land.lhs.true27.i, label %sw.bb25.i.if.end37.i_crit_edge

sw.bb25.i.if.end37.i_crit_edge:                   ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

land.lhs.true27.i:                                ; preds = %sw.bb25.i
  %alt28.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %alt28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alt28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not.i = icmp eq i32 %20, 0
  br i1 %cmp29.not.i, label %land.lhs.true27.i.if.end37thread-pre-split.i_crit_edge, label %if.then30.i

land.lhs.true27.i.if.end37thread-pre-split.i_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37thread-pre-split.i

if.then30.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %active.i, align 4
  %alt_use33.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %alt_use33.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %alt_use33.i, align 4
  %shift34.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %shift34.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %shift34.i, align 4
  %shift_use35.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %shift_use35.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %shift_use35.i, align 4
  %need_reinject36.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %need_reinject36.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %need_reinject36.i, align 1
  br label %if.end37thread-pre-split.i

if.end37thread-pre-split.i:                       ; preds = %if.then30.i, %land.lhs.true27.i.if.end37thread-pre-split.i_crit_edge
  %27 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr.i = load i8, ptr %active.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end37thread-pre-split.i, %sw.bb25.i.if.end37.i_crit_edge
  %28 = phi i8 [ %.pr.i, %if.end37thread-pre-split.i ], [ %6, %sw.bb25.i.if.end37.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool39.not.i = icmp eq i8 %28, 0
  br i1 %tobool39.not.i, label %if.end37.i.sw.epilog.i_crit_edge, label %if.then40.i

if.end37.i.sw.epilog.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.input_handle, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %key.i = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 27
  tail call void @_clear_bit(i32 noundef 99, ptr noundef %key.i) #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %sw.bb1
  %31 = and i32 %value, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %32, %tobool.not.i
  br i1 %33, label %sw.default.i.sw.epilog.i_crit_edge, label %if.then48.i

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then48.i:                                      ; preds = %sw.default.i
  %arrayidx.i = getelementptr [768 x i8], ptr @sysrq_xlate, i32 0, i32 %code
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %need_reinject49.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %need_reinject49.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %need_reinject49.i, align 1
  %shift_use50.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %shift_use50.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shift_use50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp51.not.i = icmp eq i32 %38, 0
  br i1 %cmp51.not.i, label %if.then48.i.if.end53.i_crit_edge, label %if.then52.i

if.then48.i.if.end53.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %35 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i, align 1
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.not.i.i = icmp eq i8 %41, 0
  %sub.i.i = add i8 %35, -32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %35, i8 %sub.i.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.then48.i.if.end53.i_crit_edge
  %c.0.i = phi i8 [ %spec.select.i.i, %if.then52.i ], [ %35, %if.then48.i.if.end53.i_crit_edge ]
  %conv.i = zext i8 %c.0.i to i32
  tail call void @__handle_sysrq(i32 noundef %conv.i, i1 noundef zeroext true) #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end53.i, %sw.default.i.sw.epilog.i_crit_edge, %if.then40.i, %if.end37.i.sw.epilog.i_crit_edge, %if.then22.i, %if.end19.i.sw.epilog.i_crit_edge, %if.then7.i
  %42 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %active.i, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool56.not.i = icmp eq i8 %43, 0
  br i1 %tobool56.not.i, label %sw.epilog.i.if.then60.i_crit_edge, label %if.else76.i

sw.epilog.i.if.then60.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i

sw.epilog.thread152.i:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %alt.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %alt.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %alt.i, align 4
  br label %land.lhs.true79.i

sw.epilog.thread.i:                               ; preds = %sw.bb.i
  br i1 %tobool.not.i, label %sw.epilog.thread.i.if.then60.i_crit_edge, label %sw.epilog.thread.i.cleanup_crit_edge

sw.epilog.thread.i.cleanup_crit_edge:             ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.thread.i.if.then60.i_crit_edge:         ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then60.i

if.then60.i.sink.split:                           ; preds = %sw.epilog.thread152.thread.i, %if.then.i.if.then60.i.sink.split_crit_edge
  %alt.i8 = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %alt.i8 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %alt.i8, align 4
  br label %if.then60.i

if.then60.i:                                      ; preds = %if.then60.i.sink.split, %sw.epilog.thread.i.if.then60.i_crit_edge, %sw.epilog.i.if.then60.i_crit_edge
  %reset_seq_version.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %reset_seq_version.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reset_seq_version.i, align 4
  %48 = load i32, ptr @sysrq_reset_seq_version, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %48)
  %cmp61.not.i = icmp eq i32 %47, %48
  br i1 %cmp61.not.i, label %if.then60.i.if.end64.i_crit_edge, label %if.then63.i

if.then60.i.if.end64.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i

if.then63.i:                                      ; preds = %if.then60.i
  %reset_seq_cnt.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %reset_seq_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %reset_seq_cnt.i.i, align 4
  %50 = load i32, ptr @sysrq_reset_seq_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp29.not.i.i = icmp eq i32 %50, 0
  br i1 %cmp29.not.i.i, label %if.then63.i.sysrq_parse_reset_sequence.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then63.i.sysrq_parse_reset_sequence.exit.i_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sysrq_parse_reset_sequence.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then63.i
  %reset_keybit.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 12
  %reset_seq_len.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 13
  %key_down.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.030.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i141.i = getelementptr [20 x i16], ptr @sysrq_reset_seq, i32 0, i32 %i.030.i.i
  %51 = ptrtoint ptr %arrayidx.i141.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx.i141.i, align 2
  %53 = add i16 %52, -768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -767, i16 %53)
  %54 = icmp ult i16 %53, -767
  br i1 %54, label %for.body.i.i.sysrq_parse_reset_sequence.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.sysrq_parse_reset_sequence.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sysrq_parse_reset_sequence.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %conv.i142.i = zext i16 %52 to i32
  %rem.i.i.i = and i32 %conv.i142.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.i142.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %reset_keybit.i.i, i32 %div2.i.i.i
  %55 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %56, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %57 = ptrtoint ptr %reset_seq_len.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reset_seq_len.i.i, align 4
  %inc.i.i = add i32 %58, 1
  store i32 %inc.i.i, ptr %reset_seq_len.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %key_down.i.i, i32 %div2.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %61 = and i32 %60, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.then9.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %reset_seq_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reset_seq_cnt.i.i, align 4
  %inc11.i.i = add i32 %63, 1
  store i32 %inc11.i.i, ptr %reset_seq_cnt.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %if.end.i.i.for.inc.i.i_crit_edge
  %inc13.i.i = add nuw i32 %i.030.i.i, 1
  %64 = load i32, ptr @sysrq_reset_seq_len, align 4
  %cmp.i.i = icmp ult i32 %inc13.i.i, %64
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sysrq_parse_reset_sequence.exit.i_crit_edge

for.inc.i.i.sysrq_parse_reset_sequence.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sysrq_parse_reset_sequence.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

sysrq_parse_reset_sequence.exit.i:                ; preds = %for.inc.i.i.sysrq_parse_reset_sequence.exit.i_crit_edge, %for.body.i.i.sysrq_parse_reset_sequence.exit.i_crit_edge, %if.then63.i.sysrq_parse_reset_sequence.exit.i_crit_edge
  %65 = ptrtoint ptr %reset_seq_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reset_seq_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp15.i.i = icmp ne i32 %66, 0
  %reset_canceled.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 10
  %frombool.i.i = zext i1 %cmp15.i.i to i8
  %67 = ptrtoint ptr %reset_canceled.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool.i.i, ptr %reset_canceled.i.i, align 1
  %68 = ptrtoint ptr %reset_seq_version.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %48, ptr %reset_seq_version.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %sysrq_parse_reset_sequence.exit.i, %if.then60.i.if.end64.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool65.not.i = icmp eq i32 %value, 0
  %key_down69.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 2
  br i1 %tobool65.not.i, label %if.else68.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef %code, ptr noundef %key_down69.i) #11
  br label %if.end71.i

if.else68.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef %code, ptr noundef %key_down69.i) #11
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.else68.i, %if.then66.i
  br i1 %tobool.not.i, label %if.end71.i.if.end75.i_crit_edge, label %if.then73.i

if.end71.i.if.end75.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.i

if.then73.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  %reinject_work.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %69 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %69, ptr noundef %reinject_work.i) #11
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then73.i, %if.end71.i.if.end75.i_crit_edge
  %reset_keybit.i143.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 12
  %div3.i.i.i = lshr i32 %code, 5
  %arrayidx.i.i144.i = getelementptr i32, ptr %reset_keybit.i143.i, i32 %div3.i.i.i
  %70 = ptrtoint ptr %arrayidx.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %arrayidx.i.i144.i, align 4
  %and.i.i.i = and i32 %code, 31
  %72 = shl nuw i32 1, %and.i.i.i
  %73 = and i32 %71, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i145.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i145.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end75.i
  br i1 %tobool65.not.i, label %if.then.i.i.cleanup_crit_edge, label %land.lhs.true.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %reset_seq_cnt.i146.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 14
  %74 = ptrtoint ptr %reset_seq_cnt.i146.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %reset_seq_cnt.i146.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool2.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %if.then3.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %reset_canceled.i147.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 10
  %76 = ptrtoint ptr %reset_canceled.i147.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %reset_canceled.i147.i, align 1
  %keyreset_timer.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 16
  %call4.i.i = tail call i32 @del_timer(ptr noundef %keyreset_timer.i.i) #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end75.i
  %77 = zext i32 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %value, label %if.else.i.i.cleanup_crit_edge [
    i32 0, label %if.then5.i.i
    i32 1, label %if.then15.i.i
  ]

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i.i:                                     ; preds = %if.else.i.i
  %keyreset_timer6.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 16
  %call7.i.i = tail call i32 @del_timer(ptr noundef %keyreset_timer6.i.i) #11
  %reset_seq_cnt8.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 14
  %78 = ptrtoint ptr %reset_seq_cnt8.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reset_seq_cnt8.i.i, align 4
  %dec.i.i = add i32 %79, -1
  store i32 %dec.i.i, ptr %reset_seq_cnt8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp9.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.then5.i.i.cleanup_crit_edge

if.then5.i.i.cleanup_crit_edge:                   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %reset_canceled11.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 10
  %80 = ptrtoint ptr %reset_canceled11.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %reset_canceled11.i.i, align 1
  br label %cleanup

if.then15.i.i:                                    ; preds = %if.else.i.i
  %reset_seq_cnt16.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 14
  %81 = ptrtoint ptr %reset_seq_cnt16.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reset_seq_cnt16.i.i, align 4
  %inc.i148.i = add i32 %82, 1
  store i32 %inc.i148.i, ptr %reset_seq_cnt16.i.i, align 4
  %reset_seq_len.i149.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 13
  %83 = ptrtoint ptr %reset_seq_len.i149.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %reset_seq_len.i149.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i148.i, i32 %84)
  %cmp17.i.i = icmp eq i32 %inc.i148.i, %84
  br i1 %cmp17.i.i, label %land.lhs.true18.i.i, label %if.then15.i.i.cleanup_crit_edge

if.then15.i.i.cleanup_crit_edge:                  ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true18.i.i:                              ; preds = %if.then15.i.i
  %reset_canceled19.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 10
  %85 = ptrtoint ptr %reset_canceled19.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reset_canceled19.i.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool20.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %land.lhs.true18.i.i.cleanup_crit_edge

land.lhs.true18.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21.i.i:                                    ; preds = %land.lhs.true18.i.i
  %reset_requested.i.i.i = getelementptr %struct.sysrq_state, ptr %1, i32 0, i32 11
  %87 = ptrtoint ptr %reset_requested.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %reset_requested.i.i.i, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i.i, label %if.then21.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.then21.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__handle_sysrq(i32 noundef 98, i1 noundef zeroext false) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then21.i.i.if.end.i.i.i_crit_edge
  %89 = load i32, ptr @sysrq_reset_downtime_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool1.not.i.i.i = icmp eq i32 %89, 0
  br i1 %tobool1.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %keyreset_timer.i.i.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %call2.i.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %89) #11
  %add.i.i.i = add i32 %call2.i.i.i.i, %90
  %call3.i.i.i = tail call i32 @mod_timer(ptr noundef %keyreset_timer.i.i.i, i32 noundef %add.i.i.i) #11
  br label %cleanup

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %reset_requested.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %reset_requested.i.i.i, align 4
  tail call void @orderly_reboot() #11
  br label %cleanup

if.else76.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp77.i = icmp eq i32 %value, 0
  br i1 %cmp77.i, label %if.else76.i.land.lhs.true79.i_crit_edge, label %if.else76.i.cleanup_crit_edge

if.else76.i.cleanup_crit_edge:                    ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else76.i.land.lhs.true79.i_crit_edge:          ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true79.i

land.lhs.true79.i:                                ; preds = %if.else76.i.land.lhs.true79.i_crit_edge, %sw.epilog.thread152.i
  %key_down80.i = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 2
  %call82.i = tail call i32 @_test_and_clear_bit(i32 noundef %code, ptr noundef %key_down80.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %active = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 7
  %92 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %active, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool2 = icmp ne i8 %93, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %land.lhs.true79.i, %if.else76.i.cleanup_crit_edge, %if.else.i.i.i, %if.then2.i.i.i, %land.lhs.true18.i.i.cleanup_crit_edge, %if.then15.i.i.cleanup_crit_edge, %if.then10.i.i, %if.then5.i.i.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then3.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %sw.epilog.thread.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool2, %sw.default ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.else76.i.cleanup_crit_edge ], [ %tobool83.not.i, %land.lhs.true79.i ], [ true, %sw.epilog.thread.i.cleanup_crit_edge ], [ false, %if.then.i.i.cleanup_crit_edge ], [ false, %land.lhs.true.i.i.cleanup_crit_edge ], [ false, %if.then3.i.i ], [ false, %if.else.i.i.cleanup_crit_edge ], [ false, %if.then5.i.i.cleanup_crit_edge ], [ false, %if.then10.i.i ], [ false, %if.then15.i.i.cleanup_crit_edge ], [ false, %land.lhs.true18.i.i.cleanup_crit_edge ], [ false, %if.then2.i.i.i ], [ false, %if.else.i.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysrq_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 356) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %reinject_work = getelementptr inbounds %struct.sysrq_state, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %reinject_work, i32 noundef 0) #11
  %1 = ptrtoint ptr %reinject_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %reinject_work, align 4
  %lockdep_map = getelementptr inbounds %struct.sysrq_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.83, ptr noundef nonnull @sysrq_connect.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4 = getelementptr inbounds %struct.sysrq_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 8
  %prev.i = getelementptr inbounds %struct.sysrq_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sysrq_state, ptr %call7.i.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sysrq_reinject_alt_sysrq, ptr %func, align 8
  %dev6 = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev6, align 4
  %handler8 = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %handler8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %handler, ptr %handler8, align 8
  %name = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.77, ptr %name, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %call7.i.i, align 8
  %keyreset_timer = getelementptr inbounds %struct.sysrq_state, ptr %call7.i.i, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %keyreset_timer, ptr noundef nonnull @sysrq_do_reset, i32 noundef 0, ptr noundef nonnull @.str.85, ptr noundef nonnull @sysrq_connect.__key.84) #11
  %call15 = tail call i32 @input_register_handle(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %call15) #14
  br label %err_free

if.end22:                                         ; preds = %do.body
  %call24 = tail call i32 @input_open_device(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %do.end29

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %call24) #14
  tail call void @input_unregister_handle(ptr noundef nonnull %call7.i.i) #11
  br label %err_free

err_free:                                         ; preds = %do.end29, %do.end20
  %error.0 = phi i32 [ %call15, %do.end20 ], [ %call24, %do.end29 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_disconnect(ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  tail call void @input_close_device(ptr noundef %handle) #11
  %reinject_work = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %reinject_work) #11
  %keyreset_timer = getelementptr inbounds %struct.sysrq_state, ptr %1, i32 0, i32 16
  %call1 = tail call i32 @del_timer_sync(ptr noundef %keyreset_timer) #11
  tail call void @input_unregister_handle(ptr noundef %handle) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_do_reset(ptr nocapture noundef writeonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_requested = getelementptr i8, ptr %t, i32 -112
  %0 = ptrtoint ptr %reset_requested to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %reset_requested, align 4
  tail call void @orderly_reboot() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @orderly_reboot() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysrq_reinject_alt_sysrq(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %need_reinject = getelementptr i8, ptr %work, i32 157
  %0 = ptrtoint ptr %need_reinject to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %need_reinject, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %alt_use = getelementptr i8, ptr %work, i32 144
  %2 = ptrtoint ptr %alt_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alt_use, align 4
  %reinjecting = getelementptr i8, ptr %work, i32 158
  %4 = ptrtoint ptr %reinjecting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %reinjecting, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !296
  tail call void @arm_heavy_mb() #11
  tail call void @input_inject_event(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %3, i32 noundef 1) #11
  tail call void @input_inject_event(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 99, i32 noundef 1) #11
  tail call void @input_inject_event(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  tail call void @input_inject_event(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 99, i32 noundef 0) #11
  tail call void @input_inject_event(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %3, i32 noundef 0) #11
  tail call void @input_inject_event(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 1) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !297
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %reinjecting to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %reinjecting, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_sysrq_trigger(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1158) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !280) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !298
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf, i32 -1226833921) #11, !srcloc !301
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #11, !srcloc !299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool3.not = icmp eq i32 %asmresult, 0
  br i1 %tobool3.not, label %cleanup.thread, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  %conv5 = and i32 %asmresult1, 255
  tail call void @__handle_sysrq(i32 noundef %conv5, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %cleanup.thread, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %count, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ -14, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !65, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !146, !147, !149, !150, !151, !153, !155, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !219, !220, !221, !223, !225, !227, !229, !230, !232, !233, !234, !235, !237, !239, !240, !241, !242, !243, !245, !247, !249, !251, !253, !254, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !270, !271, !273, !275, !276, !277, !278}
!llvm.named.register.sp = !{!280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__ksymtab_sysrq_mask, !1, !"__ksymtab_sysrq_mask", i1 false, i1 false}
!1 = !{!"../drivers/tty/sysrq.c", i32 78, i32 1}
!2 = !{ptr @__setup_sysrq_always_enabled_setup, !3, !"__setup_sysrq_always_enabled_setup", i1 false, i1 false}
!3 = !{!"../drivers/tty/sysrq.c", i32 98, i32 1}
!4 = !{ptr @__sysrq_reboot_op, !5, !"__sysrq_reboot_op", i1 false, i1 false}
!5 = !{!"../drivers/tty/sysrq.c", i32 177, i32 28}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/sysrq.c", i32 597, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__handle_sysrq._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @__handle_sysrq._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/tty/sysrq.c", i32 601, i32 4}
!14 = !{ptr @__handle_sysrq._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @__handle_sysrq._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/tty/sysrq.c", i32 605, i32 3}
!18 = !{ptr @__handle_sysrq._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @__handle_sysrq._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/sysrq.c", i32 616, i32 5}
!22 = !{ptr @__handle_sysrq._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__handle_sysrq._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/sysrq.c", i32 619, i32 3}
!26 = !{ptr @__handle_sysrq._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @__handle_sysrq._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_handle_sysrq, !29, !"__ksymtab_handle_sysrq", i1 false, i1 false}
!29 = !{!"../drivers/tty/sysrq.c", i32 633, i32 1}
!30 = !{ptr @__param_reset_seq, !31, !"__param_reset_seq", i1 false, i1 false}
!31 = !{!"../drivers/tty/sysrq.c", i32 1078, i32 1}
!32 = !{ptr @__UNIQUE_ID_reset_seqtype301, !31, !"__UNIQUE_ID_reset_seqtype301", i1 false, i1 false}
!33 = !{ptr @__param_sysrq_downtime_ms, !34, !"__param_sysrq_downtime_ms", i1 false, i1 false}
!34 = !{!"../drivers/tty/sysrq.c", i32 1081, i32 1}
!35 = !{ptr @__UNIQUE_ID_sysrq_downtime_mstype302, !34, !"__UNIQUE_ID_sysrq_downtime_mstype302", i1 false, i1 false}
!36 = !{ptr @__ksymtab_sysrq_toggle_support, !37, !"__ksymtab_sysrq_toggle_support", i1 false, i1 false}
!37 = !{!"../drivers/tty/sysrq.c", i32 1110, i32 1}
!38 = !{ptr @__ksymtab_register_sysrq_key, !39, !"__ksymtab_register_sysrq_key", i1 false, i1 false}
!39 = !{!"../drivers/tty/sysrq.c", i32 1140, i32 1}
!40 = !{ptr @__ksymtab_unregister_sysrq_key, !41, !"__ksymtab_unregister_sysrq_key", i1 false, i1 false}
!41 = !{!"../drivers/tty/sysrq.c", i32 1146, i32 1}
!42 = !{ptr @__initcall__kmod_sysrq__303_1195_sysrq_init6, !43, !"__initcall__kmod_sysrq__303_1195_sysrq_init6", i1 false, i1 false}
!43 = !{!"../drivers/tty/sysrq.c", i32 1195, i32 1}
!44 = distinct !{null, !45, !"sysrq_always_enabled", i1 false, i1 false}
!45 = !{!"../drivers/tty/sysrq.c", i32 60, i32 27}
!46 = !{ptr @sysrq_reset_downtime_ms, !47, !"sysrq_reset_downtime_ms", i1 false, i1 false}
!47 = !{!"../drivers/tty/sysrq.c", i32 636, i32 12}
!48 = !{ptr @sysrq_enabled, !49, !"sysrq_enabled", i1 false, i1 false}
!49 = !{!"../drivers/tty/sysrq.c", i32 59, i32 26}
!50 = !{ptr @__setup_str_sysrq_always_enabled_setup, !3, !"__setup_str_sysrq_always_enabled_setup", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/tty/sysrq.c", i32 93, i32 2}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @sysrq_always_enabled_setup._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @sysrq_always_enabled_setup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/sysrq.c", i32 172, i32 14}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/tty/sysrq.c", i32 173, i32 16}
!60 = !{ptr @sysrq_reboot_op, !61, !"sysrq_reboot_op", i1 false, i1 false}
!61 = !{!"../drivers/tty/sysrq.c", i32 170, i32 34}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sysrq_key_table, !67, !"sysrq_key_table", i1 false, i1 false}
!67 = !{!"../drivers/tty/sysrq.c", i32 445, i32 35}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/tty/sysrq.c", i32 112, i32 14}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/tty/sysrq.c", i32 113, i32 16}
!72 = !{ptr @sysrq_loglevel_op, !73, !"sysrq_loglevel_op", i1 false, i1 false}
!73 = !{!"../drivers/tty/sysrq.c", i32 110, i32 34}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/sysrq.c", i32 107, i32 2}
!76 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sysrq_handle_loglevel._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sysrq_handle_loglevel._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/tty/sysrq.c", i32 159, i32 14}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/tty/sysrq.c", i32 160, i32 16}
!83 = !{ptr @sysrq_crash_op, !84, !"sysrq_crash_op", i1 false, i1 false}
!84 = !{!"../drivers/tty/sysrq.c", i32 157, i32 34}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/tty/sysrq.c", i32 155, i32 8}
!87 = !{ptr @.str.29, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/tty/sysrq.c", i32 220, i32 14}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/tty/sysrq.c", i32 221, i32 16}
!91 = !{ptr @sysrq_showlocks_op, !92, !"sysrq_showlocks_op", i1 false, i1 false}
!92 = !{!"../drivers/tty/sysrq.c", i32 218, i32 34}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/tty/sysrq.c", i32 373, i32 14}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/tty/sysrq.c", i32 374, i32 16}
!97 = !{ptr @sysrq_term_op, !98, !"sysrq_term_op", i1 false, i1 false}
!98 = !{!"../drivers/tty/sysrq.c", i32 371, i32 34}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/tty/sysrq.c", i32 403, i32 14}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/sysrq.c", i32 404, i32 16}
!103 = !{ptr @sysrq_moom_op, !104, !"sysrq_moom_op", i1 false, i1 false}
!104 = !{!"../drivers/tty/sysrq.c", i32 401, i32 34}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/sysrq.c", i32 395, i32 8}
!107 = !{ptr @moom_work, !106, !"moom_work", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/tty/sysrq.c", i32 391, i32 3}
!110 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @moom_callback._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @moom_callback._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/sysrq.c", i32 426, i32 14}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/tty/sysrq.c", i32 427, i32 16}
!117 = !{ptr @sysrq_kill_op, !118, !"sysrq_kill_op", i1 false, i1 false}
!118 = !{!"../drivers/tty/sysrq.c", i32 424, i32 34}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/tty/sysrq.c", i32 414, i32 14}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/tty/sysrq.c", i32 415, i32 16}
!123 = !{ptr @sysrq_thaw_op, !124, !"sysrq_thaw_op", i1 false, i1 false}
!124 = !{!"../drivers/tty/sysrq.c", i32 412, i32 34}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/sysrq.c", i32 126, i32 14}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/tty/sysrq.c", i32 127, i32 16}
!129 = !{ptr @sysrq_SAK_op, !130, !"sysrq_SAK_op", i1 false, i1 false}
!130 = !{!"../drivers/tty/sysrq.c", i32 124, i32 34}
!131 = !{ptr @.str.44, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/sysrq.c", i32 273, i32 14}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/tty/sysrq.c", i32 274, i32 16}
!135 = !{ptr @sysrq_showallcpus_op, !136, !"sysrq_showallcpus_op", i1 false, i1 false}
!136 = !{!"../drivers/tty/sysrq.c", i32 271, i32 34}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/sysrq.c", i32 264, i32 4}
!139 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @sysrq_handle_showallcpus._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @sysrq_handle_showallcpus._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/tty/sysrq.c", i32 249, i32 8}
!146 = distinct !{null, !145, !"sysrq_showallcpus", i1 false, i1 false}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/tty/sysrq.c", i32 239, i32 2}
!149 = !{ptr @showacpu._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @showacpu._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = distinct !{null, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tty/sysrq.c", i32 240, i32 25}
!153 = distinct !{null, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/tty/sysrq.c", i32 228, i32 8}
!155 = distinct !{null, !154, !"show_lock", i1 false, i1 false}
!156 = !{ptr @.str.53, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/tty/sysrq.c", i32 342, i32 14}
!158 = !{ptr @.str.54, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/tty/sysrq.c", i32 343, i32 16}
!160 = !{ptr @sysrq_showmem_op, !161, !"sysrq_showmem_op", i1 false, i1 false}
!161 = !{!"../drivers/tty/sysrq.c", i32 340, i32 34}
!162 = !{ptr @.str.55, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/tty/sysrq.c", i32 437, i32 14}
!164 = !{ptr @.str.56, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/tty/sysrq.c", i32 438, i32 16}
!166 = !{ptr @sysrq_unrt_op, !167, !"sysrq_unrt_op", i1 false, i1 false}
!167 = !{!"../drivers/tty/sysrq.c", i32 435, i32 34}
!168 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/tty/sysrq.c", i32 291, i32 14}
!170 = !{ptr @.str.58, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/tty/sysrq.c", i32 292, i32 16}
!172 = !{ptr @sysrq_showregs_op, !173, !"sysrq_showregs_op", i1 false, i1 false}
!173 = !{!"../drivers/tty/sysrq.c", i32 289, i32 34}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/tty/sysrq.c", i32 197, i32 14}
!176 = !{ptr @.str.60, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/tty/sysrq.c", i32 198, i32 16}
!178 = !{ptr @sysrq_show_timers_op, !179, !"sysrq_show_timers_op", i1 false, i1 false}
!179 = !{!"../drivers/tty/sysrq.c", i32 195, i32 34}
!180 = !{ptr @.str.61, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/tty/sysrq.c", i32 142, i32 14}
!182 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/tty/sysrq.c", i32 143, i32 16}
!184 = !{ptr @sysrq_unraw_op, !185, !"sysrq_unraw_op", i1 false, i1 false}
!185 = !{!"../drivers/tty/sysrq.c", i32 140, i32 34}
!186 = !{ptr @.str.63, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/tty/sysrq.c", i32 185, i32 14}
!188 = !{ptr @.str.64, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/tty/sysrq.c", i32 186, i32 16}
!190 = !{ptr @sysrq_sync_op, !191, !"sysrq_sync_op", i1 false, i1 false}
!191 = !{!"../drivers/tty/sysrq.c", i32 183, i32 34}
!192 = !{ptr @.str.65, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/tty/sysrq.c", i32 303, i32 14}
!194 = !{ptr @.str.66, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/tty/sysrq.c", i32 304, i32 16}
!196 = !{ptr @sysrq_showstate_op, !197, !"sysrq_showstate_op", i1 false, i1 false}
!197 = !{!"../drivers/tty/sysrq.c", i32 301, i32 34}
!198 = !{ptr @.str.67, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/tty/sysrq.c", i32 207, i32 14}
!200 = !{ptr @.str.68, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/tty/sysrq.c", i32 208, i32 16}
!202 = !{ptr @sysrq_mountro_op, !203, !"sysrq_mountro_op", i1 false, i1 false}
!203 = !{!"../drivers/tty/sysrq.c", i32 205, i32 34}
!204 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/tty/sysrq.c", i32 314, i32 14}
!206 = !{ptr @.str.70, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/tty/sysrq.c", i32 315, i32 16}
!208 = !{ptr @sysrq_showstate_blocked_op, !209, !"sysrq_showstate_blocked_op", i1 false, i1 false}
!209 = !{!"../drivers/tty/sysrq.c", i32 312, i32 34}
!210 = !{ptr @.str.71, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/tty/sysrq.c", i32 328, i32 14}
!212 = !{ptr @.str.72, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/tty/sysrq.c", i32 329, i32 16}
!214 = !{ptr @sysrq_ftrace_dump_op, !215, !"sysrq_ftrace_dump_op", i1 false, i1 false}
!215 = !{!"../drivers/tty/sysrq.c", i32 326, i32 34}
!216 = distinct !{null, !217, !"__warned", i1 false, i1 false}
!217 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!218 = !{ptr @.str.73, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @__param_str_reset_seq, !31, !"__param_str_reset_seq", i1 false, i1 false}
!220 = !{ptr @__param_arr_reset_seq, !31, !"__param_arr_reset_seq", i1 false, i1 false}
!221 = !{ptr @sysrq_reset_seq_len, !222, !"sysrq_reset_seq_len", i1 false, i1 false}
!222 = !{!"../drivers/tty/sysrq.c", i32 672, i32 21}
!223 = !{ptr @param_ops_sysrq_reset_seq, !224, !"param_ops_sysrq_reset_seq", i1 false, i1 false}
!224 = !{!"../drivers/tty/sysrq.c", i32 1066, i32 38}
!225 = !{ptr @sysrq_reset_seq_version, !226, !"sysrq_reset_seq_version", i1 false, i1 false}
!226 = !{!"../drivers/tty/sysrq.c", i32 673, i32 21}
!227 = !{ptr @sysrq_reset_seq, !228, !"sysrq_reset_seq", i1 false, i1 false}
!228 = !{!"../drivers/tty/sysrq.c", i32 671, i32 23}
!229 = !{ptr @__param_str_sysrq_downtime_ms, !34, !"__param_str_sysrq_downtime_ms", i1 false, i1 false}
!230 = !{ptr @.str.74, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/tty/sysrq.c", i32 1039, i32 3}
!232 = !{ptr @.str.75, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @sysrq_register_handler._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @sysrq_register_handler._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.76, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/tty/sysrq.c", i32 763, i32 28}
!237 = !{ptr @.str.77, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/tty/sysrq.c", i32 765, i32 3}
!239 = !{ptr @.str.78, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.79, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @sysrq_of_get_keyreset_config.__UNIQUE_ID_ddebug300, !238, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!242 = !{ptr @.str.80, !238, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.81, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/tty/sysrq.c", i32 772, i32 2}
!245 = !{ptr @.str.82, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/tty/sysrq.c", i32 781, i32 27}
!247 = !{ptr @sysrq_handler, !248, !"sysrq_handler", i1 false, i1 false}
!248 = !{!"../drivers/tty/sysrq.c", i32 1023, i32 29}
!249 = !{ptr @sysrq_xlate, !250, !"sysrq_xlate", i1 false, i1 false}
!250 = !{!"../drivers/tty/sysrq.c", i32 639, i32 28}
!251 = !{ptr @sysrq_connect.__key, !252, !"__key", i1 false, i1 false}
!252 = !{!"../drivers/tty/sysrq.c", i32 967, i32 2}
!253 = !{ptr @.str.83, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @sysrq_connect.__key.84, !255, !"__key", i1 false, i1 false}
!255 = !{!"../drivers/tty/sysrq.c", i32 973, i32 2}
!256 = !{ptr @.str.85, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.86, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/tty/sysrq.c", i32 977, i32 3}
!259 = !{ptr @.str.87, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @sysrq_connect._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @sysrq_connect._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.89, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/tty/sysrq.c", i32 984, i32 3}
!264 = !{ptr @sysrq_connect._entry.88, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @sysrq_connect._entry_ptr.90, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @sysrq_ids, !267, !"sysrq_ids", i1 false, i1 false}
!267 = !{!"../drivers/tty/sysrq.c", i32 1013, i32 37}
!268 = !{ptr @.str.92, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/tty/sysrq.c", i32 443, i32 8}
!270 = !{ptr @sysrq_key_table_lock, !269, !"sysrq_key_table_lock", i1 false, i1 false}
!271 = !{ptr @.str.93, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/tty/sysrq.c", i32 1173, i32 19}
!273 = !{ptr @.str.94, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/tty/sysrq.c", i32 1175, i32 3}
!275 = !{ptr @.str.95, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @sysrq_init_procfs._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @sysrq_init_procfs._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @sysrq_trigger_proc_ops, !279, !"sysrq_trigger_proc_ops", i1 false, i1 false}
!279 = !{!"../drivers/tty/sysrq.c", i32 1166, i32 30}
!280 = !{!"sp"}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 2149211305}
!291 = !{i64 2149211571}
!292 = !{i64 806769}
!293 = !{!"auto-init"}
!294 = !{i64 2148808254, i64 2148808259, i64 2148808272, i64 2148808316, i64 2148808350, i64 2148808371}
!295 = !{i8 0, i8 2}
!296 = !{i64 2155980235}
!297 = !{i64 2155980418}
!298 = !{i64 3073832}
!299 = !{i64 3074029}
!300 = !{i64 2150559262}
!301 = !{i64 2156007677, i64 2156007957, i64 2156008291, i64 2156008625}
