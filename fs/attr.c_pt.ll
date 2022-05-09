; ModuleID = '/llk/IR_all_yes/fs/attr.c_pt.bc'
source_filename = "../fs/attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+setattr_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_setattr_prepare\09\09\09\09"
module asm "\09.long\09__crc_setattr_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setattr_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22setattr_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_setattr_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_newsize_ok\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_newsize_ok\09\09\09\09"
module asm "\09.long\09__crc_inode_newsize_ok\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_newsize_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_newsize_ok\22\09\09\09\09\09"
module asm "__kstrtabns_inode_newsize_ok:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+setattr_copy\22, \22a\22\09"
module asm "\09.weak\09__crc_setattr_copy\09\09\09\09"
module asm "\09.long\09__crc_setattr_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setattr_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22setattr_copy\22\09\09\09\09\09"
module asm "__kstrtabns_setattr_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+may_setattr\22, \22a\22\09"
module asm "\09.weak\09__crc_may_setattr\09\09\09\09"
module asm "\09.long\09__crc_may_setattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_may_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22may_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_may_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+notify_change\22, \22a\22\09"
module asm "\09.weak\09__crc_notify_change\09\09\09\09"
module asm "\09.long\09__crc_notify_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_notify_change:\09\09\09\09\09"
module asm "\09.asciz \09\22notify_change\22\09\09\09\09\09"
module asm "__kstrtabns_notify_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }

@__kstrtab_setattr_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_setattr_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_setattr_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setattr_prepare to i32), ptr @__kstrtab_setattr_prepare, ptr @__kstrtabns_setattr_prepare }, section "___ksymtab+setattr_prepare", align 4
@__kstrtab_inode_newsize_ok = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_newsize_ok = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_newsize_ok = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_newsize_ok to i32), ptr @__kstrtab_inode_newsize_ok, ptr @__kstrtabns_inode_newsize_ok }, section "___ksymtab+inode_newsize_ok", align 4
@__kstrtab_setattr_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_setattr_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_setattr_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setattr_copy to i32), ptr @__kstrtab_setattr_copy, ptr @__kstrtabns_setattr_copy }, section "___ksymtab+setattr_copy", align 4
@__kstrtab_may_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_may_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_may_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @may_setattr to i32), ptr @__kstrtab_may_setattr, ptr @__kstrtabns_may_setattr }, section "___ksymtab+may_setattr", align 4
@notify_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/attr.c\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_notify_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_notify_change = external dso_local constant [0 x i8], align 1
@__ksymtab_notify_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @notify_change to i32), ptr @__kstrtab_notify_change, ptr @__kstrtabns_notify_change }, section "___ksymtab+notify_change", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [13 x i8] c"../fs/attr.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 319, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_inode_newsize_ok, ptr @__ksymtab_may_setattr, ptr @__ksymtab_notify_change, ptr @__ksymtab_setattr_copy, ptr @__ksymtab_setattr_prepare, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setattr_prepare(ptr noundef %mnt_userns, ptr noundef %dentry, ptr nocapture noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %4 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ia_size, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %5)
  %cmp.i = icmp slt i64 %7, %5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %8 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 111
  %12 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 51, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp1.not.i = icmp ne i32 %15, -1
  %conv.i = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv.i)
  %cmp2.i = icmp sgt i64 %5, %conv.i
  %or.cond.i = and i1 %cmp1.not.i, %cmp2.i
  br i1 %or.cond.i, label %out_sig.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %s_maxbytes.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %5)
  %cmp5.i = icmp slt i64 %19, %5
  br i1 %cmp5.i, label %if.end.i.cleanup62_crit_edge, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i.cleanup62_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.else.i:                                        ; preds = %if.then
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end5_crit_edge, label %if.else.i.cleanup62_crit_edge

if.else.i.cleanup62_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.else.i.if.end5_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

out_sig.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %call13.i = tail call i32 @send_sig(i32 noundef 25, ptr noundef %25, i32 noundef 0) #5
  br label %cleanup62

if.end5:                                          ; preds = %if.else.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.kill_priv_crit_edge

if.end5.kill_priv_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %kill_priv

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %land.lhs.true

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %26 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack93 = load i32, ptr %ia_uid, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 53
  %29 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %32 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %cmp.i.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %30, %mnt_userns
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %land.lhs.true.i_uid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i

land.lhs.true.i_uid_into_mnt.exit.i_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true
  %cmp.i21.i.i.i = icmp eq ptr %30, @init_user_ns
  br i1 %cmp.i21.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i = tail call i32 @from_kuid(ptr noundef %30, [1 x i32] %32) #5
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %uid.0.i.i.i = phi i32 [ %call6.i.i.i, %if.else.i.i.i ], [ %.unpack.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %uid.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, label %if.end9.i.i.i

if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge:    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit.i

if.end9.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i.i) #5
  br label %i_uid_into_mnt.exit.i

i_uid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, %land.lhs.true.i_uid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end9.i.i.i ], [ -1, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge ], [ %.unpack.i.i, %land.lhs.true.i_uid_into_mnt.exit.i_crit_edge ]
  %33 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i94 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i94 to ptr
  %task.i95 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i95 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i95, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 99
  %37 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i, i32 %retval.sroa.0.0.i.i.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, %retval.sroa.0.0.i.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i, label %i_uid_into_mnt.exit.i.if.end.i96_crit_edge

i_uid_into_mnt.exit.i.if.end.i96_crit_edge:       ; preds = %i_uid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i96

land.lhs.true.i:                                  ; preds = %i_uid_into_mnt.exit.i
  %40 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack.i = load i32, ptr %i_uid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack93, i32 %.unpack.i)
  %cmp.i30.i = icmp eq i32 %.unpack93, %.unpack.i
  br i1 %cmp.i30.i, label %land.lhs.true.i.if.end14_crit_edge, label %land.lhs.true.i.if.end.i96_crit_edge

