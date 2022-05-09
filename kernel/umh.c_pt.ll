; ModuleID = '/llk/IR_all_yes/kernel/umh.c_pt.bc'
source_filename = "../kernel/umh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usermodehelper_read_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_usermodehelper_read_trylock\09\09\09\09"
module asm "\09.long\09__crc_usermodehelper_read_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usermodehelper_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22usermodehelper_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_usermodehelper_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usermodehelper_read_lock_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_usermodehelper_read_lock_wait\09\09\09\09"
module asm "\09.long\09__crc_usermodehelper_read_lock_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usermodehelper_read_lock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22usermodehelper_read_lock_wait\22\09\09\09\09\09"
module asm "__kstrtabns_usermodehelper_read_lock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usermodehelper_read_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_usermodehelper_read_unlock\09\09\09\09"
module asm "\09.long\09__crc_usermodehelper_read_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usermodehelper_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22usermodehelper_read_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_usermodehelper_read_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+call_usermodehelper_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_call_usermodehelper_setup\09\09\09\09"
module asm "\09.long\09__crc_call_usermodehelper_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_usermodehelper_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22call_usermodehelper_setup\22\09\09\09\09\09"
module asm "__kstrtabns_call_usermodehelper_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+call_usermodehelper_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_call_usermodehelper_exec\09\09\09\09"
module asm "\09.long\09__crc_call_usermodehelper_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_usermodehelper_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22call_usermodehelper_exec\22\09\09\09\09\09"
module asm "__kstrtabns_call_usermodehelper_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+call_usermodehelper\22, \22a\22\09"
module asm "\09.weak\09__crc_call_usermodehelper\09\09\09\09"
module asm "\09.long\09__crc_call_usermodehelper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_usermodehelper:\09\09\09\09\09"
module asm "\09.asciz \09\22call_usermodehelper\22\09\09\09\09\09"
module asm "__kstrtabns_call_usermodehelper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.restart_block = type { i32, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.path = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.63 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { %struct.callback_head }

