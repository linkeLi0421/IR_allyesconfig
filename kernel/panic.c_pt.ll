; ModuleID = '/llk/IR_all_yes/kernel/panic.c_pt.bc'
source_filename = "../kernel/panic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+panic_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_panic_timeout\09\09\09\09"
module asm "\09.long\09__crc_panic_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22panic_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_panic_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+panic_notifier_list\22, \22a\22\09"
module asm "\09.weak\09__crc_panic_notifier_list\09\09\09\09"
module asm "\09.long\09__crc_panic_notifier_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic_notifier_list:\09\09\09\09\09"
module asm "\09.asciz \09\22panic_notifier_list\22\09\09\09\09\09"
module asm "__kstrtabns_panic_notifier_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+panic_blink\22, \22a\22\09"
module asm "\09.weak\09__crc_panic_blink\09\09\09\09"
module asm "\09.long\09__crc_panic_blink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22panic_blink\22\09\09\09\09\09"
module asm "__kstrtabns_panic_blink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nmi_panic\22, \22a\22\09"
module asm "\09.weak\09__crc_nmi_panic\09\09\09\09"
module asm "\09.long\09__crc_nmi_panic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nmi_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22nmi_panic\22\09\09\09\09\09"
module asm "__kstrtabns_nmi_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+panic\22, \22a\22\09"
module asm "\09.weak\09__crc_panic\09\09\09\09"
module asm "\09.long\09__crc_panic\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22panic\22\09\09\09\09\09"
module asm "__kstrtabns_panic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+test_taint\22, \22a\22\09"
module asm "\09.weak\09__crc_test_taint\09\09\09\09"
module asm "\09.long\09__crc_test_taint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_test_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22test_taint\22\09\09\09\09\09"
module asm "__kstrtabns_test_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_taint\22, \22a\22\09"
module asm "\09.weak\09__crc_add_taint\09\09\09\09"
module asm "\09.long\09__crc_add_taint\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22add_taint\22\09\09\09\09\09"
module asm "__kstrtabns_add_taint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+warn_slowpath_fmt\22, \22a\22\09"
module asm "\09.weak\09__crc_warn_slowpath_fmt\09\09\09\09"
module asm "\09.long\09__crc_warn_slowpath_fmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_warn_slowpath_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22warn_slowpath_fmt\22\09\09\09\09\09"
module asm "__kstrtabns_warn_slowpath_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__stack_chk_fail\22, \22a\22\09"
module asm "\09.weak\09__crc___stack_chk_fail\09\09\09\09"
module asm "\09.long\09__crc___stack_chk_fail\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___stack_chk_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22__stack_chk_fail\22\09\09\09\09\09"
module asm "__kstrtabns___stack_chk_fail:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.taint_flag = type { i8, i8, i8 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.69, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.warn_args = type { ptr, %struct.__va_list }