land.lhs.true.i.if.end.i96_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i96

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i96:                                       ; preds = %land.lhs.true.i.if.end.i96_crit_edge, %i_uid_into_mnt.exit.i.if.end.i96_crit_edge
  %call9.i = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %1, i32 noundef 0) #5
  br i1 %call9.i, label %if.end.i96.if.end14_crit_edge, label %if.end11.i97

if.end.i96.if.end14_crit_edge:                    ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end11.i97:                                     ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i.i)
  %cmp.i31.i = icmp eq i32 %retval.sroa.0.0.i.i.i, -1
  br i1 %cmp.i31.i, label %land.lhs.true15.i, label %if.end11.i97.cleanup62_crit_edge

if.end11.i97.cleanup62_crit_edge:                 ; preds = %if.end11.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

land.lhs.true15.i:                                ; preds = %if.end11.i97
  %41 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 53
  %43 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_user_ns.i, align 8
  %call16.i = tail call zeroext i1 @ns_capable(ptr noundef %44, i32 noundef 0) #5
  br i1 %call16.i, label %land.lhs.true15.i.if.end14_crit_edge, label %land.lhs.true15.i.cleanup62_crit_edge

land.lhs.true15.i.cleanup62_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

land.lhs.true15.i.if.end14_crit_edge:             ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true15.i.if.end14_crit_edge, %if.end.i96.if.end14_crit_edge, %land.lhs.true.i.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %and15 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %land.lhs.true17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

land.lhs.true17:                                  ; preds = %if.end14
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %45 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack = load i32, ptr %ia_gid, align 4
  %46 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %i_sb.i.i.i99 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %i_sb.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i.i99, align 4
  %s_user_ns.i.i.i100 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 53
  %49 = ptrtoint ptr %s_user_ns.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_user_ns.i.i.i100, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.unpack.i.i101 = load i32, ptr %i_gid.i.i, align 8
  %52 = insertvalue [1 x i32] undef, i32 %.unpack.i.i101, 0
  %cmp.i.i.i.i.i102 = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i.i103 = icmp eq ptr %50, %mnt_userns
  %spec.select.i.i.i.i104 = or i1 %cmp.i.i.i.i.i102, %cmp.i.i.i.i103
  br i1 %spec.select.i.i.i.i104, label %land.lhs.true17.i_gid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i106

land.lhs.true17.i_gid_into_mnt.exit.i_crit_edge:  ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit.i

if.end.i.i.i106:                                  ; preds = %land.lhs.true17
  %cmp.i21.i.i.i105 = icmp eq ptr %50, @init_user_ns
  br i1 %cmp.i21.i.i.i105, label %if.end.i.i.i106.if.end7.i.i.i110_crit_edge, label %if.else.i.i.i108

if.end.i.i.i106.if.end7.i.i.i110_crit_edge:       ; preds = %if.end.i.i.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i.i110

if.else.i.i.i108:                                 ; preds = %if.end.i.i.i106
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i.i107 = tail call i32 @from_kgid(ptr noundef %50, [1 x i32] %52) #5
  br label %if.end7.i.i.i110

if.end7.i.i.i110:                                 ; preds = %if.else.i.i.i108, %if.end.i.i.i106.if.end7.i.i.i110_crit_edge
  %gid.0.i.i.i = phi i32 [ %call6.i.i.i107, %if.else.i.i.i108 ], [ %.unpack.i.i101, %if.end.i.i.i106.if.end7.i.i.i110_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i.i)
  %cmp.i.i.i109 = icmp eq i32 %gid.0.i.i.i, -1
  br i1 %cmp.i.i.i109, label %if.end7.i.i.i110.i_gid_into_mnt.exit.i_crit_edge, label %if.end9.i.i.i112

if.end7.i.i.i110.i_gid_into_mnt.exit.i_crit_edge: ; preds = %if.end7.i.i.i110
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit.i

if.end9.i.i.i112:                                 ; preds = %if.end7.i.i.i110
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i.i111 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i.i) #5
  br label %i_gid_into_mnt.exit.i

i_gid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i112, %if.end7.i.i.i110.i_gid_into_mnt.exit.i_crit_edge, %land.lhs.true17.i_gid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i113 = phi i32 [ %call10.i.i.i111, %if.end9.i.i.i112 ], [ -1, %if.end7.i.i.i110.i_gid_into_mnt.exit.i_crit_edge ], [ %.unpack.i.i101, %land.lhs.true17.i_gid_into_mnt.exit.i_crit_edge ]
  %53 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i114 = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i114 to ptr
  %task.i115 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i115 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i115, align 8
  %cred.i116 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 99
  %57 = ptrtoint ptr %cred.i116 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cred.i116, align 16
  %fsuid.i117 = getelementptr inbounds %struct.cred, ptr %58, i32 0, i32 10
  %59 = ptrtoint ptr %fsuid.i117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %agg.tmp.sroa.0.0.copyload.i118 = load i32, ptr %fsuid.i117, align 4
  %60 = ptrtoint ptr %i_sb.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb.i.i.i99, align 4
  %s_user_ns.i.i39.i = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 53
  %62 = ptrtoint ptr %s_user_ns.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_user_ns.i.i39.i, align 8
  %i_uid.i.i119 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %i_uid.i.i119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack.i40.i = load i32, ptr %i_uid.i.i119, align 4
  %65 = insertvalue [1 x i32] undef, i32 %.unpack.i40.i, 0
  %cmp.i.i.i42.i = icmp eq ptr %63, %mnt_userns
  %spec.select.i.i.i43.i = or i1 %cmp.i.i.i.i.i102, %cmp.i.i.i42.i
  br i1 %spec.select.i.i.i43.i, label %i_gid_into_mnt.exit.i.i_uid_into_mnt.exit.i122_crit_edge, label %if.end.i.i45.i

i_gid_into_mnt.exit.i.i_uid_into_mnt.exit.i122_crit_edge: ; preds = %i_gid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit.i122

if.end.i.i45.i:                                   ; preds = %i_gid_into_mnt.exit.i
  %cmp.i21.i.i44.i = icmp eq ptr %63, @init_user_ns
  br i1 %cmp.i21.i.i44.i, label %if.end.i.i45.i.if.end7.i.i49.i_crit_edge, label %if.else.i.i47.i