@umhelper_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @umhelper_sem, i64 56), ptr getelementptr (i8, ptr @umhelper_sem, i64 56) }, ptr @umhelper_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@usermodehelper_disabled_waitq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 44), ptr getelementptr (i8, ptr @usermodehelper_disabled_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@usermodehelper_disabled = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__kstrtab_usermodehelper_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_usermodehelper_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_usermodehelper_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usermodehelper_read_trylock to i32), ptr @__kstrtab_usermodehelper_read_trylock, ptr @__kstrtabns_usermodehelper_read_trylock }, section "___ksymtab_gpl+usermodehelper_read_trylock", align 4
@__kstrtab_usermodehelper_read_lock_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_usermodehelper_read_lock_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_usermodehelper_read_lock_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usermodehelper_read_lock_wait to i32), ptr @__kstrtab_usermodehelper_read_lock_wait, ptr @__kstrtabns_usermodehelper_read_lock_wait }, section "___ksymtab_gpl+usermodehelper_read_lock_wait", align 4
@__kstrtab_usermodehelper_read_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_usermodehelper_read_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_usermodehelper_read_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usermodehelper_read_unlock to i32), ptr @__kstrtab_usermodehelper_read_unlock, ptr @__kstrtabns_usermodehelper_read_unlock }, section "___ksymtab_gpl+usermodehelper_read_unlock", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel/umh.c\00", [19 x i8] zeroinitializer }, align 32
@running_helpers = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@running_helpers_waitq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @running_helpers_waitq, i64 44), ptr getelementptr (i8, ptr @running_helpers_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@call_usermodehelper_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&sub_info->work)\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"/sbin/usermode-helper\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_call_usermodehelper_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_usermodehelper_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_call_usermodehelper_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_usermodehelper_setup to i32), ptr @__kstrtab_call_usermodehelper_setup, ptr @__kstrtabns_call_usermodehelper_setup }, section "___ksymtab+call_usermodehelper_setup", align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_call_usermodehelper_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_usermodehelper_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_call_usermodehelper_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_usermodehelper_exec to i32), ptr @__kstrtab_call_usermodehelper_exec, ptr @__kstrtabns_call_usermodehelper_exec }, section "___ksymtab+call_usermodehelper_exec", align 4
@__kstrtab_call_usermodehelper = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_usermodehelper = external dso_local constant [0 x i8], align 1
@__ksymtab_call_usermodehelper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_usermodehelper to i32), ptr @__kstrtab_call_usermodehelper, ptr @__kstrtabns_call_usermodehelper }, section "___ksymtab+call_usermodehelper", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bset\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inheritable\00", [20 x i8] zeroinitializer }, align 32
@usermodehelper_table = dso_local global { [3 x %struct.ctl_table], [52 x i8] } { [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.3, ptr inttoptr (i32 1 to ptr), i32 8, i16 384, ptr null, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr inttoptr (i32 2 to ptr), i32 8, i16 384, ptr null, ptr @proc_cap_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"umhelper_sem.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"umhelper_sem\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usermodehelper_disabled_waitq.lock\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"running_helpers_waitq.lock\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@umh_sysctl_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@usermodehelper_bset = internal global { %struct.kernel_cap_struct, [24 x i8] } { %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, [24 x i8] zeroinitializer }, align 32
@usermodehelper_inheritable = internal global { %struct.kernel_cap_struct, [24 x i8] } { %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"umh_sysctl_lock\00", [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"umhelper_sem\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"usermodehelper_disabled_waitq\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"usermodehelper_disabled\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 189, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 313, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"running_helpers\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 192, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"running_helpers_waitq\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 369, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 372, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 550, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 557, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"usermodehelper_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 548, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 40, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 204, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 57, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 198, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"umh_sysctl_lock\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"usermodehelper_bset\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 37, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"usermodehelper_inheritable\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 38, i32 21 }
@___asan_gen_.73 = private constant [16 x i8] c"../kernel/umh.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 39, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 87, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_call_usermodehelper, ptr @__ksymtab_call_usermodehelper_exec, ptr @__ksymtab_call_usermodehelper_setup, ptr @__ksymtab_usermodehelper_read_lock_wait, ptr @__ksymtab_usermodehelper_read_trylock, ptr @__ksymtab_usermodehelper_read_unlock, ptr @umhelper_sem, ptr @usermodehelper_disabled_waitq, ptr @usermodehelper_disabled, ptr @.str, ptr @running_helpers, ptr @running_helpers_waitq, ptr @call_usermodehelper_setup.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @usermodehelper_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @umh_sysctl_lock, ptr @usermodehelper_bset, ptr @usermodehelper_inheritable, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umhelper_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usermodehelper_disabled_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usermodehelper_disabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @running_helpers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @running_helpers_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_usermodehelper_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usermodehelper_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umh_sysctl_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usermodehelper_bset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usermodehelper_inheritable to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usermodehelper_read_trylock() #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !51) #7
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @down_read(ptr noundef nonnull @umhelper_sem) #7
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %wait, i32 noundef 1) #7
  %13 = load i32, ptr @usermodehelper_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not12 = icmp eq i32 %13, 0
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %try_to_freeze.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %14 = phi i32 [ %26, %try_to_freeze.exit.if.end_crit_edge ], [ %13, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp eq i32 %14, 2
  call void @up_read(ptr noundef nonnull @umhelper_sem) #7
  br i1 %cmp, label %if.end.for.end_crit_edge, label %if.end8

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end8:                                          ; preds = %if.end
  call void @schedule() #7
  %15 = call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i11 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end8.if.end.i_crit_edge

if.end8.if.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @debug_check_no_locks_held() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end8.if.end.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 57) #7
  %21 = call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %25 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !61

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %24) #7
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !62

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  call void @down_read(ptr noundef nonnull @umhelper_sem) #7
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %wait, i32 noundef 1) #7
  %26 = load i32, ptr @usermodehelper_disabled, align 4
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %try_to_freeze.exit.for.end_crit_edge, label %try_to_freeze.exit.if.end_crit_edge

try_to_freeze.exit.if.end_crit_edge:              ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

try_to_freeze.exit.for.end_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %try_to_freeze.exit.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ -11, %if.end.for.end_crit_edge ], [ 0, %try_to_freeze.exit.for.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %wait) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %ret.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usermodehelper_read_lock_wait(i32 noundef %timeout) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !51) #7
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
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp slt i32 %timeout, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @down_read(ptr noundef nonnull @umhelper_sem) #7
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %wait, i32 noundef 2) #7
  %13 = load i32, ptr @usermodehelper_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not13 = icmp eq i32 %13, 0
  br i1 %tobool.not13, label %if.end.for.end_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  br label %if.end5

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end5:                                          ; preds = %if.end9.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %timeout.addr.014 = phi i32 [ %call6, %if.end9.if.end5_crit_edge ], [ %timeout, %if.end.if.end5_crit_edge ]
  call void @up_read(ptr noundef nonnull @umhelper_sem) #7
  %call6 = call i32 @schedule_timeout(i32 noundef %timeout.addr.014) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.for.end_crit_edge, label %if.end9

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end9:                                          ; preds = %if.end5
  call void @down_read(ptr noundef nonnull @umhelper_sem) #7
  call void @prepare_to_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %wait, i32 noundef 2) #7
  %14 = load i32, ptr @usermodehelper_disabled, align 4
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end9.for.end_crit_edge, label %if.end9.if.end5_crit_edge