@panic_on_oops = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@panic_on_taint_nousertaint = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@panic_timeout = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_panic_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_panic_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic_timeout to i32), ptr @__kstrtab_panic_timeout, ptr @__kstrtabns_panic_timeout }, section "___ksymtab_gpl+panic_timeout", align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"panic_notifier_list.lock\00", [39 x i8] zeroinitializer }, align 32
@panic_notifier_list = dso_local global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_panic_notifier_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic_notifier_list = external dso_local constant [0 x i8], align 1
@__ksymtab_panic_notifier_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic_notifier_list to i32), ptr @__kstrtab_panic_notifier_list, ptr @__kstrtabns_panic_notifier_list }, section "___ksymtab+panic_notifier_list", align 4
@panic_blink = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_panic_blink = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic_blink = external dso_local constant [0 x i8], align 1
@__ksymtab_panic_blink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic_blink to i32), ptr @__kstrtab_panic_blink, ptr @__kstrtabns_panic_blink }, section "___ksymtab+panic_blink", align 4
@crash_smp_send_stop.cpus_stopped = internal global { i1, [31 x i8] } zeroinitializer, align 32
@panic_cpu = dso_local global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_nmi_panic = external dso_local constant [0 x i8], align 1
@__kstrtabns_nmi_panic = external dso_local constant [0 x i8], align 1
@__ksymtab_nmi_panic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nmi_panic to i32), ptr @__kstrtab_nmi_panic, ptr @__kstrtabns_nmi_panic }, section "___ksymtab+nmi_panic", align 4
@panic.buf = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@crash_kexec_post_notifiers = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@panic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\010Kernel panic - not syncing: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kernel/panic.c\00", [17 x i8] zeroinitializer }, align 32
@panic._entry_ptr = internal global ptr @panic._entry, section ".printk_index", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@panic._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\010Rebooting in %d seconds..\0A\00", [35 x i8] zeroinitializer }, align 32
@panic._entry_ptr.7 = internal global ptr @panic._entry.5, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@panic_reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@panic._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\010---[ end Kernel panic - not syncing: %s ]---\0A\00", [48 x i8] zeroinitializer }, align 32
@panic._entry_ptr.10 = internal global ptr @panic._entry.8, section ".printk_index", align 4
@suppress_printk = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_panic = external dso_local constant [0 x i8], align 1
@__kstrtabns_panic = external dso_local constant [0 x i8], align 1
@__ksymtab_panic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @panic to i32), ptr @__kstrtab_panic, ptr @__kstrtabns_panic }, section "___ksymtab+panic", align 4
@taint_flags = dso_local constant { [18 x %struct.taint_flag], [42 x i8] } { [18 x %struct.taint_flag] [%struct.taint_flag { i8 80, i8 71, i8 1 }, %struct.taint_flag { i8 70, i8 32, i8 1 }, %struct.taint_flag { i8 83, i8 32, i8 0 }, %struct.taint_flag { i8 82, i8 32, i8 0 }, %struct.taint_flag { i8 77, i8 32, i8 0 }, %struct.taint_flag { i8 66, i8 32, i8 0 }, %struct.taint_flag { i8 85, i8 32, i8 0 }, %struct.taint_flag { i8 68, i8 32, i8 0 }, %struct.taint_flag { i8 65, i8 32, i8 0 }, %struct.taint_flag { i8 87, i8 32, i8 0 }, %struct.taint_flag { i8 67, i8 32, i8 1 }, %struct.taint_flag { i8 73, i8 32, i8 0 }, %struct.taint_flag { i8 79, i8 32, i8 1 }, %struct.taint_flag { i8 69, i8 32, i8 1 }, %struct.taint_flag { i8 76, i8 32, i8 0 }, %struct.taint_flag { i8 75, i8 32, i8 1 }, %struct.taint_flag { i8 88, i8 32, i8 1 }, %struct.taint_flag { i8 84, i8 32, i8 1 }], [42 x i8] zeroinitializer }, align 32
@print_tainted.buf = internal global { [28 x i8], [36 x i8] } zeroinitializer, align 32
@tainted_mask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Tainted: \00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Not tainted\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_test_taint = external dso_local constant [0 x i8], align 1
@__kstrtabns_test_taint = external dso_local constant [0 x i8], align 1
@__ksymtab_test_taint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @test_taint to i32), ptr @__kstrtab_test_taint, ptr @__kstrtabns_test_taint }, section "___ksymtab+test_taint", align 4
@add_taint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Disabling lock debugging due to kernel taint\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"add_taint\00", [22 x i8] zeroinitializer }, align 32
@add_taint._entry_ptr = internal global ptr @add_taint._entry, section ".printk_index", align 4
@panic_on_taint = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panic_on_taint set ...\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_add_taint = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_taint = external dso_local constant [0 x i8], align 1
@__ksymtab_add_taint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_taint to i32), ptr @__kstrtab_add_taint, ptr @__kstrtabns_add_taint }, section "___ksymtab+add_taint", align 4
@pause_on_oops_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sysctl_oops_all_cpu_backtrace = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__warn._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 566, ptr null, ptr null }, align 1
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014WARNING: CPU: %d PID: %d at %s:%d %pS\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"__warn\00", [25 x i8] zeroinitializer }, align 32
@__warn._entry_ptr = internal global ptr @__warn._entry, section ".printk_index", align 4
@__warn._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 569, ptr null, ptr null }, align 1
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014WARNING: CPU: %d PID: %d at %pS\0A\00", [61 x i8] zeroinitializer }, align 32
@__warn._entry_ptr.20 = internal global ptr @__warn._entry.18, section ".printk_index", align 4
@panic_on_warn = dso_local global i32 0, section ".data..read_mostly", align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panic_on_warn set ...\0A\00", [41 x i8] zeroinitializer }, align 32
@warn_slowpath_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014------------[ cut here ]------------\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"warn_slowpath_fmt\00", [46 x i8] zeroinitializer }, align 32
@warn_slowpath_fmt._entry_ptr = internal global ptr @warn_slowpath_fmt._entry, section ".printk_index", align 4
@__kstrtab_warn_slowpath_fmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_warn_slowpath_fmt = external dso_local constant [0 x i8], align 1
@__ksymtab_warn_slowpath_fmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @warn_slowpath_fmt to i32), ptr @__kstrtab_warn_slowpath_fmt, ptr @__kstrtabns_warn_slowpath_fmt }, section "___ksymtab+warn_slowpath_fmt", align 4
@__initcall__kmod_panic__251_658_register_warn_debugfs6 = internal global ptr @register_warn_debugfs, section ".initcall6.init", align 4
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"stack-protector: Kernel stack is corrupted in: %pB\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab___stack_chk_fail = external dso_local constant [0 x i8], align 1
@__kstrtabns___stack_chk_fail = external dso_local constant [0 x i8], align 1
@__ksymtab___stack_chk_fail = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__stack_chk_fail to i32), ptr @__kstrtab___stack_chk_fail, ptr @__kstrtabns___stack_chk_fail }, section "___ksymtab+__stack_chk_fail", align 4
@__param_str_panic = internal constant [6 x i8] c"panic\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_panic = internal constant %struct.kernel_param { ptr @__param_str_panic, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.17 { ptr @panic_timeout } }, section "__param", align 4
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@panic_print = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_panic_print = internal constant %struct.kernel_param { ptr @___asan_gen_.149, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.17 { ptr @panic_print } }, section "__param", align 4
@pause_on_oops = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pause_on_oops = internal constant %struct.kernel_param { ptr @___asan_gen_.152, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.17 { ptr @pause_on_oops } }, section "__param", align 4
@__param_str_panic_on_warn = internal constant [14 x i8] c"panic_on_warn\00", align 1
@__param_panic_on_warn = internal constant %struct.kernel_param { ptr @__param_str_panic_on_warn, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.17 { ptr @panic_on_warn } }, section "__param", align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_crash_kexec_post_notifiers = internal constant %struct.kernel_param { ptr @___asan_gen_.67, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.17 { ptr @crash_kexec_post_notifiers } }, section "__param", align 4
@__setup_str_oops_setup = internal constant [5 x i8] c"oops\00", section ".init.rodata", align 1
@__setup_oops_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_oops_setup, ptr @oops_setup, i32 1 }, section ".init.setup", align 4
@__setup_str_panic_on_taint_setup = internal constant [15 x i8] c"panic_on_taint\00", section ".init.rodata", align 1
@__setup_panic_on_taint_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_panic_on_taint_setup, ptr @panic_on_taint_setup, i32 1 }, section ".init.setup", align 4
@debug_locks = external dso_local global i32, section ".data..read_mostly", align 4
@do_oops_enter_exit.spin_counter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pause_on_oops_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pause_on_oops_lock\00", [45 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@print_oops_end_marker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014---[ end trace %016llx ]---\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"print_oops_end_marker\00", [42 x i8] zeroinitializer }, align 32
@print_oops_end_marker._entry_ptr = internal global ptr @print_oops_end_marker._entry, section ".printk_index", align 4
@__tracepoint_error_report_end = external dso_local global %struct.tracepoint, align 4
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/trace/events/error_report.h\00", [60 x i8] zeroinitializer }, align 32
@trace_error_report_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clear_warn_once\00", [16 x i8] zeroinitializer }, align 32
@clear_warn_once_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @clear_warn_once_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@__start_once = external dso_local global [0 x i8], align 1
@__end_once = external dso_local global [0 x i8], align 1
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nousertaint\00", [20 x i8] zeroinitializer }, align 32
@panic_on_taint_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016panic_on_taint: bitmask=0x%lx nousertaint_mode=%sabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panic_on_taint_setup\00", [43 x i8] zeroinitializer }, align 32
@panic_on_taint_setup._entry_ptr = internal global ptr @panic_on_taint_setup._entry, section ".printk_index", align 4
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"panic_on_oops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 49, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [27 x i8] c"panic_on_taint_nousertaint\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 58, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"panic_timeout\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 60, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"panic_notifier_list\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 71, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"panic_blink\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 81, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant [33 x i8] c"crash_smp_send_stop.cpus_stopped\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"panic_cpu\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 128, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 144, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 181, i32 14 }
@___asan_gen_.67 = private constant [27 x i8] c"crash_kexec_post_notifiers\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 55, i32 6 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 227, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 315, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 348, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"taint_flags\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 369, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 400, i32 14 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"tainted_mask\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 50, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 408, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 416, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 443, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [15 x i8] c"panic_on_taint\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 57, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 449, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"pause_on_oops_flag\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 564, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 568, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 587, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 608, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 670, i32 8 }
@___asan_gen_.149 = private constant [12 x i8] c"panic_print\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 69, i32 15 }
@___asan_gen_.152 = private constant [14 x i8] c"pause_on_oops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 52, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"spin_counter\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 471, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"pause_on_oops_lock\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 54, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 539, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [39 x i8] c"../include/trace/events/error_report.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 69, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 108, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 653, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant [21 x i8] c"clear_warn_once_fops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 647, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 701, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 711, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [18 x i8] c"../kernel/panic.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 714, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__initcall__kmod_panic__251_658_register_warn_debugfs6, ptr @__ksymtab___stack_chk_fail, ptr @__ksymtab_add_taint, ptr @__ksymtab_nmi_panic, ptr @__ksymtab_panic, ptr @__ksymtab_panic_blink, ptr @__ksymtab_panic_notifier_list, ptr @__ksymtab_panic_timeout, ptr @__ksymtab_test_taint, ptr @__ksymtab_warn_slowpath_fmt, ptr @__param_crash_kexec_post_notifiers, ptr @__param_panic, ptr @__param_panic_on_warn, ptr @__param_panic_print, ptr @__param_pause_on_oops, ptr @__setup_oops_setup, ptr @__setup_panic_on_taint_setup, ptr @__warn._entry, ptr @__warn._entry.18, ptr @__warn._entry_ptr, ptr @__warn._entry_ptr.20, ptr @add_taint._entry, ptr @add_taint._entry_ptr, ptr @panic._entry, ptr @panic._entry.5, ptr @panic._entry.8, ptr @panic._entry_ptr, ptr @panic._entry_ptr.10, ptr @panic._entry_ptr.7, ptr @panic_on_taint_setup._entry, ptr @panic_on_taint_setup._entry_ptr, ptr @print_oops_end_marker._entry, ptr @print_oops_end_marker._entry_ptr, ptr @warn_slowpath_fmt._entry, ptr @warn_slowpath_fmt._entry_ptr, ptr @panic_on_oops, ptr @panic_on_taint_nousertaint, ptr @panic_timeout, ptr @.str, ptr @panic_notifier_list, ptr @panic_blink, ptr @crash_smp_send_stop.cpus_stopped, ptr @panic_cpu, ptr @.str.1, ptr @panic.buf, ptr @crash_kexec_post_notifiers, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @taint_flags, ptr @print_tainted.buf, ptr @tainted_mask, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @panic_on_taint, ptr @.str.15, ptr @pause_on_oops_flag, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @panic_print, ptr @pause_on_oops, ptr @do_oops_enter_exit.spin_counter, ptr @pause_on_oops_lock, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @clear_warn_once_fops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_on_oops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_on_taint_nousertaint to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_notifier_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_blink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_smp_send_stop.cpus_stopped to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic.buf to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_kexec_post_notifiers to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @taint_flags to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_tainted.buf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tainted_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_taint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_on_taint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pause_on_oops_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_slowpath_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_print to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pause_on_oops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_oops_enter_exit.spin_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pause_on_oops_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_oops_end_marker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_warn_once_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panic_on_taint_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @panic_smp_self_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.body, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !167
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !168
  br label %while.body
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @nmi_panic_self_stop(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @panic_smp_self_stop()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @crash_smp_send_stop() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br i1 %.b, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @smp_send_stop() #18
  store i1 true, ptr @crash_smp_send_stop.cpus_stopped, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nmi_panic(ptr noundef %regs, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_cpu, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr nonnull @panic_cpu, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_cpu, ptr nonnull @panic_cpu, i32 -1, i32 %3, ptr nonnull elementtype(i32) @panic_cpu) #18, !srcloc !170
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef %msg) #21
  unreachable

