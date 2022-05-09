; ModuleID = '/llk/IR_all_yes/fs/file.c_pt.bc'
source_filename = "../fs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_unused_fd_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_get_unused_fd_flags\09\09\09\09"
module asm "\09.long\09__crc_get_unused_fd_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_unused_fd_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22get_unused_fd_flags\22\09\09\09\09\09"
module asm "__kstrtabns_get_unused_fd_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_unused_fd\22, \22a\22\09"
module asm "\09.weak\09__crc_put_unused_fd\09\09\09\09"
module asm "\09.long\09__crc_put_unused_fd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_unused_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22put_unused_fd\22\09\09\09\09\09"
module asm "__kstrtabns_put_unused_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fd_install\22, \22a\22\09"
module asm "\09.weak\09__crc_fd_install\09\09\09\09"
module asm "\09.long\09__crc_fd_install\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fd_install:\09\09\09\09\09"
module asm "\09.asciz \09\22fd_install\22\09\09\09\09\09"
module asm "__kstrtabns_fd_install:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+close_fd\22, \22a\22\09"
module asm "\09.weak\09__crc_close_fd\09\09\09\09"
module asm "\09.long\09__crc_close_fd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_close_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22close_fd\22\09\09\09\09\09"
module asm "__kstrtabns_close_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fget\22, \22a\22\09"
module asm "\09.weak\09__crc_fget\09\09\09\09"
module asm "\09.long\09__crc_fget\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fget:\09\09\09\09\09"
module asm "\09.asciz \09\22fget\22\09\09\09\09\09"
module asm "__kstrtabns_fget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fget_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_fget_raw\09\09\09\09"
module asm "\09.long\09__crc_fget_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fget_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22fget_raw\22\09\09\09\09\09"
module asm "__kstrtabns_fget_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__fdget\22, \22a\22\09"
module asm "\09.weak\09__crc___fdget\09\09\09\09"
module asm "\09.long\09__crc___fdget\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fdget:\09\09\09\09\09"
module asm "\09.asciz \09\22__fdget\22\09\09\09\09\09"
module asm "__kstrtabns___fdget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+receive_fd\22, \22a\22\09"
module asm "\09.weak\09__crc_receive_fd\09\09\09\09"
module asm "\09.long\09__crc_receive_fd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_receive_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22receive_fd\22\09\09\09\09\09"
module asm "__kstrtabns_receive_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iterate_fd\22, \22a\22\09"
module asm "\09.weak\09__crc_iterate_fd\09\09\09\09"
module asm "\09.long\09__crc_iterate_fd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iterate_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22iterate_fd\22\09\09\09\09\09"
module asm "__kstrtabns_iterate_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.files_struct = type { %struct.atomic_t, i8, %struct.wait_queue_head, ptr, %struct.fdtable, [36 x i8], %struct.spinlock, i32, [1 x i32], [1 x i32], [1 x i32], [32 x ptr], [68 x i8] }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fdtable = type { i32, ptr, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.129, %struct.trace_event, ptr, ptr, %union.anon.131, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.129 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.131 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.135, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.135 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@sysctl_nr_open = dso_local local_unnamed_addr global i32 1048576, section ".data..read_mostly", align 4
@sysctl_nr_open_min = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@sysctl_nr_open_max = dso_local global { i32, [28 x i8] } { i32 1073741792, [28 x i8] zeroinitializer }, align 32
@files_cachep = external dso_local local_unnamed_addr global ptr, align 4
@dup_fd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&newf->file_lock\00", [47 x i8] zeroinitializer }, align 32
@dup_fd.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&newf->resize_wait\00", [45 x i8] zeroinitializer }, align 32
@dup_fd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/file.c\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dup_fd.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"init_files.resize_wait.lock\00", [36 x i8] zeroinitializer }, align 32
@init_files = dso_local global %struct.files_struct { %struct.atomic_t { i32 1 }, i8 0, %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @init_files, i64 52), ptr getelementptr (i8, ptr @init_files, i64 52) } }, ptr getelementptr (i8, ptr @init_files, i64 64), %struct.fdtable { i32 32, ptr getelementptr (i8, ptr @init_files, i64 188), ptr getelementptr (i8, ptr @init_files, i64 176), ptr getelementptr (i8, ptr @init_files, i64 180), ptr getelementptr (i8, ptr @init_files, i64 184), %struct.callback_head zeroinitializer }, [36 x i8] undef, %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [32 x ptr] zeroinitializer, [68 x i8] undef }, align 128
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_files.file_lock\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_get_unused_fd_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_unused_fd_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_get_unused_fd_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_unused_fd_flags to i32), ptr @__kstrtab_get_unused_fd_flags, ptr @__kstrtabns_get_unused_fd_flags }, section "___ksymtab+get_unused_fd_flags", align 4
@__kstrtab_put_unused_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_unused_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_put_unused_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_unused_fd to i32), ptr @__kstrtab_put_unused_fd, ptr @__kstrtabns_put_unused_fd }, section "___ksymtab+put_unused_fd", align 4
@fd_install.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fd_install.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_fd_install = external dso_local constant [0 x i8], align 1
@__kstrtabns_fd_install = external dso_local constant [0 x i8], align 1
@__ksymtab_fd_install = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fd_install to i32), ptr @__kstrtab_fd_install, ptr @__kstrtabns_fd_install }, section "___ksymtab+fd_install", align 4
@__kstrtab_close_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_close_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_close_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @close_fd to i32), ptr @__kstrtab_close_fd, ptr @__kstrtabns_close_fd }, section "___ksymtab+close_fd", align 4
@__close_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__close_fd_get_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_close_on_exec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_fget = external dso_local constant [0 x i8], align 1
@__kstrtabns_fget = external dso_local constant [0 x i8], align 1
@__ksymtab_fget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fget to i32), ptr @__kstrtab_fget, ptr @__kstrtabns_fget }, section "___ksymtab+fget", align 4
@__kstrtab_fget_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_fget_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_fget_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fget_raw to i32), ptr @__kstrtab_fget_raw, ptr @__kstrtabns_fget_raw }, section "___ksymtab+fget_raw", align 4
@task_lookup_next_fd_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab___fdget = external dso_local constant [0 x i8], align 1
@__kstrtabns___fdget = external dso_local constant [0 x i8], align 1
@__ksymtab___fdget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fdget to i32), ptr @__kstrtab___fdget, ptr @__kstrtabns___fdget }, section "___ksymtab+__fdget", align 4
@set_close_on_exec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@get_close_on_exec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_receive_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_receive_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_receive_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @receive_fd to i32), ptr @__kstrtab_receive_fd, ptr @__kstrtabns_receive_fd }, section "___ksymtab_gpl+receive_fd", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_dup3\00", [17 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__dup3 = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 3, ptr @types__dup3, ptr @args__dup3, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__dup3, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__dup3, i64 20) }, ptr @event_enter__dup3, ptr @event_exit__dup3 }, align 4
@event_enter__dup3 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.129 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr @__syscall_meta__dup3, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__dup3 = internal global ptr @event_enter__dup3, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_dup3\00", [18 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__dup3 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.129 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr @__syscall_meta__dup3, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__dup3 = internal global ptr @event_exit__dup3, section "_ftrace_events", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_dup3\00", [23 x i8] zeroinitializer }, align 32
@types__dup3 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.27, ptr @.str.27, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@args__dup3 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__dup3 = internal global ptr @__syscall_meta__dup3, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_dup2\00", [17 x i8] zeroinitializer }, align 32
@__syscall_meta__dup2 = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 2, ptr @types__dup2, ptr @args__dup2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__dup2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__dup2, i64 20) }, ptr @event_enter__dup2, ptr @event_exit__dup2 }, align 4
@event_enter__dup2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.129 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr @__syscall_meta__dup2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__dup2 = internal global ptr @event_enter__dup2, section "_ftrace_events", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_dup2\00", [18 x i8] zeroinitializer }, align 32
@event_exit__dup2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.129 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr @__syscall_meta__dup2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__dup2 = internal global ptr @event_exit__dup2, section "_ftrace_events", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_dup2\00", [23 x i8] zeroinitializer }, align 32
@types__dup2 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@args__dup2 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.29, ptr @.str.30], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__dup2 = internal global ptr @__syscall_meta__dup2, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_enter_dup\00", [18 x i8] zeroinitializer }, align 32
@__syscall_meta__dup = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 1, ptr @types__dup, ptr @args__dup, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__dup, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__dup, i64 20) }, ptr @event_enter__dup, ptr @event_exit__dup }, align 4
@event_enter__dup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.129 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr @__syscall_meta__dup, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__dup = internal global ptr @event_enter__dup, section "_ftrace_events", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_exit_dup\00", [19 x i8] zeroinitializer }, align 32
@event_exit__dup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.129 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.131 zeroinitializer, ptr @__syscall_meta__dup, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__dup = internal global ptr @event_exit__dup, section "_ftrace_events", align 4
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_dup\00", [24 x i8] zeroinitializer }, align 32
@types__dup = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@args__dup = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.32], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__dup = internal global ptr @__syscall_meta__dup, section "__syscalls_metadata", align 4
@iterate_fd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@iterate_fd.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_iterate_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_iterate_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_iterate_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iterate_fd to i32), ptr @__kstrtab_iterate_fd, ptr @__kstrtabns_iterate_fd }, section "___ksymtab+iterate_fd", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alloc_fd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@alloc_fd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014alloc_fd: slot %d not NULL!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alloc_fd\00", [23 x i8] zeroinitializer }, align 32
@alloc_fd._entry_ptr = internal global ptr @alloc_fd._entry, section ".printk_index", align 4
@__put_unused_fd.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_sched_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rcu_read_lock_sched() used illegally while idle\00", [48 x i8] zeroinitializer }, align 32
@rcu_read_unlock_sched.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"rcu_read_unlock_sched() used illegally while idle\00", [46 x i8] zeroinitializer }, align 32
@pick_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__range_cloexec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@files_lookup_fd_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/fdtable.h\00", [40 x i8] zeroinitializer }, align 32
@expand_files.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@expand_fdtable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@do_dup2.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oldfd\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"newfd\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@files_lookup_fd_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fildes\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"sysctl_nr_open_min\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 28, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"sysctl_nr_open_max\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 31, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 301, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 303, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 313, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 450, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 449, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"event_enter__dup3\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"event_exit__dup3\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"types__dup3\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"args__dup3\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"event_enter__dup2\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"event_exit__dup2\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"types__dup2\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"args__dup2\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1242, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"event_enter__dup\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"event_exit__dup\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"types__dup\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"args__dup\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 518, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 787, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 805, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 695, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 723, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"../include/linux/fdtable.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 103, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1237, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [13 x i8] c"../fs/file.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 1257, i32 1 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__event_enter__dup, ptr @__event_enter__dup2, ptr @__event_enter__dup3, ptr @__event_exit__dup, ptr @__event_exit__dup2, ptr @__event_exit__dup3, ptr @__ksymtab___fdget, ptr @__ksymtab_close_fd, ptr @__ksymtab_fd_install, ptr @__ksymtab_fget, ptr @__ksymtab_fget_raw, ptr @__ksymtab_get_unused_fd_flags, ptr @__ksymtab_iterate_fd, ptr @__ksymtab_put_unused_fd, ptr @__ksymtab_receive_fd, ptr @__p_syscall_meta__dup, ptr @__p_syscall_meta__dup2, ptr @__p_syscall_meta__dup3, ptr @__syscall_meta__dup, ptr @__syscall_meta__dup2, ptr @__syscall_meta__dup3, ptr @alloc_fd._entry, ptr @alloc_fd._entry_ptr, ptr @event_enter__dup, ptr @event_enter__dup2, ptr @event_enter__dup3, ptr @event_exit__dup, ptr @event_exit__dup2, ptr @event_exit__dup3, ptr @sysctl_nr_open_min, ptr @sysctl_nr_open_max, ptr @dup_fd.__key, ptr @.str, ptr @dup_fd.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__dup3, ptr @args__dup3, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__dup2, ptr @args__dup2, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__dup, ptr @args__dup, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_nr_open_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_nr_open_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dup_fd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dup_fd.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__dup3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__dup3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__dup3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__dup3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__dup2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__dup2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__dup2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__dup2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__dup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__dup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__dup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__dup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_fd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_dup3 = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_dup3
@sys_dup2 = dso_local alias i32 (i32, i32), ptr @__se_sys_dup2
@sys_dup = dso_local alias i32 (i32), ptr @__se_sys_dup

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dup_fd(ptr noundef %oldf, i32 noundef %max_fds, ptr nocapture noundef writeonly %errorp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %errorp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -12, ptr %errorp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @files_cachep to i32))
  %1 = load ptr, ptr @files_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call, align 8
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %file_lock, ptr noundef nonnull @.str, ptr noundef nonnull @dup_fd.__key, i16 noundef signext 3) #10
  %resize_in_progress = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %resize_in_progress, align 4
  %resize_wait = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %resize_wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @dup_fd.__key.1) #10
  %next_fd = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %next_fd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %next_fd, align 4
  %fdtab = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %fdtab to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %fdtab, align 8
  %close_on_exec_init = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 8
  %close_on_exec = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %close_on_exec to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %close_on_exec_init, ptr %close_on_exec, align 8
  %open_fds_init = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 9
  %open_fds = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 4, i32 3
  %7 = ptrtoint ptr %open_fds to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %open_fds_init, ptr %open_fds, align 4
  %full_fds_bits_init = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 10
  %full_fds_bits = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %full_fds_bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %full_fds_bits_init, ptr %full_fds_bits, align 8
  %fd_array = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 11
  %fd = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fd_array, ptr %fd, align 4
  %file_lock8 = getelementptr inbounds %struct.files_struct, ptr %oldf, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock8) #10
  %fdt = getelementptr inbounds %struct.files_struct, ptr %oldf, i32 0, i32 3
  %10 = ptrtoint ptr %fdt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %fdt, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %oldf, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end.do.end25_crit_edge

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end
  %call16 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %lor.lhs.false.do.end25_crit_edge

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b228 = load i1, ptr @dup_fd.__warned, align 1
  br i1 %.b228, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dup_fd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 313, ptr noundef nonnull @.str.4) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %lor.lhs.false.do.end25_crit_edge, %if.end.do.end25_crit_edge
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %div5.i.i = lshr i32 %13, 5
  %open_fds.i.i = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end25
  %i.0.i.i = phi i32 [ %div5.i.i, %do.end25 ], [ %dec.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %cmp.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %cmp.not.i.i, label %for.cond.i.i.sane_fdtable_size.exit_crit_edge, label %for.body.i.i

for.cond.i.i.sane_fdtable_size.exit_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sane_fdtable_size.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %14 = ptrtoint ptr %open_fds.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %open_fds.i.i, align 4
  %dec.i.i = add nsw i32 %i.0.i.i, -1
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %dec.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.sane_fdtable_size.exit_crit_edge

for.body.i.i.sane_fdtable_size.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sane_fdtable_size.exit

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

sane_fdtable_size.exit:                           ; preds = %for.body.i.i.sane_fdtable_size.exit_crit_edge, %for.cond.i.i.sane_fdtable_size.exit_crit_edge
  %i.1.i.i = phi i32 [ %dec.i.i, %for.body.i.i.sane_fdtable_size.exit_crit_edge ], [ 0, %for.cond.i.i.sane_fdtable_size.exit_crit_edge ]
  %add.i.i = shl i32 %i.1.i.i, 5
  %mul.i.i = add i32 %add.i.i, 32
  %18 = tail call i32 @llvm.umax.i32(i32 %max_fds, i32 32) #10
  %19 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %18) #10
  %20 = ptrtoint ptr %fdtab to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fdtab, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %19)
  %cmp254 = icmp ult i32 %21, %19
  br i1 %cmp254, label %sane_fdtable_size.exit.while.body_crit_edge, label %sane_fdtable_size.exit.while.end_crit_edge, !prof !151

