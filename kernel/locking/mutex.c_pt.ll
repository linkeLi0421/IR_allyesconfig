; ModuleID = '/llk/IR_all_yes/kernel/locking/mutex.c_pt.bc'
source_filename = "../kernel/locking/mutex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__mutex_init\22, \22a\22\09"
module asm "\09.weak\09__crc___mutex_init\09\09\09\09"
module asm "\09.long\09__crc___mutex_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__mutex_init\22\09\09\09\09\09"
module asm "__kstrtabns___mutex_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mutex_is_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_is_locked\09\09\09\09"
module asm "\09.long\09__crc_mutex_is_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_is_locked\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_is_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mutex_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_unlock\09\09\09\09"
module asm "\09.long\09__crc_mutex_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ww_mutex_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_ww_mutex_unlock\09\09\09\09"
module asm "\09.long\09__crc_ww_mutex_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ww_mutex_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_ww_mutex_trylock\09\09\09\09"
module asm "\09.long\09__crc_ww_mutex_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mutex_lock_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_lock_nested\09\09\09\09"
module asm "\09.long\09__crc_mutex_lock_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_nested\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+_mutex_lock_nest_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__mutex_lock_nest_lock\09\09\09\09"
module asm "\09.long\09__crc__mutex_lock_nest_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__mutex_lock_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_mutex_lock_nest_lock\22\09\09\09\09\09"
module asm "__kstrtabns__mutex_lock_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mutex_lock_killable_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_lock_killable_nested\09\09\09\09"
module asm "\09.long\09__crc_mutex_lock_killable_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_killable_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_killable_nested\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_killable_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mutex_lock_interruptible_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_lock_interruptible_nested\09\09\09\09"
module asm "\09.long\09__crc_mutex_lock_interruptible_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_interruptible_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_interruptible_nested\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_interruptible_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mutex_lock_io_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_lock_io_nested\09\09\09\09"
module asm "\09.long\09__crc_mutex_lock_io_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_lock_io_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_lock_io_nested\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_lock_io_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ww_mutex_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_ww_mutex_lock\09\09\09\09"
module asm "\09.long\09__crc_ww_mutex_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ww_mutex_lock_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_ww_mutex_lock_interruptible\09\09\09\09"
module asm "\09.long\09__crc_ww_mutex_lock_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ww_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22ww_mutex_lock_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_ww_mutex_lock_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mutex_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_mutex_trylock\09\09\09\09"
module asm "\09.long\09__crc_mutex_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22mutex_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_mutex_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+atomic_dec_and_mutex_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_atomic_dec_and_mutex_lock\09\09\09\09"
module asm "\09.long\09__crc_atomic_dec_and_mutex_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_dec_and_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mutex_waiter = type { %struct.list_head, ptr, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__mutex_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lock->wait_lock\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab___mutex_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___mutex_init = external dso_local constant [0 x i8], align 1
@__ksymtab___mutex_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mutex_init to i32), ptr @__kstrtab___mutex_init, ptr @__kstrtabns___mutex_init }, section "___ksymtab+__mutex_init", align 4
@__kstrtab_mutex_is_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_is_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_is_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_is_locked to i32), ptr @__kstrtab_mutex_is_locked, ptr @__kstrtabns_mutex_is_locked }, section "___ksymtab+mutex_is_locked", align 4
@__kstrtab_mutex_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_unlock to i32), ptr @__kstrtab_mutex_unlock, ptr @__kstrtabns_mutex_unlock }, section "___ksymtab+mutex_unlock", align 4
@__kstrtab_ww_mutex_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_unlock to i32), ptr @__kstrtab_ww_mutex_unlock, ptr @__kstrtabns_ww_mutex_unlock }, section "___ksymtab+ww_mutex_unlock", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/locking/mutex.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ww->base.magic != &ww->base\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_ww_mutex_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_trylock to i32), ptr @__kstrtab_ww_mutex_trylock, ptr @__kstrtabns_ww_mutex_trylock }, section "___ksymtab+ww_mutex_trylock", align 4
@__kstrtab_mutex_lock_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_nested to i32), ptr @__kstrtab_mutex_lock_nested, ptr @__kstrtabns_mutex_lock_nested }, section "___ksymtab_gpl+mutex_lock_nested", align 4
@__kstrtab__mutex_lock_nest_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__mutex_lock_nest_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__mutex_lock_nest_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_mutex_lock_nest_lock to i32), ptr @__kstrtab__mutex_lock_nest_lock, ptr @__kstrtabns__mutex_lock_nest_lock }, section "___ksymtab_gpl+_mutex_lock_nest_lock", align 4
@__kstrtab_mutex_lock_killable_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_killable_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_killable_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_killable_nested to i32), ptr @__kstrtab_mutex_lock_killable_nested, ptr @__kstrtabns_mutex_lock_killable_nested }, section "___ksymtab_gpl+mutex_lock_killable_nested", align 4
@__kstrtab_mutex_lock_interruptible_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_interruptible_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_interruptible_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_interruptible_nested to i32), ptr @__kstrtab_mutex_lock_interruptible_nested, ptr @__kstrtabns_mutex_lock_interruptible_nested }, section "___ksymtab_gpl+mutex_lock_interruptible_nested", align 4
@__kstrtab_mutex_lock_io_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_lock_io_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_lock_io_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_lock_io_nested to i32), ptr @__kstrtab_mutex_lock_io_nested, ptr @__kstrtabns_mutex_lock_io_nested }, section "___ksymtab_gpl+mutex_lock_io_nested", align 4
@__kstrtab_ww_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_lock to i32), ptr @__kstrtab_ww_mutex_lock, ptr @__kstrtabns_ww_mutex_lock }, section "___ksymtab_gpl+ww_mutex_lock", align 4
@__kstrtab_ww_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_ww_mutex_lock_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_ww_mutex_lock_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ww_mutex_lock_interruptible to i32), ptr @__kstrtab_ww_mutex_lock_interruptible, ptr @__kstrtabns_ww_mutex_lock_interruptible }, section "___ksymtab_gpl+ww_mutex_lock_interruptible", align 4
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lock->magic != lock\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_mutex_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mutex_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_mutex_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mutex_trylock to i32), ptr @__kstrtab_mutex_trylock, ptr @__kstrtabns_mutex_trylock }, section "___ksymtab+mutex_trylock", align 4
@__kstrtab_atomic_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_dec_and_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_dec_and_mutex_lock to i32), ptr @__kstrtab_atomic_dec_and_mutex_lock, ptr @__kstrtabns_atomic_dec_and_mutex_lock }, section "___ksymtab+atomic_dec_and_mutex_lock", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/locking/ww_mutex.h\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"!lock->ctx->acquired\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flags & (0x02 | 0x04)\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ww->ctx\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ww_ctx->done_acquire\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ww_ctx->contending_lock != ww\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ww_ctx->acquired > 0\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ww_ctx->ww_class != ww->ww_class\00", [63 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__mutex_lock_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__mutex_lock_common.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mutex_can_spin_on_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@mutex_spin_on_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ww_ctx->contending_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"__owner_task(owner) != (current_thread_info()->task)\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"owner & 0x04\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 46, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 761, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 1071, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 563, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 122, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 190, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 195, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 202, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 208, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 215, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [29 x i8] c"../kernel/locking/ww_mutex.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 420, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 904, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [26 x i8] c"../kernel/locking/mutex.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 905, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab___mutex_init, ptr @__ksymtab__mutex_lock_nest_lock, ptr @__ksymtab_atomic_dec_and_mutex_lock, ptr @__ksymtab_mutex_is_locked, ptr @__ksymtab_mutex_lock_interruptible_nested, ptr @__ksymtab_mutex_lock_io_nested, ptr @__ksymtab_mutex_lock_killable_nested, ptr @__ksymtab_mutex_lock_nested, ptr @__ksymtab_mutex_trylock, ptr @__ksymtab_mutex_unlock, ptr @__ksymtab_ww_mutex_lock, ptr @__ksymtab_ww_mutex_lock_interruptible, ptr @__ksymtab_ww_mutex_trylock, ptr @__ksymtab_ww_mutex_unlock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mutex_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %lock, align 4
  %wait_lock = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %wait_lock, ptr noundef nonnull @.str, ptr noundef nonnull @__mutex_init.__key, i16 noundef signext 2) #9
  %wait_list = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %1 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wait_list, ptr %prev.i, align 4
  %osq = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %osq, i32 noundef 4) #9
  %3 = ptrtoint ptr %osq to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %osq, align 4
  tail call void @debug_mutex_init(ptr noundef %lock, ptr noundef %name, ptr noundef %key) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mutex_is_locked(ptr noundef %lock) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %lock, align 4
  %cmp = icmp ugt i32 %1, 7
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mutex_unlock(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %lock, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mutex_unlock_slowpath(ptr noundef %lock, i32 noundef %ip) unnamed_addr #2 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = alloca i32, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  %owner = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #9
  %0 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %1 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wake_q, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %owner) #9
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  call void @lock_release(ptr noundef %dep_map, i32 noundef %ip) #9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %lock, align 4
  br label %for.cond

for.cond:                                         ; preds = %arch_atomic_cmpxchg_release.exit.i.i.i, %entry
  %storemerge = phi i32 [ %4, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_release.exit.i.i.i ]
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %owner, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %6 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end90

land.lhs.true:                                    ; preds = %for.cond
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %owner, align 4
  %and.i = and i32 %8, -8
  %9 = inttoptr i32 %and.i to ptr
  %10 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i134 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i134 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %13, %9
  br i1 %cmp.not, label %if.end39, label %do.end, !prof !82

do.end:                                           ; preds = %land.lhs.true
  %call7 = call i32 @debug_locks_off() #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end39, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %14 = load i32, ptr @debug_locks_silent, align 4
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %do.end23, label %if.end39

do.end23:                                         ; preds = %land.lhs.true9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 904, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #9
  br label %if.end39

if.end39:                                         ; preds = %do.end23, %land.lhs.true9, %do.end, %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr = load i32, ptr @oops_in_progress, align 4
  %tobool42.not = icmp eq i32 %.pr, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %if.end90

land.lhs.true43:                                  ; preds = %if.end39
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %owner, align 4
  %and = and i32 %16, 4
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.end90, label %do.end54, !prof !82

do.end54:                                         ; preds = %land.lhs.true43
  %call55 = call i32 @debug_locks_off() #9
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end90, label %land.lhs.true57

land.lhs.true57:                                  ; preds = %do.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %17 = load i32, ptr @debug_locks_silent, align 4
  %tobool58.not = icmp eq i32 %17, 0
  br i1 %tobool58.not, label %do.end72, label %if.end90

do.end72:                                         ; preds = %land.lhs.true57
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 905, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #9
  br label %if.end90

if.end90:                                         ; preds = %do.end72, %land.lhs.true57, %do.end54, %land.lhs.true43, %if.end39, %for.cond
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %owner, align 4
  %and92 = and i32 %19, 2
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end95, label %for.end

if.end95:                                         ; preds = %if.end90
  %and.i135 = and i32 %19, 7
  %call.i.i133 = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %owner, i32 noundef 4) #9
  %20 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %owner, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i, %if.end95
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 %21, i32 %and.i135, ptr elementtype(i32) %lock) #9, !srcloc !84
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_release.exit.i.i.i, label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_release.exit.i.i.i:           ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i, label %if.then99, label %for.cond, !prof !82

if.then99:                                        ; preds = %arch_atomic_cmpxchg_release.exit.i.i.i
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %owner, align 4
  %and100 = and i32 %24, 1
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %cleanup, label %for.end

for.end:                                          ; preds = %if.then99, %if.end90
  %wait_lock = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %wait_lock) #9
  call void @debug_mutex_unlock(ptr noundef %lock) #9
  %wait_list = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %25 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %26, %wait_list
  br i1 %cmp.i.not, label %if.end112, label %if.then107

if.then107:                                       ; preds = %for.end
  %task111 = getelementptr inbounds %struct.mutex_waiter, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %task111 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task111, align 4
  call void @debug_mutex_wake_waiter(ptr noundef %lock, ptr noundef %26) #9
  call void @wake_q_add(ptr noundef nonnull %wake_q, ptr noundef %28) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %for.end
  %next.0 = phi ptr [ null, %for.end ], [ %28, %if.then107 ]
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %owner, align 4
  %and113 = and i32 %30, 2
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %if.end112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %owner.i) #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %31 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %lock, align 4
  %33 = ptrtoint ptr %next.0 to i32
  %tobool93.not.i = icmp eq ptr %next.0, null
  br label %for.cond.i

for.cond.i:                                       ; preds = %arch_atomic_cmpxchg_release.exit.i.i.i.i, %if.then115
  %storemerge.i = phi i32 [ %32, %if.then115 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_release.exit.i.i.i.i ]
  %34 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge.i, ptr %owner.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %35 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end90.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %and.i.i = and i32 %storemerge.i, -8
  %36 = inttoptr i32 %and.i.i to ptr
  %37 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i108.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i108.i to ptr
  %task4.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task4.i, align 8
  %cmp.not.i = icmp eq ptr %40, %36
  br i1 %cmp.not.i, label %if.end39.i, label %do.end.i, !prof !82

do.end.i:                                         ; preds = %land.lhs.true.i
  %call7.i = call i32 @debug_locks_off() #9
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end39.i, label %land.lhs.true9.i

land.lhs.true9.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %41 = load i32, ptr @debug_locks_silent, align 4
  %tobool10.not.i = icmp eq i32 %41, 0
  br i1 %tobool10.not.i, label %do.end23.i, label %if.end39.i