if.end.i.i45.i.if.end7.i.i49.i_crit_edge:         ; preds = %if.end.i.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i49.i

if.else.i.i47.i:                                  ; preds = %if.end.i.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i46.i = tail call i32 @from_kuid(ptr noundef %63, [1 x i32] %65) #5
  br label %if.end7.i.i49.i

if.end7.i.i49.i:                                  ; preds = %if.else.i.i47.i, %if.end.i.i45.i.if.end7.i.i49.i_crit_edge
  %uid.0.i.i.i120 = phi i32 [ %call6.i.i46.i, %if.else.i.i47.i ], [ %.unpack.i40.i, %if.end.i.i45.i.if.end7.i.i49.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i120)
  %cmp.i.i48.i = icmp eq i32 %uid.0.i.i.i120, -1
  br i1 %cmp.i.i48.i, label %if.end7.i.i49.i.i_uid_into_mnt.exit.i122_crit_edge, label %if.end9.i.i51.i

if.end7.i.i49.i.i_uid_into_mnt.exit.i122_crit_edge: ; preds = %if.end7.i.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit.i122

if.end9.i.i51.i:                                  ; preds = %if.end7.i.i49.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i50.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i.i120) #5
  br label %i_uid_into_mnt.exit.i122

i_uid_into_mnt.exit.i122:                         ; preds = %if.end9.i.i51.i, %if.end7.i.i49.i.i_uid_into_mnt.exit.i122_crit_edge, %i_gid_into_mnt.exit.i.i_uid_into_mnt.exit.i122_crit_edge
  %retval.sroa.0.0.i.i52.i = phi i32 [ %call10.i.i50.i, %if.end9.i.i51.i ], [ -1, %if.end7.i.i49.i.i_uid_into_mnt.exit.i122_crit_edge ], [ %.unpack.i40.i, %i_gid_into_mnt.exit.i.i_uid_into_mnt.exit.i122_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i118, i32 %retval.sroa.0.0.i.i52.i)
  %cmp.i.i121 = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i118, %retval.sroa.0.0.i.i52.i
  br i1 %cmp.i.i121, label %land.lhs.true.i124, label %i_uid_into_mnt.exit.i122.if.end.i126_crit_edge

i_uid_into_mnt.exit.i122.if.end.i126_crit_edge:   ; preds = %i_uid_into_mnt.exit.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i126

land.lhs.true.i124:                               ; preds = %i_uid_into_mnt.exit.i122
  %call10.i = tail call i32 @in_group_p([1 x i32] %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i123 = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i123, label %lor.lhs.false.i, label %land.lhs.true.i124.if.end21_crit_edge

land.lhs.true.i124.if.end21_crit_edge:            ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i124
  %66 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.unpack.i125 = load i32, ptr %i_gid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack.i125)
  %cmp.i53.i = icmp eq i32 %.unpack, %.unpack.i125
  br i1 %cmp.i53.i, label %lor.lhs.false.i.if.end21_crit_edge, label %lor.lhs.false.i.if.end.i126_crit_edge

lor.lhs.false.i.if.end.i126_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i126

lor.lhs.false.i.if.end21_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end.i126:                                      ; preds = %lor.lhs.false.i.if.end.i126_crit_edge, %i_uid_into_mnt.exit.i122.if.end.i126_crit_edge
  %call14.i = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %1, i32 noundef 0) #5
  br i1 %call14.i, label %if.end.i126.if.end21_crit_edge, label %if.end16.i

if.end.i126.if.end21_crit_edge:                   ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end16.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i.i113)
  %cmp.i54.i = icmp eq i32 %retval.sroa.0.0.i.i.i113, -1
  br i1 %cmp.i54.i, label %land.lhs.true20.i, label %if.end16.i.cleanup62_crit_edge

if.end16.i.cleanup62_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

land.lhs.true20.i:                                ; preds = %if.end16.i
  %67 = ptrtoint ptr %i_sb.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb.i.i.i99, align 4
  %s_user_ns.i127 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 53
  %69 = ptrtoint ptr %s_user_ns.i127 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_user_ns.i127, align 8
  %call21.i = tail call zeroext i1 @ns_capable(ptr noundef %70, i32 noundef 0) #5
  br i1 %call21.i, label %land.lhs.true20.i.if.end21_crit_edge, label %land.lhs.true20.i.cleanup62_crit_edge

land.lhs.true20.i.cleanup62_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

land.lhs.true20.i.if.end21_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true20.i.if.end21_crit_edge, %if.end.i126.if.end21_crit_edge, %lor.lhs.false.i.if.end21_crit_edge, %land.lhs.true.i124.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %and22 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end42_crit_edge, label %if.then24

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then24:                                        ; preds = %if.end21
  %call25 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %1) #5
  br i1 %call25, label %if.end27, label %if.then24.cleanup62_crit_edge

if.then24.cleanup62_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.end27:                                         ; preds = %if.then24
  br i1 %tobool16.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %ia_gid30 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %71 = ptrtoint ptr %ia_gid30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %ia_gid30, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end27
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 53
  %74 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack.i129 = load i32, ptr %i_gid.i, align 8
  %77 = insertvalue [1 x i32] undef, i32 %.unpack.i129, 0
  %cmp.i.i.i.i130 = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i131 = icmp eq ptr %75, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i130, %cmp.i.i.i131
  br i1 %spec.select.i.i.i, label %cond.false.cond.end_crit_edge, label %if.end.i.i

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.false
  %cmp.i21.i.i = icmp eq ptr %75, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 @from_kgid(ptr noundef %75, [1 x i32] %77) #5
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i129, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i132 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i132, label %if.end7.i.i.cond.end_crit_edge, label %if.end9.i.i

if.end7.i.i.cond.end_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #5
  br label %cond.end

