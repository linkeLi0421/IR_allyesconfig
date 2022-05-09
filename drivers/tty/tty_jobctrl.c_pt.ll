; ModuleID = '/llk/IR_all_yes/drivers/tty/tty_jobctrl.c_pt.bc'
source_filename = "../drivers/tty/tty_jobctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tty_check_change\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_check_change\09\09\09\09"
module asm "\09.long\09__crc_tty_check_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_check_change:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_check_change\22\09\09\09\09\09"
module asm "__kstrtabns_tty_check_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_current_tty\22, \22a\22\09"
module asm "\09.weak\09__crc_get_current_tty\09\09\09\09"
module asm "\09.long\09__crc_get_current_tty\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_current_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22get_current_tty\22\09\09\09\09\09"
module asm "__kstrtabns_get_current_tty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_get_pgrp\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_get_pgrp\09\09\09\09"
module asm "\09.long\09__crc_tty_get_pgrp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_pgrp:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_pgrp\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_pgrp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.65, %struct.anon.66, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.65 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.66 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@__tty_check_change._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, align 1
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s %s: sig=%d, tty->pgrp == NULL!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__tty_check_change\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/tty/tty_jobctrl.c\00", [38 x i8] zeroinitializer }, align 32
@__tty_check_change._entry_ptr = internal global ptr @__tty_check_change._entry, section ".printk_index", align 4
@__kstrtab_tty_check_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_check_change = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_check_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_check_change to i32), ptr @__kstrtab_tty_check_change, ptr @__kstrtabns_tty_check_change }, section "___ksymtab+tty_check_change", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__kstrtab_get_current_tty = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_current_tty = external dso_local constant [0 x i8], align 1
@__ksymtab_get_current_tty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_current_tty to i32), ptr @__kstrtab_get_current_tty, ptr @__kstrtabns_get_current_tty }, section "___ksymtab_gpl+get_current_tty", align 4
@session_clear_tty.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tty_signal_session_leader.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_tty_get_pgrp = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_pgrp = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_pgrp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_pgrp to i32), ptr @__kstrtab_tty_get_pgrp, ptr @__kstrtabns_tty_get_pgrp }, section "___ksymtab_gpl+tty_get_pgrp", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__proc_set_tty.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tty_jobctrl\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__proc_set_tty\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s %s: current tty %s not NULL!!\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 21518, i64 21519, i64 21520, i64 21538, i64 21545]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 64, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 179, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 695, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 723, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [29 x i8] c"../drivers/tty/tty_jobctrl.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 113, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_get_current_tty, ptr @__ksymtab_tty_check_change, ptr @__ksymtab_tty_get_pgrp, ptr @__tty_check_change._entry, ptr @__tty_check_change._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__tty_check_change(ptr noundef %tty, i32 noundef %sig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty1, align 8
  %cmp.not = icmp eq ptr %7, %tty
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 8
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #6
  %pgrp12 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 1
  %16 = ptrtoint ptr %pgrp12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgrp12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call8) #6
  %tobool.not = icmp eq ptr %17, null
  %cmp15.not = icmp eq ptr %15, %17
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp15.not
  br i1 %or.cond, label %rcu_read_lock.exit.if.end33_crit_edge, label %if.then17

rcu_read_lock.exit.if.end33_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then17:                                        ; preds = %rcu_read_lock.exit
  %18 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %blocked.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 113
  %sub.i.i = add i32 %sig, -1
  %div3.i.i = lshr i32 %sub.i.i, 5
  %arrayidx.i.i = getelementptr [2 x i32], ptr %blocked.i, i32 0, i32 %div3.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %sub.i.i, 31
  %24 = shl nuw i32 1, %rem.i.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i58 = icmp eq i32 %25, 0
  br i1 %tobool.not.i58, label %is_ignored.exit, label %if.then17.if.then20_crit_edge

if.then17.if.then20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

is_ignored.exit:                                  ; preds = %if.then17
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 112
  %26 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sighand.i, align 4
  %arrayidx.i59 = getelementptr %struct.sighand_struct, ptr %27, i32 0, i32 3, i32 %sub.i.i
  %28 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i59, align 4
  %cmp.i.not = icmp eq ptr %29, inttoptr (i32 1 to ptr)
  br i1 %cmp.i.not, label %is_ignored.exit.if.then20_crit_edge, label %if.else

is_ignored.exit.if.then20_crit_edge:              ; preds = %is_ignored.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %is_ignored.exit.if.then20_crit_edge, %if.then17.if.then20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %sig)
  %cmp21 = icmp eq i32 %sig, 21
  %spec.select = select i1 %cmp21, i32 -5, i32 0
  br label %if.end33

if.else:                                          ; preds = %is_ignored.exit
  %call25 = tail call i32 @is_current_pgrp_orphaned() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else28, label %if.else.if.end33_crit_edge

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @kill_pgrp(ptr noundef %15, i32 noundef %sig, i32 noundef 1) #6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #6
  br label %if.end33

if.end33:                                         ; preds = %if.else28, %if.else.if.end33_crit_edge, %if.then20, %rcu_read_lock.exit.if.end33_crit_edge
  %ret.0 = phi i32 [ -512, %if.else28 ], [ 0, %rcu_read_lock.exit.if.end33_crit_edge ], [ %spec.select, %if.then20 ], [ -5, %if.else.if.end33_crit_edge ]
  %call.i60 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i60, label %if.end33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