sane_fdtable_size.exit.while.end_crit_edge:       ; preds = %sane_fdtable_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

sane_fdtable_size.exit.while.body_crit_edge:      ; preds = %sane_fdtable_size.exit
  br label %while.body

while.body:                                       ; preds = %sane_fdtable_size.exit242.while.body_crit_edge, %sane_fdtable_size.exit.while.body_crit_edge
  %open_files.0256 = phi i32 [ %32, %sane_fdtable_size.exit242.while.body_crit_edge ], [ %19, %sane_fdtable_size.exit.while.body_crit_edge ]
  %new_fdt.0255 = phi ptr [ %call36, %sane_fdtable_size.exit242.while.body_crit_edge ], [ %fdtab, %sane_fdtable_size.exit.while.body_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock8) #10
  %cmp33.not = icmp eq ptr %new_fdt.0255, %fdtab
  br i1 %cmp33.not, label %while.body.if.end35_crit_edge, label %if.then34

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__free_fdtable(ptr noundef %new_fdt.0255)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %while.body.if.end35_crit_edge
  %sub = add i32 %open_files.0256, -1
  %call36 = tail call fastcc ptr @alloc_fdtable(i32 noundef %sub)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.out_release_crit_edge, label %if.end39

if.end35.out_release_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release

if.end39:                                         ; preds = %if.end35
  %22 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %open_files.0256)
  %cmp41 = icmp ult i32 %23, %open_files.0256
  br i1 %cmp41, label %if.then48, label %if.end49, !prof !151

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__free_fdtable(ptr noundef nonnull %call36)
  br label %out_release

if.end49:                                         ; preds = %if.end39
  tail call void @_raw_spin_lock(ptr noundef %file_lock8) #10
  %24 = ptrtoint ptr %fdt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %fdt, align 4
  %call.i229 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i229)
  %tobool60.not = icmp eq i32 %call.i229, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %if.end49.do.end72_crit_edge

if.end49.do.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

lor.lhs.false61:                                  ; preds = %if.end49
  %call62 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true64, label %lor.lhs.false61.do.end72_crit_edge

lor.lhs.false61.do.end72_crit_edge:               ; preds = %lor.lhs.false61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

land.lhs.true64:                                  ; preds = %lor.lhs.false61
  %call65 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.do.end72_crit_edge, label %land.lhs.true67

land.lhs.true64.do.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

land.lhs.true67:                                  ; preds = %land.lhs.true64
  %.b226227 = load i1, ptr @dup_fd.__warned.5, align 1
  br i1 %.b226227, label %land.lhs.true67.do.end72_crit_edge, label %if.then69

land.lhs.true67.do.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

if.then69:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dup_fd.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 344, ptr noundef nonnull @.str.4) #10
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %land.lhs.true67.do.end72_crit_edge, %land.lhs.true64.do.end72_crit_edge, %lor.lhs.false61.do.end72_crit_edge, %if.end49.do.end72_crit_edge
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %div5.i.i230 = lshr i32 %27, 5
  %open_fds.i.i231 = getelementptr inbounds %struct.fdtable, ptr %25, i32 0, i32 3
  br label %for.cond.i.i234

for.cond.i.i234:                                  ; preds = %for.body.i.i238.for.cond.i.i234_crit_edge, %do.end72
  %i.0.i.i232 = phi i32 [ %div5.i.i230, %do.end72 ], [ %dec.i.i235, %for.body.i.i238.for.cond.i.i234_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i232)
  %cmp.not.i.i233 = icmp eq i32 %i.0.i.i232, 0
  br i1 %cmp.not.i.i233, label %for.cond.i.i234.sane_fdtable_size.exit242_crit_edge, label %for.body.i.i238

for.cond.i.i234.sane_fdtable_size.exit242_crit_edge: ; preds = %for.cond.i.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %sane_fdtable_size.exit242

for.body.i.i238:                                  ; preds = %for.cond.i.i234
  %28 = ptrtoint ptr %open_fds.i.i231 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %open_fds.i.i231, align 4
  %dec.i.i235 = add nsw i32 %i.0.i.i232, -1
  %arrayidx.i.i236 = getelementptr i32, ptr %29, i32 %dec.i.i235
  %30 = ptrtoint ptr %arrayidx.i.i236 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i236, align 4
  %tobool.not.i.i237 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i237, label %for.body.i.i238.for.cond.i.i234_crit_edge, label %for.body.i.i238.sane_fdtable_size.exit242_crit_edge

for.body.i.i238.sane_fdtable_size.exit242_crit_edge: ; preds = %for.body.i.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %sane_fdtable_size.exit242

for.body.i.i238.for.cond.i.i234_crit_edge:        ; preds = %for.body.i.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i234

sane_fdtable_size.exit242:                        ; preds = %for.body.i.i238.sane_fdtable_size.exit242_crit_edge, %for.cond.i.i234.sane_fdtable_size.exit242_crit_edge
  %i.1.i.i239 = phi i32 [ %dec.i.i235, %for.body.i.i238.sane_fdtable_size.exit242_crit_edge ], [ 0, %for.cond.i.i234.sane_fdtable_size.exit242_crit_edge ]
  %add.i.i240 = shl i32 %i.1.i.i239, 5
  %mul.i.i241 = add i32 %add.i.i240, 32
  %32 = tail call i32 @llvm.umin.i32(i32 %mul.i.i241, i32 %18) #10
  %33 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call36, align 4
  %cmp = icmp ult i32 %34, %32
  br i1 %cmp, label %sane_fdtable_size.exit242.while.body_crit_edge, label %sane_fdtable_size.exit242.while.end_crit_edge, !prof !151

sane_fdtable_size.exit242.while.end_crit_edge:    ; preds = %sane_fdtable_size.exit242
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

sane_fdtable_size.exit242.while.body_crit_edge:   ; preds = %sane_fdtable_size.exit242
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %sane_fdtable_size.exit242.while.end_crit_edge, %sane_fdtable_size.exit.while.end_crit_edge
  %old_fdt.0.lcssa = phi ptr [ %11, %sane_fdtable_size.exit.while.end_crit_edge ], [ %25, %sane_fdtable_size.exit242.while.end_crit_edge ]
  %new_fdt.0.lcssa = phi ptr [ %fdtab, %sane_fdtable_size.exit.while.end_crit_edge ], [ %call36, %sane_fdtable_size.exit242.while.end_crit_edge ]
  %open_files.0.lcssa = phi i32 [ %19, %sane_fdtable_size.exit.while.end_crit_edge ], [ %32, %sane_fdtable_size.exit242.while.end_crit_edge ]
  %.lcssa = phi i32 [ %21, %sane_fdtable_size.exit.while.end_crit_edge ], [ %34, %sane_fdtable_size.exit242.while.end_crit_edge ]
  %div43.i = lshr i32 %open_files.0.lcssa, 3
  %sub.i = sub i32 %.lcssa, %open_files.0.lcssa
  %div144.i = lshr i32 %sub.i, 3
  %open_fds.i = getelementptr inbounds %struct.fdtable, ptr %new_fdt.0.lcssa, i32 0, i32 3
  %35 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %open_fds.i, align 4
  %open_fds2.i = getelementptr inbounds %struct.fdtable, ptr %old_fdt.0.lcssa, i32 0, i32 3
  %37 = ptrtoint ptr %open_fds2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %open_fds2.i, align 4
  %39 = call ptr @memcpy(ptr %36, ptr %38, i32 %div43.i)
  %40 = load ptr, ptr %open_fds.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %div43.i
  %41 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %div144.i)
  %close_on_exec.i = getelementptr inbounds %struct.fdtable, ptr %new_fdt.0.lcssa, i32 0, i32 2
  %42 = ptrtoint ptr %close_on_exec.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %close_on_exec.i, align 4
  %close_on_exec4.i = getelementptr inbounds %struct.fdtable, ptr %old_fdt.0.lcssa, i32 0, i32 2
  %44 = ptrtoint ptr %close_on_exec4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %close_on_exec4.i, align 4
  %46 = call ptr @memcpy(ptr %43, ptr %45, i32 %div43.i)
  %47 = load ptr, ptr %close_on_exec.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %47, i32 %div43.i
  %48 = call ptr @memset(ptr %add.ptr6.i, i32 0, i32 %div144.i)
  %sub7.i = add i32 %open_files.0.lcssa, 31
  %div845.i = lshr i32 %sub7.i, 5
  %sub10.i = add nuw nsw i32 %div845.i, 31
  %49 = lshr i32 %sub10.i, 3
  %mul.i = and i32 %49, 33554428
  %50 = ptrtoint ptr %new_fdt.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %new_fdt.0.lcssa, align 4
  %sub14.i = add i32 %51, 31
  %div1547.i = lshr i32 %sub14.i, 5
  %sub17.i = add nuw nsw i32 %div1547.i, 31
  %52 = lshr i32 %sub17.i, 3
  %mul19.i = and i32 %52, 33554428
  %sub20.i = sub nsw i32 %mul19.i, %mul.i
  %full_fds_bits.i = getelementptr inbounds %struct.fdtable, ptr %new_fdt.0.lcssa, i32 0, i32 4
  %53 = ptrtoint ptr %full_fds_bits.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %full_fds_bits.i, align 4
  %full_fds_bits21.i = getelementptr inbounds %struct.fdtable, ptr %old_fdt.0.lcssa, i32 0, i32 4
  %55 = ptrtoint ptr %full_fds_bits21.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %full_fds_bits21.i, align 4
  %57 = call ptr @memcpy(ptr %54, ptr %56, i32 %mul.i)
  %58 = load ptr, ptr %full_fds_bits.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %58, i32 %mul.i
  %59 = call ptr @memset(ptr %add.ptr23.i, i32 0, i32 %sub20.i)
  %fd76 = getelementptr inbounds %struct.fdtable, ptr %new_fdt.0.lcssa, i32 0, i32 1
  %60 = ptrtoint ptr %fd76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fd76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open_files.0.lcssa)
  %cmp77.not260 = icmp eq i32 %open_files.0.lcssa, 0
  br i1 %cmp77.not260, label %while.end.for.end_crit_edge, label %for.body.preheader

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %while.end
  %fd75 = getelementptr inbounds %struct.fdtable, ptr %old_fdt.0.lcssa, i32 0, i32 1
  %62 = ptrtoint ptr %fd75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fd75, align 4
  br label %for.body

for.body:                                         ; preds = %do.body83.for.body_crit_edge, %for.body.preheader
  %old_fds.0263 = phi ptr [ %incdec.ptr, %do.body83.for.body_crit_edge ], [ %63, %for.body.preheader ]
  %new_fds.0262 = phi ptr [ %incdec.ptr111, %do.body83.for.body_crit_edge ], [ %61, %for.body.preheader ]
  %i.0261 = phi i32 [ %dec, %do.body83.for.body_crit_edge ], [ %open_files.0.lcssa, %for.body.preheader ]
  %incdec.ptr = getelementptr ptr, ptr %old_fds.0263, i32 1
  %64 = ptrtoint ptr %old_fds.0263 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %old_fds.0263, align 4
  %tobool78.not = icmp eq ptr %65, null
  br i1 %tobool78.not, label %if.else, label %if.then79

if.then79:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %f_count.i = getelementptr inbounds %struct.file, ptr %65, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !152
  br label %do.body83

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub81 = sub nuw i32 %open_files.0.lcssa, %i.0261
  %67 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %open_fds.i, align 4
  %rem.i.i = and i32 %sub81, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub81, 5
  %add.ptr.i.i = getelementptr i32, ptr %68, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %70, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %71 = ptrtoint ptr %full_fds_bits.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %full_fds_bits.i, align 4
  %rem.i4.i = and i32 %div2.i.i, 31
  %shl.i5.i = shl nuw i32 1, %rem.i4.i
  %div2.i6.i = lshr i32 %sub81, 10
  %add.ptr.i7.i = getelementptr i32, ptr %72, i32 %div2.i6.i
  %neg.i8.i = xor i32 %shl.i5.i, -1
  %73 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i7.i, align 4
  %and.i9.i = and i32 %74, %neg.i8.i
  store i32 %and.i9.i, ptr %add.ptr.i7.i, align 4
  br label %do.body83

do.body83:                                        ; preds = %if.else, %if.then79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !153
  %incdec.ptr111 = getelementptr ptr, ptr %new_fds.0262, i32 1
  %75 = ptrtoint ptr %new_fds.0262 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %65, ptr %new_fds.0262, align 4
  %dec = add i32 %i.0261, -1
  %cmp77.not = icmp eq i32 %dec, 0
  br i1 %cmp77.not, label %do.body83.for.end_crit_edge, label %do.body83.for.body_crit_edge

do.body83.for.body_crit_edge:                     ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body83.for.end_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.body83.for.end_crit_edge, %while.end.for.end_crit_edge
  %new_fds.0.lcssa = phi ptr [ %61, %while.end.for.end_crit_edge ], [ %incdec.ptr111, %do.body83.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock8) #10
  %76 = ptrtoint ptr %new_fdt.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %new_fdt.0.lcssa, align 4
  %sub125 = sub i32 %77, %open_files.0.lcssa
  %mul = shl i32 %sub125, 2
  %78 = call ptr @memset(ptr %new_fds.0.lcssa, i32 0, i32 %mul)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !154
  %fdt155 = getelementptr inbounds %struct.files_struct, ptr %call, i32 0, i32 3
  %79 = ptrtoint ptr %fdt155 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %new_fdt.0.lcssa, ptr %fdt155, align 4
  br label %cleanup