cond.end:                                         ; preds = %if.end9.i.i, %if.end7.i.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %cond.true
  %agg.tmp.sroa.0.0 = phi i32 [ %agg.tmp.sroa.0.0.copyload, %cond.true ], [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.cond.end_crit_edge ], [ %.unpack.i129, %cond.false.cond.end_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %agg.tmp.sroa.0.0, 0
  %call34 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %cond.end.if.end42_crit_edge

cond.end.if.end42_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

land.lhs.true36:                                  ; preds = %cond.end
  %call37 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %1, i32 noundef 4) #5
  br i1 %call37, label %land.lhs.true36.if.end42_crit_edge, label %if.then38

land.lhs.true36.if.end42_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %78 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ia_mode, align 4
  %80 = and i16 %79, -1025
  store i16 %80, ptr %ia_mode, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %land.lhs.true36.if.end42_crit_edge, %cond.end.if.end42_crit_edge, %if.end21.if.end42_crit_edge
  %and43 = and i32 %3, 65920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.kill_priv_crit_edge, label %if.then45

if.end42.kill_priv_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %kill_priv

if.then45:                                        ; preds = %if.end42
  %call46 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %1) #5
  br i1 %call46, label %if.then45.kill_priv_crit_edge, label %if.then45.cleanup62_crit_edge

if.then45.cleanup62_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.then45.kill_priv_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %kill_priv

kill_priv:                                        ; preds = %if.then45.kill_priv_crit_edge, %if.end42.kill_priv_crit_edge, %if.end5.kill_priv_crit_edge
  %and50 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %kill_priv.if.end61_crit_edge, label %if.then52

kill_priv.if.end61_crit_edge:                     ; preds = %kill_priv
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then52:                                        ; preds = %kill_priv
  %call54 = tail call i32 @security_inode_killpriv(ptr noundef %mnt_userns, ptr noundef %dentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then52.if.end61_crit_edge, label %if.then52.cleanup62_crit_edge

if.then52.cleanup62_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

if.then52.if.end61_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.end61:                                         ; preds = %if.then52.if.end61_crit_edge, %kill_priv.if.end61_crit_edge
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %if.then52.cleanup62_crit_edge, %if.then45.cleanup62_crit_edge, %if.then24.cleanup62_crit_edge, %land.lhs.true20.i.cleanup62_crit_edge, %if.end16.i.cleanup62_crit_edge, %land.lhs.true15.i.cleanup62_crit_edge, %if.end11.i97.cleanup62_crit_edge, %out_sig.i, %if.else.i.cleanup62_crit_edge, %if.end.i.cleanup62_crit_edge
  %retval.3 = phi i32 [ 0, %if.end61 ], [ %call54, %if.then52.cleanup62_crit_edge ], [ -1, %if.then24.cleanup62_crit_edge ], [ -1, %if.then45.cleanup62_crit_edge ], [ -1, %if.end11.i97.cleanup62_crit_edge ], [ -1, %land.lhs.true15.i.cleanup62_crit_edge ], [ -1, %if.end16.i.cleanup62_crit_edge ], [ -1, %land.lhs.true20.i.cleanup62_crit_edge ], [ -27, %if.end.i.cleanup62_crit_edge ], [ -27, %out_sig.i ], [ -26, %if.else.i.cleanup62_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inode_newsize_ok(ptr nocapture noundef readonly %inode, i64 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp = icmp slt i64 %1, %offset
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %7, i32 0, i32 51, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp1.not = icmp ne i32 %9, -1
  %conv = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp2 = icmp slt i64 %conv, %offset
  %or.cond = and i1 %cmp1.not, %cmp2
  br i1 %or.cond, label %out_sig, label %if.end

if.end:                                           ; preds = %if.then
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %offset)
  %cmp5 = icmp slt i64 %13, %offset
  br i1 %cmp5, label %if.end.return_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.else:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %and = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end11_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %return

out_sig:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %16 = tail call i32 @llvm.read_register.i32(metadata !17) #5
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %call13 = tail call i32 @send_sig(i32 noundef 25, ptr noundef %19, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %out_sig, %if.end11, %if.else.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -26, %if.else.return_crit_edge ], [ -27, %out_sig ], [ -27, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_killpriv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setattr_copy(ptr noundef %mnt_userns, ptr noundef %inode, ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ia_uid, align 8
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i_uid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %5 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ia_gid, align 4
  %7 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %i_gid, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and6 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %i_atime, ptr %ia_atime, i32 16)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end5.if.end9_crit_edge
  %and10 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end13_crit_edge, label %if.then12

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %i_mtime, ptr %ia_mtime, i32 16)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %and14 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %ia_ctime, i32 16)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %and18 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %if.then20

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then20:                                        ; preds = %if.end17
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ia_mode, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 53
  %15 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %17 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %i_gid.i, align 8
  %18 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %16, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then20.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i

if.then20.i_gid_into_mnt.exit_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit

if.end.i.i:                                       ; preds = %if.then20
  %cmp.i21.i.i = icmp eq ptr %16, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = tail call i32 @from_kgid(ptr noundef %16, [1 x i32] %18) #5
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_gid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #5
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge, %if.then20.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i, %if.then20.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call22 = tail call i32 @in_group_p([1 x i32] %.fca.0.insert) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %i_gid_into_mnt.exit.if.end28_crit_edge

i_gid_into_mnt.exit.if.end28_crit_edge:           ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

land.lhs.true:                                    ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef 4) #5
  %19 = and i16 %12, -1025
  %spec.select = select i1 %call24, i16 %12, i16 %19
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true, %i_gid_into_mnt.exit.if.end28_crit_edge
  %mode.0 = phi i16 [ %12, %i_gid_into_mnt.exit.if.end28_crit_edge ], [ %spec.select, %land.lhs.true ]
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %mode.0, ptr %inode, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end17.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @may_setattr(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef %ia_valid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ia_valid, 65543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %entry
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %2 = and i32 %1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %and8 = and i32 %ia_valid, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end22_crit_edge, label %if.then10

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then10:                                        ; preds = %if.end7
  %i_flags11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags11, align 4
  %and12 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  %call = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %inode) #5
  br i1 %call, label %if.end15.if.end22_crit_edge, label %if.then16

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then16:                                        ; preds = %if.end15
  %call17 = tail call i32 @inode_permission(ptr noundef %mnt_userns, ptr noundef %inode, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end15.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then16.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.then10.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @notify_change(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr, ptr noundef writeonly %delegated_inode) #0 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  %tmp54 = alloca %struct.timespec64, align 8
  %tmp62 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now)
  %4 = call ptr @memset(ptr %now, i32 255, i32 16)
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %attr, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #5
  %7 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.i.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b270 = load i1, ptr @notify_change.__already_done, align 1
  br i1 %.b270, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !27

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @notify_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 9, ptr noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %and.i = and i32 %6, 65543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end30.if.end7.i_crit_edge, label %if.then.i