if.end33.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %if.end33
  %call1.i61 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %if.end33.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %30 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i.i.i67 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %tobool.not, label %do.end38, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end38:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call ptr @tty_driver_name(ptr noundef %tty) #6
  %call41 = tail call ptr @tty_name(ptr noundef %tty) #6
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %call40, ptr noundef %call41, i32 noundef %sig) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %rcu_read_unlock.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %do.end38 ], [ %ret.0, %rcu_read_unlock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pgrp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_driver_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_check_change(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__tty_check_change(ptr noundef %tty, i32 noundef 22)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_clear_tty(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sighand = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 112
  %0 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sighand, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %signal = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 111
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal, align 16
  %tty5 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %tty5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tty5, align 8
  store ptr null, ptr %tty5, align 8
  %6 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call2) #6
  tail call void @tty_kref_put(ptr noundef %5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_open_proc_set_tty(ptr nocapture noundef readonly %filp, ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #6
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
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #6
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %leader = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %leader to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %leader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %land.lhs.true

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %tty6 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 25
  %12 = ptrtoint ptr %tty6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tty6, align 8
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %session = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %session, align 4
  %cmp = icmp eq ptr %15, null
  br i1 %cmp, label %if.then, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %land.lhs.true8
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %16 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_mode, align 8
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then.if.end11_crit_edge, label %if.then10

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__proc_set_tty(ptr noundef %tty)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then.if.end11_crit_edge, %land.lhs.true8.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %sighand14 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 112
  %20 = ptrtoint ptr %sighand14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sighand14, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %21) #6
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__proc_set_tty(ptr noundef %tty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #6
  %session = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  tail call void @put_pid(ptr noundef %1) #6
  %pgrp = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 1
  %2 = ptrtoint ptr %pgrp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgrp, align 4
  tail call void @put_pid(ptr noundef %3) #6
  %4 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 2
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.get_pid.exit_crit_edge, label %if.then.i

entry.get_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %11, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %11, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %11, i32 noundef %.sink.i.i.i.i) #6
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %entry.get_pid.exit_crit_edge
  %14 = ptrtoint ptr %pgrp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %pgrp, align 4
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %signal.i63 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 111
  %17 = ptrtoint ptr %signal.i63 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal.i63, align 16
  %arrayidx.i64 = getelementptr %struct.signal_struct, ptr %18, i32 0, i32 22, i32 3
  %19 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i64, align 4
  %tobool.not.i65 = icmp eq ptr %20, null
  br i1 %tobool.not.i65, label %get_pid.exit.get_pid.exit75_crit_edge, label %if.then.i69

get_pid.exit.get_pid.exit75_crit_edge:            ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit75

if.then.i69:                                      ; preds = %get_pid.exit
  %call.i.i.i.i.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %20, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %20, i32 1, i32 3, i32 1) #6
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i67 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i67)
  %tobool1.not.i.i.i.i68 = icmp eq i32 %asmresult.i.i.i.i.i.i67, 0
  br i1 %tobool1.not.i.i.i.i68, label %if.then.i69.if.end15.sink.split.i.i.i.i74_crit_edge, label %if.else.i.i.i.i72, !prof !42

if.then.i69.if.end15.sink.split.i.i.i.i74_crit_edge: ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i74

if.else.i.i.i.i72:                                ; preds = %if.then.i69
  %add.i.i.i.i70 = add i32 %asmresult.i.i.i.i.i.i67, 1
  %22 = or i32 %add.i.i.i.i70, %asmresult.i.i.i.i.i.i67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i71 = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i71, label %if.else.i.i.i.i72.get_pid.exit75_crit_edge, label %if.else.i.i.i.i72.if.end15.sink.split.i.i.i.i74_crit_edge, !prof !43

if.else.i.i.i.i72.if.end15.sink.split.i.i.i.i74_crit_edge: ; preds = %if.else.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i74

if.else.i.i.i.i72.get_pid.exit75_crit_edge:       ; preds = %if.else.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit75

if.end15.sink.split.i.i.i.i74:                    ; preds = %if.else.i.i.i.i72.if.end15.sink.split.i.i.i.i74_crit_edge, %if.then.i69.if.end15.sink.split.i.i.i.i74_crit_edge
  %.sink.i.i.i.i73 = phi i32 [ 2, %if.then.i69.if.end15.sink.split.i.i.i.i74_crit_edge ], [ 1, %if.else.i.i.i.i72.if.end15.sink.split.i.i.i.i74_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef %.sink.i.i.i.i73) #6
  br label %get_pid.exit75

get_pid.exit75:                                   ; preds = %if.end15.sink.split.i.i.i.i74, %if.else.i.i.i.i72.get_pid.exit75_crit_edge, %get_pid.exit.get_pid.exit75_crit_edge
  %23 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %session, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call2) #6
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 111
  %26 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %signal, align 16
  %tty22 = getelementptr inbounds %struct.signal_struct, ptr %27, i32 0, i32 25
  %28 = ptrtoint ptr %tty22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tty22, align 8
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %get_pid.exit75.if.end42_crit_edge, label %do.body23

get_pid.exit75.if.end42_crit_edge:                ; preds = %get_pid.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.body23:                                        ; preds = %get_pid.exit75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__proc_set_tty.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__proc_set_tty, %if.then29)) #6
          to label %do.end37 [label %if.then29], !srcloc !44

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call ptr @tty_driver_name(ptr noundef %tty) #6
  %call31 = tail call ptr @tty_name(ptr noundef %tty) #6
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %signal34 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 111
  %32 = ptrtoint ptr %signal34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %signal34, align 16
  %tty35 = getelementptr inbounds %struct.signal_struct, ptr %33, i32 0, i32 25
  %34 = ptrtoint ptr %tty35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tty35, align 8
  %name = getelementptr inbounds %struct.tty_struct, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__proc_set_tty.__UNIQUE_ID_ddebug210, ptr noundef nonnull @.str.9, ptr noundef %call30, ptr noundef %call31, ptr noundef %name) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then29, %do.body23
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %signal40 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 111
  %38 = ptrtoint ptr %signal40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %signal40, align 16
  %tty41 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 25
  %40 = ptrtoint ptr %tty41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty41, align 8
  tail call void @tty_kref_put(ptr noundef %41) #6
  br label %if.end42

if.end42:                                         ; preds = %do.end37, %get_pid.exit75.if.end42_crit_edge
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %signal45 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 111
  %44 = ptrtoint ptr %signal45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %signal45, align 16
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 23
  %46 = ptrtoint ptr %tty_old_pgrp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tty_old_pgrp, align 8
  tail call void @put_pid(ptr noundef %47) #6
  %tobool.not.i76 = icmp eq ptr %tty, null
  br i1 %tobool.not.i76, label %if.end42.tty_kref_get.exit_crit_edge, label %if.then.i77