do.end23.i:                                       ; preds = %land.lhs.true9.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 235, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end23.i, %land.lhs.true9.i, %do.end.i, %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr.i = load i32, ptr @oops_in_progress, align 4
  %tobool42.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true43.i, label %if.end90.i

land.lhs.true43.i:                                ; preds = %if.end39.i
  %42 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %owner.i, align 4
  %and.i136 = and i32 %43, 4
  %tobool44.not.i = icmp eq i32 %and.i136, 0
  br i1 %tobool44.not.i, label %if.end90.i, label %do.end54.i, !prof !82

do.end54.i:                                       ; preds = %land.lhs.true43.i
  %call55.i = call i32 @debug_locks_off() #9
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end90.i, label %land.lhs.true57.i

land.lhs.true57.i:                                ; preds = %do.end54.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %44 = load i32, ptr @debug_locks_silent, align 4
  %tobool58.not.i = icmp eq i32 %44, 0
  br i1 %tobool58.not.i, label %do.end72.i, label %if.end90.i

do.end72.i:                                       ; preds = %land.lhs.true57.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.18) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end72.i, %land.lhs.true57.i, %do.end54.i, %land.lhs.true43.i, %if.end39.i, %for.cond.i
  %45 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %owner.i, align 4
  %and92.i = and i32 %46, 1
  %or.i = or i32 %and92.i, %33
  %or95.i = or i32 %or.i, 4
  %spec.select.i = select i1 %tobool93.not.i, i32 %or.i, i32 %or95.i
  %call.i.i107.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %owner.i, i32 noundef 4) #9
  %47 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %owner.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i, %if.end90.i
  %49 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 %48, i32 %spec.select.i, ptr elementtype(i32) %lock) #9, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_release.exit.i.i.i.i, label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_release.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 1
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %48
  br i1 %cmp.not.i.i.i.i, label %__mutex_handoff.exit, label %for.cond.i, !prof !82

__mutex_handoff.exit:                             ; preds = %arch_atomic_cmpxchg_release.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %owner.i) #9
  br label %if.end116

if.end116:                                        ; preds = %__mutex_handoff.exit, %if.end112
  call void @_raw_spin_unlock(ptr noundef %wait_lock) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %if.then99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %owner) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ww_mutex_unlock(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %0 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %__ww_mutex_unlock.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %2 = load i32, ptr @oops_in_progress, align 4
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i, label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %acquired.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %acquired.i, align 4
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.end39.i, !prof !85

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = tail call i32 @debug_locks_off() #9
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end39.i, label %land.lhs.true9.i

land.lhs.true9.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %5 = load i32, ptr @debug_locks_silent, align 4
  %tobool10.not.i = icmp eq i32 %5, 0
  br i1 %tobool10.not.i, label %do.end23.i, label %if.end39.i

do.end23.i:                                       ; preds = %land.lhs.true9.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 563, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %do.end23.i, %land.lhs.true9.i, %do.end.i, %land.lhs.true.i, %if.then.i
  %6 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx.i, align 4
  %acquired42.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %acquired42.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %acquired42.i, align 4
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end46.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end39.i
  %dec.i = add i32 %9, -1
  %10 = ptrtoint ptr %acquired42.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec.i, ptr %acquired42.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end39.i
  %11 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ctx.i, align 4
  br label %__ww_mutex_unlock.exit

__ww_mutex_unlock.exit:                           ; preds = %if.end46.i, %entry
  %12 = tail call ptr @llvm.returnaddress(i32 0) #9
  %13 = ptrtoint ptr %12 to i32
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %lock, i32 noundef %13) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ww_mutex_trylock(ptr noundef %ww, ptr noundef %ww_ctx) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ww_ctx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @mutex_trylock(ptr noundef %ww)
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end
  %magic = getelementptr inbounds %struct.mutex, ptr %ww, i32 0, i32 4
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %2, %ww
  br i1 %cmp.not, label %if.end40, label %do.end, !prof !82

do.end:                                           ; preds = %land.lhs.true
  %call7 = tail call i32 @debug_locks_off() #9
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end40, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %do.end23, label %if.end40

do.end23:                                         ; preds = %land.lhs.true9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 761, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %if.end40

if.end40:                                         ; preds = %do.end23, %land.lhs.true9, %do.end, %land.lhs.true, %if.end
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 2
  %4 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acquired, align 4
  %cmp42 = icmp eq i32 %5, 0
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 3
  %6 = ptrtoint ptr %wounded to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %wounded, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %call.i = tail call fastcc ptr @__mutex_trylock_common(ptr noundef %ww, i1 noundef zeroext false) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then47, label %return

if.then47:                                        ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %7 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end86.i.i

land.lhs.true.i.i:                                ; preds = %if.then47
  %ctx.i.i = getelementptr inbounds %struct.ww_mutex, ptr %ww, i32 0, i32 1
  %8 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %if.end35.i.i, label %do.end.i.i, !prof !82

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @debug_locks_off() #9
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %10 = load i32, ptr @debug_locks_silent, align 4
  %tobool6.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool6.not.i.i, label %do.end19.i.i, label %if.end35.i.i

do.end19.i.i:                                     ; preds = %land.lhs.true5.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #9
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end19.i.i, %land.lhs.true5.i.i, %do.end.i.i, %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr.i.i = load i32, ptr @oops_in_progress, align 4
  %tobool38.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool38.not.i.i, label %land.lhs.true39.i.i, label %if.end86.i.i

land.lhs.true39.i.i:                              ; preds = %if.end35.i.i
  %done_acquire.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 5
  %11 = ptrtoint ptr %done_acquire.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %done_acquire.i.i, align 4
  %tobool40.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool40.not.i.i, label %if.end86.i.i, label %do.end50.i.i, !prof !82

do.end50.i.i:                                     ; preds = %land.lhs.true39.i.i
  %call51.i.i = tail call i32 @debug_locks_off() #9
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end86.i.i, label %land.lhs.true53.i.i

land.lhs.true53.i.i:                              ; preds = %do.end50.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %13 = load i32, ptr @debug_locks_silent, align 4
  %tobool54.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool54.not.i.i, label %do.end68.i.i, label %if.end86.i.i

do.end68.i.i:                                     ; preds = %land.lhs.true53.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 195, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #9
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %do.end68.i.i, %land.lhs.true53.i.i, %do.end50.i.i, %land.lhs.true39.i.i, %if.end35.i.i, %if.then47
  %contending_lock.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 7
  %14 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %contending_lock.i.i, align 4
  %tobool88.not.i.i = icmp eq ptr %15, null
  br i1 %tobool88.not.i.i, label %if.end193.i.i, label %if.then89.i.i

if.then89.i.i:                                    ; preds = %if.end86.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %16 = load i32, ptr @oops_in_progress, align 4
  %tobool91.not.i.i = icmp ne i32 %16, 0
  %cmp.not.i.i = icmp eq ptr %15, %ww
  %or.cond.i.i = select i1 %tobool91.not.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %or.cond.i.i, label %if.end139.i.i, label %do.end103.i.i, !prof !86

do.end103.i.i:                                    ; preds = %if.then89.i.i
  %call104.i.i = tail call i32 @debug_locks_off() #9
  %tobool105.not.i.i = icmp eq i32 %call104.i.i, 0
  br i1 %tobool105.not.i.i, label %if.end139thread-pre-split.i.i, label %land.lhs.true106.i.i

land.lhs.true106.i.i:                             ; preds = %do.end103.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %17 = load i32, ptr @debug_locks_silent, align 4
  %tobool107.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool107.not.i.i, label %do.end121.i.i, label %if.end139thread-pre-split.i.i

do.end121.i.i:                                    ; preds = %land.lhs.true106.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #9
  br label %if.end139thread-pre-split.i.i

if.end139thread-pre-split.i.i:                    ; preds = %do.end121.i.i, %land.lhs.true106.i.i, %do.end103.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr264.i.i = load i32, ptr @oops_in_progress, align 4
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.end139thread-pre-split.i.i, %if.then89.i.i
  %18 = phi i32 [ %.pr264.i.i, %if.end139thread-pre-split.i.i ], [ %16, %if.then89.i.i ]
  %tobool142.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool142.not.i.i, label %land.lhs.true143.i.i, label %if.end190.i.i

land.lhs.true143.i.i:                             ; preds = %if.end139.i.i
  %19 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %acquired, align 4
  %cmp144.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp144.not.i.i, label %if.end190.i.i, label %do.end154.i.i, !prof !82

do.end154.i.i:                                    ; preds = %land.lhs.true143.i.i
  %call155.i.i = tail call i32 @debug_locks_off() #9
  %tobool156.not.i.i = icmp eq i32 %call155.i.i, 0
  br i1 %tobool156.not.i.i, label %if.end190.i.i, label %land.lhs.true157.i.i

land.lhs.true157.i.i:                             ; preds = %do.end154.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %21 = load i32, ptr @debug_locks_silent, align 4
  %tobool158.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool158.not.i.i, label %do.end172.i.i, label %if.end190.i.i

do.end172.i.i:                                    ; preds = %land.lhs.true157.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #9
  br label %if.end190.i.i

if.end190.i.i:                                    ; preds = %do.end172.i.i, %land.lhs.true157.i.i, %do.end154.i.i, %land.lhs.true143.i.i, %if.end139.i.i
  %22 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %contending_lock.i.i, align 4
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.end190.i.i, %if.end86.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %23 = load i32, ptr @oops_in_progress, align 4
  %tobool195.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool195.not.i.i, label %land.lhs.true196.i.i, label %ww_mutex_lock_acquired.exit.i

land.lhs.true196.i.i:                             ; preds = %if.end193.i.i
  %ww_class.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 6
  %24 = ptrtoint ptr %ww_class.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ww_class.i.i, align 4
  %ww_class197.i.i = getelementptr inbounds %struct.ww_mutex, ptr %ww, i32 0, i32 2
  %26 = ptrtoint ptr %ww_class197.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ww_class197.i.i, align 4
  %cmp198.not.i.i = icmp eq ptr %25, %27
  br i1 %cmp198.not.i.i, label %ww_mutex_lock_acquired.exit.i, label %do.end208.i.i, !prof !82

do.end208.i.i:                                    ; preds = %land.lhs.true196.i.i
  %call209.i.i = tail call i32 @debug_locks_off() #9
  %tobool210.not.i.i = icmp eq i32 %call209.i.i, 0
  br i1 %tobool210.not.i.i, label %ww_mutex_lock_acquired.exit.i, label %land.lhs.true211.i.i

land.lhs.true211.i.i:                             ; preds = %do.end208.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %28 = load i32, ptr @debug_locks_silent, align 4
  %tobool212.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool212.not.i.i, label %do.end226.i.i, label %ww_mutex_lock_acquired.exit.i

do.end226.i.i:                                    ; preds = %land.lhs.true211.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #9
  br label %ww_mutex_lock_acquired.exit.i

ww_mutex_lock_acquired.exit.i:                    ; preds = %do.end226.i.i, %land.lhs.true211.i.i, %do.end208.i.i, %land.lhs.true196.i.i, %if.end193.i.i
  %29 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %acquired, align 4
  %inc.i.i = add i32 %30, 1
  store i32 %inc.i.i, ptr %acquired, align 4
  %ctx247.i.i = getelementptr inbounds %struct.ww_mutex, ptr %ww, i32 0, i32 1
  %31 = ptrtoint ptr %ctx247.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ww_ctx, ptr %ctx247.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ww, i32 noundef 4) #9
  %32 = ptrtoint ptr %ww to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %ww, align 4
  %and.i.i = and i32 %33, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %ww_mutex_set_context_fastpath.exit, label %if.end.i, !prof !82

if.end.i:                                         ; preds = %ww_mutex_lock_acquired.exit.i
  %wait_lock.i.i = getelementptr inbounds %struct.mutex, ptr %ww, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %wait_lock.i.i) #9
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %ww, ptr noundef nonnull %ww_ctx) #9
  tail call void @_raw_spin_unlock(ptr noundef %wait_lock.i.i) #9
  br label %ww_mutex_set_context_fastpath.exit

ww_mutex_set_context_fastpath.exit:               ; preds = %if.end.i, %ww_mutex_lock_acquired.exit.i
  %dep_map = getelementptr inbounds %struct.mutex, ptr %ww, i32 0, i32 5
  %dep_map49 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 8
  %34 = tail call ptr @llvm.returnaddress(i32 0)
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef %dep_map49, i32 noundef %35) #9
  br label %return

return:                                           ; preds = %ww_mutex_set_context_fastpath.exit, %if.end44, %if.then
  %retval.0 = phi i32 [ 1, %ww_mutex_set_context_fastpath.exit ], [ %call, %if.then ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mutex_trylock(ptr noundef %lock) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %entry
  %magic = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 4
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %2, %lock
  br i1 %cmp.not, label %if.end34, label %do.end, !prof !82

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #9
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end34, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %do.end18, label %if.end34

do.end18:                                         ; preds = %land.lhs.true4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1071, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end18, %land.lhs.true4, %do.end, %land.lhs.true, %entry
  %call.i = tail call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  %dep_map = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %5) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end34
  %conv = zext i1 %tobool.not.i to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mutex_lock_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 2, i32 noundef %subclass, ptr noundef null, i32 noundef %1, ptr noundef null, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_mutex_lock_nest_lock(ptr noundef %lock, ptr noundef %nest) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 2, i32 noundef 0, ptr noundef %nest, i32 noundef %1, ptr noundef null, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mutex_lock_killable_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 258, i32 noundef %subclass, ptr noundef null, i32 noundef %1, ptr noundef null, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 1, i32 noundef %subclass, ptr noundef null, i32 noundef %1, ptr noundef null, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mutex_lock_io_nested(ptr noundef %lock, i32 noundef %subclass) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 816) #9
  %call = tail call i32 @io_schedule_prepare() #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call4 = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 2, i32 noundef %subclass, ptr noundef null, i32 noundef %1, ptr noundef null, i1 noundef zeroext false)
  tail call void @io_schedule_finish(i32 noundef %call) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_prepare() local_unnamed_addr #1