if.end30.if.end7.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end30
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags.i, align 4
  %11 = and i32 %10, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.then.i.if.end7.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.end30.if.end7.i_crit_edge
  %and8.i = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.if.end41_crit_edge, label %if.then10.i

if.end7.i.if.end41_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then10.i:                                      ; preds = %if.end7.i
  %i_flags11.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %i_flags11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_flags11.i, align 4
  %and12.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.then10.i.cleanup_crit_edge

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i:                                       ; preds = %if.then10.i
  %call.i = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %mnt_userns, ptr noundef %1) #5
  br i1 %call.i, label %if.end15.i.if.end41_crit_edge, label %if.then16.i

if.end15.i.if.end41_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then16.i:                                      ; preds = %if.end15.i
  %call17.i = tail call i32 @inode_permission(ptr noundef %mnt_userns, ptr noundef %1, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end41_crit_edge, label %if.then16.i.cleanup_crit_edge

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.i.if.end41_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %if.then16.i.if.end41_crit_edge, %if.end15.i.if.end41_crit_edge, %if.end7.i.if.end41_crit_edge
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end41.if.end48_crit_edge, label %if.then43

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then43:                                        ; preds = %if.end41
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %15 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ia_mode, align 4
  %conv.i = zext i16 %16 to i32
  %and.i273 = and i32 %conv.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %tobool.not.i274 = icmp ne i32 %and.i273, 0
  %17 = and i32 %conv.i, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %17)
  %18 = icmp eq i32 %17, 1032
  %or.cond313 = or i1 %tobool.not.i274, %18
  br i1 %or.cond313, label %if.then45, label %if.then43.if.end48_crit_edge

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_flags, align 4
  %and46 = and i32 %20, -4097
  store i32 %and46, ptr %i_flags, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then43.if.end48_crit_edge, %if.end41.if.end48_crit_edge
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %now, ptr noundef %1) #5
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %21 = call ptr @memcpy(ptr %ia_ctime, ptr %now, i32 16)
  %and50 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %22 = call ptr @memcpy(ptr %ia_atime, ptr %now, i32 16)
  br label %if.end56

if.else:                                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp54) #5
  %23 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack267 = load i64, ptr %ia_atime, align 8
  %24 = insertvalue [2 x i64] undef, i64 %.unpack267, 0
  %.elt268 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %.elt268 to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack269 = load i64, ptr %.elt268, align 8
  %26 = insertvalue [2 x i64] %24, i64 %.unpack269, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %tmp54, [2 x i64] %26, ptr noundef %1) #5
  %27 = call ptr @memcpy(ptr %ia_atime, ptr %tmp54, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp54) #5
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then52
  %and57 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  br i1 %tobool58.not, label %if.then59, label %if.else60

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %28 = call ptr @memcpy(ptr %ia_mtime, ptr %now, i32 16)
  br label %if.end64

if.else60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp62) #5
  %29 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %29)
  %.unpack264 = load i64, ptr %ia_mtime, align 8
  %30 = insertvalue [2 x i64] undef, i64 %.unpack264, 0
  %.elt265 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %.elt265 to i32
  call void @__asan_load8_noabort(i32 %31)
  %.unpack266 = load i64, ptr %.elt265, align 8
  %32 = insertvalue [2 x i64] %30, i64 %.unpack266, 1
  call void @timestamp_truncate(ptr nonnull sret(%struct.timespec64) align 8 %tmp62, [2 x i64] %32, ptr noundef %1) #5
  %33 = call ptr @memcpy(ptr %ia_mtime, ptr %tmp62, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp62) #5
  br label %if.end64

if.end64:                                         ; preds = %if.else60, %if.then59
  %and65 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end76_crit_edge, label %if.then67

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then67:                                        ; preds = %if.end64
  %call68 = call i32 @security_inode_need_killpriv(ptr noundef %dentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp = icmp slt i32 %call68, 0
  br i1 %cmp, label %if.then67.cleanup_crit_edge, label %if.end70

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end70:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp71 = icmp eq i32 %call68, 0
  br i1 %cmp71, label %if.then72, label %if.end70.if.end76_crit_edge

if.end70.if.end76_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %attr, align 8
  %and74 = and i32 %35, -16385
  store i32 %and74, ptr %attr, align 8
  %.pre = and i32 %35, 1
  br label %if.end76

if.end76:                                         ; preds = %if.then72, %if.end70.if.end76_crit_edge, %if.end64.if.end76_crit_edge
  %and79.pre-phi = phi i32 [ %and, %if.end70.if.end76_crit_edge ], [ %.pre, %if.then72 ], [ %and, %if.end64.if.end76_crit_edge ]
  %ia_valid.0 = phi i32 [ %6, %if.end70.if.end76_crit_edge ], [ %and74, %if.then72 ], [ %6, %if.end64.if.end76_crit_edge ]
  %and77 = and i32 %ia_valid.0, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.pre-phi)
  %tobool80.not = icmp eq i32 %and79.pre-phi, 0
  %or.cond = or i1 %tobool78.not, %tobool80.not
  br i1 %or.cond, label %if.end88, label %do.body82

do.body82:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/attr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 361, 0\0A.popsection", ""() #5, !srcloc !28
  unreachable

if.end88:                                         ; preds = %if.end76
  %and89 = and i32 %ia_valid.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  %36 = and i16 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool93.not = icmp eq i16 %36, 0
  %or.cond271 = select i1 %tobool90.not, i1 true, i1 %tobool93.not
  br i1 %or.cond271, label %if.end88.if.end102_crit_edge, label %if.then94