if.else:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i, i32 %3)
  %cmp3.not = icmp eq i32 %asmresult3.i.i.i, %3
  br i1 %cmp3.not, label %if.else.if.end5_crit_edge, label %if.then4

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @nmi_panic_self_stop(ptr noundef %regs)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @panic(ptr noundef %fmt, ...) #3 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !172
  %1 = load i8, ptr @crash_kexec_post_notifiers, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !174
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #18, !srcloc !175
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !176
  %7 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_cpu, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !169
  tail call void @llvm.prefetch.p0(ptr nonnull @panic_cpu, i32 1, i32 3, i32 1) #18
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_cpu, ptr nonnull @panic_cpu, i32 -1, i32 %10, ptr nonnull elementtype(i32) @panic_cpu) #18, !srcloc !170
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult3.i.i.i)
  %cmp.not = icmp eq i32 %asmresult3.i.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i, i32 %10)
  %cmp9.not = icmp eq i32 %asmresult3.i.i.i, %10
  %or.cond = or i1 %cmp.not, %cmp9.not
  br i1 %or.cond, label %atomic_cmpxchg.exit.if.end11_crit_edge, label %if.then10

atomic_cmpxchg.exit.if.end11_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then10:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @panic_smp_self_stop()
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %atomic_cmpxchg.exit.if.end11_crit_edge
  tail call void @console_verbose() #18
  tail call void @bust_spinlocks(i32 noundef 1) #18
  call void @llvm.va_start(ptr nonnull %args)
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call12 = call i32 @vscnprintf(ptr noundef nonnull @panic.buf, i32 noundef 1024, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #18
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.do.end23_crit_edge, label %land.lhs.true14

if.end11.do.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

land.lhs.true14:                                  ; preds = %if.end11
  %sub = add i32 %call12, -1
  %arrayidx = getelementptr [1024 x i8], ptr @panic.buf, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp15 = icmp eq i8 %14, 10
  br i1 %cmp15, label %if.then17, label %land.lhs.true14.do.end23_crit_edge

land.lhs.true14.do.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx, align 1
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %land.lhs.true14.do.end23_crit_edge, %if.end11.do.end23_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @panic.buf) #22
  %16 = load volatile i32, ptr @tainted_mask, align 4
  %17 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %do.end23.if.end31_crit_edge

do.end23.if.end31_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