; Function Attrs: alwaysinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef %state, i32 noundef %subclass, ptr noundef %nest_lock, i32 noundef %ip, ptr noundef %ww_ctx, i1 noundef zeroext %use_ww_ctx) #5 section ".sched.text" align 64 {
entry:
  %waiter = alloca %struct.mutex_waiter, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %waiter) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 1
  %2 = getelementptr inbounds %struct.mutex_waiter, ptr %waiter, i32 0, i32 2
  %spec.select = select i1 %use_ww_ctx, ptr %ww_ctx, ptr null
  %3 = call ptr @memset(ptr %waiter, i32 255, i32 20)
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 577) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %4 = load i32, ptr @oops_in_progress, align 4
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %entry
  %magic = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 4
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %6, %lock
  br i1 %cmp.not, label %if.end43, label %do.end10, !prof !82

do.end10:                                         ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #9
  %tobool11.not = icmp eq i32 %call, 0
  br i1 %tobool11.not, label %if.end43, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %do.end26, label %if.end43

do.end26:                                         ; preds = %land.lhs.true12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 579, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end26, %land.lhs.true12, %do.end10, %land.lhs.true, %entry
  %tobool46.not = icmp eq ptr %spec.select, null
  br i1 %tobool46.not, label %do.body65, label %if.then47

if.then47:                                        ; preds = %if.end43
  %ctx = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ctx, align 4
  %cmp52 = icmp eq ptr %spec.select, %9
  br i1 %cmp52, label %cleanup460, label %if.end60, !prof !85

if.end60:                                         ; preds = %if.then47
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %10 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %acquired, align 4
  %cmp61 = icmp eq i32 %11, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end60
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 3
  %12 = ptrtoint ptr %wounded to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %wounded, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 8
  br label %do.body65

do.body65:                                        ; preds = %if.end63, %if.end43
  %nest_lock.addr.0 = phi ptr [ %dep_map, %if.end63 ], [ %nest_lock, %if.end43 ]
  %13 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %dep_map68 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 5
  tail call void @lock_acquire(ptr noundef %dep_map68, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %nest_lock.addr.0, i32 noundef %ip) #9
  %call.i551 = tail call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool.not.i552 = icmp eq ptr %call.i551, null
  br i1 %tobool.not.i552, label %if.then71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body65
  %call70 = tail call fastcc zeroext i1 @mutex_optimistic_spin(ptr noundef %lock, ptr noundef %spec.select, ptr noundef null)
  br i1 %call70, label %if.then71, label %if.end79

if.then71:                                        ; preds = %lor.lhs.false, %do.body65
  tail call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br i1 %tobool46.not, label %do.body76, label %if.then74

if.then74:                                        ; preds = %if.then71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %17 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end86.i.i

land.lhs.true.i.i:                                ; preds = %if.then74
  %ctx.i.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %18 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i.i, label %if.end35.i.i, label %do.end.i.i, !prof !82

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @debug_locks_off() #9
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end35.i.i, label %land.lhs.true5.i.i

land.lhs.true5.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %20 = load i32, ptr @debug_locks_silent, align 4
  %tobool6.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool6.not.i.i, label %do.end19.i.i, label %if.end35.i.i

do.end19.i.i:                                     ; preds = %land.lhs.true5.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #9
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end19.i.i, %land.lhs.true5.i.i, %do.end.i.i, %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr.i.i = load i32, ptr @oops_in_progress, align 4
  %tobool38.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool38.not.i.i, label %land.lhs.true39.i.i, label %if.end86.i.i

land.lhs.true39.i.i:                              ; preds = %if.end35.i.i
  %done_acquire.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 5
  %21 = ptrtoint ptr %done_acquire.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %done_acquire.i.i, align 4
  %tobool40.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool40.not.i.i, label %if.end86.i.i, label %do.end50.i.i, !prof !82

do.end50.i.i:                                     ; preds = %land.lhs.true39.i.i
  %call51.i.i = tail call i32 @debug_locks_off() #9
  %tobool52.not.i.i = icmp eq i32 %call51.i.i, 0
  br i1 %tobool52.not.i.i, label %if.end86.i.i, label %land.lhs.true53.i.i

land.lhs.true53.i.i:                              ; preds = %do.end50.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %23 = load i32, ptr @debug_locks_silent, align 4
  %tobool54.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool54.not.i.i, label %do.end68.i.i, label %if.end86.i.i

do.end68.i.i:                                     ; preds = %land.lhs.true53.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 195, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #9
  br label %if.end86.i.i

if.end86.i.i:                                     ; preds = %do.end68.i.i, %land.lhs.true53.i.i, %do.end50.i.i, %land.lhs.true39.i.i, %if.end35.i.i, %if.then74
  %contending_lock.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %24 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %contending_lock.i.i, align 4
  %tobool88.not.i.i = icmp eq ptr %25, null
  br i1 %tobool88.not.i.i, label %if.end193.i.i, label %if.then89.i.i

if.then89.i.i:                                    ; preds = %if.end86.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %26 = load i32, ptr @oops_in_progress, align 4
  %tobool91.not.i.i = icmp ne i32 %26, 0
  %cmp.not.i.i = icmp eq ptr %25, %lock
  %or.cond.i.i = select i1 %tobool91.not.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %or.cond.i.i, label %if.end139.i.i, label %do.end103.i.i, !prof !86

do.end103.i.i:                                    ; preds = %if.then89.i.i
  %call104.i.i = tail call i32 @debug_locks_off() #9
  %tobool105.not.i.i = icmp eq i32 %call104.i.i, 0
  br i1 %tobool105.not.i.i, label %if.end139thread-pre-split.i.i, label %land.lhs.true106.i.i

land.lhs.true106.i.i:                             ; preds = %do.end103.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %27 = load i32, ptr @debug_locks_silent, align 4
  %tobool107.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool107.not.i.i, label %do.end121.i.i, label %if.end139thread-pre-split.i.i

do.end121.i.i:                                    ; preds = %land.lhs.true106.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #9
  br label %if.end139thread-pre-split.i.i

if.end139thread-pre-split.i.i:                    ; preds = %do.end121.i.i, %land.lhs.true106.i.i, %do.end103.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr264.i.i = load i32, ptr @oops_in_progress, align 4
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.end139thread-pre-split.i.i, %if.then89.i.i
  %28 = phi i32 [ %.pr264.i.i, %if.end139thread-pre-split.i.i ], [ %26, %if.then89.i.i ]
  %tobool142.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool142.not.i.i, label %land.lhs.true143.i.i, label %if.end190.i.i

land.lhs.true143.i.i:                             ; preds = %if.end139.i.i
  %acquired.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %29 = ptrtoint ptr %acquired.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %acquired.i.i, align 4
  %cmp144.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp144.not.i.i, label %if.end190.i.i, label %do.end154.i.i, !prof !82

do.end154.i.i:                                    ; preds = %land.lhs.true143.i.i
  %call155.i.i = tail call i32 @debug_locks_off() #9
  %tobool156.not.i.i = icmp eq i32 %call155.i.i, 0
  br i1 %tobool156.not.i.i, label %if.end190.i.i, label %land.lhs.true157.i.i

land.lhs.true157.i.i:                             ; preds = %do.end154.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %31 = load i32, ptr @debug_locks_silent, align 4
  %tobool158.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool158.not.i.i, label %do.end172.i.i, label %if.end190.i.i

do.end172.i.i:                                    ; preds = %land.lhs.true157.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #9
  br label %if.end190.i.i

if.end190.i.i:                                    ; preds = %do.end172.i.i, %land.lhs.true157.i.i, %do.end154.i.i, %land.lhs.true143.i.i, %if.end139.i.i
  %32 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %contending_lock.i.i, align 4
  br label %if.end193.i.i

if.end193.i.i:                                    ; preds = %if.end190.i.i, %if.end86.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %33 = load i32, ptr @oops_in_progress, align 4
  %tobool195.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool195.not.i.i, label %land.lhs.true196.i.i, label %ww_mutex_lock_acquired.exit.i

land.lhs.true196.i.i:                             ; preds = %if.end193.i.i
  %ww_class.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 6
  %34 = ptrtoint ptr %ww_class.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ww_class.i.i, align 4
  %ww_class197.i.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 2
  %36 = ptrtoint ptr %ww_class197.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ww_class197.i.i, align 4
  %cmp198.not.i.i = icmp eq ptr %35, %37
  br i1 %cmp198.not.i.i, label %ww_mutex_lock_acquired.exit.i, label %do.end208.i.i, !prof !82

do.end208.i.i:                                    ; preds = %land.lhs.true196.i.i
  %call209.i.i = tail call i32 @debug_locks_off() #9
  %tobool210.not.i.i = icmp eq i32 %call209.i.i, 0
  br i1 %tobool210.not.i.i, label %ww_mutex_lock_acquired.exit.i, label %land.lhs.true211.i.i

land.lhs.true211.i.i:                             ; preds = %do.end208.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %38 = load i32, ptr @debug_locks_silent, align 4
  %tobool212.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool212.not.i.i, label %do.end226.i.i, label %ww_mutex_lock_acquired.exit.i

do.end226.i.i:                                    ; preds = %land.lhs.true211.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #9
  br label %ww_mutex_lock_acquired.exit.i

ww_mutex_lock_acquired.exit.i:                    ; preds = %do.end226.i.i, %land.lhs.true211.i.i, %do.end208.i.i, %land.lhs.true196.i.i, %if.end193.i.i
  %acquired246.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %39 = ptrtoint ptr %acquired246.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %acquired246.i.i, align 4
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr %acquired246.i.i, align 4
  %ctx247.i.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %41 = ptrtoint ptr %ctx247.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spec.select, ptr %ctx247.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %42 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %lock, align 4
  %and.i.i = and i32 %43, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body76, label %if.end.i, !prof !82

if.end.i:                                         ; preds = %ww_mutex_lock_acquired.exit.i
  %wait_lock.i.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %wait_lock.i.i) #9
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %lock, ptr noundef nonnull %spec.select) #9
  tail call void @_raw_spin_unlock(ptr noundef %wait_lock.i.i) #9
  br label %do.body76

do.body76:                                        ; preds = %if.end.i, %ww_mutex_lock_acquired.exit.i, %if.then71
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %44 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  br label %cleanup460.sink.split

if.end79:                                         ; preds = %lor.lhs.false
  %wait_lock = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %wait_lock) #9
  %call.i553 = tail call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool.not.i554 = icmp eq ptr %call.i553, null
  br i1 %tobool.not.i554, label %if.then81, label %if.end85

if.then81:                                        ; preds = %if.end79
  br i1 %tobool46.not, label %if.end379.critedge, label %if.then83

if.then83:                                        ; preds = %if.then81
  tail call fastcc void @__ww_mutex_check_waiters(ptr noundef %lock, ptr noundef nonnull %spec.select)
  tail call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br label %if.then378

if.end85:                                         ; preds = %if.end79
  call void @debug_mutex_lock_common(ptr noundef %lock, ptr noundef nonnull %waiter) #9
  %45 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %1, align 4
  br i1 %use_ww_ctx, label %if.then89, label %if.then94.critedge

if.then89:                                        ; preds = %if.end85
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spec.select, ptr %2, align 4
  call void @lock_contended(ptr noundef %dep_map68, i32 noundef %ip) #9
  br i1 %tobool46.not, label %if.then.i, label %if.end.i556

if.then.i:                                        ; preds = %if.then89
  %wait_list.i.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %51 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i, align 8
  call void @debug_mutex_add_waiter(ptr noundef %lock, ptr noundef nonnull %waiter, ptr noundef %54) #9
  %prev.i.i.i.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %56, ptr noundef %wait_list.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i
  %57 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %waiter, ptr %prev.i.i.i.i, align 4
  %58 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %wait_list.i.i, ptr %waiter, align 4
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %0, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %waiter, ptr %56, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i
  %61 = ptrtoint ptr %wait_list.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wait_list.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %62, %waiter
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %do.body101

if.then.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %63 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 1, ptr elementtype(i32) %lock) #9, !srcloc !90
  br label %do.body101

if.end.i556:                                      ; preds = %if.then89
  %is_wait_die1.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 4
  %64 = ptrtoint ptr %is_wait_die1.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %is_wait_die1.i, align 2
  %tobool2.not.i = icmp eq i16 %65, 0
  %wait_list.i51.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.i = icmp eq ptr %67, %wait_list.i51.i
  %tobool3.not107111.i = icmp eq ptr %67, null
  %tobool3.not107.i = or i1 %cmp.i.i, %tobool3.not107111.i
  br i1 %tobool3.not107.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i556
  %stamp.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %cur.0109.i = phi ptr [ %67, %for.body.lr.ph.i ], [ %87, %for.inc.i ]
  %pos.0108.i = phi ptr [ null, %for.body.lr.ph.i ], [ %pos.1.i, %for.inc.i ]
  %ww_ctx4.i = getelementptr inbounds %struct.mutex_waiter, ptr %cur.0109.i, i32 0, i32 2
  %68 = ptrtoint ptr %ww_ctx4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ww_ctx4.i, align 4
  %tobool5.not.i = icmp eq ptr %69, null
  br i1 %tobool5.not.i, label %for.inc.i, label %if.end7.i