if.end9.if.end5_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end5.for.end_crit_edge, %if.end.for.end_crit_edge
  %timeout.addr.1 = phi i32 [ %timeout, %if.end.for.end_crit_edge ], [ 0, %if.end5.for.end_crit_edge ], [ %call6, %if.end9.for.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull @usermodehelper_disabled_waitq, ptr noundef nonnull %wait) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %timeout.addr.1, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usermodehelper_read_unlock() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @up_read(ptr noundef nonnull @umhelper_sem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__usermodehelper_set_disable_depth(i32 noundef %depth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @umhelper_sem) #7
  store i32 %depth, ptr @usermodehelper_disabled, align 4
  tail call void @__wake_up(ptr noundef nonnull @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  tail call void @up_write(ptr noundef nonnull @umhelper_sem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__usermodehelper_disable(i32 noundef %depth) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %tobool.not = icmp eq i32 %depth, 0
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end:                                           ; preds = %entry
  tail call void @down_write(ptr noundef nonnull @umhelper_sem) #7
  store i32 %depth, ptr @usermodehelper_disabled, align 4
  tail call void @up_write(ptr noundef nonnull @umhelper_sem) #7
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 315) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @running_helpers, i32 noundef 4) #7
  %0 = load volatile i32, ptr @running_helpers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end.cleanup41_crit_edge, label %if.then12

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %1 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call1458 = call i32 @prepare_to_wait_event(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i5159 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @running_helpers, i32 noundef 4) #7
  %2 = load volatile i32, ptr @running_helpers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1760 = icmp eq i32 %2, 0
  br i1 %cmp1760, label %if.end36.thread, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

if.end36.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %cleanup41

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.161 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then12.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret13.161) #7
  %call14 = call i32 @prepare_to_wait_event(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %call.i.i51 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @running_helpers, i32 noundef 4) #7
  %3 = load volatile i32, ptr @running_helpers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %4 = select i1 %cmp17, i1 %tobool21.not, i1 false
  %__ret13.1 = select i1 %4, i32 1, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool27.not = icmp eq i32 %__ret13.1, 0
  %5 = select i1 %cmp17, i1 true, i1 %tobool27.not
  br i1 %5, label %if.end36, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %phi.cmp = icmp eq i32 %__ret13.1, 0
  call void @finish_wait(ptr noundef nonnull @running_helpers_waitq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %if.end40, label %if.end36.cleanup41_crit_edge

if.end36.cleanup41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void @down_write(ptr noundef nonnull @umhelper_sem) #7
  store i32 0, ptr @usermodehelper_disabled, align 4
  call void @__wake_up(ptr noundef nonnull @usermodehelper_disabled_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  call void @up_write(ptr noundef nonnull @umhelper_sem) #7
  br label %cleanup41

cleanup41:                                        ; preds = %if.end40, %if.end36.cleanup41_crit_edge, %if.end36.thread, %if.end.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.0 = phi i32 [ -11, %if.end40 ], [ -22, %entry.cleanup41_crit_edge ], [ 0, %if.end36.cleanup41_crit_edge ], [ 0, %if.end.cleanup41_crit_edge ], [ 0, %if.end36.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @call_usermodehelper_setup(ptr nocapture readnone %path, ptr noundef %argv, ptr noundef %envp, i32 noundef %gfp_mask, ptr noundef %init, ptr noundef %cleanup, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !61

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_mask, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 80) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.out_crit_edge, label %do.body

kzalloc.exit.out_crit_edge:                       ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body:                                          ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #7
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @call_usermodehelper_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @call_usermodehelper_exec_work, ptr %func, align 4
  %path7 = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %path7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.2, ptr %path7, align 8
  %argv8 = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %argv8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %argv, ptr %argv8, align 4
  %envp9 = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %envp9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %envp, ptr %envp9, align 8
  %cleanup10 = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %cleanup10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cleanup, ptr %cleanup10, align 8
  %init11 = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %init, ptr %init11, align 4
  %data12 = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %data12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %data12, align 4
  br label %out

out:                                              ; preds = %do.body, %kzalloc.exit.out_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @call_usermodehelper_exec_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wait = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 5
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wait, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @kernel_sigaction(i32 noundef 17, ptr noundef null) #7
  %call.i = tail call i32 @kernel_thread(ptr noundef nonnull @call_usermodehelper_exec_async, ptr noundef %work, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %retval.i = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %retval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %retval.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @kernel_wait(i32 noundef %call.i, ptr noundef %retval.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  tail call void @kernel_sigaction(i32 noundef 17, ptr noundef nonnull inttoptr (i32 1 to ptr)) #7
  %complete.i.i = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %complete.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %complete.i.i, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %complete.i.i) #7, !srcloc !64
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = inttoptr i32 %asmresult.i.i.i to ptr
  tail call void @complete(ptr noundef nonnull %4) #7
  br label %if.end2

if.else.i.i:                                      ; preds = %if.end.i
  %cleanup.i.i.i = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 8
  %5 = ptrtoint ptr %cleanup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cleanup.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.call_usermodehelper_freeinfo.exit.i.i_crit_edge, label %if.then.i.i.i

if.else.i.i.call_usermodehelper_freeinfo.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_usermodehelper_freeinfo.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %6(ptr noundef %work) #7
  br label %call_usermodehelper_freeinfo.exit.i.i

call_usermodehelper_freeinfo.exit.i.i:            ; preds = %if.then.i.i.i, %if.else.i.i.call_usermodehelper_freeinfo.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef %work) #7
  br label %if.end2

if.else:                                          ; preds = %entry
  %call = tail call i32 @kernel_thread(ptr noundef nonnull @call_usermodehelper_exec_async, ptr noundef %work, i32 noundef 32785) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.else.if.end2_crit_edge

if.else.if.end2_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then1:                                         ; preds = %if.else
  %retval = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 6
  %7 = ptrtoint ptr %retval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %retval, align 4
  %complete.i = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %complete.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %complete.i, i32 1, i32 3, i32 1) #7
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %complete.i) #7, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %if.else.i10, label %if.then.i8

if.then.i8:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %9 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @complete(ptr noundef nonnull %9) #7
  br label %if.end2

if.else.i10:                                      ; preds = %if.then1
  %cleanup.i.i = getelementptr inbounds %struct.subprocess_info, ptr %work, i32 0, i32 8
  %10 = ptrtoint ptr %cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cleanup.i.i, align 4
  %tobool.not.i.i9 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i9, label %if.else.i10.call_usermodehelper_freeinfo.exit.i_crit_edge, label %if.then.i.i11

if.else.i10.call_usermodehelper_freeinfo.exit.i_crit_edge: ; preds = %if.else.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_usermodehelper_freeinfo.exit.i

if.then.i.i11:                                    ; preds = %if.else.i10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %work) #7
  br label %call_usermodehelper_freeinfo.exit.i