out_release:                                      ; preds = %if.then48, %if.end35.out_release_crit_edge
  %storemerge = phi i32 [ -24, %if.then48 ], [ -12, %if.end35.out_release_crit_edge ]
  %80 = ptrtoint ptr %errorp to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %storemerge, ptr %errorp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @files_cachep to i32))
  %81 = load ptr, ptr @files_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %81, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_release, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %for.end ], [ null, %entry.cleanup_crit_edge ], [ null, %out_release ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__free_fdtable(ptr noundef %fdt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fd = getelementptr inbounds %struct.fdtable, ptr %fdt, i32 0, i32 1
  %0 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %open_fds = getelementptr inbounds %struct.fdtable, ptr %fdt, i32 0, i32 3
  %2 = ptrtoint ptr %open_fds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open_fds, align 4
  tail call void @kvfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %fdt) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_fdtable(i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %nr)
  %cmp = icmp ult i32 %nr, 256
  %div96 = lshr i32 %nr, 8
  %0 = tail call i32 @llvm.ctlz.i32(i32 %div96, i1 true) #10, !range !155
  %sub.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i.op = shl i32 256, %sub.i.i.i
  %mul = select i1 %cmp, i32 256, i32 %sub.i.i.op.i.op
  %1 = load i32, ptr @sysctl_nr_open, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %1)
  %cmp26 = icmp ugt i32 %mul, %1
  br i1 %cmp26, label %if.then, label %entry.if.end_crit_edge, !prof !151

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub29 = add i32 %1, -1
  %or = or i32 %sub29, 31
  %add30 = add i32 %or, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nr.addr.0 = phi i32 [ %add30, %if.then ], [ %mul, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 4197568, i32 noundef 28) #13
  %tobool32.not = icmp eq ptr %call7.i, null
  br i1 %tobool32.not, label %if.end.cleanup_crit_edge, label %if.end34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nr.addr.0, ptr %call7.i, align 8
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr.addr.0, i32 4) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end34.out_fdt_crit_edge, label %kvmalloc_array.exit, !prof !151

if.end34.out_fdt_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_fdt

kvmalloc_array.exit:                              ; preds = %if.end34
  %6 = extractvalue { i32, i1 } %4, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %6, i32 noundef 4197568, i32 noundef -1) #14
  %tobool36.not = icmp eq ptr %call.i.i, null
  br i1 %tobool36.not, label %kvmalloc_array.exit.out_fdt_crit_edge, label %if.end38

kvmalloc_array.exit.out_fdt_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_fdt

if.end38:                                         ; preds = %kvmalloc_array.exit
  %fd = getelementptr inbounds %struct.fdtable, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %fd, align 4
  %8 = lshr i32 %nr.addr.0, 2
  %sub42 = add nuw nsw i32 %nr.addr.0, 31
  %div4398 = lshr i32 %sub42, 5
  %sub45 = add nuw nsw i32 %div4398, 31
  %9 = lshr i32 %sub45, 3
  %mul47 = and i32 %9, 33554428
  %add48 = add nuw nsw i32 %mul47, %8
  %10 = tail call i32 @llvm.umax.i32(i32 %add48, i32 128)
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 4197568, i32 noundef -1) #14
  %tobool56.not = icmp eq ptr %call.i, null
  br i1 %tobool56.not, label %out_arr, label %if.end58

if.end58:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %open_fds = getelementptr inbounds %struct.fdtable, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %open_fds to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %open_fds, align 4
  %div59100 = lshr i32 %nr.addr.0, 3
  %add.ptr = getelementptr i8, ptr %call.i, i32 %div59100
  %close_on_exec = getelementptr inbounds %struct.fdtable, ptr %call7.i, i32 0, i32 2
  %12 = ptrtoint ptr %close_on_exec to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %close_on_exec, align 8
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %div59100
  %full_fds_bits = getelementptr inbounds %struct.fdtable, ptr %call7.i, i32 0, i32 4
  %13 = ptrtoint ptr %full_fds_bits to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr61, ptr %full_fds_bits, align 8
  br label %cleanup

out_arr:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fd, align 4
  tail call void @kvfree(ptr noundef %15) #10
  br label %out_fdt

out_fdt:                                          ; preds = %out_arr, %kvmalloc_array.exit.out_fdt_crit_edge, %if.end34.out_fdt_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_fdt, %if.end58, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end58 ], [ null, %if.end.cleanup_crit_edge ], [ null, %out_fdt ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_files_struct(ptr noundef %files) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %files, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %files, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %files, ptr %files, i32 1, ptr elementtype(i32) %files) #10, !srcloc !157
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %fdt1.i = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %1 = ptrtoint ptr %fdt1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %fdt1.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not53.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not53.not.i, label %if.then.close_files.exit_crit_edge, label %if.end.lr.ph.i

if.then.close_files.exit_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %close_files.exit

if.end.lr.ph.i:                                   ; preds = %if.then
  %open_fds.i = getelementptr inbounds %struct.fdtable, ptr %2, i32 0, i32 3
  %fd.i = getelementptr inbounds %struct.fdtable, ptr %2, i32 0, i32 1
  br label %if.end.i

for.cond.loopexit.i:                              ; preds = %if.end30.i.for.cond.loopexit.i_crit_edge, %if.end.i.for.cond.loopexit.i_crit_edge
  %mul.i = shl i32 %inc.i, 5
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %cmp.not.i = icmp ult i32 %mul.i, %6
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.end.i_crit_edge, label %for.cond.loopexit.i.close_files.exit_crit_edge

for.cond.loopexit.i.close_files.exit_crit_edge:   ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %close_files.exit

for.cond.loopexit.i.if.end.i_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond.loopexit.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %mul55.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %mul.i, %for.cond.loopexit.i.if.end.i_crit_edge ]
  %j.054.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %for.cond.loopexit.i.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %open_fds.i, align 4
  %inc.i = add i32 %j.054.i, 1
  %arrayidx.i = getelementptr i32, ptr %8, i32 %j.054.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not50.i = icmp eq i32 %10, 0
  br i1 %tobool.not50.i, label %if.end.i.for.cond.loopexit.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.for.cond.loopexit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %i.052.i = phi i32 [ %inc31.i, %if.end30.i.while.body.i_crit_edge ], [ %mul55.i, %if.end.i.while.body.i_crit_edge ]
  %set.051.i = phi i32 [ %shr.i, %if.end30.i.while.body.i_crit_edge ], [ %10, %if.end.i.while.body.i_crit_edge ]
  %and.i = and i32 %set.051.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end30.i_crit_edge, label %if.then4.i

while.body.i.if.end30.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then4.i:                                       ; preds = %while.body.i
  %11 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fd.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %12, i32 %i.052.i
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx5.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %arrayidx5.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx5.i) #10, !srcloc !160
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool24.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool24.not.i, label %if.then4.i.if.end30.i_crit_edge, label %if.then25.i

if.then4.i.if.end30.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = inttoptr i32 %asmresult.i.i to ptr
  %call26.i = tail call i32 @filp_close(ptr noundef nonnull %14, ptr noundef %files) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 404, i32 noundef 0) #10
  %call.i46.i = tail call i32 @__cond_resched() #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then25.i, %if.then4.i.if.end30.i_crit_edge, %while.body.i.if.end30.i_crit_edge
  %inc31.i = add i32 %i.052.i, 1
  %shr.i = lshr i32 %set.051.i, 1
  %tobool.not.i = icmp ult i32 %set.051.i, 2
  br i1 %tobool.not.i, label %if.end30.i.for.cond.loopexit.i_crit_edge, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end30.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.loopexit.i

close_files.exit:                                 ; preds = %for.cond.loopexit.i.close_files.exit_crit_edge, %if.then.close_files.exit_crit_edge
  %fdtab = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 4
  %cmp.not = icmp eq ptr %2, %fdtab
  br i1 %cmp.not, label %close_files.exit.if.end_crit_edge, label %if.then2

close_files.exit.if.end_crit_edge:                ; preds = %close_files.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %close_files.exit
  call void @__sanitizer_cov_trace_pc() #12
  %fd.i9 = getelementptr inbounds %struct.fdtable, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %fd.i9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fd.i9, align 4
  tail call void @kvfree(ptr noundef %16) #10
  %open_fds.i10 = getelementptr inbounds %struct.fdtable, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %open_fds.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %open_fds.i10, align 4
  tail call void @kvfree(ptr noundef %18) #10
  tail call void @kfree(ptr noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %close_files.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @files_cachep to i32))
  %19 = load ptr, ptr @files_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %files) #10
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_files(ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %files1 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 108
  %0 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %files1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %2 = ptrtoint ptr %files1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %files1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  tail call void @put_files_struct(ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__get_unused_fd_flags(i32 noundef %flags, i32 noundef %nofile) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %nofile, i32 noundef %flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_fd(i32 noundef %start, i32 noundef %end, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %fdt2 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %next_fd = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 7
  br label %repeat

repeat:                                           ; preds = %if.end28.repeat_crit_edge, %entry
  %6 = ptrtoint ptr %fdt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fdt2, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %repeat.do.end13_crit_edge

repeat.do.end13_crit_edge:                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

lor.lhs.false:                                    ; preds = %repeat
  %call6 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end13_crit_edge

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b129 = load i1, ptr @alloc_fd.__warned, align 1
  br i1 %.b129, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @alloc_fd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 479, ptr noundef nonnull @.str.4) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %lor.lhs.false.do.end13_crit_edge, %repeat.do.end13_crit_edge
  %8 = ptrtoint ptr %next_fd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next_fd, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %start)
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp18 = icmp ult i32 %10, %12
  br i1 %cmp18, label %if.then19, label %do.end13.if.end21_crit_edge

do.end13.if.end21_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %do.end13
  %div18.i = lshr i32 %12, 5
  %div119.i = lshr i32 %10, 5
  %full_fds_bits.i = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %full_fds_bits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %full_fds_bits.i, align 4
  %call.i130 = tail call i32 @_find_next_zero_bit_be(ptr noundef %14, i32 noundef %div18.i, i32 noundef %div119.i) #10
  %mul.i = shl i32 %call.i130, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %12)
  %cmp.i = icmp ugt i32 %mul.i, %12
  br i1 %cmp.i, label %if.then19.if.end21_crit_edge, label %if.end.i

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %10) #10
  %open_fds.i = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 3
  %16 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %open_fds.i, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %17, i32 noundef %12, i32 noundef %15) #10
  br label %if.end21

if.end21:                                         ; preds = %if.end.i, %if.then19.if.end21_crit_edge, %do.end13.if.end21_crit_edge
  %fd.1 = phi i32 [ %10, %do.end13.if.end21_crit_edge ], [ %call5.i, %if.end.i ], [ %12, %if.then19.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fd.1, i32 %end)
  %cmp22.not = icmp ult i32 %fd.1, %end
  br i1 %cmp22.not, label %if.end24, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end24:                                         ; preds = %if.end21
  %call25 = tail call fastcc i32 @expand_files(ptr noundef %5, i32 noundef %fd.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.out_crit_edge, label %if.end28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end28:                                         ; preds = %if.end24
  %tobool29.not = icmp eq i32 %call25, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.repeat_crit_edge

if.end28.repeat_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %repeat

if.end31:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %next_fd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %next_fd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %start)
  %cmp33.not = icmp ult i32 %19, %start
  br i1 %cmp33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw i32 %fd.1, 1
  %20 = ptrtoint ptr %next_fd to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %next_fd, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %open_fds.i131 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %open_fds.i131 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %open_fds.i131, align 4
  %rem.i.i = and i32 %fd.1, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %fd.1, 5
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 %div2.i.i
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %24, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %25 = load ptr, ptr %open_fds.i131, align 4
  %arrayidx.i = getelementptr i32, ptr %25, i32 %div2.i.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool.not.i = icmp eq i32 %27, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end36.__set_open_fd.exit_crit_edge

if.end36.__set_open_fd.exit_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %__set_open_fd.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %full_fds_bits.i132 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %full_fds_bits.i132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %full_fds_bits.i132, align 4
  %rem.i8.i = and i32 %div2.i.i, 31
  %shl.i9.i = shl nuw i32 1, %rem.i8.i
  %div2.i10.i = lshr i32 %fd.1, 10
  %add.ptr.i11.i = getelementptr i32, ptr %29, i32 %div2.i10.i
  %30 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i11.i, align 4
  %or.i12.i = or i32 %31, %shl.i9.i
  store i32 %or.i12.i, ptr %add.ptr.i11.i, align 4
  br label %__set_open_fd.exit

__set_open_fd.exit:                               ; preds = %if.then.i, %if.end36.__set_open_fd.exit_crit_edge
  %and = and i32 %flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  %close_on_exec.i139 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 2
  %32 = ptrtoint ptr %close_on_exec.i139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %close_on_exec.i139, align 4
  %arrayidx.i.i = getelementptr i32, ptr %33, i32 %div2.i.i
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %__set_open_fd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i138 = or i32 %35, %shl.i.i
  br label %if.end39.sink.split

if.else:                                          ; preds = %__set_open_fd.exit
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i, align 4
  %38 = and i32 %37, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i140 = icmp eq i32 %38, 0
  br i1 %tobool.not.i140, label %if.else.if.end39_crit_edge, label %if.then.i141

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then.i141:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i4.i = and i32 %37, %neg.i.i
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.then.i141, %if.then38
  %and.i4.i.sink = phi i32 [ %and.i4.i, %if.then.i141 ], [ %or.i.i138, %if.then38 ]
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and.i4.i.sink, ptr %arrayidx.i.i, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.else.if.end39_crit_edge
  %fd44 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 1
  %40 = ptrtoint ptr %fd44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fd44, align 4
  %arrayidx = getelementptr ptr, ptr %41, i32 %fd.1
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx, align 4
  %cmp46.not = icmp eq ptr %43, null
  br i1 %cmp46.not, label %if.end39.out_crit_edge, label %do.end50

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %fd.1) #15
  %44 = ptrtoint ptr %fd44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fd44, align 4
  %arrayidx62 = getelementptr ptr, ptr %45, i32 %fd.1
  %46 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr null, ptr %arrayidx62, align 4
  br label %out