land.lhs.true27:                                  ; preds = %do.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %18 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp28 = icmp slt i32 %18, 2
  br i1 %cmp28, label %if.then30, label %land.lhs.true27.if.end31_crit_edge

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #20
  call void @dump_stack() #22
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true27.if.end31_crit_edge, %do.end23.if.end31_crit_edge
  call void @kgdb_panic(ptr noundef nonnull @panic.buf) #18
  br i1 %tobool.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  call void @__crash_kexec(ptr noundef null) #18
  call void @smp_send_stop() #18
  %call35.c111 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @panic_notifier_list, i32 noundef 0, ptr noundef nonnull @panic.buf) #18
  call void @kmsg_dump(i32 noundef 1) #18
  br label %if.end38

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  call void @crash_smp_send_stop()
  %call35.c = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @panic_notifier_list, i32 noundef 0, ptr noundef nonnull @panic.buf) #18
  call void @kmsg_dump(i32 noundef 1) #18
  call void @__crash_kexec(ptr noundef null) #18
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33
  call void @unblank_screen() #18
  call void @console_unblank() #18
  %call39 = call i32 @debug_locks_off() #18
  call void @console_flush_on_panic(i32 noundef 0) #18
  %19 = load i32, ptr @panic_print, align 4
  %and.i112 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.not.i = icmp eq i32 %and.i112, 0
  br i1 %tobool.not.i, label %if.end38.if.end.i_crit_edge, label %if.then.i

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  call void @console_flush_on_panic(i32 noundef 1) #18
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end38.if.end.i_crit_edge
  %20 = load i32, ptr @panic_print, align 4
  %and1.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @show_state_filter(i32 noundef 0) #18
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %21 = load i32, ptr @panic_print, align 4
  %and5.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end8.i_crit_edge, label %if.then7.i

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @show_mem(i32 noundef 0, ptr noundef null) #18
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end4.i.if.end8.i_crit_edge
  %22 = load i32, ptr @panic_print, align 4
  %and9.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end12.i_crit_edge, label %if.then11.i

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @sysrq_timer_list_show() #18
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end12.i_crit_edge
  %23 = load i32, ptr @panic_print, align 4
  %and13.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then15.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @debug_show_all_locks() #18
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %if.end12.i.if.end16.i_crit_edge
  %24 = load i32, ptr @panic_print, align 4
  %and17.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.panic_print_sys_info.exit_crit_edge, label %if.then19.i

if.end16.i.panic_print_sys_info.exit_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %panic_print_sys_info.exit

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @ftrace_dump(i32 noundef 1) #18
  br label %panic_print_sys_info.exit

panic_print_sys_info.exit:                        ; preds = %if.then19.i, %if.end16.i.panic_print_sys_info.exit_crit_edge
  %25 = load ptr, ptr @panic_blink, align 4
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %if.then41, label %panic_print_sys_info.exit.if.end42_crit_edge

panic_print_sys_info.exit.if.end42_crit_edge:     ; preds = %panic_print_sys_info.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.then41:                                        ; preds = %panic_print_sys_info.exit
  call void @__sanitizer_cov_trace_pc() #20
  store ptr @no_blink, ptr @panic_blink, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %panic_print_sys_info.exit.if.end42_crit_edge
  %26 = load i32, ptr @panic_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp43 = icmp sgt i32 %26, 0
  br i1 %cmp43, label %do.end48, label %if.end42.if.end61_crit_edge

if.end42.if.end61_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end61

do.end48:                                         ; preds = %if.end42
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %26) #22
  %27 = load i32, ptr @panic_timeout, align 4
  %mul115 = mul i32 %27, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul115)
  %cmp51116 = icmp sgt i32 %mul115, 0
  br i1 %cmp51116, label %do.end48.for.body_crit_edge, label %do.end48.if.end61_crit_edge

do.end48.if.end61_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end61

do.end48.for.body_crit_edge:                      ; preds = %do.end48
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %do.end48.for.body_crit_edge
  %i.0119 = phi i32 [ %add60, %while.end.for.body_crit_edge ], [ 0, %do.end48.for.body_crit_edge ]
  %i_next.0118 = phi i32 [ %i_next.1, %while.end.for.body_crit_edge ], [ 0, %do.end48.for.body_crit_edge ]
  %state.0117 = phi i32 [ %state.1, %while.end.for.body_crit_edge ], [ 0, %do.end48.for.body_crit_edge ]
  call void @touch_softlockup_watchdog() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0119, i32 %i_next.0118)
  %cmp53.not = icmp slt i32 %i.0119, %i_next.0118
  br i1 %cmp53.not, label %for.body.if.end58_crit_edge, label %if.then55

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end58

if.then55:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %28 = load ptr, ptr @panic_blink, align 4
  %xor = xor i32 %state.0117, 1
  %call56 = call i32 %28(i32 noundef %xor) #18
  %add = add i32 %call56, %i.0119
  %add57 = add i32 %add, 200
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %for.body.if.end58_crit_edge
  %state.1 = phi i32 [ %xor, %if.then55 ], [ %state.0117, %for.body.if.end58_crit_edge ]
  %i_next.1 = phi i32 [ %add57, %if.then55 ], [ %i_next.0118, %for.body.if.end58_crit_edge ]
  %i.1 = phi i32 [ %add, %if.then55 ], [ %i.0119, %for.body.if.end58_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end58
  %__ms.0114 = phi i32 [ 100, %if.end58 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0114, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #18
  %tobool59.not = icmp eq i32 %dec, 0
  br i1 %tobool59.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %while.body
  %add60 = add i32 %i.1, 100
  %30 = load i32, ptr @panic_timeout, align 4
  %mul = mul i32 %30, 1000
  %cmp51 = icmp slt i32 %add60, %mul
  br i1 %cmp51, label %while.end.for.body_crit_edge, label %while.end.if.end61_crit_edge

while.end.if.end61_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end61

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end61:                                         ; preds = %while.end.if.end61_crit_edge, %do.end48.if.end61_crit_edge, %if.end42.if.end61_crit_edge
  %31 = phi i32 [ %26, %if.end42.if.end61_crit_edge ], [ %27, %do.end48.if.end61_crit_edge ], [ %30, %while.end.if.end61_crit_edge ]
  %state.2 = phi i32 [ 0, %if.end42.if.end61_crit_edge ], [ 0, %do.end48.if.end61_crit_edge ], [ %state.1, %while.end.if.end61_crit_edge ]
  %i_next.2 = phi i32 [ 0, %if.end42.if.end61_crit_edge ], [ 0, %do.end48.if.end61_crit_edge ], [ %i_next.1, %while.end.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp62.not = icmp eq i32 %31, 0
  br i1 %cmp62.not, label %if.end61.do.end72_crit_edge, label %if.then64

if.end61.do.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end72

if.then64:                                        ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @panic_reboot_mode to i32))
  %32 = load i32, ptr @panic_reboot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp65.not = icmp eq i32 %32, -1
  br i1 %cmp65.not, label %if.then64.if.end68_crit_edge, label %if.then67

if.then64.if.end68_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @reboot_mode to i32))
  store i32 %32, ptr @reboot_mode, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then64.if.end68_crit_edge
  call void @emergency_restart() #18
  br label %do.end72

do.end72:                                         ; preds = %if.end68, %if.end61.do.end72_crit_edge
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @panic.buf) #22
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @suppress_printk to i32))
  store i32 1, ptr @suppress_printk, align 4
  call void @trace_hardirqs_on() #18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !177
  br label %for.cond78