if.end88.if.end102_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %attr, align 8
  %or = or i32 %38, 1
  store i32 %or, ptr %attr, align 8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %1, align 8
  %41 = and i16 %40, -2049
  %ia_mode100 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %42 = ptrtoint ptr %ia_mode100 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %ia_mode100, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %if.end88.if.end102_crit_edge
  %ia_valid.1 = phi i32 [ %or, %if.then94 ], [ %ia_valid.0, %if.end88.if.end102_crit_edge ]
  %and103 = and i32 %ia_valid.1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp ne i32 %and103, 0
  %43 = and i16 %3, 1032
  call void @__sanitizer_cov_trace_const_cmp2(i16 1032, i16 %43)
  %cmp108 = icmp eq i16 %43, 1032
  %or.cond272 = select i1 %tobool104.not, i1 %cmp108, i1 false
  br i1 %or.cond272, label %if.then110, label %if.end102.if.end124_crit_edge

if.end102.if.end124_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then110:                                       ; preds = %if.end102
  %and111 = and i32 %ia_valid.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then113, label %if.then110.if.end118_crit_edge

if.then110.if.end118_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %attr, align 8
  %or115 = or i32 %45, 1
  store i32 %or115, ptr %attr, align 8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %1, align 8
  %ia_mode117 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %48 = ptrtoint ptr %ia_mode117 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %ia_mode117, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %if.then110.if.end118_crit_edge
  %ia_valid.2 = phi i32 [ %ia_valid.1, %if.then110.if.end118_crit_edge ], [ %or115, %if.then113 ]
  %ia_mode119 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %49 = ptrtoint ptr %ia_mode119 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ia_mode119, align 4
  %51 = and i16 %50, -1025
  store i16 %51, ptr %ia_mode119, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.end118, %if.end102.if.end124_crit_edge
  %ia_valid.3 = phi i32 [ %ia_valid.2, %if.end118 ], [ %ia_valid.1, %if.end102.if.end124_crit_edge ]
  %52 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %attr, align 8
  %and126 = and i32 %53, -6145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end124.cleanup_crit_edge, label %if.end129

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end129:                                        ; preds = %if.end124
  %and130 = and i32 %ia_valid.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end135_crit_edge, label %land.lhs.true132

if.end129.if.end135_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

land.lhs.true132:                                 ; preds = %if.end129
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb, align 4
  %s_user_ns = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 53
  %56 = ptrtoint ptr %s_user_ns to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_user_ns, align 8
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %58 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack263 = load i32, ptr %ia_uid, align 8
  %59 = insertvalue [1 x i32] undef, i32 %.unpack263, 0
  %call.i275 = call i32 @from_kuid(ptr noundef %57, [1 x i32] %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i275)
  %cmp.i.not = icmp eq i32 %call.i275, -1
  br i1 %cmp.i.not, label %land.lhs.true132.cleanup_crit_edge, label %land.lhs.true132.if.end135_crit_edge

land.lhs.true132.if.end135_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

land.lhs.true132.cleanup_crit_edge:               ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end135:                                        ; preds = %land.lhs.true132.if.end135_crit_edge, %if.end129.if.end135_crit_edge
  %and136 = and i32 %ia_valid.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end144_crit_edge, label %land.lhs.true138

if.end135.if.end144_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

land.lhs.true138:                                 ; preds = %if.end135
  %i_sb139 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %i_sb139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb139, align 4
  %s_user_ns140 = getelementptr inbounds %struct.super_block, ptr %61, i32 0, i32 53
  %62 = ptrtoint ptr %s_user_ns140 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_user_ns140, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %64 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %64)
  %.unpack = load i32, ptr %ia_gid, align 4
  %65 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call.i276 = call i32 @from_kgid(ptr noundef %63, [1 x i32] %65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i276)
  %cmp.i277.not = icmp eq i32 %call.i276, -1
  br i1 %cmp.i277.not, label %land.lhs.true138.cleanup_crit_edge, label %land.lhs.true138.if.end144_crit_edge

land.lhs.true138.if.end144_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

land.lhs.true138.cleanup_crit_edge:               ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end144:                                        ; preds = %land.lhs.true138.if.end144_crit_edge, %if.end135.if.end144_crit_edge
  br i1 %tobool131.not, label %land.lhs.true147, label %if.end144.if.end153_crit_edge

if.end144.if.end153_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

land.lhs.true147:                                 ; preds = %if.end144
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 53
  %68 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %70 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %71 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %69, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %land.lhs.true147.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

land.lhs.true147.i_uid_into_mnt.exit_crit_edge:   ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %land.lhs.true147
  %cmp.i21.i.i = icmp eq ptr %69, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i = call i32 @from_kuid(ptr noundef %69, [1 x i32] %71) #5
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i278 = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i278, label %if.end7.i.i.cleanup_crit_edge, label %if.end9.i.i

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #5
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %land.lhs.true147.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ %.unpack.i, %land.lhs.true147.i_uid_into_mnt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i)
  %cmp.i279.not = icmp eq i32 %retval.sroa.0.0.i.i, -1
  br i1 %cmp.i279.not, label %i_uid_into_mnt.exit.cleanup_crit_edge, label %i_uid_into_mnt.exit.if.end153_crit_edge

i_uid_into_mnt.exit.if.end153_crit_edge:          ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

i_uid_into_mnt.exit.cleanup_crit_edge:            ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end153:                                        ; preds = %i_uid_into_mnt.exit.if.end153_crit_edge, %if.end144.if.end153_crit_edge
  br i1 %tobool137.not, label %land.lhs.true156, label %if.end153.if.end163_crit_edge

if.end153.if.end163_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163