call_usermodehelper_freeinfo.exit.i:              ; preds = %if.then.i.i11, %if.else.i10.call_usermodehelper_freeinfo.exit.i_crit_edge
  tail call void @kfree(ptr noundef %work) #7
  br label %if.end2

if.end2:                                          ; preds = %call_usermodehelper_freeinfo.exit.i, %if.then.i8, %if.else.if.end2_crit_edge, %call_usermodehelper_freeinfo.exit.i.i, %if.then.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_usermodehelper_exec(ptr noundef %sub_info, i32 noundef %wait) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #7
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #7
  %path = getelementptr inbounds %struct.subprocess_info, ptr %sub_info, i32 0, i32 2
  %3 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %path, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cleanup.i = getelementptr inbounds %struct.subprocess_info, ptr %sub_info, i32 0, i32 8
  %5 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cleanup.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.call_usermodehelper_freeinfo.exit_crit_edge, label %if.then.i

if.then.call_usermodehelper_freeinfo.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_usermodehelper_freeinfo.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void %6(ptr noundef %sub_info) #7
  br label %call_usermodehelper_freeinfo.exit

call_usermodehelper_freeinfo.exit:                ; preds = %if.then.i, %if.then.call_usermodehelper_freeinfo.exit_crit_edge
  call void @kfree(ptr noundef %sub_info) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @running_helpers, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr nonnull @running_helpers, i32 1, i32 3, i32 1) #7
  %7 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @running_helpers, ptr nonnull @running_helpers, i32 1, ptr nonnull elementtype(i32) @running_helpers) #7, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  %8 = load i32, ptr @usermodehelper_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %char0 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp = icmp eq i8 %char0, 0
  br i1 %cmp, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %cmp8 = icmp eq i32 %wait, 0
  %.done = select i1 %cmp8, ptr null, ptr %done
  %complete = getelementptr inbounds %struct.subprocess_info, ptr %sub_info, i32 0, i32 1
  %12 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.done, ptr %complete, align 4
  %wait9 = getelementptr inbounds %struct.subprocess_info, ptr %sub_info, i32 0, i32 5
  %13 = ptrtoint ptr %wait9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %wait, ptr %wait9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %14 = load ptr, ptr @system_unbound_wq, align 4
  %call.i56 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %sub_info) #7
  br i1 %cmp8, label %if.end7.unlock_crit_edge, label %if.end13