if.end7.i:                                        ; preds = %for.body.i
  %70 = ptrtoint ptr %stamp.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stamp.i.i, align 4
  %stamp1.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %stamp1.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stamp1.i.i, align 4
  %sub.i.i = sub i32 %71, %73
  %cmp.i52.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i52.i, label %if.then10.i, label %if.end18.i

if.then10.i:                                      ; preds = %if.end7.i
  br i1 %tobool2.not.i, label %if.then22.critedge.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.then10.i
  %acquired.i.i557 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %74 = ptrtoint ptr %acquired.i.i557 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %acquired.i.i557, align 4
  %cmp.not.i.i558 = icmp eq i32 %75, 0
  br i1 %cmp.not.i.i558, label %if.end27.critedge.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %76 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i.i559 = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i559, label %land.lhs.true.i.i562, label %__ww_mutex_add_waiter.exit

land.lhs.true.i.i562:                             ; preds = %if.then.i.i
  %contending_lock.i.i560 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %77 = ptrtoint ptr %contending_lock.i.i560 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %contending_lock.i.i560, align 4
  %tobool1.not.i.i561 = icmp eq ptr %78, null
  br i1 %tobool1.not.i.i561, label %__ww_mutex_add_waiter.exit, label %do.end.i.i564, !prof !82

do.end.i.i564:                                    ; preds = %land.lhs.true.i.i562
  %call.i.i563 = call i32 @debug_locks_off() #9
  %tobool5.not.i.i = icmp eq i32 %call.i.i563, 0
  br i1 %tobool5.not.i.i, label %__ww_mutex_add_waiter.exit, label %land.lhs.true6.i.i

land.lhs.true6.i.i:                               ; preds = %do.end.i.i564
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %79 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %__ww_mutex_add_waiter.exit

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 420, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16) #9
  br label %__ww_mutex_add_waiter.exit

if.end18.i:                                       ; preds = %if.end7.i
  %80 = ptrtoint ptr %is_wait_die1.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %is_wait_die1.i, align 2
  %tobool.not.i53.i = icmp eq i16 %81, 0
  br i1 %tobool.not.i53.i, label %for.inc.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end18.i
  %acquired.i54.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %69, i32 0, i32 2
  %82 = ptrtoint ptr %acquired.i54.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %acquired.i54.i, align 4
  %cmp.not.i55.i = icmp ne i32 %83, 0
  %sub.i.i.i = sub i32 %73, %71
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, 0
  %or.cond.i565 = select i1 %cmp.not.i55.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i565, label %if.then3.i.i, label %for.inc.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @debug_mutex_wake_waiter(ptr noundef %lock, ptr noundef nonnull %cur.0109.i) #9
  %task.i.i = getelementptr inbounds %struct.mutex_waiter, ptr %cur.0109.i, i32 0, i32 1
  %84 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.i.i, align 4
  %call4.i.i = call i32 @wake_up_process(ptr noundef %85) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i.i, %if.end.i.i, %if.end18.i, %for.body.i
  %pos.1.i = phi ptr [ %pos.0108.i, %for.body.i ], [ %cur.0109.i, %if.end18.i ], [ %cur.0109.i, %if.end.i.i ], [ %cur.0109.i, %if.then3.i.i ]
  %prev.i57.i = getelementptr inbounds %struct.list_head, ptr %cur.0109.i, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i57.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i57.i, align 4
  %cmp.i59.i = icmp eq ptr %87, %wait_list.i51.i
  %tobool3.not114.i = icmp eq ptr %87, null
  %tobool3.not.i = or i1 %cmp.i59.i, %tobool3.not114.i
  br i1 %tobool3.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %if.end.i556
  %pos.0.lcssa.i = phi ptr [ null, %if.end.i556 ], [ %pos.1.i, %for.inc.i ]
  %tobool.not.i62.i = icmp eq ptr %pos.0.lcssa.i, null
  %spec.select.i.i = select i1 %tobool.not.i62.i, ptr %wait_list.i51.i, ptr %pos.0.lcssa.i
  %88 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i63.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i63.i to ptr
  %task.i.i64.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.i.i64.i, align 8
  call void @debug_mutex_add_waiter(ptr noundef %lock, ptr noundef nonnull %waiter, ptr noundef %91) #9
  %prev.i.i.i65.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i65.i, align 4
  %call.i.i.i.i66.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %93, ptr noundef %spec.select.i.i) #9
  br i1 %call.i.i.i.i66.i, label %if.end.i.i.i.i68.i, label %list_add_tail.exit.i.i70.i

if.end.i.i.i.i68.i:                               ; preds = %for.end.i
  %94 = ptrtoint ptr %prev.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %waiter, ptr %prev.i.i.i65.i, align 4
  %95 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %spec.select.i.i, ptr %waiter, align 4
  %96 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %0, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %waiter, ptr %93, align 4
  br label %list_add_tail.exit.i.i70.i

list_add_tail.exit.i.i70.i:                       ; preds = %if.end.i.i.i.i68.i, %for.end.i
  %98 = ptrtoint ptr %wait_list.i51.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %wait_list.i51.i, align 4
  %cmp.i.i.i69.i = icmp eq ptr %99, %waiter
  br i1 %cmp.i.i.i69.i, label %if.then.i.i72.i, label %__ww_waiter_add.exit73.i

if.then.i.i72.i:                                  ; preds = %list_add_tail.exit.i.i70.i
  %call.i.i.i.i.i71.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %100 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 1, ptr elementtype(i32) %lock) #9, !srcloc !90
  br label %__ww_waiter_add.exit73.i

__ww_waiter_add.exit73.i:                         ; preds = %if.then.i.i72.i, %list_add_tail.exit.i.i70.i
  br i1 %tobool2.not.i, label %if.then22.i, label %do.body101

if.then22.critedge.i:                             ; preds = %if.then10.i
  %tobool.not.i75.i = icmp eq ptr %pos.0108.i, null
  %spec.select.i76.i = select i1 %tobool.not.i75.i, ptr %wait_list.i51.i, ptr %pos.0108.i
  %101 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i77.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i77.i to ptr
  %task.i.i78.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task.i.i78.i, align 8
  call void @debug_mutex_add_waiter(ptr noundef %lock, ptr noundef nonnull %waiter, ptr noundef %104) #9
  %prev.i.i.i79.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i76.i, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i.i79.i, align 4
  %call.i.i.i.i80.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %106, ptr noundef %spec.select.i76.i) #9
  br i1 %call.i.i.i.i80.i, label %if.end.i.i.i.i82.i, label %list_add_tail.exit.i.i84.i

if.end.i.i.i.i82.i:                               ; preds = %if.then22.critedge.i
  %107 = ptrtoint ptr %prev.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %waiter, ptr %prev.i.i.i79.i, align 4
  %108 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %spec.select.i76.i, ptr %waiter, align 4
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %0, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %waiter, ptr %106, align 4
  br label %list_add_tail.exit.i.i84.i

list_add_tail.exit.i.i84.i:                       ; preds = %if.end.i.i.i.i82.i, %if.then22.critedge.i
  %111 = ptrtoint ptr %wait_list.i51.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wait_list.i51.i, align 4
  %cmp.i.i.i83.i = icmp eq ptr %112, %waiter
  br i1 %cmp.i.i.i83.i, label %if.then.i.i86.i, label %if.then22.i

if.then.i.i86.i:                                  ; preds = %list_add_tail.exit.i.i84.i
  %call.i.i.i.i.i85.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %113 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 1, ptr elementtype(i32) %lock) #9, !srcloc !90
  br label %if.then22.i

if.then22.i:                                      ; preds = %if.then.i.i86.i, %list_add_tail.exit.i.i84.i, %__ww_waiter_add.exit73.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  %ctx.i566 = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %114 = ptrtoint ptr %ctx.i566 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ctx.i566, align 4
  %call26.i = call fastcc zeroext i1 @__ww_mutex_wound(ptr noundef %lock, ptr noundef nonnull %spec.select, ptr noundef %115) #9
  br label %do.body101

if.end27.critedge.i:                              ; preds = %if.then12.i
  %tobool.not.i89.i = icmp eq ptr %pos.0108.i, null
  %spec.select.i90.i = select i1 %tobool.not.i89.i, ptr %wait_list.i51.i, ptr %pos.0108.i
  %116 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i91.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i91.i to ptr
  %task.i.i92.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i.i92.i, align 8
  call void @debug_mutex_add_waiter(ptr noundef %lock, ptr noundef nonnull %waiter, ptr noundef %119) #9
  %prev.i.i.i93.i = getelementptr inbounds %struct.list_head, ptr %spec.select.i90.i, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i.i93.i, align 4
  %call.i.i.i.i94.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %121, ptr noundef %spec.select.i90.i) #9
  br i1 %call.i.i.i.i94.i, label %if.end.i.i.i.i96.i, label %list_add_tail.exit.i.i98.i

if.end.i.i.i.i96.i:                               ; preds = %if.end27.critedge.i
  %122 = ptrtoint ptr %prev.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %waiter, ptr %prev.i.i.i93.i, align 4
  %123 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %spec.select.i90.i, ptr %waiter, align 4
  %124 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %0, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %waiter, ptr %121, align 4
  br label %list_add_tail.exit.i.i98.i

list_add_tail.exit.i.i98.i:                       ; preds = %if.end.i.i.i.i96.i, %if.end27.critedge.i
  %126 = ptrtoint ptr %wait_list.i51.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %wait_list.i51.i, align 4
  %cmp.i.i.i97.i = icmp eq ptr %127, %waiter
  br i1 %cmp.i.i.i97.i, label %if.then.i.i100.i, label %do.body101

if.then.i.i100.i:                                 ; preds = %list_add_tail.exit.i.i98.i
  %call.i.i.i.i.i99.i = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %128 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 1, ptr elementtype(i32) %lock) #9, !srcloc !90
  br label %do.body101

__ww_mutex_add_waiter.exit:                       ; preds = %do.end20.i.i, %land.lhs.true6.i.i, %do.end.i.i564, %land.lhs.true.i.i562, %if.then.i.i
  %contending_lock39.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %129 = ptrtoint ptr %contending_lock39.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %lock, ptr %contending_lock39.i.i, align 4
  br label %err_early_kill

if.then94.critedge:                               ; preds = %if.end85
  call void @lock_contended(ptr noundef %dep_map68, i32 noundef %ip) #9
  %wait_list = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %130 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i567 = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i567 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task.i, align 8
  call void @debug_mutex_add_waiter(ptr noundef %lock, ptr noundef nonnull %waiter, ptr noundef %133) #9
  %prev.i.i568 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3, i32 1
  %134 = ptrtoint ptr %prev.i.i568 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i568, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %135, ptr noundef %wait_list) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then94.critedge
  %136 = ptrtoint ptr %prev.i.i568 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %waiter, ptr %prev.i.i568, align 4
  %137 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %wait_list, ptr %waiter, align 4
  %138 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %0, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %waiter, ptr %135, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then94.critedge
  %140 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %wait_list, align 4
  %cmp.i.i570 = icmp eq ptr %141, %waiter
  br i1 %cmp.i.i570, label %if.then.i572, label %do.body101

if.then.i572:                                     ; preds = %list_add_tail.exit.i
  %call.i.i.i.i571 = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %142 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 1, ptr elementtype(i32) %lock) #9, !srcloc !90
  br label %do.body101

do.body101:                                       ; preds = %if.then.i572, %list_add_tail.exit.i, %if.then.i.i100.i, %list_add_tail.exit.i.i98.i, %if.then22.i, %__ww_waiter_add.exit73.i, %if.then.i.i.i, %list_add_tail.exit.i.i.i
  %and = and i32 %state, 204
  %tobool102.not = icmp eq i32 %and, 0
  br i1 %tobool102.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %do.body101
  %.b538 = load i1, ptr @__mutex_lock_common.__already_done, align 1
  br i1 %.b538, label %__here, label %if.then118, !prof !82

if.then118:                                       ; preds = %land.rhs
  store i1 true, ptr @__mutex_lock_common.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 643, i32 noundef 9, ptr noundef null) #9
  br label %__here

__here:                                           ; preds = %if.then118, %land.rhs, %do.body101
  %143 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 212
  %145 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 ptrtoint (ptr blockaddress(@__mutex_lock_common, %__here) to i32), ptr %task_state_change, align 4
  %146 = load ptr, ptr %task, align 8
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 %state, ptr %146, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  %call.i574641 = call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool.not.i575642 = icmp eq ptr %call.i574641, null
  br i1 %tobool.not.i575642, label %__here347, label %if.end182.lr.ph

if.end182.lr.ph:                                  ; preds = %__here
  %and.i576 = and i32 %state, 257
  %tobool.not.i577 = icmp eq i32 %and.i576, 0
  %and4.i = and i32 %state, 1
  %tobool5.not.i581 = icmp eq i32 %and4.i, 0
  %ctx2.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %acquired.i582 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %is_wait_die.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 4
  %stamp.i.i597 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 1
  %wait_list.i.i603 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 3
  br label %if.end182

if.end182:                                        ; preds = %cleanup, %if.end182.lr.ph
  %148 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %task, align 8
  br i1 %tobool.not.i577, label %if.end188, label %if.end.i579

if.end.i579:                                      ; preds = %if.end182
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %stack.i.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %151, align 4
  %154 = and i32 %153, 256
  %tobool.not.i.i578 = icmp eq i32 %154, 0
  br i1 %tobool.not.i.i578, label %signal_pending.exit.i, label %if.end3.i, !prof !82

signal_pending.exit.i:                            ; preds = %if.end.i579
  %155 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %151, align 4
  %and1.i.i.i.i.i.i = and i32 %156, 1
  %tobool1.not.i580 = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i580, label %if.end188, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i579
  br i1 %tobool5.not.i581, label %signal_pending_state.exit, label %__here434

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %149, i32 0, i32 116, i32 1
  %157 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %signal.i.i, align 4
  %159 = and i32 %158, 256
  %tobool186.not = icmp eq i32 %159, 0
  br i1 %tobool186.not, label %if.end188, label %__here434