land.lhs.true156:                                 ; preds = %if.end153
  %i_sb.i.i280 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb.i.i280 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i.i280, align 4
  %s_user_ns.i.i281 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 53
  %74 = ptrtoint ptr %s_user_ns.i.i281 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_user_ns.i.i281, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %76 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack.i282 = load i32, ptr %i_gid.i, align 8
  %77 = insertvalue [1 x i32] undef, i32 %.unpack.i282, 0
  %cmp.i.i.i.i283 = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i284 = icmp eq ptr %75, %mnt_userns
  %spec.select.i.i.i285 = or i1 %cmp.i.i.i.i283, %cmp.i.i.i284
  br i1 %spec.select.i.i.i285, label %land.lhs.true156.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i287

land.lhs.true156.i_gid_into_mnt.exit_crit_edge:   ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #7
  br label %i_gid_into_mnt.exit

if.end.i.i287:                                    ; preds = %land.lhs.true156
  %cmp.i21.i.i286 = icmp eq ptr %75, @init_user_ns
  br i1 %cmp.i21.i.i286, label %if.end.i.i287.if.end7.i.i291_crit_edge, label %if.else.i.i289

if.end.i.i287.if.end7.i.i291_crit_edge:           ; preds = %if.end.i.i287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i291

if.else.i.i289:                                   ; preds = %if.end.i.i287
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i.i288 = call i32 @from_kgid(ptr noundef %75, [1 x i32] %77) #5
  br label %if.end7.i.i291