if.end7.unlock_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end13:                                         ; preds = %if.end7
  %and = and i32 %wait, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.if.end40_crit_edge, label %if.then15

if.end13.if.end40_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then15:                                        ; preds = %if.end13
  %call16 = call i32 @wait_for_completion_killable(ptr noundef nonnull %done) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.wait_done_crit_edge, label %if.end19

if.then15.wait_done_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_done

if.end19:                                         ; preds = %if.then15
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %complete, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  call void @llvm.prefetch.p0(ptr %complete, i32 1, i32 3, i32 1) #7
  %15 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %complete) #7, !srcloc !64
  %asmresult.i = extractvalue { i32, i32 } %15, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool37.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool37.not, label %if.end19.if.end40_crit_edge, label %if.end19.unlock_crit_edge

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end19.if.end40_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %if.end19.if.end40_crit_edge, %if.end13.if.end40_crit_edge
  call void @wait_for_completion(ptr noundef nonnull %done) #7
  br label %wait_done

wait_done:                                        ; preds = %if.end40, %if.then15.wait_done_crit_edge
  %retval41 = getelementptr inbounds %struct.subprocess_info, ptr %sub_info, i32 0, i32 6
  %16 = ptrtoint ptr %retval41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %retval41, align 4
  br label %out

out:                                              ; preds = %wait_done, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end4.out_crit_edge ], [ %17, %wait_done ], [ -16, %if.end.out_crit_edge ]
  %cleanup.i57 = getelementptr inbounds %struct.subprocess_info, ptr %sub_info, i32 0, i32 8
  %18 = ptrtoint ptr %cleanup.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cleanup.i57, align 4
  %tobool.not.i58 = icmp eq ptr %19, null
  br i1 %tobool.not.i58, label %out.call_usermodehelper_freeinfo.exit60_crit_edge, label %if.then.i59

out.call_usermodehelper_freeinfo.exit60_crit_edge: ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_usermodehelper_freeinfo.exit60

if.then.i59:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void %19(ptr noundef %sub_info) #7
  br label %call_usermodehelper_freeinfo.exit60

call_usermodehelper_freeinfo.exit60:              ; preds = %if.then.i59, %out.call_usermodehelper_freeinfo.exit60_crit_edge
  call void @kfree(ptr noundef %sub_info) #7
  br label %unlock

unlock:                                           ; preds = %call_usermodehelper_freeinfo.exit60, %if.end19.unlock_crit_edge, %if.end7.unlock_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %call_usermodehelper_freeinfo.exit60 ], [ 0, %if.end7.unlock_crit_edge ], [ %call16, %if.end19.unlock_crit_edge ]
  %call.i.i.i61 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @running_helpers, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @llvm.prefetch.p0(ptr nonnull @running_helpers, i32 1, i32 3, i32 1) #7
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @running_helpers, ptr nonnull @running_helpers, i32 1, ptr nonnull elementtype(i32) @running_helpers) #7, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i62, label %unlock.cleanup_crit_edge

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i62:                                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  call void @__wake_up(ptr noundef nonnull @running_helpers_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i62, %unlock.cleanup_crit_edge, %call_usermodehelper_freeinfo.exit
  %retval.0 = phi i32 [ -22, %call_usermodehelper_freeinfo.exit ], [ %retval1.1, %unlock.cleanup_crit_edge ], [ %retval1.1, %if.then.i62 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_usermodehelper(ptr nocapture readnone %path, ptr noundef %argv, ptr noundef %envp, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %cmp = icmp eq i32 %wait, 0
  %or.i.i = select i1 %cmp, i32 2848, i32 3520
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef %or.i.i, i32 noundef 80) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #7
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @call_usermodehelper_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @call_usermodehelper_exec_work, ptr %func.i, align 4
  %path7.i = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %path7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %path7.i, align 8
  %argv8.i = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %argv8.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %argv, ptr %argv8.i, align 4
  %envp9.i = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %envp9.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %envp, ptr %envp9.i, align 8
  %cleanup10.i = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %cleanup10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cleanup10.i, align 8
  %init11.i = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %init11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %init11.i, align 4
  %data12.i = getelementptr inbounds %struct.subprocess_info, ptr %call7.i.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %data12.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %data12.i, align 4
  %call2 = tail call i32 @call_usermodehelper_exec(ptr noundef nonnull %call7.i.i.i, i32 noundef %wait)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_cap_handler(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  %t = alloca %struct.ctl_table, align 4
  %cap_array = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cap_array) #7
  %0 = getelementptr inbounds [2 x i32], ptr %cap_array, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 8) #7
  br i1 %call, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call1 = tail call zeroext i1 @capable(i32 noundef 16) #7
  br i1 %call1, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @umh_sysctl_lock) #7
  %data = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %magicptr = ptrtoint ptr %2 to i32
  %magicptr.off = add i32 %magicptr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %magicptr.off)
  %switch = icmp ult i32 %magicptr.off, 2
  br i1 %switch, label %for.body.preheader, label %do.body