if.end188:                                        ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %if.end182
  br i1 %tobool46.not, label %if.end195, label %if.then190

if.then190:                                       ; preds = %if.end188
  %160 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile ptr, ptr %ctx2.i, align 4
  %162 = ptrtoint ptr %acquired.i582 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %acquired.i582, align 4
  %cmp.i = icmp eq i32 %163, 0
  br i1 %cmp.i, label %if.end195, label %if.end.i584

if.end.i584:                                      ; preds = %if.then190
  %164 = ptrtoint ptr %is_wait_die.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %is_wait_die.i, align 2
  %tobool.not.i583 = icmp eq i16 %165, 0
  br i1 %tobool.not.i583, label %if.then3.i, label %if.end7.i596

if.then3.i:                                       ; preds = %if.end.i584
  %166 = ptrtoint ptr %wounded.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %wounded.i, align 4
  %tobool4.not.i585 = icmp eq i16 %167, 0
  br i1 %tobool4.not.i585, label %if.end195, label %if.then.i.i587

if.then.i.i587:                                   ; preds = %if.then3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %168 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i.i586 = icmp eq i32 %168, 0
  br i1 %tobool.not.i.i586, label %land.lhs.true.i.i590, label %__ww_mutex_check_kill.exit

land.lhs.true.i.i590:                             ; preds = %if.then.i.i587
  %contending_lock.i.i588 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %169 = ptrtoint ptr %contending_lock.i.i588 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %contending_lock.i.i588, align 4
  %tobool1.not.i.i589 = icmp eq ptr %170, null
  br i1 %tobool1.not.i.i589, label %__ww_mutex_check_kill.exit, label %do.end.i.i593, !prof !82

do.end.i.i593:                                    ; preds = %land.lhs.true.i.i590
  %call.i.i591 = call i32 @debug_locks_off() #9
  %tobool5.not.i.i592 = icmp eq i32 %call.i.i591, 0
  br i1 %tobool5.not.i.i592, label %__ww_mutex_check_kill.exit, label %land.lhs.true6.i.i595

land.lhs.true6.i.i595:                            ; preds = %do.end.i.i593
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %171 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i.i594 = icmp eq i32 %171, 0
  br i1 %tobool7.not.i.i594, label %cleanup.sink.split.sink.split.i, label %__ww_mutex_check_kill.exit

if.end7.i596:                                     ; preds = %if.end.i584
  %tobool8.not.i = icmp eq ptr %161, null
  br i1 %tobool8.not.i, label %if.end12.i, label %land.lhs.true.i601

land.lhs.true.i601:                               ; preds = %if.end7.i596
  %172 = ptrtoint ptr %stamp.i.i597 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %stamp.i.i597, align 4
  %stamp1.i.i598 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %161, i32 0, i32 1
  %174 = ptrtoint ptr %stamp1.i.i598 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %stamp1.i.i598, align 4
  %sub.i.i599 = sub i32 %173, %175
  %cmp.i.i600 = icmp sgt i32 %sub.i.i599, 0
  br i1 %cmp.i.i600, label %if.then.i39.i, label %if.end12.i

if.then.i39.i:                                    ; preds = %land.lhs.true.i601
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %176 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i38.i = icmp eq i32 %176, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i42.i, label %__ww_mutex_check_kill.exit

land.lhs.true.i42.i:                              ; preds = %if.then.i39.i
  %contending_lock.i40.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %177 = ptrtoint ptr %contending_lock.i40.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %contending_lock.i40.i, align 4
  %tobool1.not.i41.i = icmp eq ptr %178, null
  br i1 %tobool1.not.i41.i, label %__ww_mutex_check_kill.exit, label %do.end.i45.i, !prof !82

do.end.i45.i:                                     ; preds = %land.lhs.true.i42.i
  %call.i43.i = call i32 @debug_locks_off() #9
  %tobool5.not.i44.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool5.not.i44.i, label %__ww_mutex_check_kill.exit, label %land.lhs.true6.i47.i

land.lhs.true6.i47.i:                             ; preds = %do.end.i45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %179 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i46.i = icmp eq i32 %179, 0
  br i1 %tobool7.not.i46.i, label %cleanup.sink.split.sink.split.i, label %__ww_mutex_check_kill.exit

if.end12.i:                                       ; preds = %land.lhs.true.i601, %if.end7.i596
  %180 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %0, align 4
  %cmp.i70.i = icmp eq ptr %181, %wait_list.i.i603
  %tobool14.not7779.i = icmp eq ptr %181, null
  %tobool14.not77.i = or i1 %cmp.i70.i, %tobool14.not7779.i
  br i1 %tobool14.not77.i, label %if.end195, label %for.body.i604

for.body.i604:                                    ; preds = %for.inc.i605, %if.end12.i
  %cur.078.i = phi ptr [ %189, %for.inc.i605 ], [ %181, %if.end12.i ]
  %ww_ctx.i = getelementptr inbounds %struct.mutex_waiter, ptr %cur.078.i, i32 0, i32 2
  %182 = ptrtoint ptr %ww_ctx.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %ww_ctx.i, align 4
  %tobool15.not.i = icmp eq ptr %183, null
  br i1 %tobool15.not.i, label %for.inc.i605, label %if.then.i56.i

if.then.i56.i:                                    ; preds = %for.body.i604
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %184 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i55.i = icmp eq i32 %184, 0
  br i1 %tobool.not.i55.i, label %land.lhs.true.i59.i, label %__ww_mutex_check_kill.exit

land.lhs.true.i59.i:                              ; preds = %if.then.i56.i
  %contending_lock.i57.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %185 = ptrtoint ptr %contending_lock.i57.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %contending_lock.i57.i, align 4
  %tobool1.not.i58.i = icmp eq ptr %186, null
  br i1 %tobool1.not.i58.i, label %__ww_mutex_check_kill.exit, label %do.end.i62.i, !prof !82

do.end.i62.i:                                     ; preds = %land.lhs.true.i59.i
  %call.i60.i = call i32 @debug_locks_off() #9
  %tobool5.not.i61.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool5.not.i61.i, label %__ww_mutex_check_kill.exit, label %land.lhs.true6.i64.i

land.lhs.true6.i64.i:                             ; preds = %do.end.i62.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %187 = load i32, ptr @debug_locks_silent, align 4
  %tobool7.not.i63.i = icmp eq i32 %187, 0
  br i1 %tobool7.not.i63.i, label %cleanup.sink.split.sink.split.i, label %__ww_mutex_check_kill.exit

for.inc.i605:                                     ; preds = %for.body.i604
  %prev.i71.i = getelementptr inbounds %struct.list_head, ptr %cur.078.i, i32 0, i32 1
  %188 = ptrtoint ptr %prev.i71.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %prev.i71.i, align 4
  %cmp.i73.i = icmp eq ptr %189, %wait_list.i.i603
  %tobool14.not80.i = icmp eq ptr %189, null
  %tobool14.not.i = or i1 %cmp.i73.i, %tobool14.not80.i
  br i1 %tobool14.not.i, label %if.end195, label %for.body.i604

cleanup.sink.split.sink.split.i:                  ; preds = %land.lhs.true6.i64.i, %land.lhs.true6.i47.i, %land.lhs.true6.i.i595
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 420, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16) #9
  br label %__ww_mutex_check_kill.exit

__ww_mutex_check_kill.exit:                       ; preds = %cleanup.sink.split.sink.split.i, %land.lhs.true6.i64.i, %do.end.i62.i, %land.lhs.true.i59.i, %if.then.i56.i, %land.lhs.true6.i47.i, %do.end.i45.i, %land.lhs.true.i42.i, %if.then.i39.i, %land.lhs.true6.i.i595, %do.end.i.i593, %land.lhs.true.i.i590, %if.then.i.i587
  %contending_lock39.i66.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %190 = ptrtoint ptr %contending_lock39.i66.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %lock, ptr %contending_lock39.i66.i, align 4
  br label %__here434

if.end195:                                        ; preds = %for.inc.i605, %if.end12.i, %if.then3.i, %if.then190, %if.end188
  call void @_raw_spin_unlock(ptr noundef %wait_lock) #9
  call void @schedule_preempt_disabled() #9
  %191 = ptrtoint ptr %wait_list.i.i603 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %wait_list.i.i603, align 4
  %cmp.i607 = icmp eq ptr %192, %waiter
  br i1 %tobool102.not, label %__here256, label %land.rhs210

land.rhs210:                                      ; preds = %if.end195
  %.b536537 = load i1, ptr @__mutex_lock_common.__already_done.13, align 1
  br i1 %.b536537, label %__here256, label %if.then221, !prof !82

if.then221:                                       ; preds = %land.rhs210
  store i1 true, ptr @__mutex_lock_common.__already_done.13, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 677, i32 noundef 9, ptr noundef null) #9
  br label %__here256

__here256:                                        ; preds = %if.then221, %land.rhs210, %if.end195
  %193 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task, align 8
  %task_state_change260 = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 212
  %195 = ptrtoint ptr %task_state_change260 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 ptrtoint (ptr blockaddress(@__mutex_lock_common, %__here256) to i32), ptr %task_state_change260, align 4
  %196 = load ptr, ptr %task, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile i32 %state, ptr %196, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  %call.i608 = call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext %cmp.i607) #9
  %tobool1.not.i609 = icmp eq ptr %call.i608, null
  br i1 %tobool1.not.i609, label %for.end, label %lor.lhs.false288

lor.lhs.false288:                                 ; preds = %__here256
  br i1 %cmp.i607, label %land.lhs.true290, label %cleanup

land.lhs.true290:                                 ; preds = %lor.lhs.false288
  %call291 = call fastcc zeroext i1 @mutex_optimistic_spin(ptr noundef %lock, ptr noundef %spec.select, ptr noundef nonnull %waiter)
  br i1 %call291, label %for.end, label %cleanup

cleanup:                                          ; preds = %land.lhs.true290, %lor.lhs.false288
  call void @_raw_spin_lock(ptr noundef %wait_lock) #9
  %call.i574 = call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool.not.i575 = icmp eq ptr %call.i574, null
  br i1 %tobool.not.i575, label %__here347, label %if.end182

for.end:                                          ; preds = %land.lhs.true290, %__here256
  call void @_raw_spin_lock(ptr noundef %wait_lock) #9
  br label %__here347

__here347:                                        ; preds = %for.end, %cleanup, %__here
  %198 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task, align 8
  %task_state_change351 = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 212
  %200 = ptrtoint ptr %task_state_change351 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 ptrtoint (ptr blockaddress(@__mutex_lock_common, %__here347) to i32), ptr %task_state_change351, align 4
  %201 = load ptr, ptr %task, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile i32 0, ptr %201, align 128
  br i1 %tobool46.not, label %if.end379.critedge542, label %if.then369

if.then369:                                       ; preds = %__here347
  %is_wait_die = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 4
  %203 = ptrtoint ptr %is_wait_die to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %is_wait_die, align 2
  %tobool370.not = icmp eq i16 %204, 0
  br i1 %tobool370.not, label %land.lhs.true371, label %if.then378.critedge539

land.lhs.true371:                                 ; preds = %if.then369
  %wait_list.i610 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %205 = ptrtoint ptr %wait_list.i610 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %wait_list.i610, align 4
  %cmp.i611 = icmp eq ptr %206, %waiter
  br i1 %cmp.i611, label %if.then378.critedge540, label %if.then373

if.then373:                                       ; preds = %land.lhs.true371
  call fastcc void @__ww_mutex_check_waiters(ptr noundef %lock, ptr noundef nonnull %spec.select)
  call fastcc void @__mutex_remove_waiter(ptr noundef %lock, ptr noundef nonnull %waiter)
  call void @debug_mutex_free_waiter(ptr noundef nonnull %waiter) #9
  call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br label %if.then378

if.then378.critedge539:                           ; preds = %if.then369
  call fastcc void @__mutex_remove_waiter(ptr noundef %lock, ptr noundef nonnull %waiter)
  call void @debug_mutex_free_waiter(ptr noundef nonnull %waiter) #9
  call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br label %if.then378

if.then378.critedge540:                           ; preds = %land.lhs.true371
  call fastcc void @__mutex_remove_waiter(ptr noundef %lock, ptr noundef nonnull %waiter)
  call void @debug_mutex_free_waiter(ptr noundef nonnull %waiter) #9
  call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br label %if.then378

if.then378:                                       ; preds = %if.then378.critedge540, %if.then378.critedge539, %if.then373, %if.then83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %207 = load i32, ptr @oops_in_progress, align 4
  %tobool.not.i = icmp eq i32 %207, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end86.i

land.lhs.true.i:                                  ; preds = %if.then378
  %ctx.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %208 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ctx.i, align 4
  %tobool1.not.i = icmp eq ptr %209, null
  br i1 %tobool1.not.i, label %if.end35.i, label %do.end.i, !prof !82

do.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = call i32 @debug_locks_off() #9
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end35.i, label %land.lhs.true5.i

land.lhs.true5.i:                                 ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %210 = load i32, ptr @debug_locks_silent, align 4
  %tobool6.not.i = icmp eq i32 %210, 0
  br i1 %tobool6.not.i, label %do.end19.i, label %if.end35.i

do.end19.i:                                       ; preds = %land.lhs.true5.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 190, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8) #9
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end19.i, %land.lhs.true5.i, %do.end.i, %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr.i = load i32, ptr @oops_in_progress, align 4
  %tobool38.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool38.not.i, label %land.lhs.true39.i, label %if.end86.i