if.end42.tty_kref_get.exit_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %tty_kref_get.exit

if.then.i77:                                      ; preds = %if.end42
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i77.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then.i77.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i77
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tty_kref_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i77.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i77.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %tty_kref_get.exit

tty_kref_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, %if.end42.tty_kref_get.exit_crit_edge
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %signal49 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 111
  %52 = ptrtoint ptr %signal49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %signal49, align 16
  %tty50 = getelementptr inbounds %struct.signal_struct, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %tty50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %tty, ptr %tty50, align 8
  %55 = load ptr, ptr %task, align 8
  %signal53 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 111
  %56 = ptrtoint ptr %signal53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %signal53, align 16
  %tty_old_pgrp54 = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 23
  %58 = ptrtoint ptr %tty_old_pgrp54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %tty_old_pgrp54, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_current_tty() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #6
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
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %tty8 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %tty8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty8, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.tty_kref_get.exit_crit_edge, label %if.then.i

entry.tty_kref_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tty_kref_get.exit

if.then.i:                                        ; preds = %entry
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tty_kref_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %tty_kref_get.exit

tty_kref_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tty_kref_get.exit_crit_edge, %entry.tty_kref_get.exit_crit_edge
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %sighand12 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 112
  %16 = ptrtoint ptr %sighand12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sighand12, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call3) #6
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @session_clear_tty(ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %session, null
  br i1 %cmp.not, label %entry.do.end33_crit_edge, label %do.body1

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

do.body1:                                         ; preds = %entry
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body1.do.end_crit_edge

do.body1.do.end_crit_edge:                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body1
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @session_clear_tty.__warned, align 1
  br i1 %.b40, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @session_clear_tty.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 179, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body1.do.end_crit_edge
  %arrayidx = getelementptr %struct.pid, ptr %session, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -1388
  %tobool14.not4446 = icmp eq ptr %add.ptr, null
  %tobool14.not44 = or i1 %tobool12.not, %tobool14.not4446
  br i1 %tobool14.not44, label %do.end.do.end33_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %p.045 = phi ptr [ %add.ptr27, %for.body.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %p.045, i32 0, i32 112
  %2 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sighand.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.045, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i, align 16
  %tty5.i = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %tty5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tty5.i, align 8
  store ptr null, ptr %tty5.i, align 8
  %8 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call2.i) #6
  tail call void @tty_kref_put(ptr noundef %7) #6
  %arrayidx20 = getelementptr %struct.task_struct, ptr %p.045, i32 0, i32 79, i32 3
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx20, align 4
  %tobool23.not = icmp eq ptr %11, null
  %add.ptr27 = getelementptr i8, ptr %11, i32 -1388
  %tobool14.not47 = icmp eq ptr %add.ptr27, null
  %tobool14.not = or i1 %tobool23.not, %tobool14.not47
  br i1 %tobool14.not, label %for.body.do.end33_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end33

do.end33:                                         ; preds = %for.body.do.end33_crit_edge, %do.end.do.end33_crit_edge, %entry.do.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_signal_session_leader(ptr noundef %tty, i32 noundef %exit_session) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %session = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %session, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end72.thread, label %do.body4

if.end72.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %if.end79

do.body4:                                         ; preds = %entry
  %call = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body4.do.end_crit_edge

do.body4.do.end_crit_edge:                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body4
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b107 = load i1, ptr @tty_signal_session_leader.__warned, align 1
  br i1 %.b107, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @tty_signal_session_leader.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 204, ptr noundef nonnull @.str.3) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body4.do.end_crit_edge
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 4
  %arrayidx = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool18.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -1388
  %tobool20.not127132 = icmp eq ptr %add.ptr, null
  %tobool20.not127 = or i1 %tobool18.not, %tobool20.not127132
  br i1 %tobool20.not127, label %if.end72.thread133, label %for.body.lr.ph

if.end72.thread133:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %if.end79

for.body.lr.ph:                                   ; preds = %do.end
  %pgrp = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.0130 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr65, %for.inc.for.body_crit_edge ]
  %refs.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %refs.1, %for.inc.for.body_crit_edge ]
  %tty_pgrp.0128 = phi ptr [ null, %for.body.lr.ph ], [ %tty_pgrp.1, %for.inc.for.body_crit_edge ]
  %sighand = getelementptr inbounds %struct.task_struct, ptr %p.0130, i32 0, i32 112
  %6 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #6
  %signal = getelementptr inbounds %struct.task_struct, ptr %p.0130, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %tty21 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %tty21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tty21, align 8
  %cmp22 = icmp eq ptr %11, %tty
  br i1 %cmp22, label %if.then23, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %tty21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tty21, align 8
  %inc = add i32 %refs.0129, 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.body.if.end26_crit_edge
  %refs.1 = phi i32 [ %inc, %if.then23 ], [ %refs.0129, %for.body.if.end26_crit_edge ]
  %13 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signal, align 16
  %leader = getelementptr inbounds %struct.signal_struct, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %leader to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool28.not = icmp eq i32 %16, 0
  br i1 %tobool28.not, label %if.end26.for.inc_crit_edge, label %if.end32

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32:                                         ; preds = %if.end26
  %call33 = tail call i32 @__group_send_sig_info(i32 noundef 1, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %p.0130) #6
  %call34 = tail call i32 @__group_send_sig_info(i32 noundef 18, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef nonnull %p.0130) #6
  %17 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal, align 16
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %tty_old_pgrp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tty_old_pgrp, align 8
  tail call void @put_pid(ptr noundef %20) #6
  tail call void @_raw_spin_lock(ptr noundef %ctrl) #6
  %21 = ptrtoint ptr %pgrp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pgrp, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end32.if.end48_crit_edge, label %if.then.i

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then.i:                                        ; preds = %if.end32
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %22, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %22, i32 1, i32 3, i32 1) #6
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef %.sink.i.i.i.i) #6
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge
  %25 = ptrtoint ptr %pgrp to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %pgrp, align 4
  %tobool41.not = icmp eq ptr %.pr, null
  br i1 %tobool41.not, label %get_pid.exit.if.end48_crit_edge, label %if.then.i113