out:                                              ; preds = %do.end50, %if.end39.out_crit_edge, %if.end24.out_crit_edge, %if.end21.out_crit_edge
  %error.0 = phi i32 [ %fd.1, %do.end50 ], [ %fd.1, %if.end39.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ], [ -24, %if.end21.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_unused_fd_flags(i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 51, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 8
  %call.i = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %7, i32 noundef %flags) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_unused_fd(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  tail call fastcc void @__put_unused_fd(ptr noundef %5, i32 noundef %fd)
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__put_unused_fd(ptr noundef %files, i32 noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %0 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fdt1, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @__put_unused_fd.__warned, align 1
  br i1 %.b20, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__put_unused_fd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 541, ptr noundef nonnull @.str.4) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %open_fds.i = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open_fds.i, align 4
  %rem.i.i = and i32 %fd, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %fd, 5
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %5, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %full_fds_bits.i = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %full_fds_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_fds_bits.i, align 4
  %rem.i4.i = and i32 %div2.i.i, 31
  %shl.i5.i = shl nuw i32 1, %rem.i4.i
  %div2.i6.i = lshr i32 %fd, 10
  %add.ptr.i7.i = getelementptr i32, ptr %7, i32 %div2.i6.i
  %neg.i8.i = xor i32 %shl.i5.i, -1
  %8 = ptrtoint ptr %add.ptr.i7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i7.i, align 4
  %and.i9.i = and i32 %9, %neg.i8.i
  store i32 %and.i9.i, ptr %add.ptr.i7.i, align 4
  %next_fd = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 7
  %10 = ptrtoint ptr %next_fd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_fd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %fd)
  %cmp = icmp ugt i32 %11, %fd
  br i1 %cmp, label %if.then12, label %do.end10.if.end14_crit_edge

do.end10.if.end14_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %next_fd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %fd, ptr %next_fd, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end10.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fd_install(i32 noundef %fd, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %7, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !162
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_sched_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock_sched.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_sched.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_sched.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_sched.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.rcu_read_lock_sched.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_sched.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @rcu_read_lock_sched.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.rcu_read_lock_sched.exit_crit_edge, label %if.then.i

land.lhs.true3.i.rcu_read_lock_sched.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_sched.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 788, ptr noundef nonnull @.str.22) #10
  br label %rcu_read_lock_sched.exit

rcu_read_lock_sched.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.rcu_read_lock_sched.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_sched.exit_crit_edge, %entry.rcu_read_lock_sched.exit_crit_edge
  %resize_in_progress = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %resize_in_progress, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end83, label %if.then, !prof !164

if.then:                                          ; preds = %rcu_read_lock_sched.exit
  tail call fastcc void @rcu_read_unlock_sched()
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %fdt4 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %fdt4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %fdt4, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i183 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool8.not = icmp eq i32 %call.i183, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then.do.end17_crit_edge

if.then.do.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

lor.lhs.false:                                    ; preds = %if.then
  %call9 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %lor.lhs.false.do.end17_crit_edge

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true13

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b182 = load i1, ptr @fd_install.__warned, align 1
  br i1 %.b182, label %land.lhs.true13.do.end17_crit_edge, label %if.then15

land.lhs.true13.do.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fd_install.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 583, ptr noundef nonnull @.str.4) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then15, %land.lhs.true13.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %lor.lhs.false.do.end17_crit_edge, %if.then.do.end17_crit_edge
  %fd20 = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %fd20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fd20, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %fd
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %do.body37, label %do.body28, !prof !164

do.body28:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 584, 0\0A.popsection", ""() #10, !srcloc !165
  unreachable

do.body37:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !166
  %16 = ptrtoint ptr %fd20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fd20, align 4
  %arrayidx66 = getelementptr ptr, ptr %17, i32 %fd
  %18 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %file, ptr %arrayidx66, align 4
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  br label %cleanup

do.end83:                                         ; preds = %rcu_read_lock_sched.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !167
  %fdt90 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %fdt90 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %fdt90, align 4
  %call92 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %land.lhs.true94, label %do.end83.do.end102_crit_edge

do.end83.do.end102_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

land.lhs.true94:                                  ; preds = %do.end83
  %call95 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true94.do.end102_crit_edge, label %land.lhs.true97

land.lhs.true94.do.end102_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

land.lhs.true97:                                  ; preds = %land.lhs.true94
  %.b180181 = load i1, ptr @fd_install.__warned.8, align 1
  br i1 %.b180181, label %land.lhs.true97.do.end102_crit_edge, label %if.then99

land.lhs.true97.do.end102_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end102

if.then99:                                        ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fd_install.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 591, ptr noundef nonnull @.str.4) #10
  br label %do.end102

do.end102:                                        ; preds = %if.then99, %land.lhs.true97.do.end102_crit_edge, %land.lhs.true94.do.end102_crit_edge, %do.end83.do.end102_crit_edge
  %fd105 = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %fd105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fd105, align 4
  %arrayidx106 = getelementptr ptr, ptr %22, i32 %fd
  %23 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx106, align 4
  %cmp107.not = icmp eq ptr %24, null
  br i1 %cmp107.not, label %do.body124, label %do.body115, !prof !164

do.body115:                                       ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

do.body124:                                       ; preds = %do.end102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  %25 = ptrtoint ptr %fd105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fd105, align 4
  %arrayidx155 = getelementptr ptr, ptr %26, i32 %fd
  %27 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %file, ptr %arrayidx155, align 4
  %call.i184 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i184, label %do.body124.rcu_read_unlock_sched.exit_crit_edge, label %land.lhs.true.i186

do.body124.rcu_read_unlock_sched.exit_crit_edge:  ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_sched.exit

land.lhs.true.i186:                               ; preds = %do.body124
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i185 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i185, label %land.lhs.true.i186.rcu_read_unlock_sched.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i186.rcu_read_unlock_sched.exit_crit_edge: ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_sched.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i186
  %.b6.i187 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6.i187, label %land.lhs.true2.i.rcu_read_unlock_sched.exit_crit_edge, label %if.then.i188

land.lhs.true2.i.rcu_read_unlock_sched.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock_sched.exit

if.then.i188:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 806, ptr noundef nonnull @.str.23) #10
  br label %rcu_read_unlock_sched.exit

rcu_read_unlock_sched.exit:                       ; preds = %if.then.i188, %land.lhs.true2.i.rcu_read_unlock_sched.exit_crit_edge, %land.lhs.true.i186.rcu_read_unlock_sched.exit_crit_edge, %do.body124.rcu_read_unlock_sched.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  %28 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i189 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i189 to ptr
  %preempt_count.i.i.i190 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i190, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i190, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock_sched.exit, %do.body37
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock_sched() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b6 = load i1, ptr @rcu_read_unlock_sched.__warned, align 1
  br i1 %.b6, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock_sched.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 806, ptr noundef nonnull @.str.23) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_sched_lock_map)
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !170
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %3, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @close_fd(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %call2 = tail call fastcc ptr @pick_file(ptr noundef %5, i32 noundef %fd)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @filp_close(ptr noundef %call2, ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pick_file(ptr noundef %files, i32 noundef %fd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %0 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fdt1, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.do.end11_crit_edge

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b76 = load i1, ptr @pick_file.__warned, align 1
  br i1 %.b76, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @pick_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 615, ptr noundef nonnull @.str.4) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %lor.lhs.false.do.end11_crit_edge, %entry.do.end11_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %fd)
  %cmp.not = icmp ugt i32 %3, %fd
  br i1 %cmp.not, label %if.end15, label %do.end11.out_unlock_crit_edge

do.end11.out_unlock_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end15:                                         ; preds = %do.end11
  %fd16 = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fd16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fd16, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %fd
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %if.end15.out_unlock_crit_edge, label %do.body28

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

do.body28:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call fastcc void @__put_unused_fd(ptr noundef %files, i32 noundef %fd)
  br label %out_unlock

out_unlock:                                       ; preds = %do.body28, %if.end15.out_unlock_crit_edge, %do.end11.out_unlock_crit_edge
  %file.0 = phi ptr [ %7, %do.body28 ], [ inttoptr (i32 -22 to ptr), %do.end11.out_unlock_crit_edge ], [ inttoptr (i32 -9 to ptr), %if.end15.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  ret ptr %file.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__close_range(i32 noundef %fd, i32 noundef %max_fd, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %fds = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fds) #10
  %6 = ptrtoint ptr %fds to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fds, align 4
  %and = and i32 %flags, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %fd, i32 %max_fd)
  %cmp = icmp ugt i32 %fd, %max_fd
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup48_crit_edge, label %if.end2

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.end2:                                          ; preds = %entry
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %.pre = and i32 %flags, 4
  br i1 %tobool4.not, label %if.end2.if.end39_crit_edge, label %if.then5

if.end2.if.end39_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool7.not = icmp eq i32 %.pre, 0
  br i1 %tobool7.not, label %if.then8, label %if.then5.if.end27_crit_edge

if.then5.if.end27_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then8:                                         ; preds = %if.then5
  %7 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then8.rcu_read_lock.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then8.rcu_read_lock.exit_crit_edge
  %fdt = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %fdt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fdt, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i70 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool11.not = icmp eq i32 %call.i70, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end21_crit_edge

rcu_read_lock.exit.do.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call12 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false.do.end21_crit_edge

lor.lhs.false.do.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b69 = load i1, ptr @__close_range.__warned, align 1
  br i1 %.b69, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__close_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 729, ptr noundef nonnull @.str.4) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %lor.lhs.false.do.end21_crit_edge, %rcu_read_lock.exit.do.end21_crit_edge
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %sub.i = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %max_fd)
  %cmp24.not = icmp ugt i32 %sub.i, %max_fd
  %spec.select = select i1 %cmp24.not, i32 -1, i32 %fd
  %call.i71 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i71, label %do.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i74

do.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i74:                                ; preds = %do.end21
  %call1.i72 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, %do.end21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %15 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i78 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i79, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %if.end27

if.end27:                                         ; preds = %rcu_read_unlock.exit, %if.then5.if.end27_crit_edge
  %max_unshare_fds.1 = phi i32 [ -1, %if.then5.if.end27_crit_edge ], [ %spec.select, %rcu_read_unlock.exit ]
  %call28 = call i32 @unshare_fd(i32 noundef 1024, i32 noundef %max_unshare_fds.1, ptr noundef nonnull %fds) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup48_crit_edge

if.end27.cleanup48_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.end31:                                         ; preds = %if.end27
  %19 = ptrtoint ptr %fds to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fds, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.end31.if.end39_crit_edge, label %do.body34

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.body34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %fds to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %fds, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.body34, %if.end31.if.end39_crit_edge, %if.end2.if.end39_crit_edge
  %cur_fds.2 = phi ptr [ %20, %do.body34 ], [ %5, %if.end31.if.end39_crit_edge ], [ %5, %if.end2.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool41.not = icmp eq i32 %.pre, 0
  br i1 %tobool41.not, label %if.end39.while.cond.i_crit_edge, label %if.then42

if.end39.while.cond.i_crit_edge:                  ; preds = %if.end39
  br label %while.cond.i

if.then42:                                        ; preds = %if.end39
  %file_lock.i = getelementptr inbounds %struct.files_struct, ptr %cur_fds.2, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %file_lock.i) #10
  %fdt1.i = getelementptr inbounds %struct.files_struct, ptr %cur_fds.2, i32 0, i32 3
  %22 = ptrtoint ptr %fdt1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %fdt1.i, align 4
  %dep_map.i = getelementptr inbounds %struct.files_struct, ptr %cur_fds.2, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i80 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i80, label %lor.lhs.false.i, label %if.then42.do.end11.i_crit_edge

if.then42.do.end11.i_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

lor.lhs.false.i:                                  ; preds = %if.then42
  %call4.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i81, label %lor.lhs.false.i.do.end11.i_crit_edge

lor.lhs.false.i.do.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

land.lhs.true.i81:                                ; preds = %lor.lhs.false.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i81.do.end11.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i81.do.end11.i_crit_edge:           ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i81
  %.b29.i = load i1, ptr @__range_cloexec.__warned, align 1
  br i1 %.b29.i, label %land.lhs.true8.i.do.end11.i_crit_edge, label %if.then.i82

land.lhs.true8.i.do.end11.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

if.then.i82:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__range_cloexec.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 666, ptr noundef nonnull @.str.4) #10
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then.i82, %land.lhs.true8.i.do.end11.i_crit_edge, %land.lhs.true.i81.do.end11.i_crit_edge, %lor.lhs.false.i.do.end11.i_crit_edge, %if.then42.do.end11.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sub.i.i = add i32 %25, -1
  %26 = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %max_fd) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %fd)
  %cmp15.not.i = icmp ult i32 %26, %fd
  br i1 %cmp15.not.i, label %do.end11.i.__range_cloexec.exit_crit_edge, label %if.then16.i

do.end11.i.__range_cloexec.exit_crit_edge:        ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__range_cloexec.exit

if.then16.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %close_on_exec.i = getelementptr inbounds %struct.fdtable, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %close_on_exec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %close_on_exec.i, align 4
  %sub.i83 = sub i32 %26, %fd
  %add.i = add i32 %sub.i83, 1
  call void @__bitmap_set(ptr noundef %28, i32 noundef %fd, i32 noundef %add.i) #10
  br label %__range_cloexec.exit

__range_cloexec.exit:                             ; preds = %if.then16.i, %do.end11.i.__range_cloexec.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %file_lock.i) #10
  br label %if.end43

while.cond.i:                                     ; preds = %cleanup.i.while.cond.i_crit_edge, %if.end39.while.cond.i_crit_edge
  %fd.addr.0.i = phi i32 [ %inc.i, %cleanup.i.while.cond.i_crit_edge ], [ %fd, %if.end39.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fd.addr.0.i, i32 %max_fd)
  %cmp.not.i = icmp ugt i32 %fd.addr.0.i, %max_fd
  br i1 %cmp.not.i, label %while.cond.i.if.end43_crit_edge, label %while.body.i

while.cond.i.if.end43_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

while.body.i:                                     ; preds = %while.cond.i
  %inc.i = add i32 %fd.addr.0.i, 1
  %call.i84 = call fastcc ptr @pick_file(ptr noundef %cur_fds.2, i32 noundef %fd.addr.0.i) #10
  %cmp.i.i85 = icmp ugt ptr %call.i84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i85, label %if.end.i, label %if.then.i87

if.then.i87:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = call i32 @filp_close(ptr noundef %call.i84, ptr noundef %cur_fds.2) #10
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 683, i32 noundef 0) #10
  %call.i.i86 = call i32 @__cond_resched() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmp5.i = icmp eq ptr %call.i84, inttoptr (i32 -22 to ptr)
  %..i = zext i1 %cmp5.i to i32
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then.i87
  %cleanup.dest.slot.0.i = phi i32 [ 2, %if.then.i87 ], [ %..i, %if.end.i ]
  %switch.i = icmp eq i32 %cleanup.dest.slot.0.i, 1
  br i1 %switch.i, label %cleanup.i.if.end43_crit_edge, label %cleanup.i.while.cond.i_crit_edge