land.lhs.true39.i:                                ; preds = %if.end35.i
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 5
  %211 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %done_acquire.i, align 4
  %tobool40.not.i = icmp eq i32 %212, 0
  br i1 %tobool40.not.i, label %if.end86.i, label %do.end50.i, !prof !82

do.end50.i:                                       ; preds = %land.lhs.true39.i
  %call51.i = call i32 @debug_locks_off() #9
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end86.i, label %land.lhs.true53.i

land.lhs.true53.i:                                ; preds = %do.end50.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %213 = load i32, ptr @debug_locks_silent, align 4
  %tobool54.not.i = icmp eq i32 %213, 0
  br i1 %tobool54.not.i, label %do.end68.i, label %if.end86.i

do.end68.i:                                       ; preds = %land.lhs.true53.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 195, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9) #9
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end68.i, %land.lhs.true53.i, %do.end50.i, %land.lhs.true39.i, %if.end35.i, %if.then378
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 7
  %214 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %contending_lock.i, align 4
  %tobool88.not.i = icmp eq ptr %215, null
  br i1 %tobool88.not.i, label %if.end193.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.end86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %216 = load i32, ptr @oops_in_progress, align 4
  %tobool91.not.i = icmp ne i32 %216, 0
  %cmp.not.i = icmp eq ptr %215, %lock
  %or.cond.i = select i1 %tobool91.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end139.i, label %do.end103.i, !prof !86

do.end103.i:                                      ; preds = %if.then89.i
  %call104.i = call i32 @debug_locks_off() #9
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %if.end139thread-pre-split.i, label %land.lhs.true106.i

land.lhs.true106.i:                               ; preds = %do.end103.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %217 = load i32, ptr @debug_locks_silent, align 4
  %tobool107.not.i = icmp eq i32 %217, 0
  br i1 %tobool107.not.i, label %do.end121.i, label %if.end139thread-pre-split.i

do.end121.i:                                      ; preds = %land.lhs.true106.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #9
  br label %if.end139thread-pre-split.i

if.end139thread-pre-split.i:                      ; preds = %do.end121.i, %land.lhs.true106.i, %do.end103.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %.pr264.i = load i32, ptr @oops_in_progress, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.end139thread-pre-split.i, %if.then89.i
  %218 = phi i32 [ %.pr264.i, %if.end139thread-pre-split.i ], [ %216, %if.then89.i ]
  %tobool142.not.i = icmp eq i32 %218, 0
  br i1 %tobool142.not.i, label %land.lhs.true143.i, label %if.end190.i

land.lhs.true143.i:                               ; preds = %if.end139.i
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %219 = ptrtoint ptr %acquired.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %acquired.i, align 4
  %cmp144.not.i = icmp eq i32 %220, 0
  br i1 %cmp144.not.i, label %if.end190.i, label %do.end154.i, !prof !82

do.end154.i:                                      ; preds = %land.lhs.true143.i
  %call155.i = call i32 @debug_locks_off() #9
  %tobool156.not.i = icmp eq i32 %call155.i, 0
  br i1 %tobool156.not.i, label %if.end190.i, label %land.lhs.true157.i

land.lhs.true157.i:                               ; preds = %do.end154.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %221 = load i32, ptr @debug_locks_silent, align 4
  %tobool158.not.i = icmp eq i32 %221, 0
  br i1 %tobool158.not.i, label %do.end172.i, label %if.end190.i

do.end172.i:                                      ; preds = %land.lhs.true157.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 208, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11) #9
  br label %if.end190.i

if.end190.i:                                      ; preds = %do.end172.i, %land.lhs.true157.i, %do.end154.i, %land.lhs.true143.i, %if.end139.i
  %222 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %contending_lock.i, align 4
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.end190.i, %if.end86.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %223 = load i32, ptr @oops_in_progress, align 4
  %tobool195.not.i = icmp eq i32 %223, 0
  br i1 %tobool195.not.i, label %land.lhs.true196.i, label %ww_mutex_lock_acquired.exit

land.lhs.true196.i:                               ; preds = %if.end193.i
  %ww_class.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 6
  %224 = ptrtoint ptr %ww_class.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ww_class.i, align 4
  %ww_class197.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 2
  %226 = ptrtoint ptr %ww_class197.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %ww_class197.i, align 4
  %cmp198.not.i = icmp eq ptr %225, %227
  br i1 %cmp198.not.i, label %ww_mutex_lock_acquired.exit, label %do.end208.i, !prof !82

do.end208.i:                                      ; preds = %land.lhs.true196.i
  %call209.i = call i32 @debug_locks_off() #9
  %tobool210.not.i = icmp eq i32 %call209.i, 0
  br i1 %tobool210.not.i, label %ww_mutex_lock_acquired.exit, label %land.lhs.true211.i

land.lhs.true211.i:                               ; preds = %do.end208.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %228 = load i32, ptr @debug_locks_silent, align 4
  %tobool212.not.i = icmp eq i32 %228, 0
  br i1 %tobool212.not.i, label %do.end226.i, label %ww_mutex_lock_acquired.exit

do.end226.i:                                      ; preds = %land.lhs.true211.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 215, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #9
  br label %ww_mutex_lock_acquired.exit

ww_mutex_lock_acquired.exit:                      ; preds = %do.end226.i, %land.lhs.true211.i, %do.end208.i, %land.lhs.true196.i, %if.end193.i
  %acquired246.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %spec.select, i32 0, i32 2
  %229 = ptrtoint ptr %acquired246.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %acquired246.i, align 4
  %inc.i = add i32 %230, 1
  store i32 %inc.i, ptr %acquired246.i, align 4
  %ctx247.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %231 = ptrtoint ptr %ctx247.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %spec.select, ptr %ctx247.i, align 4
  br label %if.end379

if.end379.critedge:                               ; preds = %if.then81
  tail call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br label %if.end379

if.end379.critedge542:                            ; preds = %__here347
  call fastcc void @__mutex_remove_waiter(ptr noundef %lock, ptr noundef nonnull %waiter)
  call void @debug_mutex_free_waiter(ptr noundef nonnull %waiter) #9
  call void @lock_acquired(ptr noundef %dep_map68, i32 noundef %ip) #9
  br label %if.end379

if.end379:                                        ; preds = %if.end379.critedge542, %if.end379.critedge, %ww_mutex_lock_acquired.exit
  call void @_raw_spin_unlock(ptr noundef %wait_lock) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !94
  %232 = call i32 @llvm.read_register.i32(metadata !72) #9
  br label %cleanup460.sink.split

__here434:                                        ; preds = %__ww_mutex_check_kill.exit, %signal_pending_state.exit, %if.end3.i
  %ret.3.ph = phi i32 [ -35, %__ww_mutex_check_kill.exit ], [ -4, %signal_pending_state.exit ], [ -4, %if.end3.i ]
  %233 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %task, align 8
  %task_state_change438 = getelementptr inbounds %struct.task_struct, ptr %234, i32 0, i32 212
  %235 = ptrtoint ptr %task_state_change438 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 ptrtoint (ptr blockaddress(@__mutex_lock_common, %__here434) to i32), ptr %task_state_change438, align 4
  %236 = load ptr, ptr %task, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile i32 0, ptr %236, align 128
  %call.i.i.i612 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #9
  br i1 %call.i.i.i612, label %if.end.i.i.i613, label %list_del.exit.i

if.end.i.i.i613:                                  ; preds = %__here434
  %238 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %0, align 4
  %240 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %239, ptr %prev1.i.i.i.i, align 4
  %243 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %243)
  store volatile ptr %241, ptr %239, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i613, %__here434
  %244 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %245 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr inttoptr (i32 290 to ptr), ptr %0, align 4
  %246 = ptrtoint ptr %wait_list.i.i603 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile ptr, ptr %wait_list.i.i603, align 4
  %cmp.i.not.i = icmp eq ptr %247, %wait_list.i.i603
  br i1 %cmp.i.not.i, label %if.then.i617, label %__mutex_remove_waiter.exit, !prof !82

if.then.i617:                                     ; preds = %list_del.exit.i
  %call.i.i.i.i616 = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %248 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 7, ptr elementtype(i32) %lock) #9, !srcloc !95
  br label %__mutex_remove_waiter.exit

__mutex_remove_waiter.exit:                       ; preds = %if.then.i617, %list_del.exit.i
  %249 = call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i618 = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i618 to ptr
  %task.i619 = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 2
  %251 = ptrtoint ptr %task.i619 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %task.i619, align 8
  call void @debug_mutex_remove_waiter(ptr noundef %lock, ptr noundef nonnull %waiter, ptr noundef %252) #9
  br label %err_early_kill

err_early_kill:                                   ; preds = %__mutex_remove_waiter.exit, %__ww_mutex_add_waiter.exit
  %ret.4 = phi i32 [ -35, %__ww_mutex_add_waiter.exit ], [ %ret.3.ph, %__mutex_remove_waiter.exit ]
  call void @_raw_spin_unlock(ptr noundef %wait_lock) #9
  call void @debug_mutex_free_waiter(ptr noundef nonnull %waiter) #9
  call void @lock_release(ptr noundef %dep_map68, i32 noundef %ip) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %253 = call i32 @llvm.read_register.i32(metadata !72) #9
  br label %cleanup460.sink.split

cleanup460.sink.split:                            ; preds = %err_early_kill, %if.end379, %do.body76
  %.sink = phi i32 [ %44, %do.body76 ], [ %232, %if.end379 ], [ %253, %err_early_kill ]
  %retval.0.ph = phi i32 [ 0, %do.body76 ], [ 0, %if.end379 ], [ %ret.4, %err_early_kill ]
  %and.i.i.i543 = and i32 %.sink, -16384
  %254 = inttoptr i32 %and.i.i.i543 to ptr
  %preempt_count.i.i544 = getelementptr inbounds %struct.thread_info, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %preempt_count.i.i544 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %preempt_count.i.i544, align 4
  %sub.i550 = add i32 %256, -1
  store volatile i32 %sub.i550, ptr %preempt_count.i.i544, align 4
  br label %cleanup460

cleanup460:                                       ; preds = %cleanup460.sink.split, %if.then47
  %retval.0 = phi i32 [ -114, %if.then47 ], [ %retval.0.ph, %cleanup460.sink.split ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %waiter) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule_finish(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ww_mutex_lock(ptr noundef %lock, ptr noundef %ctx) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 856) #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef %1, ptr noundef %ctx, i1 noundef zeroext true) #9
  %tobool.not = icmp ne i32 %call.i, 0
  %tobool4.not = icmp eq ptr %ctx, null
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %entry
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %acquired, align 4
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %deadlock_inject_countdown.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %deadlock_inject_countdown.i, align 4
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %cleanup

if.then.i:                                        ; preds = %if.then
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %6 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deadlock_inject_interval.i, align 4
  %cmp1.i = icmp ugt i32 %7, 1073741823
  %add.i = mul i32 %7, 3
  %div17.i = lshr i32 %7, 1
  %add3.i = add i32 %add.i, %div17.i
  %tmp.0.i = select i1 %cmp1.i, i32 -1, i32 %add3.i
  store i32 %tmp.0.i, ptr %deadlock_inject_interval.i, align 4
  %8 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tmp.0.i, ptr %deadlock_inject_countdown.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %9 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %contending_lock.i, align 4
  %ctx.i.i.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %10 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %ww_mutex_unlock.exit.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %12 = load i32, ptr @oops_in_progress, align 4
  %tobool1.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end39.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %acquired.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %acquired.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %acquired.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %if.end39.i.i.i, !prof !85

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = tail call i32 @debug_locks_off() #9
  %tobool8.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end39.i.i.i, label %land.lhs.true9.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %do.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %15 = load i32, ptr @debug_locks_silent, align 4
  %tobool10.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i.i.i, label %do.end23.i.i.i, label %if.end39.i.i.i

do.end23.i.i.i:                                   ; preds = %land.lhs.true9.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 563, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #9
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %do.end23.i.i.i, %land.lhs.true9.i.i.i, %do.end.i.i.i, %land.lhs.true.i.i.i, %if.then.i.i.i
  %16 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i.i.i, align 4
  %acquired42.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %acquired42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %acquired42.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.i.i, label %if.end46.i.i.i, label %if.then43.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end39.i.i.i
  %dec.i.i.i = add i32 %19, -1
  %20 = ptrtoint ptr %acquired42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec.i.i.i, ptr %acquired42.i.i.i, align 4
  br label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %if.then43.i.i.i, %if.end39.i.i.i
  %21 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ctx.i.i.i, align 4
  br label %ww_mutex_unlock.exit.i

ww_mutex_unlock.exit.i:                           ; preds = %if.end46.i.i.i, %if.then.i
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %lock, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %ww_mutex_unlock.exit.i, %if.then, %land.lhs.true5, %entry
  %retval.0 = phi i32 [ 0, %land.lhs.true5 ], [ %call.i, %entry ], [ -35, %ww_mutex_unlock.exit.i ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ww_mutex_lock_interruptible(ptr noundef %lock, ptr noundef %ctx) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 871) #9
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  %call.i = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %1, ptr noundef %ctx, i1 noundef zeroext true) #9
  %tobool.not = icmp ne i32 %call.i, 0
  %tobool4.not = icmp eq ptr %ctx, null
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %cleanup, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %entry
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %acquired, align 4
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %cleanup

if.then:                                          ; preds = %land.lhs.true5
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %deadlock_inject_countdown.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %deadlock_inject_countdown.i, align 4
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %cleanup