get_pid.exit.if.end48_crit_edge:                  ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then.i113:                                     ; preds = %get_pid.exit
  %call.i.i.i.i.i.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %.pr, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %.pr, i32 1, i32 3, i32 1) #6
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %.pr, ptr nonnull %.pr, i32 1, ptr nonnull elementtype(i32) %.pr) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i111 = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i111)
  %tobool1.not.i.i.i.i112 = icmp eq i32 %asmresult.i.i.i.i.i.i111, 0
  br i1 %tobool1.not.i.i.i.i112, label %if.then.i113.if.end15.sink.split.i.i.i.i118_crit_edge, label %if.else.i.i.i.i116, !prof !42

if.then.i113.if.end15.sink.split.i.i.i.i118_crit_edge: ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i118

if.else.i.i.i.i116:                               ; preds = %if.then.i113
  %add.i.i.i.i114 = add i32 %asmresult.i.i.i.i.i.i111, 1
  %27 = or i32 %add.i.i.i.i114, %asmresult.i.i.i.i.i.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i115 = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i115, label %if.else.i.i.i.i116.get_pid.exit119_crit_edge, label %if.else.i.i.i.i116.if.end15.sink.split.i.i.i.i118_crit_edge, !prof !43

if.else.i.i.i.i116.if.end15.sink.split.i.i.i.i118_crit_edge: ; preds = %if.else.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i118

if.else.i.i.i.i116.get_pid.exit119_crit_edge:     ; preds = %if.else.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit119

if.end15.sink.split.i.i.i.i118:                   ; preds = %if.else.i.i.i.i116.if.end15.sink.split.i.i.i.i118_crit_edge, %if.then.i113.if.end15.sink.split.i.i.i.i118_crit_edge
  %.sink.i.i.i.i117 = phi i32 [ 2, %if.then.i113.if.end15.sink.split.i.i.i.i118_crit_edge ], [ 1, %if.else.i.i.i.i116.if.end15.sink.split.i.i.i.i118_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %.pr, i32 noundef %.sink.i.i.i.i117) #6
  br label %get_pid.exit119

get_pid.exit119:                                  ; preds = %if.end15.sink.split.i.i.i.i118, %if.else.i.i.i.i116.get_pid.exit119_crit_edge
  %28 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %signal, align 16
  %tty_old_pgrp47 = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 23
  %30 = ptrtoint ptr %tty_old_pgrp47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.pr, ptr %tty_old_pgrp47, align 8
  br label %if.end48

if.end48:                                         ; preds = %get_pid.exit119, %get_pid.exit.if.end48_crit_edge, %if.end32.if.end48_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ctrl) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.end26.for.inc_crit_edge
  %tty_pgrp.1 = phi ptr [ %22, %if.end48 ], [ %tty_pgrp.0128, %if.end26.for.inc_crit_edge ]
  %31 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %32) #6
  %arrayidx58 = getelementptr %struct.task_struct, ptr %p.0130, i32 0, i32 79, i32 3
  %33 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %arrayidx58, align 4
  %tobool61.not = icmp eq ptr %34, null
  %add.ptr65 = getelementptr i8, ptr %34, i32 -1388
  %tobool20.not137 = icmp eq ptr %add.ptr65, null
  %tobool20.not = or i1 %tobool61.not, %tobool20.not137
  br i1 %tobool20.not, label %if.end72, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end72:                                         ; preds = %for.inc
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  %tobool73.not = icmp eq ptr %tty_pgrp.1, null
  br i1 %tobool73.not, label %if.end72.if.end79_crit_edge, label %if.then74

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exit_session)
  %tobool75.not = icmp eq i32 %exit_session, 0
  br i1 %tobool75.not, label %if.then74.if.end78_crit_edge, label %if.then76

if.then74.if.end78_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = tail call i32 @kill_pgrp(ptr noundef nonnull %tty_pgrp.1, i32 noundef 1, i32 noundef %exit_session) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.then74.if.end78_crit_edge
  tail call void @put_pid(ptr noundef nonnull %tty_pgrp.1) #6
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end72.if.end79_crit_edge, %if.end72.thread133, %if.end72.thread
  %refs.2125 = phi i32 [ 0, %if.end72.thread ], [ %refs.1, %if.end78 ], [ %refs.1, %if.end72.if.end79_crit_edge ], [ 0, %if.end72.thread133 ]
  ret i32 %refs.2125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__group_send_sig_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %pid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #6, !srcloc !41
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !42

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !43

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i) #6
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %pid
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disassociate_ctty(i32 noundef %on_exit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %leader = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %leader to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %leader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @get_current_tty()
  %tobool2.not = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on_exit)
  %tobool18.not = icmp eq i32 %on_exit, 0
  br i1 %tobool2.not, label %if.else17, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool18.not, label %if.then3.if.else_crit_edge, label %land.lhs.true

if.then3.if.else_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then3
  %driver = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 3
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp.not = icmp eq i16 %11, 4
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then6

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tty_vhangup_session(ptr noundef nonnull %call1) #6
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then3.if.else_crit_edge
  %ctrl.i = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl.i) #6
  %pgrp6.i = getelementptr inbounds %struct.tty_struct, ptr %call1, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %pgrp6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pgrp6.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %tty_get_pgrp.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #6
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then9_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then9_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %.sink.i.i.i.i.i) #6
  br label %if.then9

tty_get_pgrp.exit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl.i, i32 noundef %call2.i) #6
  br label %if.end16

if.then9:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl.i, i32 noundef %call2.i) #6
  %call10 = tail call i32 @kill_pgrp(ptr noundef nonnull %13, i32 noundef 1, i32 noundef %on_exit) #6
  br i1 %tobool18.not, label %if.then12, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @kill_pgrp(ptr noundef nonnull %13, i32 noundef 18, i32 noundef 0) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9.if.end14_crit_edge
  tail call void @put_pid(ptr noundef nonnull %13) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %tty_get_pgrp.exit, %if.then6
  tail call void @tty_kref_put(ptr noundef nonnull %call1) #6
  br label %if.end39