for.cond78:                                       ; preds = %while.end92, %do.end72
  %state.3 = phi i32 [ %state.2, %do.end72 ], [ %state.4, %while.end92 ]
  %i_next.3 = phi i32 [ %i_next.2, %do.end72 ], [ %i_next.4, %while.end92 ]
  %i.2 = phi i32 [ 0, %do.end72 ], [ %add94, %while.end92 ]
  call void @touch_softlockup_watchdog() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %i_next.3)
  %cmp79.not = icmp slt i32 %i.2, %i_next.3
  br i1 %cmp79.not, label %for.cond78.if.end86_crit_edge, label %if.then81

for.cond78.if.end86_crit_edge:                    ; preds = %for.cond78
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end86

if.then81:                                        ; preds = %for.cond78
  call void @__sanitizer_cov_trace_pc() #20
  %33 = load ptr, ptr @panic_blink, align 4
  %xor82 = xor i32 %state.3, 1
  %call83 = call i32 %33(i32 noundef %xor82) #18
  %add84 = add i32 %call83, %i.2
  %add85 = add i32 %add84, 200
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %for.cond78.if.end86_crit_edge
  %state.4 = phi i32 [ %xor82, %if.then81 ], [ %state.3, %for.cond78.if.end86_crit_edge ]
  %i_next.4 = phi i32 [ %add85, %if.then81 ], [ %i_next.3, %for.cond78.if.end86_crit_edge ]
  %i.3 = phi i32 [ %add84, %if.then81 ], [ %i.2, %for.cond78.if.end86_crit_edge ]
  br label %while.body91

while.body91:                                     ; preds = %while.body91.while.body91_crit_edge, %if.end86
  %__ms87.0122 = phi i32 [ 100, %if.end86 ], [ %dec89, %while.body91.while.body91_crit_edge ]
  %dec89 = add nsw i32 %__ms87.0122, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #18
  %tobool90.not = icmp eq i32 %dec89, 0
  br i1 %tobool90.not, label %while.end92, label %while.body91.while.body91_crit_edge

while.body91.while.body91_crit_edge:              ; preds = %while.body91
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body91

while.end92:                                      ; preds = %while.body91
  call void @__sanitizer_cov_trace_pc() #20
  %add94 = add i32 %i.3, 100
  br label %for.cond78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_verbose() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bust_spinlocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @test_taint(i32 noundef %flag) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %flag, 5
  %arrayidx.i = getelementptr i32, ptr @tainted_mask, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %flag, 31
  %shr.i = lshr i32 %1, %and.i
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_panic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__crash_kexec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unblank_screen() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unblank() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_flush_on_panic(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @no_blink(i32 noundef %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @emergency_restart() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @print_tainted() local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tainted_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = call ptr @memcpy(ptr @print_tainted.buf, ptr @.str.11, i32 10)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.013 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %s.012 = phi ptr [ getelementptr inbounds ([28 x i8], ptr @print_tainted.buf, i32 0, i32 9), %if.then ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %div3.i = lshr i32 %i.013, 5
  %arrayidx.i = getelementptr i32, ptr @tainted_mask, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %4 = shl nuw i32 1, %i.013
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %arrayidx = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %i.013
  %c_false = getelementptr [18 x %struct.taint_flag], ptr @taint_flags, i32 0, i32 %i.013, i32 1
  %cond.in.in = select i1 %tobool2.not, ptr %c_false, ptr %arrayidx
  %6 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %cond.in11 = load i8, ptr %cond.in.in, align 1
  %incdec.ptr = getelementptr i8, ptr %s.012, i32 1
  %7 = ptrtoint ptr %s.012 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cond.in11, ptr %s.012, align 1
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %incdec.ptr, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %9 = call ptr @memcpy(ptr @print_tainted.buf, ptr @.str.12, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret ptr @print_tainted.buf
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_taint() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tainted_mask, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_taint(i32 noundef %flag, i32 noundef %lockdep_ok) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lockdep_ok)
  %cmp = icmp eq i32 %lockdep_ok, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @debug_locks, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !178
  tail call void @llvm.prefetch.p0(ptr nonnull @debug_locks, i32 1, i32 3, i32 1) #18
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @debug_locks) #18, !srcloc !179
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_set_bit(i32 noundef %flag, ptr noundef nonnull @tainted_mask) #18
  %1 = load i32, ptr @tainted_mask, align 4
  %2 = load i32, ptr @panic_on_taint, align 4
  %and = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  store i32 0, ptr @panic_on_taint, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #21
  unreachable

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @oops_may_print() local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @pause_on_oops_flag, align 4
  %cmp = xor i1 %.b, true
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oops_enter() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tracing_off() #18
  %call = tail call i32 @debug_locks_off() #18
  tail call fastcc void @do_oops_enter_exit()
  %0 = load i32, ptr @sysctl_oops_all_cpu_backtrace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @arch_trigger_cpumask_backtrace(ptr noundef nonnull @__cpu_online_mask, i1 noundef zeroext false) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_oops_enter_exit() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pause_on_oops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body1:                                         ; preds = %entry
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pause_on_oops_lock) #18
  %.b = load i1, ptr @pause_on_oops_flag, align 4
  br i1 %.b, label %if.else, label %do.body1.if.end17.sink.split_crit_edge

do.body1.if.end17.sink.split_crit_edge:           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.sink.split

if.else:                                          ; preds = %do.body1
  %1 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %if.then9, label %if.else.while.body_crit_edge

if.else.while.body_crit_edge:                     ; preds = %if.else
  br label %while.body

if.then9:                                         ; preds = %if.else
  %2 = load i32, ptr @pause_on_oops, align 4
  store i32 %2, ptr @do_oops_enter_exit.spin_counter, align 4
  br label %do.body10

do.body10:                                        ; preds = %spin_msec.exit.do.body10_crit_edge, %if.then9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pause_on_oops_lock) #18
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body10
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body10 ]
  tail call void @touch_softlockup_watchdog() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #18
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %spin_msec.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

spin_msec.exit:                                   ; preds = %for.body.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @pause_on_oops_lock) #18
  %4 = load i32, ptr @do_oops_enter_exit.spin_counter, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr @do_oops_enter_exit.spin_counter, align 4
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %spin_msec.exit.if.end17.sink.split_crit_edge, label %spin_msec.exit.do.body10_crit_edge

spin_msec.exit.do.body10_crit_edge:               ; preds = %spin_msec.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body10

spin_msec.exit.if.end17.sink.split_crit_edge:     ; preds = %spin_msec.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17.sink.split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.else.while.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pause_on_oops_lock) #18
  tail call void @touch_softlockup_watchdog() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @pause_on_oops_lock) #18
  %.pr = load i32, ptr @do_oops_enter_exit.spin_counter, align 4
  %tobool15.not = icmp eq i32 %.pr, 0
  br i1 %tobool15.not, label %while.body.if.end17_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