cleanup.i.while.cond.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cleanup.i.if.end43_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %cleanup.i.if.end43_crit_edge, %while.cond.i.if.end43_crit_edge, %__range_cloexec.exit
  %29 = ptrtoint ptr %fds to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fds, align 4
  %tobool44.not = icmp eq ptr %30, null
  br i1 %tobool44.not, label %if.end43.cleanup48_crit_edge, label %if.then45

if.end43.cleanup48_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %31 = ptrtoint ptr %files to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cur_fds.2, ptr %files, align 4
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  %32 = ptrtoint ptr %fds to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fds, align 4
  call void @put_files_struct(ptr noundef %33)
  br label %cleanup48

cleanup48:                                        ; preds = %if.then45, %if.end43.cleanup48_crit_edge, %if.end27.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup48_crit_edge ], [ 0, %if.then45 ], [ 0, %if.end43.cleanup48_crit_edge ], [ %call28, %if.end27.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fds) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_fd(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__close_fd_get_file(i32 noundef %fd, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %fdt2 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %fdt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fdt2, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @__close_fd_get_file.__warned, align 1
  br i1 %.b77, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__close_fd_get_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 775, ptr noundef nonnull @.str.4) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %entry.do.end12_crit_edge
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %fd)
  %cmp.not = icmp ugt i32 %9, %fd
  br i1 %cmp.not, label %if.end15, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %do.end12
  %fd16 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %fd16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fd16, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %fd
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.body27

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body27:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call fastcc void @__put_unused_fd(ptr noundef %5, i32 noundef %fd)
  %f_count.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !152
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %if.end15.cleanup_crit_edge, %do.end12.cleanup_crit_edge
  %storemerge = phi ptr [ %13, %do.body27 ], [ null, %if.end15.cleanup_crit_edge ], [ null, %do.end12.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %do.body27 ], [ -2, %if.end15.cleanup_crit_edge ], [ -2, %do.end12.cleanup_crit_edge ]
  %16 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %storemerge, ptr %res, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @close_fd_get_file(i32 noundef %fd, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %call2 = tail call i32 @__close_fd_get_file(i32 noundef %fd, ptr noundef %res)
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_close_on_exec(ptr noundef %files) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6, i32 0, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc79, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc80, %for.inc79 ]
  %mul = shl i32 %i.0, 5
  %0 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fdt1, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.cond.do.end11_crit_edge

for.cond.do.end11_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

lor.lhs.false:                                    ; preds = %for.cond
  %call4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.do.end11_crit_edge

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b110 = load i1, ptr @do_close_on_exec.__warned, align 1
  br i1 %.b110, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @do_close_on_exec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 818, ptr noundef nonnull @.str.4) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %lor.lhs.false.do.end11_crit_edge, %for.cond.do.end11_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %3)
  %cmp.not = icmp ult i32 %mul, %3
  br i1 %cmp.not, label %if.end14, label %for.end81

if.end14:                                         ; preds = %do.end11
  %close_on_exec = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %close_on_exec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close_on_exec, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %if.end14.for.inc79_crit_edge, label %if.end17

if.end14.for.inc79_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79

if.end17:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  %fd25 = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end17
  %set.0117 = phi i32 [ %7, %if.end17 ], [ %shr, %cleanup.for.body_crit_edge ]
  %fd.0116 = phi i32 [ %mul, %if.end17 ], [ %inc, %cleanup.for.body_crit_edge ]
  %and = and i32 %set.0117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %for.body.cleanup_crit_edge, label %if.end24

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %9 = ptrtoint ptr %fd25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fd25, align 4
  %arrayidx26 = getelementptr ptr, ptr %10, i32 %fd.0116
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %12, null
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %do.body37

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %arrayidx26, align 4
  tail call fastcc void @__put_unused_fd(ptr noundef %files, i32 noundef %fd.0116)
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  %call71 = tail call i32 @filp_close(ptr noundef nonnull %12, ptr noundef %files) #10
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 836, i32 noundef 0) #10
  %call.i111 = tail call i32 @__cond_resched() #10
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body37, %if.end24.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add i32 %fd.0116, 1
  %shr = lshr i32 %set.0117, 1
  %tobool21.not = icmp ult i32 %set.0117, 2
  br i1 %tobool21.not, label %cleanup.for.inc79_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.inc79_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79

for.inc79:                                        ; preds = %cleanup.for.inc79_crit_edge, %if.end14.for.inc79_crit_edge
  %inc80 = add i32 %i.0, 1
  br label %for.cond

for.end81:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fget_many(i32 noundef %fd, i32 noundef %refs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %files.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files.i, align 4
  %call1.i = tail call fastcc ptr @__fget_files(ptr noundef %5, i32 noundef %fd, i32 noundef 16384, i32 noundef %refs) #10
  ret ptr %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fget(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %files.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files.i, align 4
  %call1.i = tail call fastcc ptr @__fget_files(ptr noundef %5, i32 noundef %fd, i32 noundef 16384, i32 noundef 1) #10
  ret ptr %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fget_raw(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %files.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files.i, align 4
  %call1.i = tail call fastcc ptr @__fget_files(ptr noundef %5, i32 noundef %fd, i32 noundef 0, i32 noundef 1) #10
  ret ptr %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fget_task(ptr noundef %task, i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %files = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 108
  %0 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %files, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc ptr @__fget_files(ptr noundef nonnull %1, i32 noundef %fd, i32 noundef 0, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %file.0 = phi ptr [ %call, %if.then ], [ null, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  ret ptr %file.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fget_files(ptr noundef %files, i32 noundef %fd, i32 noundef %mask, i32 noundef %refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fdt1.i = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %4 = ptrtoint ptr %fdt1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fdt1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %fd)
  %cmp.not99.i = icmp ugt i32 %7, %fd
  br i1 %cmp.not99.i, label %rcu_read_lock.exit.if.end.i_crit_edge, label %rcu_read_lock.exit.__fget_files_rcu.exit_crit_edge, !prof !164

rcu_read_lock.exit.__fget_files_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_files_rcu.exit

rcu_read_lock.exit.if.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %if.end.i

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %rcu_read_lock.exit.if.end.i_crit_edge
  %8 = phi i32 [ %25, %cleanup.i.if.end.i_crit_edge ], [ %7, %rcu_read_lock.exit.if.end.i_crit_edge ]
  %9 = phi ptr [ %23, %cleanup.i.if.end.i_crit_edge ], [ %5, %rcu_read_lock.exit.if.end.i_crit_edge ]
  %fd4.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %fd4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fd4.i, align 4
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd, i32 %8) #10, !srcloc !173
  %and.i = and i32 %12, %fd
  %add.ptr.i = getelementptr ptr, ptr %11, i32 %and.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %add.ptr.i, align 4
  %tobool18.not.i = icmp eq ptr %14, null
  br i1 %tobool18.not.i, label %if.end.i.__fget_files_rcu.exit_crit_edge, label %if.end28.i, !prof !151

if.end.i.__fget_files_rcu.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_files_rcu.exit

if.end28.i:                                       ; preds = %if.end.i
  %f_mode.i = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_mode.i, align 8
  %and29.i = and i32 %16, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end38.i, label %if.end28.i.__fget_files_rcu.exit_crit_edge, !prof !164

if.end28.i.__fget_files_rcu.exit_crit_edge:       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_files_rcu.exit

if.end38.i:                                       ; preds = %if.end28.i
  %f_count.i = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 0, i32 %refs, ptr elementtype(i32) %f_count.i) #10, !srcloc !175
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end38.i.cleanup.i_crit_edge, label %if.end49.i

if.end38.i.cleanup.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end49.i:                                       ; preds = %if.end38.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  %18 = ptrtoint ptr %fdt1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %fdt1.i, align 4
  %cmp56.not.i = icmp eq ptr %19, %9
  br i1 %cmp56.not.i, label %lor.lhs.false.i, label %if.end49.i.if.then75.i_crit_edge, !prof !164

if.end49.i.if.then75.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %add.ptr.i, align 4
  %cmp68.not.i = icmp eq ptr %21, %14
  br i1 %cmp68.not.i, label %lor.lhs.false.i.__fget_files_rcu.exit_crit_edge, label %lor.lhs.false.i.if.then75.i_crit_edge, !prof !164

lor.lhs.false.i.if.then75.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75.i

lor.lhs.false.i.__fget_files_rcu.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_files_rcu.exit

if.then75.i:                                      ; preds = %lor.lhs.false.i.if.then75.i_crit_edge, %if.end49.i.if.then75.i_crit_edge
  tail call void @fput_many(ptr noundef nonnull %14, i32 noundef %refs) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then75.i, %if.end38.i.cleanup.i_crit_edge
  %22 = ptrtoint ptr %fdt1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %fdt1.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %cmp.not.i = icmp ugt i32 %25, %fd
  br i1 %cmp.not.i, label %cleanup.i.if.end.i_crit_edge, label %cleanup.i.__fget_files_rcu.exit_crit_edge, !prof !164

cleanup.i.__fget_files_rcu.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_files_rcu.exit

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

__fget_files_rcu.exit:                            ; preds = %cleanup.i.__fget_files_rcu.exit_crit_edge, %lor.lhs.false.i.__fget_files_rcu.exit_crit_edge, %if.end28.i.__fget_files_rcu.exit_crit_edge, %if.end.i.__fget_files_rcu.exit_crit_edge, %rcu_read_lock.exit.__fget_files_rcu.exit_crit_edge
  %retval.1.ph.i = phi ptr [ null, %rcu_read_lock.exit.__fget_files_rcu.exit_crit_edge ], [ %14, %lor.lhs.false.i.__fget_files_rcu.exit_crit_edge ], [ null, %if.end28.i.__fget_files_rcu.exit_crit_edge ], [ null, %if.end.i.__fget_files_rcu.exit_crit_edge ], [ null, %cleanup.i.__fget_files_rcu.exit_crit_edge ]
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i1, label %__fget_files_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

__fget_files_rcu.exit.rcu_read_unlock.exit_crit_edge: ; preds = %__fget_files_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %__fget_files_rcu.exit
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %__fget_files_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %26 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i8 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %retval.1.ph.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @task_lookup_fd_rcu(ptr noundef %task, i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %files1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 108
  %0 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %files1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @files_lookup_fd_rcu.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @files_lookup_fd_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 104, ptr noundef nonnull @.str.4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %fdt1.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %fd)
  %cmp.i.i = icmp ugt i32 %5, %fd
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end.i.if.end_crit_edge

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd, i32 %5) #10, !srcloc !173
  %and.i.i = and i32 %6, %fd
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %8, i32 %and.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %do.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %file.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %10, %if.then.i.i ], [ null, %do.end.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  ret ptr %file.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @task_lookup_next_fd_rcu(ptr noundef %task, ptr nocapture noundef %ret_fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ret_fd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ret_fd, align 4
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #10
  %files1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 108
  %2 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %files1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %for.cond.preheader

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.cond.preheader:                               ; preds = %entry
  %fdt = getelementptr inbounds %struct.files_struct, ptr %3, i32 0, i32 3
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.cond.preheader
  %fd.0 = phi i32 [ %inc, %for.inc ], [ %1, %for.cond.preheader ]
  %4 = ptrtoint ptr %fdt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fdt, align 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %for.cond.do.end12_crit_edge

for.cond.do.end12_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

lor.lhs.false:                                    ; preds = %for.cond
  %call4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @task_lookup_next_fd_rcu.__warned, align 1
  br i1 %.b29, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @task_lookup_next_fd_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 971, ptr noundef nonnull @.str.4) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %for.cond.do.end12_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %fd.0, i32 %7)
  %cmp = icmp ult i32 %fd.0, %7
  br i1 %cmp, label %for.body, label %do.end12.if.end18_crit_edge

do.end12.if.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

for.body:                                         ; preds = %do.end12
  %call.i30 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.do.end.i_crit_edge

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @files_lookup_fd_rcu.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @files_lookup_fd_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 104, ptr noundef nonnull @.str.4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  %8 = ptrtoint ptr %fdt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdt, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %fd.0)
  %cmp.i.i = icmp ugt i32 %11, %fd.0
  br i1 %cmp.i.i, label %files_lookup_fd_rcu.exit, label %do.end.i.for.inc_crit_edge

do.end.i.for.inc_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

files_lookup_fd_rcu.exit:                         ; preds = %do.end.i
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd.0, i32 %11) #10, !srcloc !173
  %and.i.i = and i32 %12, %fd.0
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool15.not = icmp eq ptr %16, null
  br i1 %tobool15.not, label %files_lookup_fd_rcu.exit.for.inc_crit_edge, label %files_lookup_fd_rcu.exit.if.end18_crit_edge

files_lookup_fd_rcu.exit.if.end18_crit_edge:      ; preds = %files_lookup_fd_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

files_lookup_fd_rcu.exit.for.inc_crit_edge:       ; preds = %files_lookup_fd_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %files_lookup_fd_rcu.exit.for.inc_crit_edge, %do.end.i.for.inc_crit_edge
  %inc = add nuw i32 %fd.0, 1
  br label %for.cond

if.end18:                                         ; preds = %files_lookup_fd_rcu.exit.if.end18_crit_edge, %do.end12.if.end18_crit_edge, %entry.if.end18_crit_edge
  %file.1 = phi ptr [ null, %entry.if.end18_crit_edge ], [ null, %do.end12.if.end18_crit_edge ], [ %16, %files_lookup_fd_rcu.exit.if.end18_crit_edge ]
  %fd.1 = phi i32 [ %1, %entry.if.end18_crit_edge ], [ %fd.0, %files_lookup_fd_rcu.exit.if.end18_crit_edge ], [ %fd.0, %do.end12.if.end18_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #10
  %17 = ptrtoint ptr %ret_fd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %fd.1, ptr %ret_fd, align 4
  ret ptr %file.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__fdget(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %files1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdt1.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %fd)
  %cmp.i.i = icmp ugt i32 %11, %fd
  br i1 %cmp.i.i, label %files_lookup_fd_raw.exit.i, label %if.then.i.__fget_light.exit_crit_edge

if.then.i.__fget_light.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_light.exit

files_lookup_fd_raw.exit.i:                       ; preds = %if.then.i
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd, i32 %11) #10, !srcloc !173
  %and.i20.i = and i32 %12, %fd
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %and.i20.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %files_lookup_fd_raw.exit.i.__fget_light.exit_crit_edge, label %lor.lhs.false.i

files_lookup_fd_raw.exit.i.__fget_light.exit_crit_edge: ; preds = %files_lookup_fd_raw.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_light.exit