if.else17:                                        ; preds = %if.end
  br i1 %tobool18.not, label %if.else17.if.end39_crit_edge, label %if.then19

if.else17.if.end39_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then19:                                        ; preds = %if.else17
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 112
  %18 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #6
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %signal24 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 111
  %22 = ptrtoint ptr %signal24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal24, align 16
  %tty_old_pgrp = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %tty_old_pgrp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tty_old_pgrp, align 8
  store ptr null, ptr %tty_old_pgrp, align 8
  %26 = load ptr, ptr %task, align 8
  %sighand31 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 112
  %27 = ptrtoint ptr %sighand31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sighand31, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %28) #6
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %if.then19.cleanup_crit_edge, label %if.then34

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 @kill_pgrp(ptr noundef nonnull %25, i32 noundef 1, i32 noundef %on_exit) #6
  %call36 = tail call i32 @kill_pgrp(ptr noundef nonnull %25, i32 noundef 18, i32 noundef %on_exit) #6
  tail call void @put_pid(ptr noundef nonnull %25) #6
  br label %cleanup

if.end39:                                         ; preds = %if.else17.if.end39_crit_edge, %if.end16
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %sighand42 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 112
  %31 = ptrtoint ptr %sighand42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sighand42, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %32) #6
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %signal46 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 111
  %35 = ptrtoint ptr %signal46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %signal46, align 16
  %tty_old_pgrp47 = getelementptr inbounds %struct.signal_struct, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %tty_old_pgrp47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tty_old_pgrp47, align 8
  tail call void @put_pid(ptr noundef %38) #6
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %signal50 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 111
  %41 = ptrtoint ptr %signal50 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %signal50, align 16
  %tty_old_pgrp51 = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 23
  %43 = ptrtoint ptr %tty_old_pgrp51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %tty_old_pgrp51, align 8
  %44 = load ptr, ptr %task, align 8
  %signal54 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 111
  %45 = ptrtoint ptr %signal54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %signal54, align 16
  %tty55 = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %tty55 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tty55, align 8
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %tty_kref_get.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end39
  %kref.i = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 1
  %call.i.i.i.i.i.i.i108 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #6
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i.i109 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i109)
  %tobool1.not.i.i.i.i.i110 = icmp eq i32 %asmresult.i.i.i.i.i.i.i109, 0
  br i1 %tobool1.not.i.i.i.i.i110, label %if.then.i.if.end15.sink.split.i.i.i.i.i115_crit_edge, label %if.else.i.i.i.i.i113, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i.i115_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i115

if.else.i.i.i.i.i113:                             ; preds = %if.then.i
  %add.i.i.i.i.i111 = add i32 %asmresult.i.i.i.i.i.i.i109, 1
  %50 = or i32 %add.i.i.i.i.i111, %asmresult.i.i.i.i.i.i.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %.not.i.i.i.i.i112 = icmp sgt i32 %50, -1
  br i1 %.not.i.i.i.i.i112, label %if.else.i.i.i.i.i113.if.then62_crit_edge, label %if.else.i.i.i.i.i113.if.end15.sink.split.i.i.i.i.i115_crit_edge, !prof !43

if.else.i.i.i.i.i113.if.end15.sink.split.i.i.i.i.i115_crit_edge: ; preds = %if.else.i.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i115

if.else.i.i.i.i.i113.if.then62_crit_edge:         ; preds = %if.else.i.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

if.end15.sink.split.i.i.i.i.i115:                 ; preds = %if.else.i.i.i.i.i113.if.end15.sink.split.i.i.i.i.i115_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i115_crit_edge
  %.sink.i.i.i.i.i114 = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i115_crit_edge ], [ 1, %if.else.i.i.i.i.i113.if.end15.sink.split.i.i.i.i.i115_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i114) #6
  br label %if.then62

tty_kref_get.exit:                                ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %sighand59 = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 112
  %53 = ptrtoint ptr %sighand59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sighand59, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %54) #6
  br label %if.end78

if.then62:                                        ; preds = %if.end15.sink.split.i.i.i.i.i115, %if.else.i.i.i.i.i113.if.then62_crit_edge
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %sighand59116 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 112
  %57 = ptrtoint ptr %sighand59116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sighand59116, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %58) #6
  tail call void @tty_lock(ptr noundef nonnull %48) #6
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 20
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #6
  %session = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 20, i32 2
  %59 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %session, align 4
  tail call void @put_pid(ptr noundef %60) #6
  %pgrp = getelementptr inbounds %struct.tty_struct, ptr %48, i32 0, i32 20, i32 1
  %61 = ptrtoint ptr %pgrp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pgrp, align 4
  tail call void @put_pid(ptr noundef %62) #6
  %63 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %session, align 4
  %64 = ptrtoint ptr %pgrp to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %pgrp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call67) #6
  tail call void @tty_unlock(ptr noundef nonnull %48) #6
  tail call void @tty_kref_put(ptr noundef nonnull %48) #6
  br label %if.end78

if.end78:                                         ; preds = %if.then62, %tty_kref_get.exit
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  %65 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 111
  %67 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %68, i32 0, i32 22, i32 3
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  tail call void @session_clear_tty(ptr noundef %70)
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then34, %if.then19.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tty_get_pgrp(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl) #6
  %pgrp6 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 20, i32 1
  %0 = ptrtoint ptr %pgrp6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgrp6, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.get_pid.exit_crit_edge, label %if.then.i