if.end17.sink.split:                              ; preds = %spin_msec.exit.if.end17.sink.split_crit_edge, %do.body1.if.end17.sink.split_crit_edge
  %6 = xor i1 %.b, true
  store i1 %6, ptr @pause_on_oops_flag, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %while.body.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pause_on_oops_lock, i32 noundef %call2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oops_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_oops_enter_exit()
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i64 noundef 0) #22
  tail call void @kmsg_dump(i32 noundef 2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__warn(ptr noundef %file, i32 noundef %line, ptr noundef %caller, i32 noundef %taint, ptr noundef %regs, ptr noundef readonly %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_trace_on_warning() #18
  %tobool.not = icmp eq ptr %file, null
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i35 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i35 to ptr
  %cpu7 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu7, align 4
  %task9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %task9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task9, align 8
  %pid10 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid10, align 8
  br i1 %tobool.not, label %do.end4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %7, ptr noundef nonnull %file, i32 noundef %line, ptr noundef %caller) #22
  br label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %7, ptr noundef %caller) #22
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  %tobool12.not = icmp eq ptr %args, null
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %args, align 4
  %args14 = getelementptr inbounds %struct.warn_args, ptr %args, i32 0, i32 1
  %10 = ptrtoint ptr %args14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack = load i32, ptr %args14, align 4
  %11 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call15 = tail call i32 @vprintk(ptr noundef %9, [1 x i32] %11) #18
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  tail call void @print_modules() #18
  %tobool17.not = icmp eq ptr %regs, null
  br i1 %tobool17.not, label %if.end19, label %if.end19.thread

if.end19:                                         ; preds = %if.end16
  %12 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %if.then24, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.end19.thread:                                  ; preds = %if.end16
  tail call void @show_regs(ptr noundef nonnull %regs) #18
  %13 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not38 = icmp eq i32 %13, 0
  br i1 %tobool20.not38, label %if.end19.thread.if.end25_crit_edge, label %if.end19.thread.if.then21_crit_edge

if.end19.thread.if.then21_crit_edge:              ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then21

if.end19.thread.if.end25_crit_edge:               ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then21:                                        ; preds = %if.end19.thread.if.then21_crit_edge, %if.end19.if.then21_crit_edge
  store i32 0, ptr @panic_on_warn, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.21) #21
  unreachable

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_stack() #22
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end19.thread.if.end25_crit_edge
  %14 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i36 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i36 to ptr
  %task27 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task27, align 8
  tail call void @print_irqtrace_events(ptr noundef %17) #18
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i64 noundef 0) #22
  %18 = ptrtoint ptr %caller to i32
  tail call fastcc void @trace_error_report_end(i32 noundef %18)
  tail call void @_set_bit(i32 noundef %taint, ptr noundef nonnull @tainted_mask) #18
  %19 = load i32, ptr @tainted_mask, align 4
  %20 = load i32, ptr @panic_on_taint, align 4
  %and.i37 = and i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool2.not.i = icmp eq i32 %and.i37, 0
  br i1 %tobool2.not.i, label %add_taint.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  store i32 0, ptr @panic_on_taint, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #23
  unreachable

add_taint.exit:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_trace_on_warning() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_irqtrace_events(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_error_report_end(i32 noundef %id) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 1), ptr blockaddress(@trace_error_report_end, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !181

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.not.i = icmp ult i32 %3, %4
  br i1 %cmp.not.i, label %do.body.cpu_max_bits_warn.exit_crit_edge, label %land.rhs.i

do.body.cpu_max_bits_warn.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_max_bits_warn.exit

land.rhs.i:                                       ; preds = %do.body
  %.b37.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i, label %land.rhs.i.cpu_max_bits_warn.exit_crit_edge, label %if.then.i, !prof !182

land.rhs.i.cpu_max_bits_warn.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_max_bits_warn.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_max_bits_warn.exit

cpu_max_bits_warn.exit:                           ; preds = %if.then.i, %land.rhs.i.cpu_max_bits_warn.exit_crit_edge, %do.body.cpu_max_bits_warn.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_max_bits_warn.exit.if.end69_crit_edge, label %cleanup.thread

cpu_max_bits_warn.exit.if.end69_crit_edge:        ; preds = %cpu_max_bits_warn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_max_bits_warn.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !183
  %call42 = tail call i32 @__traceiter_error_report_end(ptr noundef null, i32 noundef 2, i32 noundef %id) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !184
  %13 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i4 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i4 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp.not.i14 = icmp ult i32 %20, %21
  br i1 %cmp.not.i14, label %if.end48.cpu_max_bits_warn.exit19_crit_edge, label %land.rhs.i17

if.end48.cpu_max_bits_warn.exit19_crit_edge:      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_max_bits_warn.exit19

land.rhs.i17:                                     ; preds = %if.end48
  %.b37.i15 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i15, label %land.rhs.i17.cpu_max_bits_warn.exit19_crit_edge, label %if.then.i18, !prof !182

land.rhs.i17.cpu_max_bits_warn.exit19_crit_edge:  ; preds = %land.rhs.i17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_max_bits_warn.exit19

if.then.i18:                                      ; preds = %land.rhs.i17
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_max_bits_warn.exit19

cpu_max_bits_warn.exit19:                         ; preds = %if.then.i18, %land.rhs.i17.cpu_max_bits_warn.exit19_crit_edge, %if.end48.cpu_max_bits_warn.exit19_crit_edge
  %div3.i.i9 = lshr i32 %20, 5
  %arrayidx.i.i10 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i9
  %22 = ptrtoint ptr %arrayidx.i.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i10, align 4
  %and.i.i11 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i11
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i6.not = icmp eq i32 %25, 0
  br i1 %tobool.i6.not, label %cpu_max_bits_warn.exit19.if.end69_crit_edge, label %if.then52

cpu_max_bits_warn.exit19.if.end69_crit_edge:      ; preds = %cpu_max_bits_warn.exit19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_max_bits_warn.exit19
  %26 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_error_report_end.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_error_report_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 71, ptr noundef nonnull @.str.29) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !186
  %31 = tail call i32 @llvm.read_register.i32(metadata !157) #18
  %and.i.i.i.i7 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i7 to ptr
  %preempt_count.i.i.i8 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i8, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i8, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_max_bits_warn.exit19.if.end69_crit_edge, %cpu_max_bits_warn.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @warn_slowpath_fmt(ptr noundef %file, i32 noundef %line, i32 noundef %taint, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.warn_args, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #18
  %0 = getelementptr inbounds %struct.warn_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !172
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #22
  %tobool.not = icmp eq ptr %fmt, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void @__warn(ptr noundef %file, i32 noundef %line, ptr noundef %2, i32 noundef %taint, ptr noundef null, ptr noundef null)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %args, align 4
  call void @llvm.va_start(ptr %0)
  %4 = call ptr @llvm.returnaddress(i32 0)
  call void @__warn(ptr noundef %file, i32 noundef %line, ptr noundef %4, i32 noundef %taint, ptr noundef null, ptr noundef nonnull %args)
  call void @llvm.va_end(ptr %0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @register_warn_debugfs() #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.31, i16 noundef zeroext 128, ptr noundef null, ptr noundef null, ptr noundef nonnull @clear_warn_once_fops) #18
  ret i32 0
}

; Function Attrs: noinline noprofile noreturn nosanitize_coverage nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__stack_chk_fail() #13 section ".noinstr.text" align 64 {
entry:
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef %0) #21
  unreachable
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @oops_setup(ptr noundef readonly %s) #14 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %s, ptr noundef nonnull dereferenceable(6) @.str.3) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  store i32 1, ptr @panic_on_oops, align 4
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panic_on_taint_setup(ptr noundef %s) #12 section ".init.text" align 64 {
entry:
  %s.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %s, ptr %s.addr, align 4
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @strsep(ptr noundef nonnull %s.addr, ptr noundef nonnull @.str.33) #18
  %call.i = call i32 @_kstrtoul(ptr noundef %call, i32 noundef 16, ptr noundef nonnull @panic_on_taint) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr @panic_on_taint, align 4
  %and = and i32 %1, 262143
  store i32 %and, ptr @panic_on_taint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %s.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s.addr, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end7.do.end_crit_edge, label %land.lhs.true

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