if.then.i:                                        ; preds = %if.then
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 9
  %6 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deadlock_inject_interval.i, align 4
  %cmp1.i = icmp ugt i32 %7, 1073741823
  %add.i = mul i32 %7, 3
  %div17.i = lshr i32 %7, 1
  %add3.i = add i32 %add.i, %div17.i
  %tmp.0.i = select i1 %cmp1.i, i32 -1, i32 %add3.i
  store i32 %tmp.0.i, ptr %deadlock_inject_interval.i, align 4
  %8 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tmp.0.i, ptr %deadlock_inject_countdown.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 7
  %9 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %contending_lock.i, align 4
  %ctx.i.i.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %10 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %ww_mutex_unlock.exit.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %12 = load i32, ptr @oops_in_progress, align 4
  %tobool1.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end39.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i
  %acquired.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %acquired.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %acquired.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %if.end39.i.i.i, !prof !85

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i = tail call i32 @debug_locks_off() #9
  %tobool8.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end39.i.i.i, label %land.lhs.true9.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %do.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %15 = load i32, ptr @debug_locks_silent, align 4
  %tobool10.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i.i.i, label %do.end23.i.i.i, label %if.end39.i.i.i

do.end23.i.i.i:                                   ; preds = %land.lhs.true9.i.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 563, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #9
  br label %if.end39.i.i.i

if.end39.i.i.i:                                   ; preds = %do.end23.i.i.i, %land.lhs.true9.i.i.i, %do.end.i.i.i, %land.lhs.true.i.i.i, %if.then.i.i.i
  %16 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx.i.i.i, align 4
  %acquired42.i.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %acquired42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %acquired42.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i.i.i, label %if.end46.i.i.i, label %if.then43.i.i.i

if.then43.i.i.i:                                  ; preds = %if.end39.i.i.i
  %dec.i.i.i = add i32 %19, -1
  %20 = ptrtoint ptr %acquired42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec.i.i.i, ptr %acquired42.i.i.i, align 4
  br label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %if.then43.i.i.i, %if.end39.i.i.i
  %21 = ptrtoint ptr %ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ctx.i.i.i, align 4
  br label %ww_mutex_unlock.exit.i

ww_mutex_unlock.exit.i:                           ; preds = %if.end46.i.i.i, %if.then.i
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %lock, i32 noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %ww_mutex_unlock.exit.i, %if.then, %land.lhs.true5, %entry
  %retval.0 = phi i32 [ 0, %land.lhs.true5 ], [ %call.i, %entry ], [ -35, %ww_mutex_unlock.exit.i ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef %cnt, ptr noundef %lock) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %cnt, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %cnt, ptr %cnt, i32 1, i32 -1, ptr elementtype(i32) %cnt) #9, !srcloc !98
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end, label %atomic_add_unless.exit.thread

atomic_add_unless.exit.thread:                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  br label %return

if.end:                                           ; preds = %entry
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  %call.i.i8 = tail call fastcc i32 @__mutex_lock_common(ptr noundef %lock, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef %2, ptr noundef null, i1 noundef zeroext false) #9
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %cnt, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cnt, ptr %cnt, i32 1, ptr elementtype(i32) %cnt) #9, !srcloc !101
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  %cmp.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i7, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call fastcc void @__mutex_unlock_slowpath(ptr noundef %lock, i32 noundef %2) #9
  br label %return

return:                                           ; preds = %if.then2, %if.end, %atomic_add_unless.exit.thread
  %retval.0 = phi i32 [ 0, %if.then2 ], [ 1, %if.end ], [ 0, %atomic_add_unless.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext %handoff) unnamed_addr #6 align 64 {
entry:
  %owner = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %owner) #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %4 = ptrtoint ptr %3 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %5 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %lock, align 4
  br label %for.cond

for.cond:                                         ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i, %entry
  %storemerge = phi i32 [ %6, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_acquire.exit.i.i.i ]
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %owner, align 4
  %and.i88 = and i32 %storemerge, 7
  %and = and i32 %storemerge, -8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else19, label %if.then

if.then:                                          ; preds = %for.cond
  %and5 = and i32 %storemerge, 4
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %cmp.not = icmp eq i32 %and, %4
  br i1 %cmp.not, label %if.end, label %for.end

if.end:                                           ; preds = %if.then7
  %and9 = and i32 %storemerge, 3
  br label %if.end61

if.else:                                          ; preds = %if.then
  %and12 = and i32 %storemerge, 2
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond86 = select i1 %handoff, i1 %tobool13.not, i1 false
  br i1 %or.cond86, label %if.end15, label %for.end

if.end15:                                         ; preds = %if.else
  %or = or i32 %and.i88, 2
  br label %if.end61

if.else19:                                        ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %8 = load i32, ptr @oops_in_progress, align 4
  %tobool20.not = icmp ne i32 %8, 0
  %and21 = and i32 %storemerge, 6
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond = select i1 %tobool20.not, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %if.end61, label %do.end, !prof !86

do.end:                                           ; preds = %if.else19
  %call26 = call i32 @debug_locks_off() #9
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end61, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %9 = load i32, ptr @debug_locks_silent, align 4
  %tobool29.not = icmp eq i32 %9, 0
  br i1 %tobool29.not, label %do.end42, label %if.end61

do.end42:                                         ; preds = %land.lhs.true28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end42, %land.lhs.true28, %do.end, %if.else19, %if.end15, %if.end
  %flags.0 = phi i32 [ %and9, %if.end ], [ %or, %if.end15 ], [ %and.i88, %do.end42 ], [ %and.i88, %land.lhs.true28 ], [ %and.i88, %do.end ], [ %and.i88, %if.else19 ]
  %task4.0 = phi i32 [ %4, %if.end ], [ %and, %if.end15 ], [ %4, %do.end42 ], [ %4, %land.lhs.true28 ], [ %4, %do.end ], [ %4, %if.else19 ]
  %or63 = or i32 %task4.0, %flags.0
  %call.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %owner, i32 noundef 4) #9
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %owner, align 4
  call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i, %if.end61
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 %11, i32 %or63, ptr elementtype(i32) %lock) #9, !srcloc !84
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i, label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i:           ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i, label %if.then65, label %for.cond, !prof !82

if.then65:                                        ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i
  %cmp66 = icmp eq i32 %task4.0, %4
  br i1 %cmp66, label %cleanup72, label %for.end

for.end:                                          ; preds = %if.then65, %if.else, %if.then7
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %owner, align 4
  %and.i89 = and i32 %14, -8
  %15 = inttoptr i32 %and.i89 to ptr
  br label %cleanup72

cleanup72:                                        ; preds = %for.end, %if.then65
  %retval.2 = phi ptr [ %15, %for.end ], [ null, %if.then65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %owner) #9
  ret ptr %retval.2
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ww_mutex_check_waiters(ptr noundef %lock, ptr noundef %ww_ctx) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %lockdep_assert_wait_lock_held.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %lockdep_assert_wait_lock_held.exit, !prof !85

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %lockdep_assert_wait_lock_held.exit

lockdep_assert_wait_lock_held.exit:               ; preds = %do.end.i, %land.rhs.i, %entry
  %wait_list.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %1 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wait_list.i, align 4
  %cmp.i = icmp eq ptr %2, %wait_list.i
  %tobool.not2629 = icmp eq ptr %2, null
  %tobool.not26 = or i1 %cmp.i, %tobool.not2629
  br i1 %tobool.not26, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lockdep_assert_wait_lock_held.exit
  %is_wait_die.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %cur.027 = phi ptr [ %2, %for.body.lr.ph ], [ %18, %for.inc ]
  %ww_ctx1 = getelementptr inbounds %struct.mutex_waiter, ptr %cur.027, i32 0, i32 2
  %3 = ptrtoint ptr %ww_ctx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ww_ctx1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %is_wait_die.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %is_wait_die.i, align 2
  %tobool.not.i18 = icmp eq i16 %6, 0
  br i1 %tobool.not.i18, label %lor.lhs.false, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %acquired.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %acquired.i, align 4
  %cmp.not.i19 = icmp eq i32 %8, 0
  br i1 %cmp.not.i19, label %for.end, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %stamp.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %stamp.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stamp.i.i, align 4
  %stamp1.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 1
  %11 = ptrtoint ptr %stamp1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stamp1.i.i, align 4
  %sub.i.i = sub i32 %10, %12
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i, label %for.end

if.then3.i:                                       ; preds = %land.lhs.true.i
  tail call void @debug_mutex_wake_waiter(ptr noundef %lock, ptr noundef nonnull %cur.027) #9
  %task.i = getelementptr inbounds %struct.mutex_waiter, ptr %cur.027, i32 0, i32 1
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 4
  %call4.i = tail call i32 @wake_up_process(ptr noundef %14) #9
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end
  %15 = ptrtoint ptr %ww_ctx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ww_ctx1, align 4
  %call5 = tail call fastcc zeroext i1 @__ww_mutex_wound(ptr noundef %lock, ptr noundef %16, ptr noundef %ww_ctx)
  br i1 %call5, label %for.end, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %17 = ptrtoint ptr %cur.027 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.027, align 4
  %cmp.i21 = icmp eq ptr %18, %wait_list.i
  %tobool.not34 = icmp eq ptr %18, null
  %tobool.not = or i1 %cmp.i21, %tobool.not34
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %lor.lhs.false, %if.then3.i, %land.lhs.true.i, %if.end.i, %lockdep_assert_wait_lock_held.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__ww_mutex_wound(ptr noundef %lock, ptr nocapture noundef readonly %ww_ctx, ptr noundef %hold_ctx) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %lock, align 4
  %and.i.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %lockdep_assert_wait_lock_held.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %lockdep_assert_wait_lock_held.exit, !prof !85

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 85, i32 noundef 9, ptr noundef null) #9
  br label %lockdep_assert_wait_lock_held.exit

lockdep_assert_wait_lock_held.exit:               ; preds = %do.end.i, %land.rhs.i, %entry
  %tobool.not = icmp eq ptr %hold_ctx, null
  %tobool1.not = icmp eq i32 %and.i.i, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %cleanup, label %if.end3

if.end3:                                          ; preds = %lockdep_assert_wait_lock_held.exit
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 2
  %4 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acquired, align 4
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %cleanup, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3
  %stamp.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %hold_ctx, i32 0, i32 1
  %6 = ptrtoint ptr %stamp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stamp.i, align 4
  %stamp1.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 1
  %8 = ptrtoint ptr %stamp1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stamp1.i, align 4
  %sub.i = sub i32 %7, %9
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then5, label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %hold_ctx, i32 0, i32 3
  %10 = ptrtoint ptr %wounded to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %wounded, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %cmp7.not = icmp eq ptr %14, %2
  br i1 %cmp7.not, label %cleanup, label %if.then8

if.then8:                                         ; preds = %if.then5
  %call9 = tail call i32 @wake_up_process(ptr noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then5, %land.lhs.true, %if.end3, %lockdep_assert_wait_lock_held.exit
  %retval.0 = phi i1 [ false, %lockdep_assert_wait_lock_held.exit ], [ true, %if.then8 ], [ true, %if.then5 ], [ false, %land.lhs.true ], [ false, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_wake_waiter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: alwaysinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mutex_optimistic_spin(ptr noundef %lock, ptr noundef %ww_ctx, ptr noundef %waiter) #5 align 64 {
entry:
  %tobool.not = icmp eq ptr %waiter, null
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end90.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then
  %1 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %5 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i99 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i99 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %14 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i118.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i118.i to ptr
  %preempt_count.i.i119.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i119.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i119.i, align 4
  %tobool21.not.i = icmp eq i32 %13, 0
  br i1 %tobool21.not.i, label %land.rhs.i, label %if.end90.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs23.i, label %if.end90.i

land.rhs23.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i120.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i120.i to ptr
  %preempt_count.i.i121.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i121.i, align 4
  %add.i122.i = add i32 %25, 1
  store volatile i32 %add.i122.i, ptr %preempt_count.i.i121.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx47.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx47.i, align 4
  %add48.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add48.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %33 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i123.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i123.i to ptr
  %preempt_count.i.i124.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i124.i, align 4
  %sub.i125.i = add i32 %36, -1
  store volatile i32 %sub.i125.i, ptr %preempt_count.i.i124.i, align 4
  %tobool55.not.i = icmp eq i32 %32, 0
  br i1 %tobool55.not.i, label %if.end90.i, label %land.rhs59.i

land.rhs59.i:                                     ; preds = %land.rhs23.i
  %.b112.i = load i1, ptr @mutex_can_spin_on_owner.__already_done, align 1
  br i1 %.b112.i, label %if.end90.i, label %if.then.i, !prof !82

if.then.i:                                        ; preds = %land.rhs59.i
  store i1 true, ptr @mutex_can_spin_on_owner.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 394, i32 noundef 9, ptr noundef null) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then.i, %land.rhs59.i, %land.rhs23.i, %land.rhs.i, %land.lhs.true.i, %if.then
  %37 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i126.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i126.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 16384
  %41 = and i32 %40, 2
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %if.end102.i, label %fail

if.end102.i:                                      ; preds = %if.end90.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %42 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %lock, align 4
  %and.i127.i = and i32 %43, -8
  %44 = inttoptr i32 %and.i127.i to ptr
  %tobool104.not.i = icmp eq i32 %and.i127.i, 0
  br i1 %tobool104.not.i, label %if.end, label %if.then105.i

if.then105.i:                                     ; preds = %if.end102.i
  %on_cpu.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %on_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %on_cpu.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i, label %fail, label %mutex_can_spin_on_owner.exit

mutex_can_spin_on_owner.exit:                     ; preds = %if.then105.i
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stack.i.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %cpu.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %mutex_can_spin_on_owner.exit, %if.end102.i
  %osq = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 2
  %call3 = tail call zeroext i1 @osq_lock(ptr noundef %osq) #9
  br i1 %call3, label %if.end6, label %fail

if.end6:                                          ; preds = %if.end, %entry
  %call.i111 = tail call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool8.not112 = icmp eq ptr %call.i111, null
  br i1 %tobool8.not112, label %for.end, label %if.end10

if.end10:                                         ; preds = %cleanup, %if.end6
  %call.i113 = phi ptr [ %call.i, %cleanup ], [ %call.i111, %if.end6 ]
  %call11 = tail call fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %lock, ptr noundef nonnull %call.i113, ptr noundef %ww_ctx, ptr noundef %waiter)
  br i1 %call11, label %cleanup, label %fail_unlock