entry.get_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !42

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef %.sink.i.i.i.i) #6
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %entry.get_pid.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl, i32 noundef %call2) #6
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @no_tty() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @disassociate_ctty(i32 noundef 0)
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %4 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i, align 16
  %tty5.i = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %tty5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty5.i, align 8
  store ptr null, ptr %tty5.i, align 8
  %10 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call2.i) #6
  tail call void @tty_kref_put(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_jobctrl_ioctl(ptr noundef readnone %tty, ptr noundef %real_tty, ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 21538, label %sw.bb
    i32 21518, label %sw.bb2
    i32 21519, label %sw.bb4
    i32 21520, label %sw.bb6
    i32 21545, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %tty1 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty1, align 8
  %cmp.not = icmp eq ptr %9, %tty
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @disassociate_ctty(i32 noundef 0) #6
  %sighand.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 112
  %10 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sighand.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %12 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal, align 16
  %tty5.i.i = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 25
  %14 = ptrtoint ptr %tty5.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tty5.i.i, align 8
  store ptr null, ptr %tty5.i.i, align 8
  %16 = ptrtoint ptr %sighand.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sighand.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %call2.i.i) #6
  tail call void @tty_kref_put(ptr noundef %15) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  tail call void @tty_lock(ptr noundef %real_tty) #6
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #6
  %18 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i19 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i19 to ptr
  %task.i20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i20, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 111
  %22 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signal.i, align 16
  %leader.i = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %leader.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %leader.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %sw.bb2.tiocsctty.exit_crit_edge, label %land.lhs.true.i

sw.bb2.tiocsctty.exit_crit_edge:                  ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiocsctty.exit

land.lhs.true.i:                                  ; preds = %sw.bb2
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %23, i32 0, i32 22, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %session.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20, i32 2
  %28 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %session.i, align 4
  %cmp.i = icmp eq ptr %27, %29
  br i1 %cmp.i, label %land.lhs.true.i.tiocsctty.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.tiocsctty.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiocsctty.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %tty12.i = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 25
  %30 = ptrtoint ptr %tty12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tty12.i, align 8
  %tobool13.not.i = icmp eq ptr %31, null
  br i1 %tobool13.not.i, label %if.end15.i, label %lor.lhs.false.i.tiocsctty.exit_crit_edge

lor.lhs.false.i.tiocsctty.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiocsctty.exit

if.end15.i:                                       ; preds = %lor.lhs.false.i
  %tobool18.not.i = icmp eq ptr %29, null
  br i1 %tobool18.not.i, label %if.end15.i.if.end27.i_crit_edge, label %if.then19.i

if.end15.i.if.end27.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %arg)
  %cmp20.i = icmp eq i32 %arg, 1
  br i1 %cmp20.i, label %land.lhs.true21.i, label %if.then19.i.tiocsctty.exit_crit_edge

if.then19.i.tiocsctty.exit_crit_edge:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiocsctty.exit

land.lhs.true21.i:                                ; preds = %if.then19.i
  %call22.i = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call22.i, label %if.then23.i, label %land.lhs.true21.i.tiocsctty.exit_crit_edge

land.lhs.true21.i.tiocsctty.exit_crit_edge:       ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiocsctty.exit

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %session.i, align 4
  tail call void @session_clear_tty(ptr noundef %33) #6
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end15.i.if.end27.i_crit_edge
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %34 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_mode.i, align 8
  %and.i21 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %cmp28.i = icmp eq i32 %and.i21, 0
  br i1 %cmp28.i, label %land.lhs.true29.i, label %if.end27.i.if.end32.i_crit_edge

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

land.lhs.true29.i:                                ; preds = %if.end27.i
  %call30.i = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call30.i, label %land.lhs.true29.i.if.end32.i_crit_edge, label %land.lhs.true29.i.tiocsctty.exit_crit_edge

land.lhs.true29.i.tiocsctty.exit_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tiocsctty.exit

land.lhs.true29.i.if.end32.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end32.i:                                       ; preds = %land.lhs.true29.i.if.end32.i_crit_edge, %if.end27.i.if.end32.i_crit_edge
  %36 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i, align 8
  %sighand.i.i22 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 112
  %40 = ptrtoint ptr %sighand.i.i22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sighand.i.i22, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %41) #6
  tail call fastcc void @__proc_set_tty(ptr noundef %real_tty) #6
  %42 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i, align 8
  %sighand3.i.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 112
  %44 = ptrtoint ptr %sighand3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sighand3.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %45) #6
  br label %tiocsctty.exit

tiocsctty.exit:                                   ; preds = %if.end32.i, %land.lhs.true29.i.tiocsctty.exit_crit_edge, %land.lhs.true21.i.tiocsctty.exit_crit_edge, %if.then19.i.tiocsctty.exit_crit_edge, %lor.lhs.false.i.tiocsctty.exit_crit_edge, %land.lhs.true.i.tiocsctty.exit_crit_edge, %sw.bb2.tiocsctty.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %land.lhs.true.i.tiocsctty.exit_crit_edge ], [ 0, %if.end32.i ], [ -1, %lor.lhs.false.i.tiocsctty.exit_crit_edge ], [ -1, %land.lhs.true21.i.tiocsctty.exit_crit_edge ], [ -1, %if.then19.i.tiocsctty.exit_crit_edge ], [ -1, %land.lhs.true29.i.tiocsctty.exit_crit_edge ], [ -1, %sw.bb2.tiocsctty.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #6
  tail call void @tty_unlock(ptr noundef %real_tty) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %cmp.i23 = icmp eq ptr %tty, %real_tty
  br i1 %cmp.i23, label %land.lhs.true.i26, label %sw.bb4.if.end.i_crit_edge

sw.bb4.if.end.i_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i26:                                ; preds = %sw.bb4
  %46 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i11.i to ptr
  %task.i24 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i24, align 8
  %signal.i25 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 111
  %50 = ptrtoint ptr %signal.i25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %signal.i25, align 16
  %tty1.i = getelementptr inbounds %struct.signal_struct, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %tty1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tty1.i, align 8
  %cmp2.not.i = icmp eq ptr %53, %tty
  br i1 %cmp2.not.i, label %land.lhs.true.i26.if.end.i_crit_edge, label %land.lhs.true.i26.cleanup_crit_edge

land.lhs.true.i26.cleanup_crit_edge:              ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i26.if.end.i_crit_edge:             ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i26.if.end.i_crit_edge, %sw.bb4.if.end.i_crit_edge
  %ctrl.i.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20
  %call2.i.i27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl.i.i) #6
  %pgrp6.i.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20, i32 1
  %54 = ptrtoint ptr %pgrp6.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pgrp6.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.end.i.tty_get_pgrp.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.tty_get_pgrp.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tty_get_pgrp.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %55, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr nonnull %55, i32 1, i32 3, i32 1) #6
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %55, ptr nonnull %55, i32 1, ptr nonnull elementtype(i32) %55) #6, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !42

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %57 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i.i.i.i = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.tty_get_pgrp.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !43

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.tty_get_pgrp.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tty_get_pgrp.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %55, i32 noundef %.sink.i.i.i.i.i.i) #6
  br label %tty_get_pgrp.exit.i