land.lhs.true:                                    ; preds = %if.end7
  %call9 = call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull dereferenceable(12) @.str.34) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  store i8 1, ptr @panic_on_taint_nousertaint, align 1
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true.do.end_crit_edge, %if.end7.do.end_crit_edge
  %4 = load i8, ptr @panic_on_taint_nousertaint, align 1, !range !173
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool13.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool13.not, ptr @.str.38, ptr @.str.37
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %and, ptr noundef nonnull %cond) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysrq_timer_list_show() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_show_all_locks() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_trigger_cpumask_backtrace(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_error_report_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_warn_once_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef null, ptr noundef nonnull @clear_warn_once_set, ptr noundef nonnull @.str.32) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_warn_once_set(ptr nocapture noundef readnone %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @generic_bug_clear_once() #18
  %0 = call ptr @memset(ptr @__start_once, i32 0, i32 sub (i32 ptrtoint (ptr @__end_once to i32), i32 ptrtoint (ptr @__start_once to i32)))
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_bug_clear_once() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { noinline noprofile noreturn nosanitize_coverage nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold noreturn }
attributes #22 = { cold nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !148, !150, !152, !153, !154, !155, !156}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @panic_on_oops, !1, !"panic_on_oops", i1 false, i1 false}
!1 = !{!"../kernel/panic.c", i32 49, i32 5}
!2 = !{ptr @panic_on_taint_nousertaint, !3, !"panic_on_taint_nousertaint", i1 false, i1 false}
!3 = !{!"../kernel/panic.c", i32 58, i32 6}
!4 = !{ptr @panic_timeout, !5, !"panic_timeout", i1 false, i1 false}
!5 = !{!"../kernel/panic.c", i32 60, i32 5}
!6 = !{ptr @__ksymtab_panic_timeout, !7, !"__ksymtab_panic_timeout", i1 false, i1 false}
!7 = !{!"../kernel/panic.c", i32 61, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/panic.c", i32 71, i32 1}
!10 = !{ptr @panic_notifier_list, !9, !"panic_notifier_list", i1 false, i1 false}
!11 = !{ptr @__ksymtab_panic_notifier_list, !12, !"__ksymtab_panic_notifier_list", i1 false, i1 false}
!12 = !{!"../kernel/panic.c", i32 73, i32 1}
!13 = !{ptr @__ksymtab_panic_blink, !14, !"__ksymtab_panic_blink", i1 false, i1 false}
!14 = !{!"../kernel/panic.c", i32 82, i32 1}
!15 = distinct !{null, !16, !"cpus_stopped", i1 false, i1 false}
!16 = !{!"../kernel/panic.c", i32 110, i32 13}
!17 = !{ptr @panic_cpu, !18, !"panic_cpu", i1 false, i1 false}
!18 = !{!"../kernel/panic.c", i32 128, i32 10}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/panic.c", i32 144, i32 9}
!21 = !{ptr @__ksymtab_nmi_panic, !22, !"__ksymtab_nmi_panic", i1 false, i1 false}
!22 = !{!"../kernel/panic.c", i32 148, i32 1}
!23 = !{ptr @panic.buf, !24, !"buf", i1 false, i1 false}
!24 = !{!"../kernel/panic.c", i32 181, i32 14}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/panic.c", i32 227, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @panic._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @panic._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/panic.c", i32 315, i32 3}
!33 = !{ptr @panic._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @panic._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../kernel/panic.c", i32 348, i32 2}
!37 = !{ptr @panic._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @panic._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_panic, !40, !"__ksymtab_panic", i1 false, i1 false}
!40 = !{!"../kernel/panic.c", i32 363, i32 1}
!41 = !{ptr @taint_flags, !42, !"taint_flags", i1 false, i1 false}
!42 = !{!"../kernel/panic.c", i32 369, i32 25}
!43 = !{ptr @print_tainted.buf, !44, !"buf", i1 false, i1 false}
!44 = !{!"../kernel/panic.c", i32 400, i32 14}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/panic.c", i32 408, i32 26}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/panic.c", i32 416, i32 30}
!49 = !{ptr @__ksymtab_test_taint, !50, !"__ksymtab_test_taint", i1 false, i1 false}
!50 = !{!"../kernel/panic.c", i32 425, i32 1}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../kernel/panic.c", i32 443, i32 3}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @add_taint._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @add_taint._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/panic.c", i32 449, i32 9}
!58 = !{ptr @__ksymtab_add_taint, !59, !"__ksymtab_add_taint", i1 false, i1 false}
!59 = !{!"../kernel/panic.c", i32 452, i32 1}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/panic.c", i32 564, i32 3}
!62 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__warn._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @__warn._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/panic.c", i32 568, i32 3}
!67 = !{ptr @__warn._entry.18, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @__warn._entry_ptr.20, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/panic.c", i32 587, i32 9}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/panic.c", i32 608, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @warn_slowpath_fmt._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @warn_slowpath_fmt._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @__ksymtab_warn_slowpath_fmt, !77, !"__ksymtab_warn_slowpath_fmt", i1 false, i1 false}
!77 = !{!"../kernel/panic.c", i32 621, i32 1}
!78 = !{ptr @__initcall__kmod_panic__251_658_register_warn_debugfs6, !79, !"__initcall__kmod_panic__251_658_register_warn_debugfs6", i1 false, i1 false}
!79 = !{!"../kernel/panic.c", i32 658, i32 1}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/panic.c", i32 670, i32 8}
!82 = !{ptr @__ksymtab___stack_chk_fail, !83, !"__ksymtab___stack_chk_fail", i1 false, i1 false}
!83 = !{!"../kernel/panic.c", i32 674, i32 1}
!84 = !{ptr @__param_panic, !85, !"__param_panic", i1 false, i1 false}
!85 = !{!"../kernel/panic.c", i32 678, i32 1}
!86 = !{ptr @__param_panic_print, !87, !"__param_panic_print", i1 false, i1 false}
!87 = !{!"../kernel/panic.c", i32 679, i32 1}
!88 = !{ptr @__param_pause_on_oops, !89, !"__param_pause_on_oops", i1 false, i1 false}
!89 = !{!"../kernel/panic.c", i32 680, i32 1}
!90 = !{ptr @__param_panic_on_warn, !91, !"__param_panic_on_warn", i1 false, i1 false}
!91 = !{!"../kernel/panic.c", i32 681, i32 1}
!92 = !{ptr @__param_crash_kexec_post_notifiers, !93, !"__param_crash_kexec_post_notifiers", i1 false, i1 false}
!93 = !{!"../kernel/panic.c", i32 682, i32 1}
!94 = !{ptr @__setup_oops_setup, !95, !"__setup_oops_setup", i1 false, i1 false}
!95 = !{!"../kernel/panic.c", i32 692, i32 1}
!96 = !{ptr @__setup_panic_on_taint_setup, !97, !"__setup_panic_on_taint_setup", i1 false, i1 false}
!97 = !{!"../kernel/panic.c", i32 719, i32 1}
!98 = !{ptr @sysctl_oops_all_cpu_backtrace, !99, !"sysctl_oops_all_cpu_backtrace", i1 false, i1 false}
!99 = !{!"../kernel/panic.c", i32 46, i32 28}
!100 = !{ptr @pause_on_oops, !101, !"pause_on_oops", i1 false, i1 false}
!101 = !{!"../kernel/panic.c", i32 52, i32 12}
!102 = distinct !{null, !103, !"pause_on_oops_flag", i1 false, i1 false}
!103 = !{!"../kernel/panic.c", i32 53, i32 12}
!104 = !{ptr @crash_kexec_post_notifiers, !105, !"crash_kexec_post_notifiers", i1 false, i1 false}
!105 = !{!"../kernel/panic.c", i32 55, i32 6}
!106 = !{ptr @panic_on_warn, !107, !"panic_on_warn", i1 false, i1 false}
!107 = !{!"../kernel/panic.c", i32 56, i32 5}
!108 = !{ptr @panic_on_taint, !109, !"panic_on_taint", i1 false, i1 false}
!109 = !{!"../kernel/panic.c", i32 57, i32 15}
!110 = !{ptr @panic_print, !111, !"panic_print", i1 false, i1 false}
!111 = !{!"../kernel/panic.c", i32 69, i32 15}
!112 = !{ptr @panic_blink, !113, !"panic_blink", i1 false, i1 false}
!113 = !{!"../kernel/panic.c", i32 81, i32 8}
!114 = !{ptr @tainted_mask, !115, !"tainted_mask", i1 false, i1 false}
!115 = !{!"../kernel/panic.c", i32 50, i32 22}
!116 = !{ptr @do_oops_enter_exit.spin_counter, !117, !"spin_counter", i1 false, i1 false}
!117 = !{!"../kernel/panic.c", i32 471, i32 13}
!118 = !{ptr @.str.25, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/panic.c", i32 54, i32 8}
!120 = !{ptr @pause_on_oops_lock, !119, !"pause_on_oops_lock", i1 false, i1 false}
!121 = !{ptr @.str.26, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../kernel/panic.c", i32 539, i32 2}
!123 = !{ptr @.str.27, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @print_oops_end_marker._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @print_oops_end_marker._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../include/trace/events/error_report.h", i32 69, i32 1}
!128 = !{ptr @.str.28, !127, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!130 = !{ptr @.str.29, !127, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!133 = !{ptr @.str.30, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.31, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../kernel/panic.c", i32 653, i32 29}
!136 = !{ptr @clear_warn_once_fops, !137, !"clear_warn_once_fops", i1 false, i1 false}
!137 = !{!"../kernel/panic.c", i32 647, i32 1}
!138 = !{ptr @.str.32, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__param_str_panic, !85, !"__param_str_panic", i1 false, i1 false}
!140 = !{ptr @___asan_gen_.149, !87, !"__param_str_panic_print", i1 false, i1 false}
!141 = !{ptr @___asan_gen_.152, !89, !"__param_str_pause_on_oops", i1 false, i1 false}
!142 = !{ptr @__param_str_panic_on_warn, !91, !"__param_str_panic_on_warn", i1 false, i1 false}
!143 = !{ptr @___asan_gen_.67, !93, !"__param_str_crash_kexec_post_notifiers", i1 false, i1 false}
!144 = !{ptr @__setup_str_oops_setup, !95, !"__setup_str_oops_setup", i1 false, i1 false}
!145 = !{ptr @__setup_str_panic_on_taint_setup, !97, !"__setup_str_panic_on_taint_setup", i1 false, i1 false}
!146 = !{ptr @.str.33, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../kernel/panic.c", i32 701, i32 25}
!148 = !{ptr @.str.34, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/panic.c", i32 711, i32 22}
!150 = !{ptr @.str.35, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../kernel/panic.c", i32 714, i32 2}
!152 = !{ptr @.str.36, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @panic_on_taint_setup._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @panic_on_taint_setup._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.37, !151, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.38, !151, !"<string literal>", i1 false, i1 false}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2154825863}
!168 = !{i64 2154825705}
!169 = !{i64 2148238351}
!170 = !{i64 511362, i64 511386, i64 511407, i64 511424, i64 511441}
!171 = !{i64 2148238577}
!172 = !{!"auto-init"}
!173 = !{i8 0, i8 2}
!174 = !{i64 592587}
!175 = !{i64 590290}
!176 = !{i64 2154827700}
!177 = !{i64 590100}
!178 = !{i64 2148453626}
!179 = !{i64 643296, i64 643313, i64 643337, i64 643363, i64 643381}
!180 = !{i64 2148453969}
!181 = !{i64 2148738527, i64 2148738532, i64 2148738545, i64 2148738589, i64 2148738623, i64 2148738644}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2154800639}
!184 = !{i64 2154800870}
!185 = !{i64 2149316431}
!186 = !{i64 2149317467}