for.body.preheader:                               ; preds = %if.end
  %cond = icmp eq ptr %2, inttoptr (i32 1 to ptr)
  %usermodehelper_bset.val = load i32, ptr @usermodehelper_bset, align 8
  %usermodehelper_inheritable.val = load i32, ptr @usermodehelper_inheritable, align 8
  %storemerge83 = select i1 %cond, i32 %usermodehelper_bset.val, i32 %usermodehelper_inheritable.val
  %3 = ptrtoint ptr %cap_array to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge83, ptr %cap_array, align 4
  %.val = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_bset, i32 0, i32 0, i32 1), align 4
  %.val84 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_inheritable, i32 0, i32 0, i32 1), align 4
  %.sink = select i1 %cond, i32 %.val, i32 %.val84
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %0, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @umh_sysctl_lock) #7
  %5 = call ptr @memcpy(ptr %t, ptr %table, i32 36)
  %data16 = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 1
  %6 = ptrtoint ptr %data16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cap_array, ptr %data16, align 4
  %call17 = call i32 @proc_doulongvec_minmax(ptr noundef nonnull %t, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %for.body.preheader.cleanup_crit_edge, label %for.body23.preheader

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/umh.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 511, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

for.body23.preheader:                             ; preds = %for.body.preheader
  %7 = ptrtoint ptr %cap_array to i32
  call void @__asan_load4_noabort(i32 %7)
  %new_cap.sroa.0.0.copyload = load i32, ptr %cap_array, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %new_cap.sroa.6.0.copyload = load i32, ptr %0, align 4
  br i1 %tobool.not, label %for.body23.preheader.cleanup_crit_edge, label %if.then30

for.body23.preheader.cleanup_crit_edge:           ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then30:                                        ; preds = %for.body23.preheader
  call void @_raw_spin_lock(ptr noundef nonnull @umh_sysctl_lock) #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %magicptr74 = ptrtoint ptr %10 to i32
  %11 = zext i32 %magicptr74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr74, label %if.then30.if.end40_crit_edge [
    i32 1, label %if.then30.if.end40.sink.split_crit_edge
    i32 2, label %if.then37
  ]

if.then30.if.end40.sink.split_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.sink.split

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then37:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.then37, %if.then30.if.end40.sink.split_crit_edge
  %usermodehelper_bset.sink82 = phi ptr [ @usermodehelper_inheritable, %if.then37 ], [ @usermodehelper_bset, %if.then30.if.end40.sink.split_crit_edge ]
  %.sink81 = phi ptr [ getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_inheritable, i32 0, i32 0, i32 1), %if.then37 ], [ getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_bset, i32 0, i32 0, i32 1), %if.then30.if.end40.sink.split_crit_edge ]
  %12 = ptrtoint ptr %usermodehelper_bset.sink82 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack69 = load i32, ptr %usermodehelper_bset.sink82, align 8
  %13 = ptrtoint ptr %.sink81 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack70 = load i32, ptr %.sink81, align 4
  %and.i = and i32 %new_cap.sroa.0.0.copyload, %.unpack69
  %and.1.i = and i32 %new_cap.sroa.6.0.copyload, %.unpack70
  %tmp.sroa.4.0.insert.ext = zext i32 %and.1.i to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %and.i to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  store i64 %tmp.sroa.0.0.insert.insert, ptr %usermodehelper_bset.sink82, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.then30.if.end40_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @umh_sysctl_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %for.body23.preheader.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call17, %for.body.preheader.cleanup_crit_edge ], [ 0, %if.end40 ], [ 0, %for.body23.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cap_array) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @call_usermodehelper_exec_async(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %4 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #7
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  tail call void @flush_signal_handlers(ptr noundef %7, i32 noundef 1) #7
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %sighand6 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 112
  %10 = ptrtoint ptr %sighand6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sighand6, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %11) #7
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 107
  %14 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fs, align 128
  %umask = getelementptr inbounds %struct.fs_struct, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %umask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 18, ptr %umask, align 4
  %17 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %17, i32 noundef 0) #7
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %call14 = tail call ptr @prepare_kernel_cred(ptr noundef %19) #7
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @umh_sysctl_lock) #7
  %cap_bset = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 16
  %.unpack = load i32, ptr @usermodehelper_bset, align 8
  %.unpack53 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_bset, i32 0, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %cap_bset to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack54 = load i32, ptr %cap_bset, align 4
  %.elt55 = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 16, i32 0, i32 1
  %21 = ptrtoint ptr %.elt55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack56 = load i32, ptr %.elt55, align 4
  %and.i62 = and i32 %.unpack54, %.unpack
  %and.1.i = and i32 %.unpack56, %.unpack53
  %tmp.sroa.4.0.insert.ext = zext i32 %and.1.i to i64
  %tmp.sroa.0.0.insert.ext = zext i32 %and.i62 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.0.0.insert.shift, %tmp.sroa.4.0.insert.ext
  store i64 %tmp.sroa.0.0.insert.insert, ptr %cap_bset, align 4
  %cap_inheritable = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 13
  %.unpack57 = load i32, ptr @usermodehelper_inheritable, align 8
  %.unpack58 = load i32, ptr getelementptr inbounds (%struct.kernel_cap_struct, ptr @usermodehelper_inheritable, i32 0, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %cap_inheritable to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack59 = load i32, ptr %cap_inheritable, align 4
  %.elt60 = getelementptr inbounds %struct.cred, ptr %call14, i32 0, i32 13, i32 0, i32 1
  %23 = ptrtoint ptr %.elt60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack61 = load i32, ptr %.elt60, align 4
  %and.i63 = and i32 %.unpack59, %.unpack57
  %and.1.i64 = and i32 %.unpack61, %.unpack58
  %tmp16.sroa.4.0.insert.ext = zext i32 %and.1.i64 to i64
  %tmp16.sroa.0.0.insert.ext = zext i32 %and.i63 to i64
  %tmp16.sroa.0.0.insert.shift = shl nuw i64 %tmp16.sroa.0.0.insert.ext, 32
  %tmp16.sroa.0.0.insert.insert = or i64 %tmp16.sroa.0.0.insert.shift, %tmp16.sroa.4.0.insert.ext
  store i64 %tmp16.sroa.0.0.insert.insert, ptr %cap_inheritable, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @umh_sysctl_lock) #7
  %init = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 7
  %24 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.end.if.end26_crit_edge, label %if.then20

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.end
  %call22 = tail call i32 %25(ptr noundef %data, ptr noundef nonnull %call14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end26_crit_edge, label %if.then24

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @abort_creds(ptr noundef nonnull %call14) #7
  br label %out

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %call27 = tail call i32 @commit_creds(ptr noundef nonnull %call14) #7
  tail call void @wait_for_initramfs() #7
  %path = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path, align 4
  %argv = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %argv, align 4
  %envp = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 4
  %30 = ptrtoint ptr %envp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %envp, align 4
  %call28 = tail call i32 @kernel_execve(ptr noundef %27, ptr noundef %29, ptr noundef %31) #7
  br label %out

out:                                              ; preds = %if.end26, %if.then24, %entry.out_crit_edge
  %retval1.0 = phi i32 [ %call22, %if.then24 ], [ %call28, %if.end26 ], [ -12, %entry.out_crit_edge ]
  %retval29 = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 6
  %32 = ptrtoint ptr %retval29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval1.0, ptr %retval29, align 4
  %wait = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 5
  %33 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wait, align 4
  %and = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.then31, label %out.if.end32_crit_edge

out.if.end32_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %out
  %complete.i = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %complete.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %complete.i, i32 1, i32 3, i32 1) #7
  %35 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %complete.i) #7, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %36 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @complete(ptr noundef nonnull %36) #7
  br label %if.end32