lor.lhs.false.i:                                  ; preds = %files_lookup_fd_raw.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %f_mode.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %19 = ptrtoint ptr %16 to i32
  %spec.select.i = select i1 %tobool4.not.i, i32 %19, i32 0, !prof !164
  br label %__fget_light.exit

if.else.i:                                        ; preds = %entry
  %20 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i, align 8
  %files.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 108
  %24 = ptrtoint ptr %files.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %files.i.i, align 4
  %call1.i.i = tail call fastcc ptr @__fget_files(ptr noundef %25, i32 noundef %fd, i32 noundef 16384, i32 noundef 1) #10
  %tobool9.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool9.not.i, label %if.else.i.__fget_light.exit_crit_edge, label %if.end11.i

if.else.i.__fget_light.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_light.exit

if.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call1.i.i to i32
  %or.i = or i32 %26, 1
  br label %__fget_light.exit

__fget_light.exit:                                ; preds = %if.end11.i, %if.else.i.__fget_light.exit_crit_edge, %lor.lhs.false.i, %files_lookup_fd_raw.exit.i.__fget_light.exit_crit_edge, %if.then.i.__fget_light.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end11.i ], [ 0, %files_lookup_fd_raw.exit.i.__fget_light.exit_crit_edge ], [ 0, %if.else.i.__fget_light.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ], [ 0, %if.then.i.__fget_light.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__fdget_raw(i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %files1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdt1.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %fd)
  %cmp.i.i = icmp ugt i32 %11, %fd
  br i1 %cmp.i.i, label %files_lookup_fd_raw.exit.i, label %if.then.i.__fget_light.exit_crit_edge

if.then.i.__fget_light.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_light.exit

files_lookup_fd_raw.exit.i:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd, i32 %11) #10, !srcloc !173
  %and.i20.i = and i32 %12, %fd
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %and.i20.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %__fget_light.exit

if.else.i:                                        ; preds = %entry
  %18 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %files.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 108
  %22 = ptrtoint ptr %files.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %files.i.i, align 4
  %call1.i.i = tail call fastcc ptr @__fget_files(ptr noundef %23, i32 noundef %fd, i32 noundef 0, i32 noundef 1) #10
  %tobool9.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool9.not.i, label %if.else.i.__fget_light.exit_crit_edge, label %if.end11.i

if.else.i.__fget_light.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fget_light.exit

if.end11.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call1.i.i to i32
  %or.i = or i32 %24, 1
  br label %__fget_light.exit

__fget_light.exit:                                ; preds = %if.end11.i, %if.else.i.__fget_light.exit_crit_edge, %files_lookup_fd_raw.exit.i, %if.then.i.__fget_light.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %if.end11.i ], [ 0, %if.else.i.__fget_light.exit_crit_edge ], [ 0, %if.then.i.__fget_light.exit_crit_edge ], [ %17, %files_lookup_fd_raw.exit.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__fdget_pos(i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %files1.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %fdt1.i.i.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %fdt1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdt1.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %fd)
  %cmp.i.i.i = icmp ugt i32 %11, %fd
  br i1 %cmp.i.i.i, label %files_lookup_fd_raw.exit.i.i, label %if.then.i.i.if.end5_crit_edge

if.then.i.i.if.end5_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

files_lookup_fd_raw.exit.i.i:                     ; preds = %if.then.i.i
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %fd, i32 %11) #10, !srcloc !173
  %and.i20.i.i = and i32 %12, %fd
  %fd15.i.i.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %fd15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd15.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %14, i32 %and.i20.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %files_lookup_fd_raw.exit.i.i.if.end5_crit_edge, label %lor.lhs.false.i.i

files_lookup_fd_raw.exit.i.i.if.end5_crit_edge:   ; preds = %files_lookup_fd_raw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.lhs.false.i.i:                                ; preds = %files_lookup_fd_raw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  %19 = ptrtoint ptr %16 to i32
  %spec.select.i.i = select i1 %tobool4.not.i.i, i32 %19, i32 0, !prof !164
  br label %__fdget.exit

if.else.i.i:                                      ; preds = %entry
  %20 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i, align 8
  %files.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 108
  %24 = ptrtoint ptr %files.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %files.i.i.i, align 4
  %call1.i.i.i = tail call fastcc ptr @__fget_files(ptr noundef %25, i32 noundef %fd, i32 noundef 16384, i32 noundef 1) #10
  %tobool9.not.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.else.i.i.if.end5_crit_edge, label %if.end11.i.i

if.else.i.i.if.end5_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end11.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call1.i.i.i to i32
  %or.i.i = or i32 %26, 1
  br label %__fdget.exit

__fdget.exit:                                     ; preds = %if.end11.i.i, %lor.lhs.false.i.i
  %retval.0.i.i = phi i32 [ %or.i.i, %if.end11.i.i ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %and = and i32 %retval.0.i.i, -4
  %27 = inttoptr i32 %and to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__fdget.exit.if.end5_crit_edge, label %land.lhs.true

__fdget.exit.if.end5_crit_edge:                   ; preds = %__fdget.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %__fdget.exit
  %f_mode = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_mode, align 8
  %and1 = and i32 %29, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %f_count = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %f_count, i32 noundef 4) #10
  %30 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %f_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp sgt i32 %31, 1
  br i1 %cmp, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %retval.0.i.i, 2
  %f_pos_lock = getelementptr inbounds %struct.file, ptr %27, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %f_pos_lock, i32 noundef 0) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %__fdget.exit.if.end5_crit_edge, %if.else.i.i.if.end5_crit_edge, %files_lookup_fd_raw.exit.i.i.if.end5_crit_edge, %if.then.i.i.if.end5_crit_edge
  %v.0 = phi i32 [ %or, %if.then4 ], [ %retval.0.i.i, %if.then.if.end5_crit_edge ], [ %retval.0.i.i, %land.lhs.true.if.end5_crit_edge ], [ %retval.0.i.i, %__fdget.exit.if.end5_crit_edge ], [ 0, %files_lookup_fd_raw.exit.i.i.if.end5_crit_edge ], [ 0, %if.else.i.i.if.end5_crit_edge ], [ 0, %if.then.i.i.if.end5_crit_edge ]
  ret i32 %v.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__f_unlock_pos(ptr noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %f_pos_lock = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %f_pos_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_close_on_exec(i32 noundef %fd, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %fdt2 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %fdt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %fdt2, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

lor.lhs.false:                                    ; preds = %entry
  %call6 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end13_crit_edge

lor.lhs.false.do.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b24 = load i1, ptr @set_close_on_exec.__warned, align 1
  br i1 %.b24, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @set_close_on_exec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1056, ptr noundef nonnull @.str.4) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %lor.lhs.false.do.end13_crit_edge, %entry.do.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool15.not = icmp eq i32 %flag, 0
  %close_on_exec.i25 = getelementptr inbounds %struct.fdtable, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %close_on_exec.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %close_on_exec.i25, align 4
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i.i = and i32 %fd, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %fd, 5
  %add.ptr.i.i = getelementptr i32, ptr %9, i32 %div2.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %11, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end17

if.else:                                          ; preds = %do.end13
  %div3.i.i = lshr i32 %fd, 5
  %arrayidx.i.i = getelementptr i32, ptr %9, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %fd, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.else.if.end17_crit_edge, label %if.then.i

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i.i = xor i32 %14, -1
  %and.i4.i = and i32 %13, %neg.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.i4.i, ptr %arrayidx.i.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %if.else.if.end17_crit_edge, %if.then16
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @get_close_on_exec(i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %fdt2 = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %fdt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdt2, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i18 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not = icmp eq i32 %call.i18, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @get_close_on_exec.__warned, align 1
  br i1 %.b17, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @get_close_on_exec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1070, ptr noundef nonnull @.str.4) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %close_on_exec.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %close_on_exec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %close_on_exec.i, align 4
  %div3.i.i = lshr i32 %fd, 5
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i19, label %do.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

do.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %do.end12
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %do.end12.rcu_read_unlock.exit_crit_edge
  %and.i.i = and i32 %fd, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i = icmp ne i32 %15, 0
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %16 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i26 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i1 %tobool.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @replace_fd(i32 noundef %fd, ptr noundef %file, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2.i = tail call fastcc ptr @pick_file(ptr noundef %5, i32 noundef %fd) #10
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4.i = tail call i32 @filp_close(ptr noundef %call2.i, ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %fd)
  %cmp.not = icmp ugt i32 %9, %fd
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %call6 = tail call fastcc i32 @expand_files(ptr noundef %5, i32 noundef %fd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %out_unlock, label %if.end11, !prof !151

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call fastcc i32 @do_dup2(ptr noundef %5, ptr noundef nonnull %file, i32 noundef %fd, i32 noundef %flags)
  br label %cleanup

out_unlock:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end11, %if.end.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out_unlock ], [ %call12, %if.end11 ], [ -9, %if.end.cleanup_crit_edge ], [ %call4.i, %if.end.i ], [ -9, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @expand_files(ptr noundef %files, i32 noundef %nr) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6, i32 0, i32 0, i32 4
  %resize_in_progress = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 1
  %resize_wait = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 2
  br label %repeat

repeat:                                           ; preds = %do.end41, %entry
  %expanded.0 = phi i32 [ 0, %entry ], [ 1, %do.end41 ]
  %0 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fdt1, align 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %repeat.do.end10_crit_edge

repeat.do.end10_crit_edge:                        ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

lor.lhs.false:                                    ; preds = %repeat
  %call3 = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @expand_files.__warned, align 1
  br i1 %.b65, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @expand_files.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 206, ptr noundef nonnull @.str.4) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %repeat.do.end10_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nr)
  %cmp = icmp ugt i32 %3, %nr
  br i1 %cmp, label %do.end10.cleanup48_crit_edge, label %if.end13

do.end10.cleanup48_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.end13:                                         ; preds = %do.end10
  %4 = load i32, ptr @sysctl_nr_open, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %nr)
  %cmp14.not = icmp ugt i32 %4, %nr
  br i1 %cmp14.not, label %if.end16, label %if.end13.cleanup48_crit_edge

if.end13.cleanup48_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.end16:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %resize_in_progress, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool17.not = icmp eq i8 %6, 0
  br i1 %tobool17.not, label %if.end43, label %if.then20, !prof !164

if.then20:                                        ; preds = %if.end16
  call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 219) #10
  %7 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %resize_in_progress, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool30.not = icmp eq i8 %8, 0
  br i1 %tobool30.not, label %if.then20.do.end41_crit_edge, label %if.end32

if.then20.do.end41_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

if.end32:                                         ; preds = %if.then20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call3372 = call i32 @prepare_to_wait_event(ptr noundef %resize_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %10 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %resize_in_progress, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool35.not73 = icmp eq i8 %11, 0
  br i1 %tobool35.not73, label %if.end32.for.end_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  br label %cleanup

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  call void @schedule() #10
  %call33 = call i32 @prepare_to_wait_event(ptr noundef %resize_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %12 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %resize_in_progress, align 4, !range !163
  %tobool35.not = icmp eq i8 %13, 0
  br i1 %tobool35.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end32.for.end_crit_edge
  call void @finish_wait(ptr noundef %resize_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end41

do.end41:                                         ; preds = %for.end, %if.then20.do.end41_crit_edge
  call void @_raw_spin_lock(ptr noundef %file_lock) #10
  br label %repeat

if.end43:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %resize_in_progress, align 4
  call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  %call.i66 = call fastcc ptr @alloc_fdtable(i32 noundef %nr) #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %files, i32 noundef 4) #10
  %15 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %files, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp sgt i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %if.end43.if.end.i_crit_edge

if.end43.if.end.i_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void @synchronize_rcu() #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end43.if.end.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %tobool.not.i = icmp eq ptr %call.i66, null
  br i1 %tobool.not.i, label %if.end.i.expand_fdtable.exit_crit_edge, label %if.end4.i

if.end.i.expand_fdtable.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %expand_fdtable.exit

if.end4.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %call.i66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %nr)
  %cmp5.not.i = icmp ugt i32 %18, %nr
  br i1 %cmp5.not.i, label %if.end9.i, label %if.then8.i, !prof !164

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__free_fdtable(ptr noundef nonnull %call.i66) #10
  br label %expand_fdtable.exit

if.end9.i:                                        ; preds = %if.end4.i
  %19 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %fdt1, align 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool13.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i, label %if.end9.i.do.end23.i_crit_edge

if.end9.i.do.end23.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %call14.i = call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end23.i_crit_edge

lor.lhs.false.i.do.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call16.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i.do.end23.i_crit_edge, label %land.lhs.true18.i

land.lhs.true.i.do.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %.b108.i = load i1, ptr @expand_fdtable.__warned, align 1
  br i1 %.b108.i, label %land.lhs.true18.i.do.end23.i_crit_edge, label %if.then20.i

land.lhs.true18.i.do.end23.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @expand_fdtable.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 179, ptr noundef nonnull @.str.4) #10
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then20.i, %land.lhs.true18.i.do.end23.i_crit_edge, %land.lhs.true.i.do.end23.i_crit_edge, %lor.lhs.false.i.do.end23.i_crit_edge, %if.end9.i.do.end23.i_crit_edge
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %nr)
  %cmp27.i = icmp ugt i32 %22, %nr
  br i1 %cmp27.i, label %do.body35.i, label %do.end43.i, !prof !151

do.body35.i:                                      ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 180, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.end43.i:                                       ; preds = %do.end23.i
  %23 = ptrtoint ptr %call.i66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.i.i = icmp ult i32 %24, %22
  br i1 %cmp.i.i, label %do.body3.i.i, label %copy_fdtable.exit.i, !prof !151

do.body3.i.i:                                     ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #10, !srcloc !178
  unreachable