tty_get_pgrp.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.tty_get_pgrp.exit.i_crit_edge, %if.end.i.tty_get_pgrp.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl.i.i, i32 noundef %call2.i.i27) #6
  %call4.i = tail call i32 @pid_vnr(ptr noundef %55) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 472) #6
  %58 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #4, !srcloc !45
  %and.i.i28 = and i32 %60, -13
  %or.i.i = or i32 %and.i.i28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %61 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call4.i, i32 -1226833921) #6, !srcloc !48
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @put_pid(ptr noundef %55) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %call.i1.i = tail call i32 @__tty_check_change(ptr noundef %real_tty, i32 noundef 22) #6
  %62 = zext i32 %call.i1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call.i1.i, label %if.then2.i [
    i32 -5, label %sw.bb6.cleanup_crit_edge
    i32 0, label %if.end3.i
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.i:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 499) #6
  %63 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i.i29 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i29 to ptr
  %cpu_domain.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i30) #4, !srcloc !45
  %and.i.i31 = and i32 %65, -13
  %or.i.i32 = or i32 %and.i.i31, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i32) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %66 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #6, !srcloc !49
  %asmresult.i = extractvalue { i32, i32 } %66, 0
  %asmresult5.i = extractvalue { i32, i32 } %66, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool7.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult5.i)
  %cmp10.i = icmp slt i32 %asmresult5.i, 0
  br i1 %cmp10.i, label %if.end9.i.cleanup_crit_edge, label %if.end12.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end9.i
  %ctrl.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20
  tail call void @_raw_spin_lock_irq(ptr noundef %ctrl.i) #6
  %67 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i2.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i2.i to ptr
  %task.i33 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i33 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i33, align 8
  %signal.i34 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 111
  %71 = ptrtoint ptr %signal.i34 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %signal.i34, align 16
  %tty14.i = getelementptr inbounds %struct.signal_struct, ptr %72, i32 0, i32 25
  %73 = ptrtoint ptr %tty14.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tty14.i, align 8
  %tobool15.not.i = icmp ne ptr %74, null
  %cmp20.not.i = icmp eq ptr %74, %real_tty
  %or.cond.i = and i1 %tobool15.not.i, %cmp20.not.i
  br i1 %or.cond.i, label %lor.lhs.false21.i, label %if.end12.i.out_unlock_ctrl.i_crit_edge

if.end12.i.out_unlock_ctrl.i_crit_edge:           ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_ctrl.i

lor.lhs.false21.i:                                ; preds = %if.end12.i
  %session.i35 = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20, i32 2
  %75 = ptrtoint ptr %session.i35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %session.i35, align 4
  %arrayidx.i.i36 = getelementptr %struct.signal_struct, ptr %72, i32 0, i32 22, i32 3
  %77 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i36, align 4
  %cmp26.not.i = icmp eq ptr %76, %78
  br i1 %cmp26.not.i, label %if.end28.i, label %lor.lhs.false21.i.out_unlock_ctrl.i_crit_edge

lor.lhs.false21.i.out_unlock_ctrl.i_crit_edge:    ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock_ctrl.i

if.end28.i:                                       ; preds = %lor.lhs.false21.i
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %if.end28.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end28.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end28.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end28.i.rcu_read_lock.exit.i_crit_edge
  %call29.i = tail call ptr @find_vpid(i32 noundef %asmresult5.i) #6
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %rcu_read_lock.exit.i.out_unlock.i_crit_edge, label %if.end32.i37

rcu_read_lock.exit.i.out_unlock.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i

if.end32.i37:                                     ; preds = %rcu_read_lock.exit.i
  %call33.i = tail call fastcc ptr @session_of_pgrp(ptr noundef nonnull %call29.i) #6
  %81 = ptrtoint ptr %task.i33 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i33, align 8
  %signal.i3.i = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 111
  %83 = ptrtoint ptr %signal.i3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %signal.i3.i, align 16
  %arrayidx.i4.i = getelementptr %struct.signal_struct, ptr %84, i32 0, i32 22, i32 3
  %85 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i4.i, align 4
  %cmp37.not.i = icmp eq ptr %call33.i, %86
  br i1 %cmp37.not.i, label %if.end39.i, label %if.end32.i37.out_unlock.i_crit_edge

if.end32.i37.out_unlock.i_crit_edge:              ; preds = %if.end32.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock.i

if.end39.i:                                       ; preds = %if.end32.i37
  call void @__sanitizer_cov_trace_pc() #8
  %pgrp41.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20, i32 1
  %87 = ptrtoint ptr %pgrp41.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pgrp41.i, align 4
  tail call void @put_pid(ptr noundef %88) #6
  %call42.i = tail call fastcc ptr @get_pid(ptr noundef nonnull %call29.i) #6
  %89 = ptrtoint ptr %pgrp41.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call29.i, ptr %pgrp41.i, align 4
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %if.end39.i, %if.end32.i37.out_unlock.i_crit_edge, %rcu_read_lock.exit.i.out_unlock.i_crit_edge
  %retval1.0.i = phi i32 [ -1, %if.end32.i37.out_unlock.i_crit_edge ], [ 0, %if.end39.i ], [ -3, %rcu_read_lock.exit.i.out_unlock.i_crit_edge ]
  tail call fastcc void @rcu_read_unlock() #6
  br label %out_unlock_ctrl.i