if.end7.i.i291:                                   ; preds = %if.else.i.i289, %if.end.i.i287.if.end7.i.i291_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i288, %if.else.i.i289 ], [ %.unpack.i282, %if.end.i.i287.if.end7.i.i291_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i290 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i290, label %if.end7.i.i291.cleanup_crit_edge, label %if.end9.i.i293

if.end7.i.i291.cleanup_crit_edge:                 ; preds = %if.end7.i.i291
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i.i293:                                   ; preds = %if.end7.i.i291
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i292 = call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #5
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i293, %land.lhs.true156.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i294 = phi i32 [ %call10.i.i292, %if.end9.i.i293 ], [ %.unpack.i282, %land.lhs.true156.i_gid_into_mnt.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i.i294)
  %cmp.i295.not = icmp eq i32 %retval.sroa.0.0.i.i294, -1
  br i1 %cmp.i295.not, label %i_gid_into_mnt.exit.cleanup_crit_edge, label %i_gid_into_mnt.exit.if.end163_crit_edge

i_gid_into_mnt.exit.if.end163_crit_edge:          ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end163

i_gid_into_mnt.exit.cleanup_crit_edge:            ; preds = %i_gid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end163:                                        ; preds = %i_gid_into_mnt.exit.if.end163_crit_edge, %if.end153.if.end163_crit_edge
  %call164 = call i32 @security_inode_setattr(ptr noundef %dentry, ptr noundef %attr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end167, label %if.end163.cleanup_crit_edge

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end167:                                        ; preds = %if.end163
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 45
  %78 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.end167.if.end171_crit_edge, label %land.lhs.true.i.i

if.end167.if.end171_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

land.lhs.true.i.i:                                ; preds = %if.end167
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %flc_lease.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  %cmp.i.not.i.i.i = icmp eq ptr %81, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.break_deleg.exit.i_crit_edge

land.lhs.true.i.i.break_deleg.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %break_deleg.exit.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %79, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %83, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.if.end171_crit_edge, label %list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge

list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %break_deleg.exit.i

list_empty_careful.exit.i.i.if.end171_crit_edge:  ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

break_deleg.exit.i:                               ; preds = %list_empty_careful.exit.i.i.break_deleg.exit.i_crit_edge, %land.lhs.true.i.i.break_deleg.exit.i_crit_edge
  %call5.i.i = call i32 @__break_lease(ptr noundef %1, i32 noundef 2049, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call5.i.i)
  %cmp.i296 = icmp ne i32 %call5.i.i, -11
  %tobool.not.i297 = icmp eq ptr %delegated_inode, null
  %or.cond.i = or i1 %tobool.not.i297, %cmp.i296
  br i1 %or.cond.i, label %try_break_deleg.exit, label %try_break_deleg.exit.thread308

try_break_deleg.exit.thread308:                   ; preds = %break_deleg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %1, ptr %delegated_inode, align 4
  call void @ihold(ptr noundef %1) #5
  br label %cleanup

try_break_deleg.exit:                             ; preds = %break_deleg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool169.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool169.not, label %try_break_deleg.exit.if.end171_crit_edge, label %try_break_deleg.exit.cleanup_crit_edge

try_break_deleg.exit.cleanup_crit_edge:           ; preds = %try_break_deleg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

try_break_deleg.exit.if.end171_crit_edge:         ; preds = %try_break_deleg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end171

if.end171:                                        ; preds = %try_break_deleg.exit.if.end171_crit_edge, %list_empty_careful.exit.i.i.if.end171_crit_edge, %if.end167.if.end171_crit_edge
  %i_op = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %85 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_op, align 8
  %setattr = getelementptr inbounds %struct.inode_operations, ptr %86, i32 0, i32 13
  %87 = ptrtoint ptr %setattr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %setattr, align 4
  %tobool172.not = icmp eq ptr %88, null
  br i1 %tobool172.not, label %if.else177, label %if.then173

if.then173:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  %call176 = call i32 %88(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #5
  br label %if.end179

if.else177:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #7
  %call178 = call i32 @simple_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #5
  br label %if.end179

if.end179:                                        ; preds = %if.else177, %if.then173
  %error.0 = phi i32 [ %call176, %if.then173 ], [ %call178, %if.else177 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool180.not = icmp eq i32 %error.0, 0
  br i1 %tobool180.not, label %if.then181, label %if.end179.cleanup_crit_edge

if.end179.cleanup_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then181:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @fsnotify_change(ptr noundef %dentry, i32 noundef %ia_valid.3)
  call void @ima_inode_post_setattr(ptr noundef %mnt_userns, ptr noundef %dentry) #5
  call void @evm_inode_post_setattr(ptr noundef %dentry, i32 noundef %ia_valid.3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then181, %if.end179.cleanup_crit_edge, %try_break_deleg.exit.cleanup_crit_edge, %try_break_deleg.exit.thread308, %if.end163.cleanup_crit_edge, %i_gid_into_mnt.exit.cleanup_crit_edge, %if.end7.i.i291.cleanup_crit_edge, %i_uid_into_mnt.exit.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %land.lhs.true138.cleanup_crit_edge, %land.lhs.true132.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %if.then16.i.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %if.then67.cleanup_crit_edge ], [ 0, %if.end124.cleanup_crit_edge ], [ -75, %land.lhs.true132.cleanup_crit_edge ], [ -75, %land.lhs.true138.cleanup_crit_edge ], [ -75, %i_uid_into_mnt.exit.cleanup_crit_edge ], [ -75, %i_gid_into_mnt.exit.cleanup_crit_edge ], [ %call164, %if.end163.cleanup_crit_edge ], [ %call5.i.i, %try_break_deleg.exit.cleanup_crit_edge ], [ 0, %if.then181 ], [ %error.0, %if.end179.cleanup_crit_edge ], [ -11, %try_break_deleg.exit.thread308 ], [ %call17.i, %if.then16.i.cleanup_crit_edge ], [ -1, %if.then10.i.cleanup_crit_edge ], [ -1, %if.then.i.cleanup_crit_edge ], [ -75, %if.end7.i.i.cleanup_crit_edge ], [ -75, %if.end7.i.i291.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timestamp_truncate(ptr sret(%struct.timespec64) align 8, [2 x i64], ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_need_killpriv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsnotify_change(ptr noundef %dentry, i32 noundef %ia_valid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %and = shl i32 %ia_valid, 1
  %0 = and i32 %and, 4
  %and1 = and i32 %ia_valid, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %mask.1 = select i1 %tobool2.not, i32 %0, i32 4
  %or9 = or i32 %mask.1, 2
  %and6 = lshr i32 %ia_valid, 2
  %1 = and i32 %and6, 2
  %2 = or i32 %mask.1, %1
  %and11 = and i32 %ia_valid, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and11)
  %cmp = icmp eq i32 %and11, 48
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or13 = or i32 %1, 4
  br label %if.end25

if.else:                                          ; preds = %entry
  %and14 = and i32 %ia_valid, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %or17 = or i32 %2, 1
  br label %if.end25

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and19 = and i32 %ia_valid, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %spec.select48 = select i1 %tobool20.not, i32 %2, i32 %or9
  br label %if.end25

if.end25:                                         ; preds = %if.else18, %if.then16, %if.then12
  %mask.3 = phi i32 [ %or13, %if.then12 ], [ %or17, %if.then16 ], [ %spec.select48, %if.else18 ]
  %and26 = shl i32 %ia_valid, 2
  %3 = and i32 %and26, 4
  %4 = or i32 %mask.3, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool31.not = icmp eq i32 %4, 0
  br i1 %tobool31.not, label %if.end25.if.end33_crit_edge, label %if.then32

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %if.end25
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #5
  %9 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %if.then32.if.end33_crit_edge, label %if.end.i.i

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end.i.i:                                       ; preds = %if.then32
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %6, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp2.i.i = icmp eq i16 %13, 16384
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %or.i.i = or i32 %4, 1073741824
  %14 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dentry, align 8
  %and5.i.i = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i.notify_child.i.i_crit_edge, label %if.then4.i.i.if.end8.i.i_crit_edge

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then4.i.i.notify_child.i.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notify_child.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %mask.addr.0.i.i = phi i32 [ %or.i.i, %if.then4.i.i.if.end8.i.i_crit_edge ], [ %4, %if.end.i.i.if.end8.i.i_crit_edge ]
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %16 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_parent.i.i, align 8
  %cmp9.i.i = icmp eq ptr %17, %dentry
  br i1 %cmp9.i.i, label %if.end8.i.i.notify_child.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.notify_child.i.i_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %notify_child.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call13.i.i = tail call i32 @__fsnotify_parent(ptr noundef %dentry, i32 noundef %mask.addr.0.i.i, ptr noundef %dentry, i32 noundef 3) #5
  br label %if.end33

notify_child.i.i:                                 ; preds = %if.end8.i.i.notify_child.i.i_crit_edge, %if.then4.i.i.notify_child.i.i_crit_edge
  %mask.addr.1.i.i = phi i32 [ %mask.addr.0.i.i, %if.end8.i.i.notify_child.i.i_crit_edge ], [ %or.i.i, %if.then4.i.i.notify_child.i.i_crit_edge ]
  %call14.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i, ptr noundef %dentry, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %6, i32 noundef 0) #5
  br label %if.end33

if.end33:                                         ; preds = %notify_child.i.i, %if.end12.i.i, %if.then32.if.end33_crit_edge, %if.end25.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_inode_post_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @evm_inode_post_setattr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_setattr_prepare, !1, !"__ksymtab_setattr_prepare", i1 false, i1 false}
!1 = !{!"../fs/attr.c", i32 153, i32 1}
!2 = !{ptr @__ksymtab_inode_newsize_ok, !3, !"__ksymtab_inode_newsize_ok", i1 false, i1 false}
!3 = !{!"../fs/attr.c", i32 197, i32 1}
!4 = !{ptr @__ksymtab_setattr_copy, !5, !"__ksymtab_setattr_copy", i1 false, i1 false}
!5 = !{!"../fs/attr.c", i32 250, i32 1}
!6 = !{ptr @__ksymtab_may_setattr, !7, !"__ksymtab_may_setattr", i1 false, i1 false}
!7 = !{!"../fs/attr.c", i32 278, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/attr.c", i32 319, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_notify_change, !12, !"__ksymtab_notify_change", i1 false, i1 false}
!12 = !{!"../fs/attr.c", i32 422, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../fs/attr.c", i32 38, i32 13}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../fs/attr.c", i32 64, i32 13}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2154054573, i64 2154055047, i64 2154054610, i64 2154054666, i64 2154054700, i64 2154054724, i64 2154054765, i64 2154054786, i64 2154054814, i64 2154054848}
!29 = !{i64 2153091218}
!30 = !{i64 2149028383}