copy_fdtable.exit.i:                              ; preds = %do.end43.i
  %mul.i.i = shl i32 %22, 2
  %sub.i.i = sub i32 %24, %22
  %mul12.i.i = shl i32 %sub.i.i, 2
  %fd.i.i = getelementptr inbounds %struct.fdtable, ptr %call.i66, i32 0, i32 1
  %25 = ptrtoint ptr %fd.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fd.i.i, align 4
  %fd13.i.i = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %fd13.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fd13.i.i, align 4
  %29 = call ptr @memcpy(ptr %26, ptr %28, i32 %mul.i.i)
  %30 = load ptr, ptr %fd.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %mul.i.i
  %31 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %mul12.i.i)
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %20, align 4
  %div43.i.i.i = lshr i32 %33, 3
  %34 = ptrtoint ptr %call.i66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i66, align 4
  %sub.i.i.i = sub i32 %35, %33
  %div144.i.i.i = lshr i32 %sub.i.i.i, 3
  %open_fds.i.i.i = getelementptr inbounds %struct.fdtable, ptr %call.i66, i32 0, i32 3
  %36 = ptrtoint ptr %open_fds.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %open_fds.i.i.i, align 4
  %open_fds2.i.i.i = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 3
  %38 = ptrtoint ptr %open_fds2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %open_fds2.i.i.i, align 4
  %40 = call ptr @memcpy(ptr %37, ptr %39, i32 %div43.i.i.i)
  %41 = load ptr, ptr %open_fds.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %div43.i.i.i
  %42 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %div144.i.i.i)
  %close_on_exec.i.i.i = getelementptr inbounds %struct.fdtable, ptr %call.i66, i32 0, i32 2
  %43 = ptrtoint ptr %close_on_exec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %close_on_exec.i.i.i, align 4
  %close_on_exec4.i.i.i = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 2
  %45 = ptrtoint ptr %close_on_exec4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %close_on_exec4.i.i.i, align 4
  %47 = call ptr @memcpy(ptr %44, ptr %46, i32 %div43.i.i.i)
  %48 = load ptr, ptr %close_on_exec.i.i.i, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %48, i32 %div43.i.i.i
  %49 = call ptr @memset(ptr %add.ptr6.i.i.i, i32 0, i32 %div144.i.i.i)
  %sub7.i.i.i = add i32 %33, 31
  %div845.i.i.i = lshr i32 %sub7.i.i.i, 5
  %sub10.i.i.i = add nuw nsw i32 %div845.i.i.i, 31
  %50 = lshr i32 %sub10.i.i.i, 3
  %mul.i.i.i = and i32 %50, 33554428
  %51 = load i32, ptr %call.i66, align 4
  %sub14.i.i.i = add i32 %51, 31
  %div1547.i.i.i = lshr i32 %sub14.i.i.i, 5
  %sub17.i.i.i = add nuw nsw i32 %div1547.i.i.i, 31
  %52 = lshr i32 %sub17.i.i.i, 3
  %mul19.i.i.i = and i32 %52, 33554428
  %sub20.i.i.i = sub nsw i32 %mul19.i.i.i, %mul.i.i.i
  %full_fds_bits.i.i.i = getelementptr inbounds %struct.fdtable, ptr %call.i66, i32 0, i32 4
  %53 = ptrtoint ptr %full_fds_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %full_fds_bits.i.i.i, align 4
  %full_fds_bits21.i.i.i = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 4
  %55 = ptrtoint ptr %full_fds_bits21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %full_fds_bits21.i.i.i, align 4
  %57 = call ptr @memcpy(ptr %54, ptr %56, i32 %mul.i.i.i)
  %58 = load ptr, ptr %full_fds_bits.i.i.i, align 4
  %add.ptr23.i.i.i = getelementptr i8, ptr %58, i32 %mul.i.i.i
  %59 = call ptr @memset(ptr %add.ptr23.i.i.i, i32 0, i32 %sub20.i.i.i)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !179
  %60 = ptrtoint ptr %fdt1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call.i66, ptr %fdt1, align 4
  %fdtab.i = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 4
  %cmp83.not.i = icmp eq ptr %20, %fdtab.i
  br i1 %cmp83.not.i, label %copy_fdtable.exit.i.do.end89.i_crit_edge, label %if.then84.i

copy_fdtable.exit.i.do.end89.i_crit_edge:         ; preds = %copy_fdtable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end89.i

if.then84.i:                                      ; preds = %copy_fdtable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rcu.i = getelementptr inbounds %struct.fdtable, ptr %20, i32 0, i32 5
  call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @free_fdtable_rcu) #10
  br label %do.end89.i

do.end89.i:                                       ; preds = %if.then84.i, %copy_fdtable.exit.i.do.end89.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !180
  br label %expand_fdtable.exit

expand_fdtable.exit:                              ; preds = %do.end89.i, %if.then8.i, %if.end.i.expand_fdtable.exit_crit_edge
  %retval.0.i = phi i32 [ -24, %if.then8.i ], [ 1, %do.end89.i ], [ -12, %if.end.i.expand_fdtable.exit_crit_edge ]
  %61 = ptrtoint ptr %resize_in_progress to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %resize_in_progress, align 4
  call void @__wake_up(ptr noundef %resize_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup48

cleanup48:                                        ; preds = %expand_fdtable.exit, %if.end13.cleanup48_crit_edge, %do.end10.cleanup48_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %expand_fdtable.exit ], [ -24, %if.end13.cleanup48_crit_edge ], [ %expanded.0, %do.end10.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_dup2(ptr noundef %files, ptr noundef %file, i32 noundef %fd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %0 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fdt1, align 4
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @do_dup2.__warned, align 1
  br i1 %.b88, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @do_dup2.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1097, ptr noundef nonnull @.str.4) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %fd12 = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fd12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fd12, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %fd
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %land.lhs.true14, label %do.end10.if.end17_crit_edge

do.end10.if.end17_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = and i32 %fd, 31
  %.pre101 = shl nuw i32 1, %.pre
  %.pre102 = lshr i32 %fd, 5
  br label %if.end17

land.lhs.true14:                                  ; preds = %do.end10
  %open_fds.i = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %open_fds.i, align 4
  %div3.i.i = lshr i32 %fd, 5
  %arrayidx.i.i = getelementptr i32, ptr %7, i32 %div3.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %fd, 31
  %10 = shl nuw i32 1, %and.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %land.lhs.true14.if.end17_crit_edge, label %Ebusy

land.lhs.true14.if.end17_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true14.if.end17_crit_edge, %do.end10.if.end17_crit_edge
  %div2.i.i.pre-phi = phi i32 [ %.pre102, %do.end10.if.end17_crit_edge ], [ %div3.i.i, %land.lhs.true14.if.end17_crit_edge ]
  %shl.i.i.pre-phi = phi i32 [ %.pre101, %do.end10.if.end17_crit_edge ], [ %10, %land.lhs.true14.if.end17_crit_edge ]
  %f_count.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !181
  %13 = ptrtoint ptr %fd12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd12, align 4
  %arrayidx47 = getelementptr ptr, ptr %14, i32 %fd
  %15 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %file, ptr %arrayidx47, align 4
  %open_fds.i89 = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %open_fds.i89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %open_fds.i89, align 4
  %add.ptr.i.i = getelementptr i32, ptr %17, i32 %div2.i.i.pre-phi
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %19, %shl.i.i.pre-phi
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %20 = load ptr, ptr %open_fds.i89, align 4
  %arrayidx.i = getelementptr i32, ptr %20, i32 %div2.i.i.pre-phi
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool.not.i = icmp eq i32 %22, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end17.__set_open_fd.exit_crit_edge

if.end17.__set_open_fd.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %__set_open_fd.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %full_fds_bits.i = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %full_fds_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %full_fds_bits.i, align 4
  %rem.i8.i = and i32 %div2.i.i.pre-phi, 31
  %shl.i9.i = shl nuw i32 1, %rem.i8.i
  %div2.i10.i = lshr i32 %fd, 10
  %add.ptr.i11.i = getelementptr i32, ptr %24, i32 %div2.i10.i
  %25 = ptrtoint ptr %add.ptr.i11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i11.i, align 4
  %or.i12.i = or i32 %26, %shl.i9.i
  store i32 %or.i12.i, ptr %add.ptr.i11.i, align 4
  br label %__set_open_fd.exit

__set_open_fd.exit:                               ; preds = %if.then.i, %if.end17.__set_open_fd.exit_crit_edge
  %and = and i32 %flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  %close_on_exec.i95 = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %close_on_exec.i95 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %close_on_exec.i95, align 4
  %arrayidx.i.i97 = getelementptr i32, ptr %28, i32 %div2.i.i.pre-phi
  br i1 %tobool59.not, label %if.else61, label %if.then60

if.then60:                                        ; preds = %__set_open_fd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i97, align 4
  %or.i.i94 = or i32 %30, %shl.i.i.pre-phi
  br label %if.end62.sink.split

if.else61:                                        ; preds = %__set_open_fd.exit
  %31 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i.i97, align 4
  %33 = and i32 %32, %shl.i.i.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i99 = icmp eq i32 %33, 0
  br i1 %tobool.not.i99, label %if.else61.if.end62_crit_edge, label %if.then.i100

if.else61.if.end62_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then.i100:                                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i.i = xor i32 %shl.i.i.pre-phi, -1
  %and.i4.i = and i32 %32, %neg.i.i
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %if.then.i100, %if.then60
  %and.i4.i.sink = phi i32 [ %and.i4.i, %if.then.i100 ], [ %or.i.i94, %if.then60 ]
  %34 = ptrtoint ptr %arrayidx.i.i97 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i4.i.sink, ptr %arrayidx.i.i97, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.else61.if.end62_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  br i1 %tobool13.not, label %if.end62.cleanup_crit_edge, label %if.then65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 @filp_close(ptr noundef nonnull %5, ptr noundef %files) #10
  br label %cleanup

Ebusy:                                            ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %Ebusy, %if.then65, %if.end62.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %Ebusy ], [ %fd, %if.then65 ], [ %fd, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__receive_fd(ptr noundef %file, ptr noundef %ufd, i32 noundef %o_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_file_receive(ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i25 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i25 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 51, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %call.i.i = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %7, i32 noundef %o_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %ufd, null
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %if.then5

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1171) #10
  %8 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !182
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %ufd, i32 %call.i.i, i32 -1226833921) #10, !srcloc !185
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #10, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then9

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %files1.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 108
  %16 = ptrtoint ptr %files1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %files1.i, align 4
  %file_lock.i = getelementptr inbounds %struct.files_struct, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock.i) #10
  tail call fastcc void @__put_unused_fd(ptr noundef %17, i32 noundef %call.i.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %file_lock.i) #10
  br label %cleanup

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %f_count.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !152
  tail call void @fd_install(i32 noundef %call.i.i, ptr noundef %file)
  tail call void @__receive_sock(ptr noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then9 ], [ %call.i.i, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_receive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__receive_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @receive_fd_replace(i32 noundef %new_fd, ptr noundef %file, i32 noundef %o_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_file_receive(ptr noundef %file) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @replace_fd(i32 noundef %new_fd, ptr noundef %file, i32 noundef %o_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__receive_sock(ptr noundef %file) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %new_fd, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @receive_fd(ptr noundef %file, i32 noundef %o_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__receive_fd(ptr noundef %file, ptr noundef null, i32 noundef %o_flags)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ksys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef %flags) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_dup2(i32 noundef %oldfd, i32 noundef %newfd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %newfd, i32 %oldfd)
  %cmp.i = icmp eq i32 %newfd, %oldfd
  br i1 %cmp.i, label %if.then.i, label %if.end7.i, !prof !151

if.then.i:                                        ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %files2.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files2.i, align 4
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !171
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.24) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i.rcu_read_lock.exit.i_crit_edge
  %call.i2 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i5, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i5:                                 ; preds = %rcu_read_lock.exit.i
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool2.not.i = icmp eq i32 %call1.i4, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i5.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i5.do.end.i_crit_edge:              ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i5
  %.b6.i = load i1, ptr @files_lookup_fd_rcu.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i6

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i6:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @files_lookup_fd_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 104, ptr noundef nonnull @.str.4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i6, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i5.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %fdt1.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %newfd)
  %cmp.i.i = icmp ugt i32 %11, %newfd
  br i1 %cmp.i.i, label %if.then.i.i8, label %do.end.i.files_lookup_fd_rcu.exit_crit_edge

do.end.i.files_lookup_fd_rcu.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %files_lookup_fd_rcu.exit

if.then.i.i8:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %newfd, i32 %11) #10, !srcloc !173
  %and.i.i7 = and i32 %12, %newfd
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %and.i.i7
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %phi.cmp = icmp eq ptr %16, null
  %phi.sel = select i1 %phi.cmp, i32 -9, i32 %newfd
  br label %files_lookup_fd_rcu.exit

files_lookup_fd_rcu.exit:                         ; preds = %if.then.i.i8, %do.end.i.files_lookup_fd_rcu.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.sel, %if.then.i.i8 ], [ -9, %do.end.i.files_lookup_fd_rcu.exit_crit_edge ]
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %files_lookup_fd_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

files_lookup_fd_rcu.exit.rcu_read_unlock.exit_crit_edge: ; preds = %files_lookup_fd_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %files_lookup_fd_rcu.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i1

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i1:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.25) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i1, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %files_lookup_fd_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !172
  %17 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %__do_sys_dup2.exit

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call8.i = tail call fastcc i32 @ksys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef 0) #10
  br label %__do_sys_dup2.exit