if.else.i:                                        ; preds = %if.then31
  %cleanup.i.i = getelementptr inbounds %struct.subprocess_info, ptr %data, i32 0, i32 8
  %37 = ptrtoint ptr %cleanup.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cleanup.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.else.i.call_usermodehelper_freeinfo.exit.i_crit_edge, label %if.then.i.i

if.else.i.call_usermodehelper_freeinfo.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %call_usermodehelper_freeinfo.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %38(ptr noundef %data) #7
  br label %call_usermodehelper_freeinfo.exit.i

call_usermodehelper_freeinfo.exit.i:              ; preds = %if.then.i.i, %if.else.i.call_usermodehelper_freeinfo.exit.i_crit_edge
  tail call void @kfree(ptr noundef %data) #7
  br label %if.end32

if.end32:                                         ; preds = %call_usermodehelper_freeinfo.exit.i, %if.then.i, %out.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool33.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0

if.end35:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef 0) #11
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_wait(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_kernel_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_initramfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !43, !44, !46, !48, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__ksymtab_usermodehelper_read_trylock, !1, !"__ksymtab_usermodehelper_read_trylock", i1 false, i1 false}
!1 = !{!"../kernel/umh.c", i32 240, i32 1}
!2 = !{ptr @__ksymtab_usermodehelper_read_lock_wait, !3, !"__ksymtab_usermodehelper_read_lock_wait", i1 false, i1 false}
!3 = !{!"../kernel/umh.c", i32 267, i32 1}
!4 = !{ptr @__ksymtab_usermodehelper_read_unlock, !5, !"__ksymtab_usermodehelper_read_unlock", i1 false, i1 false}
!5 = !{!"../kernel/umh.c", i32 273, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/umh.c", i32 313, i32 11}
!8 = !{ptr @call_usermodehelper_setup.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../kernel/umh.c", i32 369, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/umh.c", i32 372, i32 19}
!13 = !{ptr @__ksymtab_call_usermodehelper_setup, !14, !"__ksymtab_call_usermodehelper_setup", i1 false, i1 false}
!14 = !{!"../kernel/umh.c", i32 385, i32 1}
!15 = !{ptr @__ksymtab_call_usermodehelper_exec, !16, !"__ksymtab_call_usermodehelper_exec", i1 false, i1 false}
!16 = !{!"../kernel/umh.c", i32 459, i32 1}
!17 = !{ptr @__ksymtab_call_usermodehelper, !18, !"__ksymtab_call_usermodehelper", i1 false, i1 false}
!18 = !{!"../kernel/umh.c", i32 486, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/umh.c", i32 550, i32 15}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/umh.c", i32 557, i32 15}
!23 = !{ptr @usermodehelper_table, !24, !"usermodehelper_table", i1 false, i1 false}
!24 = !{!"../kernel/umh.c", i32 548, i32 18}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/umh.c", i32 40, i32 8}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @umhelper_sem, !26, !"umhelper_sem", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/umh.c", i32 204, i32 8}
!31 = !{ptr @usermodehelper_disabled_waitq, !30, !"usermodehelper_disabled_waitq", i1 false, i1 false}
!32 = !{ptr @usermodehelper_disabled, !33, !"usermodehelper_disabled", i1 false, i1 false}
!33 = !{!"../kernel/umh.c", i32 189, i32 31}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!36 = !{ptr @running_helpers, !37, !"running_helpers", i1 false, i1 false}
!37 = !{!"../kernel/umh.c", i32 192, i32 17}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/umh.c", i32 198, i32 8}
!40 = !{ptr @running_helpers_waitq, !39, !"running_helpers_waitq", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/umh.c", i32 39, i32 8}
!43 = !{ptr @umh_sysctl_lock, !42, !"umh_sysctl_lock", i1 false, i1 false}
!44 = !{ptr @usermodehelper_bset, !45, !"usermodehelper_bset", i1 false, i1 false}
!45 = !{!"../kernel/umh.c", i32 37, i32 21}
!46 = !{ptr @usermodehelper_inheritable, !47, !"usermodehelper_inheritable", i1 false, i1 false}
!47 = !{!"../kernel/umh.c", i32 38, i32 21}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!"branch_weights", i32 1, i32 2000}
!63 = !{i64 2155591765}
!64 = !{i64 860260, i64 860277, i64 860301, i64 860327, i64 860345}
!65 = !{i64 2155592118}
!66 = !{i64 2148353492, i64 2148353518, i64 2148353547, i64 2148353581, i64 2148353612, i64 2148353635}
!67 = !{i64 2155607876}
!68 = !{i64 2155611444}
!69 = !{i64 2155611797}
!70 = !{i64 2148441968}
!71 = !{i64 2148356677, i64 2148356709, i64 2148356738, i64 2148356772, i64 2148356803, i64 2148356826}
!72 = !{i64 2148442197}
!73 = !{i64 2155615657, i64 2155616134, i64 2155615694, i64 2155615750, i64 2155615784, i64 2155615808, i64 2155615849, i64 2155615870, i64 2155615898, i64 2155615932}