out_unlock_ctrl.i:                                ; preds = %out_unlock.i, %lor.lhs.false21.i.out_unlock_ctrl.i_crit_edge, %if.end12.i.out_unlock_ctrl.i_crit_edge
  %retval1.1.i = phi i32 [ %retval1.0.i, %out_unlock.i ], [ -25, %lor.lhs.false21.i.out_unlock_ctrl.i_crit_edge ], [ -25, %if.end12.i.out_unlock_ctrl.i_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %ctrl.i) #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %cmp.i39 = icmp eq ptr %tty, %real_tty
  br i1 %cmp.i39, label %land.lhs.true.i44, label %sw.bb8.do.body3.i_crit_edge

sw.bb8.do.body3.i_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

land.lhs.true.i44:                                ; preds = %sw.bb8
  %90 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i33.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i33.i to ptr
  %task.i40 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task.i40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task.i40, align 8
  %signal.i41 = getelementptr inbounds %struct.task_struct, ptr %93, i32 0, i32 111
  %94 = ptrtoint ptr %signal.i41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %signal.i41, align 16
  %tty1.i42 = getelementptr inbounds %struct.signal_struct, ptr %95, i32 0, i32 25
  %96 = ptrtoint ptr %tty1.i42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tty1.i42, align 8
  %cmp2.not.i43 = icmp eq ptr %97, %tty
  br i1 %cmp2.not.i43, label %land.lhs.true.i44.do.body3.i_crit_edge, label %land.lhs.true.i44.cleanup_crit_edge

land.lhs.true.i44.cleanup_crit_edge:              ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i44.do.body3.i_crit_edge:           ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

do.body3.i:                                       ; preds = %land.lhs.true.i44.do.body3.i_crit_edge, %sw.bb8.do.body3.i_crit_edge
  %ctrl.i45 = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl.i45) #6
  %session.i46 = getelementptr inbounds %struct.tty_struct, ptr %real_tty, i32 0, i32 20, i32 2
  %98 = ptrtoint ptr %session.i46 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %session.i46, align 4
  %tobool.not.i47 = icmp eq ptr %99, null
  br i1 %tobool.not.i47, label %err.i, label %if.end11.i

if.end11.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @pid_vnr(ptr noundef nonnull %99) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl.i45, i32 noundef %call6.i) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 556) #6
  %100 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i.i48 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i48 to ptr
  %cpu_domain.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 4
  %102 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i49) #4, !srcloc !45
  %and.i.i50 = and i32 %102, -13
  %or.i.i51 = or i32 %and.i.i50, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i51) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %103 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call14.i, i32 -1226833921) #6, !srcloc !50
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  br label %cleanup

err.i:                                            ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl.i45, i32 noundef %call6.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err.i, %if.end11.i, %land.lhs.true.i44.cleanup_crit_edge, %out_unlock_ctrl.i, %if.end9.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.then2.i, %sw.bb6.cleanup_crit_edge, %tty_get_pgrp.exit.i, %land.lhs.true.i26.cleanup_crit_edge, %tiocsctty.exit, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %tiocsctty.exit ], [ 0, %if.end ], [ -25, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ], [ %61, %tty_get_pgrp.exit.i ], [ -25, %land.lhs.true.i26.cleanup_crit_edge ], [ %call.i1.i, %if.then2.i ], [ %retval1.1.i, %out_unlock_ctrl.i ], [ -25, %sw.bb6.cleanup_crit_edge ], [ -14, %if.end3.i.cleanup_crit_edge ], [ -22, %if.end9.i.cleanup_crit_edge ], [ %103, %if.end11.i ], [ -25, %err.i ], [ -25, %land.lhs.true.i44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @session_of_pgrp(ptr noundef %pgrp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pid_task(ptr noundef %pgrp, i32 noundef 2) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pid_task(ptr noundef %pgrp, i32 noundef 0) #6
  %cmp2.not = icmp eq ptr %call1, null
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %p.011 = phi ptr [ %call1, %if.end.if.then3_crit_edge ], [ %call, %entry.if.then3_crit_edge ]
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %p.011, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 22, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %sid.0 = phi ptr [ %3, %if.then3 ], [ null, %if.end.if.end5_crit_edge ]
  ret ptr %sid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !24, !26, !27, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/tty_jobctrl.c", i32 64, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__tty_check_change._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__tty_check_change._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tty_check_change, !7, !"__ksymtab_tty_check_change", i1 false, i1 false}
!7 = !{!"../drivers/tty/tty_jobctrl.c", i32 73, i32 1}
!8 = !{ptr @__ksymtab_get_current_tty, !9, !"__ksymtab_get_current_tty", i1 false, i1 false}
!9 = !{!"../drivers/tty/tty_jobctrl.c", i32 170, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/tty/tty_jobctrl.c", i32 179, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/tty/tty_jobctrl.c", i32 204, i32 3}
!15 = !{ptr @__ksymtab_tty_get_pgrp, !16, !"__ksymtab_tty_get_pgrp", i1 false, i1 false}
!16 = !{!"../drivers/tty/tty_jobctrl.c", i32 427, i32 1}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/tty_jobctrl.c", i32 113, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__proc_set_tty.__UNIQUE_ID_ddebug210, !25, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2149244312}
!40 = !{i64 2149244578}
!41 = !{i64 2148466156, i64 2148466188, i64 2148466217, i64 2148466251, i64 2148466282, i64 2148466305}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148182726, i64 2148182731, i64 2148182744, i64 2148182788, i64 2148182822, i64 2148182843}
!45 = !{i64 3060558}
!46 = !{i64 3060755}
!47 = !{i64 2150545988}
!48 = !{i64 2153288130, i64 2153288410, i64 2153288744, i64 2153289078}
!49 = !{i64 2153299632, i64 2153299912, i64 2153300246, i64 2153300580}
!50 = !{i64 2153309686, i64 2153309966, i64 2153310300, i64 2153310634}