__do_sys_dup2.exit:                               ; preds = %if.end7.i, %rcu_read_unlock.exit
  %retval.0.i = phi i32 [ %retval.0.i.i, %rcu_read_unlock.exit ], [ %call8.i, %if.end7.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_dup(i32 noundef %fildes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i.i, align 8
  %files.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files.i.i.i, align 4
  %call1.i.i.i = tail call fastcc ptr @__fget_files(ptr noundef %5, i32 noundef %fildes, i32 noundef 0, i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i, label %entry.__do_sys_dup.exit_crit_edge, label %if.then.i

entry.__do_sys_dup.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__do_sys_dup.exit

if.then.i:                                        ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i.i8.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i8.i to ptr
  %task.i.i9.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i9.i, align 8
  %signal.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i.i.i.i, align 16
  %arrayidx.i.i.i.i = getelementptr %struct.signal_struct, ptr %11, i32 0, i32 51, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i.i, align 8
  %call.i.i.i = tail call fastcc i32 @alloc_fd(i32 noundef 0, i32 noundef %13, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fd_install(i32 noundef %call.i.i.i, ptr noundef nonnull %call1.i.i.i) #10
  br label %__do_sys_dup.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @fput(ptr noundef nonnull %call1.i.i.i) #10
  br label %__do_sys_dup.exit

__do_sys_dup.exit:                                ; preds = %if.else.i, %if.then2.i, %entry.__do_sys_dup.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i.i, %if.then2.i ], [ %call.i.i.i, %if.else.i ], [ -9, %entry.__do_sys_dup.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @f_dupfd(i32 noundef %from, ptr noundef %file, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 51, i32 7
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %from)
  %cmp.not = icmp ugt i32 %7, %from
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @alloc_fd(i32 noundef %from, i32 noundef %7, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, -1
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %f_count.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #10, !srcloc !152
  tail call void @fd_install(i32 noundef %call1, ptr noundef %file)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iterate_fd(ptr noundef %files, i32 noundef %n, ptr nocapture noundef readonly %f, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %files, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup46

if.end:                                           ; preds = %entry
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %fdt1 = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 3
  %0 = ptrtoint ptr %fdt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fdt1, align 4
  %dep_map = getelementptr inbounds %struct.files_struct, ptr %files, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.do.end14_crit_edge

if.end.do.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end14_crit_edge

lor.lhs.false.do.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @iterate_fd.__warned, align 1
  br i1 %.b61, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iterate_fd.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1295, ptr noundef nonnull @.str.4) #10
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %lor.lhs.false.do.end14_crit_edge, %if.end.do.end14_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %n)
  %cmp68 = icmp ugt i32 %3, %n
  br i1 %cmp68, label %for.body.lr.ph, label %do.end14.for.end_crit_edge

do.end14.for.end_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end14
  %fd = getelementptr inbounds %struct.fdtable, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.addr.070 = phi i32 [ %n, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fd, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %n.addr.070
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %call.i62 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool24.not = icmp eq i32 %call.i62, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %for.body.do.end36_crit_edge

for.body.do.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

lor.lhs.false25:                                  ; preds = %for.body
  %call26 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %lor.lhs.false25.do.end36_crit_edge

lor.lhs.false25.do.end36_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

land.lhs.true28:                                  ; preds = %lor.lhs.false25
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b5960 = load i1, ptr @iterate_fd.__warned.18, align 1
  br i1 %.b5960, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iterate_fd.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1297, ptr noundef nonnull @.str.4) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %lor.lhs.false25.do.end36_crit_edge, %for.body.do.end36_crit_edge
  %tobool38.not = icmp eq ptr %7, null
  br i1 %tobool38.not, label %do.end36.for.inc_crit_edge, label %cleanup

do.end36.for.inc_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %do.end36
  %call41 = tail call i32 %f(ptr noundef %p, ptr noundef nonnull %7, i32 noundef %n.addr.070) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not.not, label %cleanup.for.inc_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %do.end36.for.inc_crit_edge
  %inc = add nuw i32 %n.addr.070, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.for.end_crit_edge, %do.end14.for.end_crit_edge
  %res.2 = phi i32 [ 0, %do.end14.for.end_crit_edge ], [ %call41, %cleanup.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  br label %cleanup46

cleanup46:                                        ; preds = %for.end, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ %res.2, %for.end ], [ 0, %entry.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput_many(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_fdtable_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -20
  %fd.i = getelementptr i8, ptr %rcu, i32 -16
  %0 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fd.i, align 4
  tail call void @kvfree(ptr noundef %1) #10
  %open_fds.i = getelementptr i8, ptr %rcu, i32 -8
  %2 = ptrtoint ptr %open_fds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open_fds.i, align 4
  tail call void @kvfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksys_dup3(i32 noundef %oldfd, i32 noundef %newfd, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !141) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files1, align 4
  %and = and i32 %flags, -524289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %oldfd, i32 %newfd)
  %cmp2 = icmp eq i32 %oldfd, %newfd
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5, !prof !186

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %newfd)
  %cmp7.not = icmp ugt i32 %9, %newfd
  br i1 %cmp7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %file_lock = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %file_lock) #10
  %call10 = tail call fastcc i32 @expand_files(ptr noundef %5, i32 noundef %newfd)
  %dep_map.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end9.do.end.i_crit_edge

if.end9.do.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b7.i = load i1, ptr @files_lookup_fd_locked.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @files_lookup_fd_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 97, ptr noundef nonnull @.str.4) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end9.do.end.i_crit_edge
  %fdt1.i.i = getelementptr inbounds %struct.files_struct, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %fdt1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %fdt1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %oldfd)
  %cmp.i.i = icmp ugt i32 %13, %oldfd
  br i1 %cmp.i.i, label %files_lookup_fd_locked.exit, label %do.end.i.Ebadf_crit_edge

do.end.i.Ebadf_crit_edge:                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %Ebadf

files_lookup_fd_locked.exit:                      ; preds = %do.end.i
  %14 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %oldfd, i32 %13) #10, !srcloc !173
  %and.i.i51 = and i32 %14, %oldfd
  %fd15.i.i = getelementptr inbounds %struct.fdtable, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %fd15.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fd15.i.i, align 4
  %arrayidx.i.i52 = getelementptr ptr, ptr %16, i32 %and.i.i51
  %17 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i.i52, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %files_lookup_fd_locked.exit.Ebadf_crit_edge, label %if.end22, !prof !151

files_lookup_fd_locked.exit.Ebadf_crit_edge:      ; preds = %files_lookup_fd_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %Ebadf

if.end22:                                         ; preds = %files_lookup_fd_locked.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp23 = icmp slt i32 %call10, 0
  br i1 %cmp23, label %if.then30, label %if.end34, !prof !151

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -24, i32 %call10)
  %cmp31 = icmp eq i32 %call10, -24
  br i1 %cmp31, label %if.then30.Ebadf_crit_edge, label %if.then30.out_unlock_crit_edge

if.then30.out_unlock_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then30.Ebadf_crit_edge:                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %Ebadf

if.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = tail call fastcc i32 @do_dup2(ptr noundef %5, ptr noundef nonnull %18, i32 noundef %newfd, i32 noundef %flags)
  br label %cleanup

Ebadf:                                            ; preds = %if.then30.Ebadf_crit_edge, %files_lookup_fd_locked.exit.Ebadf_crit_edge, %do.end.i.Ebadf_crit_edge
  br label %out_unlock

out_unlock:                                       ; preds = %Ebadf, %if.then30.out_unlock_crit_edge
  %err.0 = phi i32 [ -9, %Ebadf ], [ %call10, %if.then30.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %file_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end34, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ %call35, %if.end34 ], [ -22, %entry.cleanup_crit_edge ], [ -9, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !110, !112, !113, !115, !116, !118, !120, !121, !123, !125, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @sysctl_nr_open, !1, !"sysctl_nr_open", i1 false, i1 false}
!1 = !{!"../fs/file.c", i32 27, i32 14}
!2 = !{ptr @sysctl_nr_open_min, !3, !"sysctl_nr_open_min", i1 false, i1 false}
!3 = !{!"../fs/file.c", i32 28, i32 14}
!4 = !{ptr @sysctl_nr_open_max, !5, !"sysctl_nr_open_max", i1 false, i1 false}
!5 = !{!"../fs/file.c", i32 31, i32 14}
!6 = !{ptr @dup_fd.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/file.c", i32 301, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dup_fd.__key.1, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/file.c", i32 303, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../fs/file.c", i32 313, i32 12}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../fs/file.c", i32 344, i32 13}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/file.c", i32 450, i32 17}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/file.c", i32 449, i32 15}
!22 = !{ptr @init_files, !23, !"init_files", i1 false, i1 false}
!23 = !{!"../fs/file.c", i32 439, i32 21}
!24 = !{ptr @__ksymtab_get_unused_fd_flags, !25, !"__ksymtab_get_unused_fd_flags", i1 false, i1 false}
!25 = !{!"../fs/file.c", i32 537, i32 1}
!26 = !{ptr @__ksymtab_put_unused_fd, !27, !"__ksymtab_put_unused_fd", i1 false, i1 false}
!27 = !{!"../fs/file.c", i32 555, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../fs/file.c", i32 583, i32 9}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../fs/file.c", i32 591, i32 8}
!32 = !{ptr @__ksymtab_fd_install, !33, !"__ksymtab_fd_install", i1 false, i1 false}
!33 = !{!"../fs/file.c", i32 597, i32 1}
!34 = !{ptr @__ksymtab_close_fd, !35, !"__ksymtab_close_fd", i1 false, i1 false}
!35 = !{!"../fs/file.c", i32 644, i32 1}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../fs/file.c", i32 729, i32 26}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../fs/file.c", i32 775, i32 8}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../fs/file.c", i32 818, i32 9}
!42 = !{ptr @__ksymtab_fget, !43, !"__ksymtab_fget", i1 false, i1 false}
!43 = !{!"../fs/file.c", i32 926, i32 1}
!44 = !{ptr @__ksymtab_fget_raw, !45, !"__ksymtab_fget_raw", i1 false, i1 false}
!45 = !{!"../fs/file.c", i32 932, i32 1}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../fs/file.c", i32 971, i32 15}
!48 = !{ptr @__ksymtab___fdget, !49, !"__ksymtab___fdget", i1 false, i1 false}
!49 = !{!"../fs/file.c", i32 1019, i32 1}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../fs/file.c", i32 1056, i32 8}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../fs/file.c", i32 1070, i32 8}
!54 = !{ptr @__ksymtab_receive_fd, !55, !"__ksymtab_receive_fd", i1 false, i1 false}
!55 = !{!"../fs/file.c", i32 1201, i32 1}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/file.c", i32 1237, i32 1}
!58 = !{ptr @event_enter__dup3, !57, !"event_enter__dup3", i1 false, i1 false}
!59 = !{ptr @__event_enter__dup3, !57, !"__event_enter__dup3", i1 false, i1 false}
!60 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @event_exit__dup3, !57, !"event_exit__dup3", i1 false, i1 false}
!62 = !{ptr @__event_exit__dup3, !57, !"__event_exit__dup3", i1 false, i1 false}
!63 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__syscall_meta__dup3, !57, !"__syscall_meta__dup3", i1 false, i1 false}
!65 = !{ptr @__p_syscall_meta__dup3, !57, !"__p_syscall_meta__dup3", i1 false, i1 false}
!66 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/file.c", i32 1242, i32 1}
!68 = !{ptr @event_enter__dup2, !67, !"event_enter__dup2", i1 false, i1 false}
!69 = !{ptr @__event_enter__dup2, !67, !"__event_enter__dup2", i1 false, i1 false}
!70 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @event_exit__dup2, !67, !"event_exit__dup2", i1 false, i1 false}
!72 = !{ptr @__event_exit__dup2, !67, !"__event_exit__dup2", i1 false, i1 false}
!73 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__syscall_meta__dup2, !67, !"__syscall_meta__dup2", i1 false, i1 false}
!75 = !{ptr @__p_syscall_meta__dup2, !67, !"__p_syscall_meta__dup2", i1 false, i1 false}
!76 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/file.c", i32 1257, i32 1}
!78 = !{ptr @event_enter__dup, !77, !"event_enter__dup", i1 false, i1 false}
!79 = !{ptr @__event_enter__dup, !77, !"__event_enter__dup", i1 false, i1 false}
!80 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @event_exit__dup, !77, !"event_exit__dup", i1 false, i1 false}
!82 = !{ptr @__event_exit__dup, !77, !"__event_exit__dup", i1 false, i1 false}
!83 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__syscall_meta__dup, !77, !"__syscall_meta__dup", i1 false, i1 false}
!85 = !{ptr @__p_syscall_meta__dup, !77, !"__p_syscall_meta__dup", i1 false, i1 false}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../fs/file.c", i32 1295, i32 13}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../fs/file.c", i32 1297, i32 10}
!90 = !{ptr @__ksymtab_iterate_fd, !91, !"__ksymtab_iterate_fd", i1 false, i1 false}
!91 = !{!"../fs/file.c", i32 1307, i32 1}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../fs/file.c", i32 479, i32 8}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/file.c", i32 518, i32 3}
!96 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @alloc_fd._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @alloc_fd._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../fs/file.c", i32 541, i32 24}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rcupdate.h", i32 787, i32 2}
!103 = !{ptr @.str.21, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 805, i32 2}
!107 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../fs/file.c", i32 615, i32 8}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!112 = !{ptr @.str.24, !111, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!115 = !{ptr @.str.25, !114, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../fs/file.c", i32 666, i32 8}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/fdtable.h", i32 103, i32 2}
!120 = !{ptr @.str.26, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../fs/file.c", i32 206, i32 8}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../fs/file.c", i32 179, i32 12}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../fs/file.c", i32 1097, i32 8}
!127 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @types__dup3, !57, !"types__dup3", i1 false, i1 false}
!130 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @args__dup3, !57, !"args__dup3", i1 false, i1 false}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../include/linux/fdtable.h", i32 96, i32 2}
!136 = !{ptr @types__dup2, !67, !"types__dup2", i1 false, i1 false}
!137 = !{ptr @args__dup2, !67, !"args__dup2", i1 false, i1 false}
!138 = !{ptr @types__dup, !77, !"types__dup", i1 false, i1 false}
!139 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @args__dup, !77, !"args__dup", i1 false, i1 false}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{i64 2148742382, i64 2148742408, i64 2148742437, i64 2148742471, i64 2148742502, i64 2148742525}
!153 = !{i64 2157444036}
!154 = !{i64 2157451290}
!155 = !{i32 0, i32 33}
!156 = !{i64 2148830858}
!157 = !{i64 2148745567, i64 2148745599, i64 2148745628, i64 2148745662, i64 2148745693, i64 2148745716}
!158 = !{i64 2148831087}
!159 = !{i64 2157457714}
!160 = !{i64 1249150, i64 1249167, i64 1249191, i64 1249217, i64 1249235}
!161 = !{i64 2157458067}
!162 = !{i64 2149562660}
!163 = !{i8 0, i8 2}
!164 = !{!"branch_weights", i32 2000, i32 1}
!165 = !{i64 2157489149, i64 2157489623, i64 2157489186, i64 2157489242, i64 2157489276, i64 2157489300, i64 2157489341, i64 2157489362, i64 2157489390, i64 2157489424}
!166 = !{i64 2157495417}
!167 = !{i64 2157497941}
!168 = !{i64 2157502326, i64 2157502800, i64 2157502363, i64 2157502419, i64 2157502453, i64 2157502477, i64 2157502518, i64 2157502539, i64 2157502567, i64 2157502601}
!169 = !{i64 2157508594}
!170 = !{i64 2149564055}
!171 = !{i64 2149554828}
!172 = !{i64 2149555094}
!173 = !{i64 856559, i64 856576}
!174 = !{i64 2148741801}
!175 = !{i64 1228401, i64 1228426, i64 1228448, i64 1228464, i64 1228476, i64 1228496, i64 1228520, i64 1228536, i64 1228548}
!176 = !{i64 2148741989}
!177 = !{i64 2157408222, i64 2157408696, i64 2157408259, i64 2157408315, i64 2157408349, i64 2157408373, i64 2157408414, i64 2157408435, i64 2157408463, i64 2157408497}
!178 = !{i64 2157396333, i64 2157396806, i64 2157396370, i64 2157396426, i64 2157396460, i64 2157396484, i64 2157396525, i64 2157396546, i64 2157396574, i64 2157396608}
!179 = !{i64 2157414438}
!180 = !{i64 2157416924}
!181 = !{i64 2157611430}
!182 = !{i64 4750416}
!183 = !{i64 4750613}
!184 = !{i64 2152235846}
!185 = !{i64 2157619747, i64 2157620027, i64 2157620361, i64 2157620695}
!186 = !{!"branch_weights", i32 2002, i32 2000}