cleanup:                                          ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !109
  %call.i = tail call fastcc ptr @__mutex_trylock_common(ptr noundef %lock, i1 noundef zeroext false) #9
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %for.end, label %if.end10

for.end:                                          ; preds = %cleanup, %if.end6
  br i1 %tobool.not, label %if.then21, label %return

if.then21:                                        ; preds = %for.end
  %osq22 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 2
  tail call void @osq_unlock(ptr noundef %osq22) #9
  br label %return

fail_unlock:                                      ; preds = %if.end10
  br i1 %tobool.not, label %if.then25, label %fail

if.then25:                                        ; preds = %fail_unlock
  %osq26 = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 2
  tail call void @osq_unlock(ptr noundef %osq26) #9
  br label %fail

fail:                                             ; preds = %if.then25, %fail_unlock, %if.end, %if.then105.i, %if.end90.i
  %51 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 16384
  %55 = and i32 %54, 2
  %tobool.i.not = icmp eq i32 %55, 0
  br i1 %tobool.i.not, label %return, label %__here

__here:                                           ; preds = %fail
  %56 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 212
  %60 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 ptrtoint (ptr blockaddress(@mutex_optimistic_spin, %__here) to i32), ptr %task_state_change, align 4
  %61 = load ptr, ptr %task, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %61, align 128
  tail call void @schedule_preempt_disabled() #9
  br label %return

return:                                           ; preds = %__here, %fail, %if.then21, %for.end
  %retval.0 = phi i1 [ true, %if.then21 ], [ true, %for.end ], [ false, %__here ], [ false, %fail ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquired(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_lock_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_contended(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mutex_remove_waiter(ptr noundef %lock, ptr noundef %waiter) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %waiter) #9
  br i1 %call.i.i, label %if.end.i.i, label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry
  %6 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %wait_list = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %8 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %9, %wait_list
  br i1 %cmp.i.not, label %if.then, label %if.end, !prof !82

if.then:                                          ; preds = %list_del.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lock, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %lock, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %lock, ptr %lock, i32 7, ptr elementtype(i32) %lock) #9, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit
  %11 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  tail call void @debug_mutex_remove_waiter(ptr noundef %lock, ptr noundef %waiter, ptr noundef %14) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_free_waiter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @osq_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mutex_spin_on_owner(ptr noundef %lock, ptr noundef %owner, ptr noundef readonly %ww_ctx, ptr noundef readnone %waiter) unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %5 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %14 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i131 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i131 to ptr
  %preempt_count.i.i132 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i132 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i132, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i132, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end89

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i, align 4
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %land.rhs22, label %if.end89

land.rhs22:                                       ; preds = %land.rhs
  %22 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i133 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i133 to ptr
  %preempt_count.i.i134 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i134 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i134, align 4
  %add.i135 = add i32 %25, 1
  store volatile i32 %add.i135, ptr %preempt_count.i.i134, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %33 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i.i136 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i136 to ptr
  %preempt_count.i.i137 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i137 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i137, align 4
  %sub.i138 = add i32 %36, -1
  store volatile i32 %sub.i138, ptr %preempt_count.i.i137, align 4
  %tobool54.not = icmp eq i32 %32, 0
  br i1 %tobool54.not, label %if.end89, label %land.rhs58

land.rhs58:                                       ; preds = %land.rhs22
  %.b125 = load i1, ptr @mutex_spin_on_owner.__already_done, align 1
  br i1 %.b125, label %if.end89, label %if.then, !prof !82

if.then:                                          ; preds = %land.rhs58
  store i1 true, ptr @mutex_spin_on_owner.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef null) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then, %land.rhs58, %land.rhs22, %land.rhs, %land.lhs.true, %entry
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %owner, i32 0, i32 1
  %ctx.i = getelementptr inbounds %struct.ww_mutex, ptr %lock, i32 0, i32 1
  %wait_list.i.i = getelementptr inbounds %struct.mutex, ptr %lock, i32 0, i32 3
  %call.i.i.i145 = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %lock, align 4
  %and.i140146 = and i32 %38, -8
  %39 = inttoptr i32 %and.i140146 to ptr
  %cmp100147 = icmp eq ptr %39, %owner
  br i1 %cmp100147, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end89
  %on_cpu.i = getelementptr inbounds %struct.task_struct, ptr %owner, i32 0, i32 5
  %tobool105.not = icmp eq ptr %ww_ctx, null
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ww_ctx, i32 0, i32 2
  %tobool2.not.i = icmp eq ptr %waiter, null
  br label %while.body

while.body:                                       ; preds = %do.end114, %while.body.lr.ph
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !114
  %40 = ptrtoint ptr %on_cpu.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %on_cpu.i, align 4
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %while.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %42 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %cpu.i.i, align 4
  %46 = tail call i32 @llvm.read_register.i32(metadata !72) #9
  %and.i.i139 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i139 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 16384
  %50 = and i32 %49, 2
  %tobool.i.not = icmp eq i32 %50, 0
  br i1 %tobool.i.not, label %if.end104, label %while.end

if.end104:                                        ; preds = %lor.lhs.false
  br i1 %tobool105.not, label %do.end114, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.end104
  %51 = ptrtoint ptr %acquired.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %acquired.i, align 4
  %cmp.not.i = icmp eq i32 %52, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true106
  %53 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %ctx.i, align 4
  %tobool.not.i141 = icmp eq ptr %54, null
  br i1 %tobool.not.i141, label %if.end.i, label %while.end

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true106
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true8.critedge.i

land.lhs.true3.i:                                 ; preds = %if.end.i
  %call.i.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %55 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %lock, align 4
  %and.i143 = and i32 %56, 1
  %tobool4.not.i = icmp eq i32 %and.i143, 0
  br i1 %tobool4.not.i, label %do.end114, label %while.end

land.lhs.true8.critedge.i:                        ; preds = %if.end.i
  %57 = ptrtoint ptr %wait_list.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wait_list.i.i, align 4
  %cmp.i.i = icmp eq ptr %58, %waiter
  br i1 %cmp.i.i, label %do.end114, label %while.end

do.end114:                                        ; preds = %land.lhs.true8.critedge.i, %land.lhs.true3.i, %if.end104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !116
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %lock, i32 noundef 4) #9
  %59 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %lock, align 4
  %and.i140 = and i32 %60, -8
  %61 = inttoptr i32 %and.i140 to ptr
  %cmp100 = icmp eq ptr %61, %owner
  br i1 %cmp100, label %while.body, label %while.end

while.end:                                        ; preds = %do.end114, %land.lhs.true8.critedge.i, %land.lhs.true3.i, %do.end.i, %lor.lhs.false, %while.body, %if.end89
  %cmp100.lcssa = phi i1 [ true, %if.end89 ], [ false, %land.lhs.true8.critedge.i ], [ false, %land.lhs.true3.i ], [ false, %do.end.i ], [ false, %while.body ], [ false, %lor.lhs.false ], [ true, %do.end114 ]
  ret i1 %cmp100.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @osq_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_add_waiter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_remove_waiter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { alwaysinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.named.register.sp = !{!72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__mutex_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/locking/mutex.c", i32 46, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab___mutex_init, !4, !"__ksymtab___mutex_init", i1 false, i1 false}
!4 = !{!"../kernel/locking/mutex.c", i32 54, i32 1}
!5 = !{ptr @__ksymtab_mutex_is_locked, !6, !"__ksymtab_mutex_is_locked", i1 false, i1 false}
!6 = !{!"../kernel/locking/mutex.c", i32 90, i32 1}
!7 = !{ptr @__ksymtab_mutex_unlock, !8, !"__ksymtab_mutex_unlock", i1 false, i1 false}
!8 = !{!"../kernel/locking/mutex.c", i32 542, i32 1}
!9 = !{ptr @__ksymtab_ww_mutex_unlock, !10, !"__ksymtab_ww_mutex_unlock", i1 false, i1 false}
!10 = !{!"../kernel/locking/mutex.c", i32 560, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/locking/mutex.c", i32 761, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_ww_mutex_trylock, !16, !"__ksymtab_ww_mutex_trylock", i1 false, i1 false}
!16 = !{!"../kernel/locking/mutex.c", i32 779, i32 1}
!17 = !{ptr @__ksymtab_mutex_lock_nested, !18, !"__ksymtab_mutex_lock_nested", i1 false, i1 false}
!18 = !{!"../kernel/locking/mutex.c", i32 788, i32 1}
!19 = !{ptr @__ksymtab__mutex_lock_nest_lock, !20, !"__ksymtab__mutex_lock_nest_lock", i1 false, i1 false}
!20 = !{!"../kernel/locking/mutex.c", i32 795, i32 1}
!21 = !{ptr @__ksymtab_mutex_lock_killable_nested, !22, !"__ksymtab_mutex_lock_killable_nested", i1 false, i1 false}
!22 = !{!"../kernel/locking/mutex.c", i32 802, i32 1}
!23 = !{ptr @__ksymtab_mutex_lock_interruptible_nested, !24, !"__ksymtab_mutex_lock_interruptible_nested", i1 false, i1 false}
!24 = !{!"../kernel/locking/mutex.c", i32 809, i32 1}
!25 = !{ptr @__ksymtab_mutex_lock_io_nested, !26, !"__ksymtab_mutex_lock_io_nested", i1 false, i1 false}
!26 = !{!"../kernel/locking/mutex.c", i32 823, i32 1}
!27 = !{ptr @__ksymtab_ww_mutex_lock, !28, !"__ksymtab_ww_mutex_lock", i1 false, i1 false}
!28 = !{!"../kernel/locking/mutex.c", i32 864, i32 1}
!29 = !{ptr @__ksymtab_ww_mutex_lock_interruptible, !30, !"__ksymtab_ww_mutex_lock_interruptible", i1 false, i1 false}
!30 = !{!"../kernel/locking/mutex.c", i32 880, i32 1}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/locking/mutex.c", i32 1071, i32 2}
!33 = !{ptr @__ksymtab_mutex_trylock, !34, !"__ksymtab_mutex_trylock", i1 false, i1 false}
!34 = !{!"../kernel/locking/mutex.c", i32 1079, i32 1}
!35 = !{ptr @__ksymtab_atomic_dec_and_mutex_lock, !36, !"__ksymtab_atomic_dec_and_mutex_lock", i1 false, i1 false}
!36 = !{!"../kernel/locking/mutex.c", i32 1137, i32 1}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../kernel/locking/ww_mutex.h", i32 563, i32 3}
!39 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/locking/mutex.c", i32 122, i32 4}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/locking/ww_mutex.h", i32 190, i32 2}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/locking/ww_mutex.h", i32 195, i32 2}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/locking/ww_mutex.h", i32 202, i32 3}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/locking/ww_mutex.h", i32 208, i32 3}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/locking/ww_mutex.h", i32 215, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../kernel/locking/mutex.c", i32 643, i32 2}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/locking/mutex.c", i32 677, i32 3}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../kernel/locking/mutex.c", i32 691, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../kernel/locking/mutex.c", i32 719, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../kernel/locking/mutex.c", i32 506, i32 3}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../kernel/locking/mutex.c", i32 394, i32 2}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../kernel/locking/mutex.c", i32 354, i32 2}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/locking/ww_mutex.h", i32 420, i32 3}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/locking/mutex.c", i32 904, i32 3}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/locking/mutex.c", i32 905, i32 3}
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
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2148481388}
!84 = !{i64 865517, i64 865541, i64 865562, i64 865579, i64 865596}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{!"branch_weights", i32 4001, i32 1}
!87 = !{i64 2152915323}
!88 = !{i64 2153482463}
!89 = !{i64 2153482722}
!90 = !{i64 2148388142, i64 2148388168, i64 2148388197, i64 2148388231, i64 2148388262, i64 2148388285}
!91 = !{i64 2152923291}
!92 = !{i64 2153487516}
!93 = !{i64 2153492312}
!94 = !{i64 2153496973}
!95 = !{i64 2148386498, i64 2148386524, i64 2148386553, i64 2148386587, i64 2148386618, i64 2148386641}
!96 = !{i64 2153501597}
!97 = !{i64 2148379423}
!98 = !{i64 866023, i64 866048, i64 866070, i64 866086, i64 866098, i64 866118, i64 866142, i64 866158, i64 866170}
!99 = !{i64 2148379611}
!100 = !{i64 2148468456}
!101 = !{i64 2148383189, i64 2148383221, i64 2148383250, i64 2148383284, i64 2148383315, i64 2148383338}
!102 = !{i64 2148468685}
!103 = !{i64 2148480977}
!104 = !{i64 2153428044}
!105 = !{i64 2153432978}
!106 = !{i64 2153454696}
!107 = !{i64 2153459590}
!108 = !{i64 2153468551}
!109 = !{i64 2153468393}
!110 = !{i64 2153156069}
!111 = !{i64 2153161003}
!112 = !{i64 2153182721}
!113 = !{i64 2153187615}
!114 = !{i64 2153196174}
!115 = !{i64 2153196403}
!116 = !{i64 2153196245}
