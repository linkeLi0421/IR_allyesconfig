; ModuleID = '/llk/IR_all_yes/fs/remap_range.c_pt.bc'
source_filename = "../fs/remap_range.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+generic_remap_file_range_prep\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_remap_file_range_prep\09\09\09\09"
module asm "\09.long\09__crc_generic_remap_file_range_prep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_remap_file_range_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_remap_file_range_prep\22\09\09\09\09\09"
module asm "__kstrtabns_generic_remap_file_range_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_clone_file_range\22, \22a\22\09"
module asm "\09.weak\09__crc_do_clone_file_range\09\09\09\09"
module asm "\09.long\09__crc_do_clone_file_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22do_clone_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_do_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_clone_file_range\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_clone_file_range\09\09\09\09"
module asm "\09.long\09__crc_vfs_clone_file_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_clone_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_clone_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_dedupe_file_range_one\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_dedupe_file_range_one\09\09\09\09"
module asm "\09.long\09__crc_vfs_dedupe_file_range_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_dedupe_file_range_one:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_dedupe_file_range_one\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_dedupe_file_range_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_dedupe_file_range\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_dedupe_file_range\09\09\09\09"
module asm "\09.long\09__crc_vfs_dedupe_file_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_dedupe_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_dedupe_file_range\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_dedupe_file_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.100, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.100 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.anon.88 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.21 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.103, %struct.list_head, %struct.list_head, %union.anon.104 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { %struct.spinlock, i32 }
%union.anon.103 = type { %struct.list_head }
%union.anon.104 = type { %struct.hlist_node }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.80, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.80 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.37 = type { %struct.callback_head }
%struct.file_dedupe_range = type { i64, i64, i16, i16, i32, [0 x %struct.file_dedupe_range_info] }
%struct.file_dedupe_range_info = type { i64, i64, i64, i32, i32 }

@__kstrtab_generic_remap_file_range_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_remap_file_range_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_remap_file_range_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_remap_file_range_prep to i32), ptr @__kstrtab_generic_remap_file_range_prep, ptr @__kstrtabns_generic_remap_file_range_prep }, section "___ksymtab+generic_remap_file_range_prep", align 4
@do_clone_file_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/remap_range.c\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_do_clone_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_clone_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_do_clone_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_clone_file_range to i32), ptr @__kstrtab_do_clone_file_range, ptr @__kstrtabns_do_clone_file_range }, section "___ksymtab+do_clone_file_range", align 4
@__kstrtab_vfs_clone_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_clone_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_clone_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_clone_file_range to i32), ptr @__kstrtab_vfs_clone_file_range, ptr @__kstrtabns_vfs_clone_file_range }, section "___ksymtab+vfs_clone_file_range", align 4
@vfs_dedupe_file_range_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_vfs_dedupe_file_range_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_dedupe_file_range_one = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_dedupe_file_range_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_dedupe_file_range_one to i32), ptr @__kstrtab_vfs_dedupe_file_range_one, ptr @__kstrtabns_vfs_dedupe_file_range_one }, section "___ksymtab+vfs_dedupe_file_range_one", align 4
@__kstrtab_vfs_dedupe_file_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_dedupe_file_range = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_dedupe_file_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_dedupe_file_range to i32), ptr @__kstrtab_vfs_dedupe_file_range, ptr @__kstrtabns_vfs_dedupe_file_range }, section "___ksymtab+vfs_dedupe_file_range", align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.10 = private constant [20 x i8] c"../fs/remap_range.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 363, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 717, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 777, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 260, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 698, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 49, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 34, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_do_clone_file_range, ptr @__ksymtab_generic_remap_file_range_prep, ptr @__ksymtab_vfs_clone_file_range, ptr @__ksymtab_vfs_dedupe_file_range, ptr @__ksymtab_vfs_dedupe_file_range_one, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_remap_file_range_prep(ptr nocapture noundef readonly %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, ptr nocapture noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  %count.i = alloca i64, align 8
  %is_same = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_inode.i158 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i158 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i158, align 8
  %cmp = icmp eq ptr %1, %3
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup96_crit_edge

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end:                                           ; preds = %entry
  %i_flags2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags2, align 4
  %and3 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %and6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond = select i1 %tobool4.not, i1 %tobool7.not, i1 false
  br i1 %or.cond, label %if.end9, label %if.end.cleanup96_crit_edge

if.end.cleanup96_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %10)
  %cmp11 = icmp eq i16 %10, 16384
  br i1 %cmp11, label %if.end9.cleanup96_crit_edge, label %lor.lhs.false13

if.end9.cleanup96_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

lor.lhs.false13:                                  ; preds = %if.end9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 8
  %13 = and i16 %12, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %13)
  %cmp17 = icmp eq i16 %13, 16384
  br i1 %cmp17, label %lor.lhs.false13.cleanup96_crit_edge, label %if.end20

lor.lhs.false13.cleanup96_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end20:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp24 = icmp eq i16 %10, -32768
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %13)
  %cmp30 = icmp eq i16 %13, -32768
  %or.cond154 = select i1 %cmp24, i1 %cmp30, i1 false
  br i1 %or.cond154, label %if.end33, label %if.end20.cleanup96_crit_edge

if.end20.cleanup96_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end33:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %cmp34 = icmp eq i64 %15, 0
  br i1 %cmp34, label %if.then36, label %if.end33.if.end53_crit_edge

if.end33.if.end53_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then36:                                        ; preds = %if.end33
  %call37 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %and38 = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call37, i64 %pos_in)
  %cmp41 = icmp eq i64 %call37, %pos_in
  %or.cond155 = select i1 %tobool39.not, i1 true, i1 %cmp41
  br i1 %or.cond155, label %if.then36.cleanup96_crit_edge, label %if.end44

if.then36.cleanup96_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end44:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_cmp8(i64 %call37, i64 %pos_in)
  %cmp45 = icmp slt i64 %call37, %pos_in
  br i1 %cmp45, label %if.end44.cleanup96_crit_edge, label %cleanup

if.end44.cleanup96_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

cleanup:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i64 %call37, %pos_in
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub, ptr %len, align 8
  br label %if.end53

if.end53:                                         ; preds = %cleanup, %if.end33.if.end53_crit_edge
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 18
  %17 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %f_mapping.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %f_mapping1.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 18
  %21 = ptrtoint ptr %f_mapping1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_mapping1.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count.i) #9
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %len, align 8
  %27 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %count.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize.i, align 16
  %conv.i = zext i32 %31 to i64
  %sub.i = add nsw i64 %conv.i, -1
  %32 = or i64 %pos_out, %pos_in
  %33 = and i64 %sub.i, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %if.end.i, label %if.end53.generic_remap_checks.exit.thread_crit_edge

if.end53.generic_remap_checks.exit.thread_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

if.end.i:                                         ; preds = %if.end53
  %35 = xor i64 %pos_in, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %35)
  %cmp8.i = icmp ugt i64 %26, %35
  %36 = xor i64 %pos_out, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %36)
  %cmp12.i = icmp ugt i64 %26, %36
  %or.cond134.i = or i1 %cmp8.i, %cmp12.i
  br i1 %or.cond134.i, label %if.end.i.generic_remap_checks.exit.thread_crit_edge, label %if.end15.i

if.end.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

if.end15.i:                                       ; preds = %if.end.i
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %20) #9
  %call16.i = tail call fastcc i64 @i_size_read(ptr noundef %24) #9
  %and17.i = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i = icmp eq i32 %and17.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %pos_in)
  %cmp33.not.old.i = icmp sgt i64 %call.i, %pos_in
  br i1 %tobool.not.i, label %if.end32.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  br i1 %cmp33.not.old.i, label %lor.lhs.false20.i, label %land.lhs.true.i.generic_remap_checks.exit.thread_crit_edge

land.lhs.true.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

lor.lhs.false20.i:                                ; preds = %land.lhs.true.i
  %37 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %count.i, align 8
  %add21.i = add i64 %38, %pos_in
  call void @__sanitizer_cov_trace_cmp8(i64 %add21.i, i64 %call.i)
  %cmp22.i = icmp ule i64 %add21.i, %call.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call16.i, i64 %pos_out)
  %cmp25.not.i = icmp sgt i64 %call16.i, %pos_out
  %or.cond135.i = select i1 %cmp22.i, i1 %cmp25.not.i, i1 false
  %add28.i = add i64 %38, %pos_out
  call void @__sanitizer_cov_trace_cmp8(i64 %add28.i, i64 %call16.i)
  %cmp29.i = icmp ule i64 %add28.i, %call16.i
  %or.cond136.i = select i1 %or.cond135.i, i1 %cmp29.i, i1 false
  br i1 %or.cond136.i, label %lor.lhs.false20.i.if.end36.i_crit_edge, label %lor.lhs.false20.i.generic_remap_checks.exit.thread_crit_edge

lor.lhs.false20.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

lor.lhs.false20.i.if.end36.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end32.i:                                       ; preds = %if.end15.i
  br i1 %cmp33.not.old.i, label %if.end32.i.if.end36.i_crit_edge, label %if.end32.i.generic_remap_checks.exit.thread_crit_edge

if.end32.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

if.end32.i.if.end36.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end32.i.if.end36.i_crit_edge, %lor.lhs.false20.i.if.end36.i_crit_edge
  %39 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %count.i, align 8
  %sub37.i = sub i64 %call.i, %pos_in
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %sub37.i) #9
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %count.i, align 8
  %call40.i = call i32 @generic_write_check_limits(ptr noundef %file_out, i64 noundef %pos_out, ptr noundef nonnull %count.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.end36.i.generic_remap_checks.exit.thread_crit_edge

if.end36.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

if.end43.i:                                       ; preds = %if.end36.i
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %count.i, align 8
  %add44.i = add i64 %44, %pos_in
  call void @__sanitizer_cov_trace_cmp8(i64 %add44.i, i64 %call.i)
  %cmp45.i = icmp eq i64 %add44.i, %call.i
  br i1 %cmp45.i, label %if.then47.i, label %if.else.i

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %add49.i = add i64 %call.i, %sub.i
  %neg.i = sub nsw i64 0, %conv.i
  %and51.i = and i64 %add49.i, %neg.i
  %sub52.i = sub i64 %and51.i, %pos_in
  br label %if.end66.i

if.else.i:                                        ; preds = %if.end43.i
  %and54.i = and i64 %44, %sub.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54.i)
  %cmp55.i = icmp eq i64 %and54.i, 0
  br i1 %cmp55.i, label %if.else.i.if.end65.i_crit_edge, label %if.then57.i

if.else.i.if.end65.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then57.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg63.i = sub nsw i64 0, %conv.i
  %and64.i = and i64 %44, %neg63.i
  %45 = ptrtoint ptr %count.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %and64.i, ptr %count.i, align 8
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then57.i, %if.else.i.if.end65.i_crit_edge
  %46 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %count.i, align 8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end65.i, %if.then47.i
  %bcount.0.i = phi i64 [ %sub52.i, %if.then47.i ], [ %47, %if.end65.i ]
  %cmp67.i = icmp eq ptr %20, %24
  %add70.i = add i64 %bcount.0.i, %pos_out
  call void @__sanitizer_cov_trace_cmp8(i64 %add70.i, i64 %pos_in)
  %cmp71.i = icmp ugt i64 %add70.i, %pos_in
  %or.cond137.i = select i1 %cmp67.i, i1 %cmp71.i, i1 false
  %add74.i = add i64 %bcount.0.i, %pos_in
  call void @__sanitizer_cov_trace_cmp8(i64 %add74.i, i64 %pos_out)
  %cmp75.i = icmp ugt i64 %add74.i, %pos_out
  %or.cond138.i = select i1 %or.cond137.i, i1 %cmp75.i, i1 false
  br i1 %or.cond138.i, label %if.end66.i.generic_remap_checks.exit.thread_crit_edge, label %if.end78.i

if.end66.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

if.end78.i:                                       ; preds = %if.end66.i
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %len, align 8
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp79.not.i = icmp ne i64 %49, %51
  %and82.i = and i32 %remap_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  %or.cond139.i = and i1 %tobool83.not.i, %cmp79.not.i
  br i1 %or.cond139.i, label %if.end78.i.generic_remap_checks.exit.thread_crit_edge, label %if.end57

if.end78.i.generic_remap_checks.exit.thread_crit_edge: ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %generic_remap_checks.exit.thread

generic_remap_checks.exit.thread:                 ; preds = %if.end78.i.generic_remap_checks.exit.thread_crit_edge, %if.end66.i.generic_remap_checks.exit.thread_crit_edge, %if.end36.i.generic_remap_checks.exit.thread_crit_edge, %if.end32.i.generic_remap_checks.exit.thread_crit_edge, %lor.lhs.false20.i.generic_remap_checks.exit.thread_crit_edge, %land.lhs.true.i.generic_remap_checks.exit.thread_crit_edge, %if.end.i.generic_remap_checks.exit.thread_crit_edge, %if.end53.generic_remap_checks.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end78.i.generic_remap_checks.exit.thread_crit_edge ], [ -22, %if.end66.i.generic_remap_checks.exit.thread_crit_edge ], [ %call40.i, %if.end36.i.generic_remap_checks.exit.thread_crit_edge ], [ -22, %if.end32.i.generic_remap_checks.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.generic_remap_checks.exit.thread_crit_edge ], [ -22, %lor.lhs.false20.i.generic_remap_checks.exit.thread_crit_edge ], [ -22, %if.end.i.generic_remap_checks.exit.thread_crit_edge ], [ -22, %if.end53.generic_remap_checks.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count.i) #9
  br label %cleanup96

if.end57:                                         ; preds = %if.end78.i
  %52 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %len, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count.i) #9
  call void @inode_dio_wait(ptr noundef %1) #9
  br i1 %cmp, label %if.end57.if.end60_crit_edge, label %if.then59

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void @inode_dio_wait(ptr noundef %3) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end57.if.end60_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_mapping, align 8
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %len, align 8
  %add = add i64 %pos_in, -1
  %sub61 = add i64 %add, %56
  %call62 = call i32 @filemap_write_and_wait_range(ptr noundef %54, i64 noundef %pos_in, i64 noundef %sub61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end60.cleanup96_crit_edge

if.end60.cleanup96_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end65:                                         ; preds = %if.end60
  %i_mapping66 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %57 = ptrtoint ptr %i_mapping66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_mapping66, align 8
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %len, align 8
  %add67 = add i64 %pos_out, -1
  %sub68 = add i64 %add67, %60
  %call69 = call i32 @filemap_write_and_wait_range(ptr noundef %58, i64 noundef %pos_out, i64 noundef %sub68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end65.cleanup96_crit_edge

if.end65.cleanup96_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end72:                                         ; preds = %if.end65
  br i1 %tobool.not.i, label %if.end72.if.end86_crit_edge, label %if.then75

if.end72.if.end86_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then75:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_same) #9
  %61 = ptrtoint ptr %is_same to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %is_same, align 1
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %len, align 8
  %call76 = call fastcc i32 @vfs_dedupe_file_range_compare(ptr noundef %1, i64 noundef %pos_in, ptr noundef %3, i64 noundef %pos_out, i64 noundef %63, ptr noundef nonnull %is_same)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %cleanup83, label %cleanup83.thread

cleanup83.thread:                                 ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_same) #9
  br label %cleanup96

cleanup83:                                        ; preds = %if.then75
  %64 = ptrtoint ptr %is_same to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_same, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool80.not.not = icmp eq i8 %65, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_same) #9
  br i1 %tobool80.not.not, label %cleanup83.cleanup96_crit_edge, label %cleanup83.if.end86_crit_edge

cleanup83.if.end86_crit_edge:                     ; preds = %cleanup83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

cleanup83.cleanup96_crit_edge:                    ; preds = %cleanup83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.end86:                                         ; preds = %cleanup83.if.end86_crit_edge, %if.end72.if.end86_crit_edge
  %call87 = call fastcc i32 @generic_remap_check_len(ptr noundef %1, ptr noundef %3, i64 noundef %pos_out, ptr noundef %len, i32 noundef %remap_flags)
  %66 = or i32 %call87, %and17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %if.then93, label %if.end86.cleanup96_crit_edge

if.end86.cleanup96_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup96

if.then93:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %call94 = call i32 @file_modified(ptr noundef %file_out) #9
  br label %cleanup96

cleanup96:                                        ; preds = %if.then93, %if.end86.cleanup96_crit_edge, %cleanup83.cleanup96_crit_edge, %cleanup83.thread, %if.end65.cleanup96_crit_edge, %if.end60.cleanup96_crit_edge, %generic_remap_checks.exit.thread, %if.end44.cleanup96_crit_edge, %if.then36.cleanup96_crit_edge, %if.end20.cleanup96_crit_edge, %lor.lhs.false13.cleanup96_crit_edge, %if.end9.cleanup96_crit_edge, %if.end.cleanup96_crit_edge, %entry.cleanup96_crit_edge
  %retval.3 = phi i32 [ -52, %cleanup83.cleanup96_crit_edge ], [ -1, %entry.cleanup96_crit_edge ], [ -26, %if.end.cleanup96_crit_edge ], [ -21, %lor.lhs.false13.cleanup96_crit_edge ], [ -21, %if.end9.cleanup96_crit_edge ], [ -22, %if.end20.cleanup96_crit_edge ], [ %call62, %if.end60.cleanup96_crit_edge ], [ %call69, %if.end65.cleanup96_crit_edge ], [ %call87, %if.end86.cleanup96_crit_edge ], [ %call94, %if.then93 ], [ %retval.0.i.ph, %generic_remap_checks.exit.thread ], [ %call76, %cleanup83.thread ], [ -22, %if.end44.cleanup96_crit_edge ], [ 0, %if.then36.cleanup96_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !45
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !46

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !47
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !49
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  ret i64 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfs_dedupe_file_range_compare(ptr nocapture noundef readonly %src, i64 noundef %srcoff, ptr nocapture noundef readonly %dest, i64 noundef %dstoff, i64 noundef %len, ptr nocapture noundef writeonly %is_same) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %tobool.not232 = icmp eq i64 %len, 0
  br i1 %tobool.not232, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %src, i32 0, i32 9
  %i_mapping31 = getelementptr inbounds %struct.inode, ptr %dest, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %srcoff.addr.0235 = phi i64 [ %srcoff, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %dstoff.addr.0234 = phi i64 [ %dstoff, %while.body.lr.ph ], [ %add63, %cleanup.while.body_crit_edge ]
  %len.addr.0233 = phi i64 [ %len, %while.body.lr.ph ], [ %sub64, %cleanup.while.body_crit_edge ]
  %conv = trunc i64 %srcoff.addr.0235 to i32
  %and = and i32 %conv, 4095
  %conv1 = trunc i64 %dstoff.addr.0234 to i32
  %and2 = and i32 %conv1, 4095
  %0 = tail call i32 @llvm.umax.i32(i32 %and2, i32 %and)
  %cond = sub nuw nsw i32 4096, %0
  %conv5 = zext i32 %cond to i64
  %1 = tail call i64 @llvm.smin.i64(i64 %len.addr.0233, i64 %conv5)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %1)
  %cmp13 = icmp slt i64 %1, 1
  br i1 %cmp13, label %while.body.cleanup70_crit_edge, label %if.end

while.body.cleanup70_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.end:                                           ; preds = %while.body
  %call = tail call fastcc ptr @vfs_dedupe_get_folio(ptr noundef %src, i64 noundef %srcoff.addr.0235)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup70

if.end18:                                         ; preds = %if.end
  %call19 = tail call fastcc ptr @vfs_dedupe_get_folio(ptr noundef %dest, i64 noundef %dstoff.addr.0234)
  %cmp.i122 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %3 = ptrtoint ptr %call19 to i32
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !46

if.then.i.i.i:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then21
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vfs_dedupe_file_range_compare, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !56

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %call, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup70_crit_edge

folio_put_testzero.exit.i.cleanup70_crit_edge:    ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup70

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %call) #9
  br label %cleanup70

if.end23:                                         ; preds = %if.end18
  %index.i = getelementptr inbounds %struct.anon.88, ptr %call, i32 0, i32 3
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  %index1.i = getelementptr inbounds %struct.anon.88, ptr %call19, i32 0, i32 3
  %9 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i123 = icmp ugt i32 %8, %10
  %spec.select.i = select i1 %cmp.i123, ptr %call, ptr %call19
  %spec.select11.i = select i1 %cmp.i123, ptr %call19, ptr %call
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 777) #9
  %11 = getelementptr inbounds %struct.page, ptr %spec.select11.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i124, !prof !57

if.then.i.i.i.i124:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %spec.select11.i, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %if.end23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %spec.select11.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %spec.select11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %spec.select11.i, align 4
  %and.i.i4.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i.i_crit_edge

folio_flags.exit.i.i.i.if.then.i.i_crit_edge:     ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  tail call void @llvm.prefetch.p0(ptr %spec.select11.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %spec.select11.i, ptr %spec.select11.i, i32 1, ptr elementtype(i32) %spec.select11.i) #9, !srcloc !59
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %and1.i.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %phi.cmp.i.i.i.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.folio_lock.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i.i_crit_edge

folio_trylock.exit.i.i.if.then.i.i_crit_edge:     ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

folio_trylock.exit.i.i.folio_lock.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_lock.exit.i

if.then.i.i:                                      ; preds = %folio_trylock.exit.i.i.if.then.i.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i.i_crit_edge
  tail call void @__folio_lock(ptr noundef %spec.select11.i) #9
  br label %folio_lock.exit.i

folio_lock.exit.i:                                ; preds = %if.then.i.i, %folio_trylock.exit.i.i.folio_lock.exit.i_crit_edge
  %cmp2.not.i = icmp eq ptr %spec.select11.i, %spec.select.i
  br i1 %cmp2.not.i, label %folio_lock.exit.i.vfs_lock_two_folios.exit_crit_edge, label %if.then3.i

folio_lock.exit.i.vfs_lock_two_folios.exit_crit_edge: ; preds = %folio_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfs_lock_two_folios.exit

if.then3.i:                                       ; preds = %folio_lock.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 777) #9
  %17 = getelementptr inbounds %struct.page, ptr %spec.select.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i12.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i12.i)
  %tobool.not.i.i.i13.i = icmp eq i32 %and.i.i.i.i12.i, 0
  br i1 %tobool.not.i.i.i13.i, label %folio_flags.exit.i.i18.i, label %if.then.i.i.i14.i, !prof !57

if.then.i.i.i14.i:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %spec.select.i, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

folio_flags.exit.i.i18.i:                         ; preds = %if.then3.i
  %call.i.i.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %spec.select.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %spec.select.i, align 4
  %and.i.i4.i.i16.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i16.i)
  %tobool.not.i.i.i.i17.i = icmp eq i32 %and.i.i4.i.i16.i, 0
  br i1 %tobool.not.i.i.i.i17.i, label %folio_trylock.exit.i22.i, label %folio_flags.exit.i.i18.i.if.then.i23.i_crit_edge

folio_flags.exit.i.i18.i.if.then.i23.i_crit_edge: ; preds = %folio_flags.exit.i.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i23.i

folio_trylock.exit.i22.i:                         ; preds = %folio_flags.exit.i.i18.i
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %spec.select.i, ptr %spec.select.i, i32 1, ptr elementtype(i32) %spec.select.i) #9, !srcloc !59
  %asmresult.i.i.i.i.i.i.i19.i = extractvalue { i32, i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  %and1.i.i.i.i20.i = and i32 %asmresult.i.i.i.i.i.i.i19.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i20.i)
  %phi.cmp.i.i.i21.i = icmp eq i32 %and1.i.i.i.i20.i, 0
  br i1 %phi.cmp.i.i.i21.i, label %folio_trylock.exit.i22.i.vfs_lock_two_folios.exit_crit_edge, label %folio_trylock.exit.i22.i.if.then.i23.i_crit_edge

folio_trylock.exit.i22.i.if.then.i23.i_crit_edge: ; preds = %folio_trylock.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i23.i

folio_trylock.exit.i22.i.vfs_lock_two_folios.exit_crit_edge: ; preds = %folio_trylock.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfs_lock_two_folios.exit

if.then.i23.i:                                    ; preds = %folio_trylock.exit.i22.i.if.then.i23.i_crit_edge, %folio_flags.exit.i.i18.i.if.then.i23.i_crit_edge
  tail call void @__folio_lock(ptr noundef %spec.select.i) #9
  br label %vfs_lock_two_folios.exit

vfs_lock_two_folios.exit:                         ; preds = %if.then.i23.i, %folio_trylock.exit.i22.i.vfs_lock_two_folios.exit_crit_edge, %folio_lock.exit.i.vfs_lock_two_folios.exit_crit_edge
  %23 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i125, !prof !57

if.then.i.i125:                                   ; preds = %vfs_lock_two_folios.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

folio_flags.exit.i:                               ; preds = %vfs_lock_two_folios.exit
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %call, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.unlock_crit_edge, label %lor.lhs.false

folio_flags.exit.i.unlock_crit_edge:              ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false:                                    ; preds = %folio_flags.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  %29 = getelementptr inbounds %struct.page, ptr %call19, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i126 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i126)
  %tobool.not.i.i127 = icmp eq i32 %and.i.i.i126, 0
  br i1 %tobool.not.i.i127, label %folio_flags.exit.i130, label %if.then.i.i128, !prof !57

if.then.i.i128:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call19, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

folio_flags.exit.i130:                            ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %call19, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i129.not = icmp eq i32 %34, 0
  br i1 %tobool.i129.not, label %folio_flags.exit.i130.unlock_crit_edge, label %lor.lhs.false26

folio_flags.exit.i130.unlock_crit_edge:           ; preds = %folio_flags.exit.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false26:                                  ; preds = %folio_flags.exit.i130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  %mapping = getelementptr inbounds %struct.anon.88, ptr %call, i32 0, i32 2
  %35 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mapping, align 4
  %37 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_mapping, align 8
  %cmp27.not = icmp eq ptr %36, %38
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false26.unlock_crit_edge

lor.lhs.false26.unlock_crit_edge:                 ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %mapping30 = getelementptr inbounds %struct.anon.88, ptr %call19, i32 0, i32 2
  %39 = ptrtoint ptr %mapping30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mapping30, align 4
  %41 = ptrtoint ptr %i_mapping31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_mapping31, align 8
  %cmp32.not = icmp eq ptr %40, %42
  br i1 %cmp32.not, label %if.end35, label %lor.lhs.false29.unlock_crit_edge

lor.lhs.false29.unlock_crit_edge:                 ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end35:                                         ; preds = %lor.lhs.false29
  %43 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp.i.not.i.i.i.i = icmp eq i32 %44, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i133, label %PageHead.exit.i.i.i, !prof !46

if.then.i.i.i.i133:                               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !62
  unreachable

PageHead.exit.i.i.i:                              ; preds = %if.end35
  %45 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %call, align 4
  %47 = and i32 %46, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = getelementptr %struct.page, ptr %call, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.21, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %50 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %sub38 = add i32 %shl.i, -1
  %and39 = and i32 %sub38, %conv
  %div3.i = lshr i32 %and39, 12
  %add.ptr.i = getelementptr %struct.page, ptr %call, i32 %div3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %51 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %51, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i) #9
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 %and
  %52 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %call19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i.i.i.i134 = icmp eq i32 %53, -1
  br i1 %cmp.i.not.i.i.i.i134, label %if.then.i.i.i.i135, label %PageHead.exit.i.i.i137, !prof !46

if.then.i.i.i.i135:                               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call19, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !62
  unreachable

PageHead.exit.i.i.i137:                           ; preds = %folio_size.exit
  %54 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %call19, align 4
  %56 = and i32 %55, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i.i.i136 = icmp eq i32 %56, 0
  br i1 %tobool.not.i.i.i136, label %PageHead.exit.i.i.i137.folio_size.exit143_crit_edge, label %if.end.i.i.i140

PageHead.exit.i.i.i137.folio_size.exit143_crit_edge: ; preds = %PageHead.exit.i.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_size.exit143

if.end.i.i.i140:                                  ; preds = %PageHead.exit.i.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  %57 = getelementptr %struct.page, ptr %call19, i32 1, i32 1
  %compound_order.i.i.i138 = getelementptr inbounds %struct.anon.21, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %compound_order.i.i.i138 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %compound_order.i.i.i138, align 1
  %conv.i.i.i139 = zext i8 %59 to i32
  br label %folio_size.exit143

folio_size.exit143:                               ; preds = %if.end.i.i.i140, %PageHead.exit.i.i.i137.folio_size.exit143_crit_edge
  %retval.0.i.i.i141 = phi i32 [ %conv.i.i.i139, %if.end.i.i.i140 ], [ 0, %PageHead.exit.i.i.i137.folio_size.exit143_crit_edge ]
  %shl.i142 = shl i32 4096, %retval.0.i.i.i141
  %sub43 = add i32 %shl.i142, -1
  %and44 = and i32 %sub43, %conv1
  %div3.i144 = lshr i32 %and44, 12
  %add.ptr.i145 = getelementptr %struct.page, ptr %call19, i32 %div3.i144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i146 = or i32 %60, 512
  %call.i147 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i145, i32 noundef %or.i146) #9
  %add.ptr1.i149 = getelementptr i8, ptr %call.i147, i32 %and2
  tail call void @flush_dcache_folio(ptr noundef %call) #9
  tail call void @flush_dcache_folio(ptr noundef %call19) #9
  %conv46 = trunc i64 %1 to i32
  %bcmp = tail call i32 @bcmp(ptr %add.ptr1.i, ptr %add.ptr1.i149, i32 %conv46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool48.not = icmp eq i32 %bcmp, 0
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i149) #9
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr1.i) #9
  br label %unlock

unlock:                                           ; preds = %folio_size.exit143, %lor.lhs.false29.unlock_crit_edge, %lor.lhs.false26.unlock_crit_edge, %folio_flags.exit.i130.unlock_crit_edge, %folio_flags.exit.i.unlock_crit_edge
  %same.2.off0 = phi i1 [ %tobool48.not, %folio_size.exit143 ], [ false, %lor.lhs.false29.unlock_crit_edge ], [ false, %lor.lhs.false26.unlock_crit_edge ], [ false, %folio_flags.exit.i.unlock_crit_edge ], [ false, %folio_flags.exit.i130.unlock_crit_edge ]
  tail call void @folio_unlock(ptr noundef %call) #9
  %cmp.not.i = icmp eq ptr %call, %call19
  br i1 %cmp.not.i, label %unlock.vfs_unlock_two_folios.exit_crit_edge, label %if.then.i150

unlock.vfs_unlock_two_folios.exit_crit_edge:      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfs_unlock_two_folios.exit

if.then.i150:                                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @folio_unlock(ptr noundef %call19) #9
  br label %vfs_unlock_two_folios.exit

vfs_unlock_two_folios.exit:                       ; preds = %if.then.i150, %unlock.vfs_unlock_two_folios.exit_crit_edge
  %_refcount.i.i.i.i151 = getelementptr inbounds %struct.page, ptr %call19, i32 0, i32 3
  %call.i.i.i.i.i.i152 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i151, i32 noundef 4) #9
  %61 = ptrtoint ptr %_refcount.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_refcount.i.i.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i.i153 = icmp eq i32 %62, 0
  br i1 %cmp.i.i.i153, label %if.then.i.i.i154, label %do.end5.i.i.i158, !prof !46

if.then.i.i.i154:                                 ; preds = %vfs_unlock_two_folios.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call19, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i158:                                 ; preds = %vfs_unlock_two_folios.exit
  %call.i.i.i10.i.i.i155 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i151, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i151, i32 1, i32 3, i32 1) #9
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i151, ptr %_refcount.i.i.i.i151, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i151) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i156 = extractvalue { i32, i32 } %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i156)
  %cmp.i.i.i.i.i.i157 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i156, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vfs_dedupe_file_range_compare, %if.then.i.i.i.i160)) #9
          to label %folio_put_testzero.exit.i161 [label %if.then.i.i.i.i160], !srcloc !56

if.then.i.i.i.i160:                               ; preds = %do.end5.i.i.i158
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i159 = zext i1 %cmp.i.i.i.i.i.i157 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %call19, i32 noundef -1, i32 noundef %conv.i.i.i.i159) #9
  br label %folio_put_testzero.exit.i161

folio_put_testzero.exit.i161:                     ; preds = %if.then.i.i.i.i160, %do.end5.i.i.i158
  br i1 %cmp.i.i.i.i.i.i157, label %if.then.i162, label %folio_put_testzero.exit.i161.folio_put.exit163_crit_edge

folio_put_testzero.exit.i161.folio_put.exit163_crit_edge: ; preds = %folio_put_testzero.exit.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit163

if.then.i162:                                     ; preds = %folio_put_testzero.exit.i161
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %call19) #9
  br label %folio_put.exit163

folio_put.exit163:                                ; preds = %if.then.i162, %folio_put_testzero.exit.i161.folio_put.exit163_crit_edge
  %_refcount.i.i.i.i164 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i165 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i164, i32 noundef 4) #9
  %64 = ptrtoint ptr %_refcount.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_refcount.i.i.i.i164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i.i166 = icmp eq i32 %65, 0
  br i1 %cmp.i.i.i166, label %if.then.i.i.i167, label %do.end5.i.i.i171, !prof !46

if.then.i.i.i167:                                 ; preds = %folio_put.exit163
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i171:                                 ; preds = %folio_put.exit163
  %call.i.i.i10.i.i.i168 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i164, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i164, i32 1, i32 3, i32 1) #9
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i164, ptr %_refcount.i.i.i.i164, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i164) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i169 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i169)
  %cmp.i.i.i.i.i.i170 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i169, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vfs_dedupe_file_range_compare, %if.then.i.i.i.i173)) #9
          to label %folio_put_testzero.exit.i174 [label %if.then.i.i.i.i173], !srcloc !56

if.then.i.i.i.i173:                               ; preds = %do.end5.i.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i172 = zext i1 %cmp.i.i.i.i.i.i170 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %call, i32 noundef -1, i32 noundef %conv.i.i.i.i172) #9
  br label %folio_put_testzero.exit.i174

folio_put_testzero.exit.i174:                     ; preds = %if.then.i.i.i.i173, %do.end5.i.i.i171
  br i1 %cmp.i.i.i.i.i.i170, label %if.then.i175, label %folio_put_testzero.exit.i174.folio_put.exit176_crit_edge

folio_put_testzero.exit.i174.folio_put.exit176_crit_edge: ; preds = %folio_put_testzero.exit.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit176

if.then.i175:                                     ; preds = %folio_put_testzero.exit.i174
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %call) #9
  br label %folio_put.exit176

folio_put.exit176:                                ; preds = %if.then.i175, %folio_put_testzero.exit.i174.folio_put.exit176_crit_edge
  br i1 %same.2.off0, label %cleanup, label %folio_put.exit176.while.end_crit_edge

folio_put.exit176.while.end_crit_edge:            ; preds = %folio_put.exit176
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup:                                          ; preds = %folio_put.exit176
  %add = add i64 %1, %srcoff.addr.0235
  %add63 = add i64 %1, %dstoff.addr.0234
  %sub64 = sub i64 %len.addr.0233, %1
  %tobool.not = icmp eq i64 %sub64, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %folio_put.exit176.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %same.2.off0, %folio_put.exit176.while.end_crit_edge ], [ %same.2.off0, %cleanup.while.end_crit_edge ]
  %frombool = zext i1 %tobool.not.lcssa to i8
  %67 = ptrtoint ptr %is_same to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool, ptr %is_same, align 1
  br label %cleanup70

cleanup70:                                        ; preds = %while.end, %if.then.i, %folio_put_testzero.exit.i.cleanup70_crit_edge, %if.then16, %while.body.cleanup70_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %3, %if.then.i ], [ %3, %folio_put_testzero.exit.i.cleanup70_crit_edge ], [ %2, %if.then16 ], [ -22, %while.body.cleanup70_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_remap_check_len(ptr nocapture noundef readonly %inode_in, ptr noundef %inode_out, i64 noundef %pos_out, ptr nocapture noundef %len, i32 noundef %remap_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode_in, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv.i
  %sub = xor i32 %notmask, -1
  %conv = zext i32 %sub to i64
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  %and = and i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i64 %3, %pos_out
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode_out)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call2)
  %cmp3 = icmp slt i64 %add, %call2
  %neg = xor i64 %conv, -1
  %and6 = select i1 %cmp3, i64 %neg, i64 -1
  %new_len.0 = and i64 %and6, %3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %new_len.0, i64 %5)
  %cmp8 = icmp eq i64 %new_len.0, %5
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %and12 = and i32 %remap_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %new_len.0, ptr %len, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %and15 = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %cond = select i1 %tobool16.not, i32 -22, i32 -52
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ %cond, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @do_clone_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %remap_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b90 = load i1, ptr @do_clone_file_range.__already_done, align 1
  br i1 %.b90, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !57

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @do_clone_file_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 363, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %f_inode.i91 = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i91 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i91, align 8
  %i_sb37 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb37, align 4
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %if.end39, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %call40 = tail call i32 @generic_file_rw_checks(ptr noundef %file_in, ptr noundef %file_out) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %conv = sext i32 %call40 to i64
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  %f_op = getelementptr inbounds %struct.file, ptr %file_in, i32 0, i32 3
  %8 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_op, align 4
  %remap_file_range = getelementptr inbounds %struct.file_operations, ptr %9, i32 0, i32 30
  %10 = ptrtoint ptr %remap_file_range to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_file_range, align 4
  %tobool45.not = icmp eq ptr %11, null
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  %12 = or i64 %len, %pos_in
  %add.i = add i64 %len, %pos_in
  %13 = or i64 %12, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %.not.i = icmp sgt i64 %13, -1
  br i1 %.not.i, label %remap_verify_area.exit, label %if.end47.if.then51_crit_edge, !prof !63

if.end47.if.then51_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

remap_verify_area.exit:                           ; preds = %if.end47
  %call.i = tail call i32 @security_file_permission(ptr noundef %file_in, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %if.end52, label %remap_verify_area.exit.if.then51_crit_edge

remap_verify_area.exit.if.then51_crit_edge:       ; preds = %remap_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51

if.then51:                                        ; preds = %remap_verify_area.exit.if.then51_crit_edge, %if.end47.if.then51_crit_edge
  %retval.0.i100 = phi i32 [ %call.i, %remap_verify_area.exit.if.then51_crit_edge ], [ -22, %if.end47.if.then51_crit_edge ]
  %conv49 = sext i32 %retval.0.i100 to i64
  br label %cleanup

if.end52:                                         ; preds = %remap_verify_area.exit
  %14 = or i64 %len, %pos_out
  %add.i92 = add i64 %len, %pos_out
  %15 = or i64 %14, %add.i92
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %15)
  %.not.i93 = icmp sgt i64 %15, -1
  br i1 %.not.i93, label %remap_verify_area.exit97, label %if.end52.if.then56_crit_edge, !prof !63

if.end52.if.then56_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

remap_verify_area.exit97:                         ; preds = %if.end52
  %call.i94 = tail call i32 @security_file_permission(ptr noundef %file_out, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool55.not = icmp eq i32 %call.i94, 0
  br i1 %tobool55.not, label %if.end57, label %remap_verify_area.exit97.if.then56_crit_edge

remap_verify_area.exit97.if.then56_crit_edge:     ; preds = %remap_verify_area.exit97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56

if.then56:                                        ; preds = %remap_verify_area.exit97.if.then56_crit_edge, %if.end52.if.then56_crit_edge
  %retval.0.i96103 = phi i32 [ %call.i94, %remap_verify_area.exit97.if.then56_crit_edge ], [ -22, %if.end52.if.then56_crit_edge ]
  %conv54 = sext i32 %retval.0.i96103 to i64
  br label %cleanup

if.end57:                                         ; preds = %remap_verify_area.exit97
  %16 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_op, align 4
  %remap_file_range59 = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %remap_file_range59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_file_range59, align 4
  %call60 = tail call i64 %19(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call60)
  %cmp61 = icmp slt i64 %call60, 0
  br i1 %cmp61, label %if.end57.cleanup_crit_edge, label %if.end64

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @fsnotify_access(ptr noundef %file_in)
  tail call fastcc void @fsnotify_modify(ptr noundef %file_out)
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end57.cleanup_crit_edge, %if.then56, %if.then51, %if.end44.cleanup_crit_edge, %if.then43, %if.end28.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then43 ], [ %conv49, %if.then51 ], [ %conv54, %if.then56 ], [ %call60, %if.end64 ], [ -18, %if.end28.cleanup_crit_edge ], [ -95, %if.end44.cleanup_crit_edge ], [ %call60, %if.end57.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_rw_checks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsnotify_access(ptr noundef %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsnotify_file.exit_crit_edge

entry.fsnotify_file.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsnotify_file.exit

if.end.i:                                         ; preds = %entry
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.end.i.fsnotify_file.exit_crit_edge, label %if.end.i.i

if.end.i.fsnotify_file.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsnotify_file.exit

if.end.i.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %5, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp2.i.i = icmp eq i16 %12, 16384
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %and5.i.i = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i.notify_child.i.i_crit_edge, label %if.then4.i.i.if.end8.i.i_crit_edge

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then4.i.i.notify_child.i.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_child.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %mask.addr.0.i.i = phi i32 [ 1073741825, %if.then4.i.i.if.end8.i.i_crit_edge ], [ 1, %if.end.i.i.if.end8.i.i_crit_edge ]
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_parent.i.i, align 8
  %cmp9.i.i = icmp eq ptr %16, %3
  br i1 %cmp9.i.i, label %if.end8.i.i.notify_child.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.notify_child.i.i_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_child.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i.i = tail call i32 @__fsnotify_parent(ptr noundef %3, i32 noundef %mask.addr.0.i.i, ptr noundef %f_path.i, i32 noundef 1) #9
  br label %fsnotify_file.exit

notify_child.i.i:                                 ; preds = %if.end8.i.i.notify_child.i.i_crit_edge, %if.then4.i.i.notify_child.i.i_crit_edge
  %mask.addr.1.i.i = phi i32 [ %mask.addr.0.i.i, %if.end8.i.i.notify_child.i.i_crit_edge ], [ 1073741825, %if.then4.i.i.notify_child.i.i_crit_edge ]
  %call14.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i, ptr noundef %f_path.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %5, i32 noundef 0) #9
  br label %fsnotify_file.exit

fsnotify_file.exit:                               ; preds = %notify_child.i.i, %if.end12.i.i, %if.end.i.fsnotify_file.exit_crit_edge, %entry.fsnotify_file.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsnotify_modify(ptr noundef %file) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsnotify_file.exit_crit_edge

entry.fsnotify_file.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsnotify_file.exit

if.end.i:                                         ; preds = %entry
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.end.i.fsnotify_file.exit_crit_edge, label %if.end.i.i

if.end.i.fsnotify_file.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsnotify_file.exit

if.end.i.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %5, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp2.i.i = icmp eq i16 %12, 16384
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  %and5.i.i = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i.notify_child.i.i_crit_edge, label %if.then4.i.i.if.end8.i.i_crit_edge

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then4.i.i.notify_child.i.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_child.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %mask.addr.0.i.i = phi i32 [ 1073741826, %if.then4.i.i.if.end8.i.i_crit_edge ], [ 2, %if.end.i.i.if.end8.i.i_crit_edge ]
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_parent.i.i, align 8
  %cmp9.i.i = icmp eq ptr %16, %3
  br i1 %cmp9.i.i, label %if.end8.i.i.notify_child.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.notify_child.i.i_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_child.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i.i = tail call i32 @__fsnotify_parent(ptr noundef %3, i32 noundef %mask.addr.0.i.i, ptr noundef %f_path.i, i32 noundef 1) #9
  br label %fsnotify_file.exit

notify_child.i.i:                                 ; preds = %if.end8.i.i.notify_child.i.i_crit_edge, %if.then4.i.i.notify_child.i.i_crit_edge
  %mask.addr.1.i.i = phi i32 [ %mask.addr.0.i.i, %if.end8.i.i.notify_child.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.notify_child.i.i_crit_edge ]
  %call14.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i, ptr noundef %f_path.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %5, i32 noundef 0) #9
  br label %fsnotify_file.exit

fsnotify_file.exit:                               ; preds = %notify_child.i.i, %if.end12.i.i, %if.end.i.fsnotify_file.exit_crit_edge, %entry.fsnotify_file.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vfs_clone_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file_out, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp.i = icmp eq i16 %4, -32768
  br i1 %cmp.i, label %if.end.i, label %entry.file_start_write.exit_crit_edge

entry.file_start_write.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_start_write.exit

if.end.i:                                         ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %add.ptr1.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 49) #9
  %dep_map.i.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 5
  %7 = tail call ptr @llvm.returnaddress(i32 0) #9
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %8) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %call.i.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge

if.end.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b8.i.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 35, ptr noundef nonnull @.str.8) #9
  br label %rcu_sync_is_idle.exit.i.i.i.i

rcu_sync_is_idle.exit.i.i.i.i:                    ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge, %if.end.i.rcu_sync_is_idle.exit.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i.i.i.i.i, label %do.body7.i.i.i.i, label %if.else.i.i.i.i, !prof !57

do.body7.i.i.i.i:                                 ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %read_count.i.i.i.i = getelementptr %struct.super_block, ptr %6, i32 0, i32 32, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %read_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_count.i.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add21.i.i.i.i = add i32 %27, 1
  store i32 %add21.i.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !45
  %and.i.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then41.i.i.i.i, label %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge, !prof !46

do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge:      ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i.i.i.i

if.then41.i.i.i.i:                                ; preds = %do.body7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end43.i.i.i.i

do.end43.i.i.i.i:                                 ; preds = %if.then41.i.i.i.i, %do.body7.i.i.i.i.do.end43.i.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #9, !srcloc !47
  br label %sb_start_write.exit.i

if.else.i.i.i.i:                                  ; preds = %rcu_sync_is_idle.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.i.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i.i, i1 noundef zeroext false) #9
  br label %sb_start_write.exit.i

sb_start_write.exit.i:                            ; preds = %if.else.i.i.i.i, %do.end43.i.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %29 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i58.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i58.i.i.i.i to ptr
  %preempt_count.i.i59.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i59.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i59.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i59.i.i.i.i, align 4
  br label %file_start_write.exit

file_start_write.exit:                            ; preds = %sb_start_write.exit.i, %entry.file_start_write.exit_crit_edge
  %call = tail call i64 @do_clone_file_range(ptr noundef %file_in, i64 noundef %pos_in, ptr noundef %file_out, i64 noundef %pos_out, i64 noundef %len, i32 noundef %remap_flags)
  %33 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_inode.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %37)
  %cmp.i4 = icmp eq i16 %37, -32768
  br i1 %cmp.i4, label %if.end.i8, label %file_start_write.exit.file_end_write.exit_crit_edge

file_start_write.exit.file_end_write.exit_crit_edge: ; preds = %file_start_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %file_end_write.exit

if.end.i8:                                        ; preds = %file_start_write.exit
  %i_sb.i5 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i5, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 0, i32 5
  %40 = tail call ptr @llvm.returnaddress(i32 0) #9
  %41 = ptrtoint ptr %40 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %41) #9
  %42 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i.i.i6 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i6 to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i7 = add i32 %45, 1
  store volatile i32 %add.i.i.i.i7, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i8.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end.i8.rcu_sync_is_idle.exit.i.i.i_crit_edge:  ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i8
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 35, ptr noundef nonnull @.str.8) #9
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end.i8.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %46 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool7.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !57

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read_count.i.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %57, %51
  %58 = inttoptr i32 %add.i.i.i to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add17.i.i.i = add i32 %60, -1
  store i32 %add17.i.i.i, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !45
  %and.i.i.i.i.i9 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i9)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i9, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !46

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #9, !srcloc !47
  br label %__sb_end_write.exit.i

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !67
  %62 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 0, i32 1
  %63 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_count75.i.i.i, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i122.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %71, %65
  %72 = inttoptr i32 %add80.i.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %add81.i.i.i = add i32 %74, -1
  store i32 %add81.i.i.i, ptr %72, align 4
  %75 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !45
  %and.i.i123.i.i.i = and i32 %75, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !46

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %62) #9, !srcloc !47
  %writer.i.i.i = getelementptr %struct.super_block, ptr %39, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #9
  br label %__sb_end_write.exit.i

__sb_end_write.exit.i:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  %76 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i.i120.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i = add i32 %79, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i121.i.i.i, align 4
  br label %file_end_write.exit

file_end_write.exit:                              ; preds = %__sb_end_write.exit.i, %file_start_write.exit.file_end_write.exit_crit_edge
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vfs_dedupe_file_range_one(ptr noundef %src_file, i64 noundef %src_pos, ptr noundef %dst_file, i64 noundef %dst_pos, i64 noundef %len, i32 noundef %remap_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %remap_flags)
  %tobool.not = icmp ult i32 %remap_flags, 4
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b96 = load i1, ptr @vfs_dedupe_file_range_one.__already_done, align 1
  br i1 %.b96, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !57

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vfs_dedupe_file_range_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %call = tail call i32 @mnt_want_write_file(ptr noundef %dst_file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool36.not = icmp eq i32 %call, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %conv = sext i32 %call to i64
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %0 = or i64 %len, %src_pos
  %add.i = add i64 %len, %src_pos
  %1 = or i64 %0, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %1)
  %.not.i = icmp sgt i64 %1, -1
  br i1 %.not.i, label %remap_verify_area.exit, label %if.end38.out_drop_write_crit_edge, !prof !63

if.end38.out_drop_write_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

remap_verify_area.exit:                           ; preds = %if.end38
  %call.i = tail call i32 @security_file_permission(ptr noundef %src_file, i32 noundef 4) #9
  %conv40 = sext i32 %call.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool41.not = icmp eq i32 %call.i, 0
  br i1 %tobool41.not, label %if.end43, label %remap_verify_area.exit.out_drop_write_crit_edge

remap_verify_area.exit.out_drop_write_crit_edge:  ; preds = %remap_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end43:                                         ; preds = %remap_verify_area.exit
  %2 = or i64 %len, %dst_pos
  %add.i97 = add i64 %len, %dst_pos
  %3 = or i64 %2, %add.i97
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %.not.i98 = icmp sgt i64 %3, -1
  br i1 %.not.i98, label %remap_verify_area.exit102, label %if.end43.out_drop_write_crit_edge, !prof !63

if.end43.out_drop_write_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

remap_verify_area.exit102:                        ; preds = %if.end43
  %call.i99 = tail call i32 @security_file_permission(ptr noundef %dst_file, i32 noundef 2) #9
  %conv45 = sext i32 %call.i99 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool46.not = icmp eq i32 %call.i99, 0
  br i1 %tobool46.not, label %if.end48, label %remap_verify_area.exit102.out_drop_write_crit_edge

remap_verify_area.exit102.out_drop_write_crit_edge: ; preds = %remap_verify_area.exit102
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end48:                                         ; preds = %remap_verify_area.exit102
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 1
  %4 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i.i, align 8
  %call2.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call2.i, label %if.end48.if.end51_crit_edge, label %if.end.i

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end.i:                                         ; preds = %if.end48
  %f_mode.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 8
  %10 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.if.end51_crit_edge

if.end.i.if.end51_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end.i:                                         ; preds = %if.end.i
  %12 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i, align 16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %fsuid.i, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 53
  %21 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2
  %23 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %cmp.i.i.i.i.i = icmp eq ptr %7, @init_user_ns
  %cmp.i.i.i.i = icmp eq ptr %22, %7
  %spec.select.i.i.i.i = or i1 %cmp.i.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %do.end.i.i_uid_into_mnt.exit.i_crit_edge, label %if.end.i.i.i

do.end.i.i_uid_into_mnt.exit.i_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_uid_into_mnt.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  %cmp.i21.i.i.i = icmp eq ptr %22, @init_user_ns
  br i1 %cmp.i21.i.i.i, label %if.end.i.i.i.if.end7.i.i.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i.i = tail call i32 @from_kuid(ptr noundef %22, [1 x i32] %24) #9
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.else.i.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge
  %uid.0.i.i.i = phi i32 [ %call6.i.i.i, %if.else.i.i.i ], [ %.unpack.i.i, %if.end.i.i.i.if.end7.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %uid.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, label %if.end9.i.i.i

if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge:    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_uid_into_mnt.exit.i

if.end9.i.i.i:                                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i.i = tail call i32 @make_kuid(ptr noundef %7, i32 noundef %uid.0.i.i.i) #9
  br label %i_uid_into_mnt.exit.i

i_uid_into_mnt.exit.i:                            ; preds = %if.end9.i.i.i, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge, %do.end.i.i_uid_into_mnt.exit.i_crit_edge
  %retval.sroa.0.0.i.i.i = phi i32 [ %call10.i.i.i, %if.end9.i.i.i ], [ -1, %if.end7.i.i.i.i_uid_into_mnt.exit.i_crit_edge ], [ %.unpack.i.i, %do.end.i.i_uid_into_mnt.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload.i, i32 %retval.sroa.0.0.i.i.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, %retval.sroa.0.0.i.i.i
  br i1 %cmp.i.i, label %i_uid_into_mnt.exit.i.if.end51_crit_edge, label %allow_file_dedupe.exit

i_uid_into_mnt.exit.i.if.end51_crit_edge:         ; preds = %i_uid_into_mnt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

allow_file_dedupe.exit:                           ; preds = %i_uid_into_mnt.exit.i
  %call13.i = tail call i32 @inode_permission(ptr noundef %7, ptr noundef %9, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %allow_file_dedupe.exit.if.end51_crit_edge, label %allow_file_dedupe.exit.out_drop_write_crit_edge

allow_file_dedupe.exit.out_drop_write_crit_edge:  ; preds = %allow_file_dedupe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

allow_file_dedupe.exit.if.end51_crit_edge:        ; preds = %allow_file_dedupe.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end51:                                         ; preds = %allow_file_dedupe.exit.if.end51_crit_edge, %i_uid_into_mnt.exit.i.if.end51_crit_edge, %if.end.i.if.end51_crit_edge, %if.end48.if.end51_crit_edge
  %f_path = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 1
  %25 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %f_path, align 8
  %27 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_path.i.i, align 8
  %cmp.not = icmp eq ptr %26, %28
  br i1 %cmp.not, label %if.end56, label %if.end51.out_drop_write_crit_edge

if.end51.out_drop_write_crit_edge:                ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end56:                                         ; preds = %if.end51
  %29 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 8
  %33 = and i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %33)
  %cmp60 = icmp eq i16 %33, 16384
  br i1 %cmp60, label %if.end56.out_drop_write_crit_edge, label %if.end63

if.end56.out_drop_write_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end63:                                         ; preds = %if.end56
  %f_op = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 3
  %34 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %f_op, align 4
  %remap_file_range = getelementptr inbounds %struct.file_operations, ptr %35, i32 0, i32 30
  %36 = ptrtoint ptr %remap_file_range to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remap_file_range, align 4
  %tobool64.not = icmp eq ptr %37, null
  br i1 %tobool64.not, label %if.end63.out_drop_write_crit_edge, label %if.end66

if.end63.out_drop_write_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end66:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %len)
  %cmp67 = icmp eq i64 %len, 0
  br i1 %cmp67, label %if.end66.out_drop_write_crit_edge, label %if.end70

if.end66.out_drop_write_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_drop_write

if.end70:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %remap_flags, 1
  %call73 = tail call i64 %37(ptr noundef %src_file, i64 noundef %src_pos, ptr noundef %dst_file, i64 noundef %dst_pos, i64 noundef %len, i32 noundef %or) #9
  br label %out_drop_write

out_drop_write:                                   ; preds = %if.end70, %if.end66.out_drop_write_crit_edge, %if.end63.out_drop_write_crit_edge, %if.end56.out_drop_write_crit_edge, %if.end51.out_drop_write_crit_edge, %allow_file_dedupe.exit.out_drop_write_crit_edge, %remap_verify_area.exit102.out_drop_write_crit_edge, %if.end43.out_drop_write_crit_edge, %remap_verify_area.exit.out_drop_write_crit_edge, %if.end38.out_drop_write_crit_edge
  %ret.0 = phi i64 [ %conv40, %remap_verify_area.exit.out_drop_write_crit_edge ], [ %conv45, %remap_verify_area.exit102.out_drop_write_crit_edge ], [ -18, %if.end51.out_drop_write_crit_edge ], [ -21, %if.end56.out_drop_write_crit_edge ], [ %call73, %if.end70 ], [ -22, %if.end63.out_drop_write_crit_edge ], [ -1, %allow_file_dedupe.exit.out_drop_write_crit_edge ], [ 0, %if.end66.out_drop_write_crit_edge ], [ -22, %if.end38.out_drop_write_crit_edge ], [ -22, %if.end43.out_drop_write_crit_edge ]
  tail call void @mnt_drop_write_file(ptr noundef %dst_file) #9
  br label %cleanup

cleanup:                                          ; preds = %out_drop_write, %if.then37
  %retval.0 = phi i64 [ %conv, %if.then37 ], [ %ret.0, %out_drop_write ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_dedupe_file_range(ptr noundef %file, ptr nocapture noundef %same) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %dest_count = getelementptr inbounds %struct.file_dedupe_range, ptr %same, i32 0, i32 2
  %2 = ptrtoint ptr %dest_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dest_count, align 8
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end:                                           ; preds = %entry
  %reserved1 = getelementptr inbounds %struct.file_dedupe_range, ptr %same, i32 0, i32 3
  %6 = ptrtoint ptr %reserved1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reserved1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool1.not = icmp eq i16 %7, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.cleanup77_crit_edge

if.end.cleanup77_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

lor.lhs.false:                                    ; preds = %if.end
  %reserved2 = getelementptr inbounds %struct.file_dedupe_range, ptr %same, i32 0, i32 4
  %8 = ptrtoint ptr %reserved2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reserved2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.cleanup77_crit_edge

lor.lhs.false.cleanup77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end4:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %same to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %same, align 8
  %src_length = getelementptr inbounds %struct.file_dedupe_range, ptr %same, i32 0, i32 1
  %12 = ptrtoint ptr %src_length to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %src_length, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 8
  %16 = and i16 %15, -4096
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.then15 [
    i16 16384, label %if.end4.cleanup77_crit_edge
    i16 -32768, label %if.end16
  ]

if.end4.cleanup77_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.then15:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end16:                                         ; preds = %if.end4
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %18 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_op, align 4
  %remap_file_range = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %remap_file_range to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remap_file_range, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %if.end16.cleanup77_crit_edge, label %if.end19

if.end16.cleanup77_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end19:                                         ; preds = %if.end16
  %22 = or i64 %13, %11
  %add.i = add i64 %13, %11
  %23 = or i64 %22, %add.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %.not.i = icmp sgt i64 %23, -1
  br i1 %.not.i, label %remap_verify_area.exit, label %if.end19.cleanup77_crit_edge, !prof !63

if.end19.cleanup77_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

remap_verify_area.exit:                           ; preds = %if.end19
  %call.i = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp slt i32 %call.i, 0
  br i1 %cmp21, label %remap_verify_area.exit.cleanup77_crit_edge, label %if.end24

remap_verify_area.exit.cleanup77_crit_edge:       ; preds = %remap_verify_area.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end24:                                         ; preds = %remap_verify_area.exit
  %call25 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call25)
  %cmp26 = icmp ugt i64 %add.i, %call25
  br i1 %cmp26, label %if.end24.cleanup77_crit_edge, label %if.end29

if.end24.cleanup77_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

if.end29:                                         ; preds = %if.end24
  %24 = tail call i64 @llvm.umin.i64(i64 %13, i64 1073741824)
  %conv32 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp33133.not = icmp eq i16 %3, 0
  br i1 %cmp33133.not, label %if.end29.cleanup77_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

if.end29.cleanup77_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end29.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end29.for.body_crit_edge ]
  %bytes_deduped = getelementptr %struct.file_dedupe_range, ptr %same, i32 0, i32 5, i32 %i.0134, i32 2
  %25 = ptrtoint ptr %bytes_deduped to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %bytes_deduped, align 8
  %status = getelementptr %struct.file_dedupe_range, ptr %same, i32 0, i32 5, i32 %i.0134, i32 3
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %status, align 8
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %conv32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %cmp33133.not, label %for.end.cleanup77_crit_edge, label %for.body43.preheader

for.end.cleanup77_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

for.body43.preheader:                             ; preds = %for.end
  %info38 = getelementptr inbounds %struct.file_dedupe_range, ptr %same, i32 0, i32 5
  br label %for.body43

for.body43:                                       ; preds = %for.inc74.for.body43_crit_edge, %for.body43.preheader
  %i.1139 = phi i32 [ %inc75, %for.inc74.for.body43_crit_edge ], [ 0, %for.body43.preheader ]
  %info.0136 = phi ptr [ %incdec.ptr, %for.inc74.for.body43_crit_edge ], [ %info38, %for.body43.preheader ]
  %27 = ptrtoint ptr %info.0136 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %info.0136, align 8
  %conv44 = trunc i64 %28 to i32
  %call.i127 = tail call i32 @__fdget(i32 noundef %conv44) #9, !noalias !70
  %and.i.i = and i32 %call.i127, -4
  %29 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  %status48 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 3
  %30 = ptrtoint ptr %status48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -9, ptr %status48, align 8
  br label %next_loop

if.end49:                                         ; preds = %for.body43
  %reserved = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 4
  %31 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool50.not = icmp eq i32 %32, 0
  br i1 %tobool50.not, label %if.end53, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %status52 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 3
  %33 = ptrtoint ptr %status52 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -22, ptr %status52, align 8
  br label %next_fdput

if.end53:                                         ; preds = %if.end49
  %dest_offset = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 1
  %34 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dest_offset, align 8
  %call54 = tail call i64 @vfs_dedupe_file_range_one(ptr noundef %file, i64 noundef %11, ptr noundef nonnull %29, i64 noundef %35, i64 noundef %24, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp8(i64 -52, i64 %call54)
  %cmp55 = icmp eq i64 %call54, -52
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %status58 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 3
  %36 = ptrtoint ptr %status58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %status58, align 8
  br label %next_fdput

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call54)
  %cmp59 = icmp slt i64 %call54, 0
  br i1 %cmp59, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv62 = trunc i64 %call54 to i32
  %status63 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 3
  %37 = ptrtoint ptr %status63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv62, ptr %status63, align 8
  br label %next_fdput

if.else64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %bytes_deduped65 = getelementptr inbounds %struct.file_dedupe_range_info, ptr %info.0136, i32 0, i32 2
  %38 = ptrtoint ptr %bytes_deduped65 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %24, ptr %bytes_deduped65, align 8
  br label %next_fdput

next_fdput:                                       ; preds = %if.else64, %if.then61, %if.then57, %if.then51
  %and.i = and i32 %call.i127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %next_fdput.next_loop_crit_edge, label %if.then.i

next_fdput.next_loop_crit_edge:                   ; preds = %next_fdput
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_loop

if.then.i:                                        ; preds = %next_fdput
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %29) #9
  br label %next_loop

next_loop:                                        ; preds = %if.then.i, %next_fdput.next_loop_crit_edge, %if.then47
  %39 = tail call i32 @llvm.read_register.i32(metadata !33) #9
  %and.i128 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i128 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stack.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and1.i.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i129 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i129, label %next_loop.for.inc74_crit_edge, label %fatal_signal_pending.exit

next_loop.for.inc74_crit_edge:                    ; preds = %next_loop
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74

fatal_signal_pending.exit:                        ; preds = %next_loop
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 116, i32 1
  %47 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %signal.i.i, align 4
  %49 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool70.not = icmp eq i32 %49, 0
  br i1 %tobool70.not, label %fatal_signal_pending.exit.for.inc74_crit_edge, label %fatal_signal_pending.exit.cleanup77_crit_edge

fatal_signal_pending.exit.cleanup77_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

fatal_signal_pending.exit.for.inc74_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc74

for.inc74:                                        ; preds = %fatal_signal_pending.exit.for.inc74_crit_edge, %next_loop.for.inc74_crit_edge
  %inc75 = add nuw nsw i32 %i.1139, 1
  %incdec.ptr = getelementptr %struct.file_dedupe_range_info, ptr %info.0136, i32 1
  %exitcond140.not = icmp eq i32 %inc75, %conv32
  br i1 %exitcond140.not, label %for.inc74.cleanup77_crit_edge, label %for.inc74.for.body43_crit_edge

for.inc74.for.body43_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

for.inc74.cleanup77_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup77

cleanup77:                                        ; preds = %for.inc74.cleanup77_crit_edge, %fatal_signal_pending.exit.cleanup77_crit_edge, %for.end.cleanup77_crit_edge, %if.end29.cleanup77_crit_edge, %if.end24.cleanup77_crit_edge, %remap_verify_area.exit.cleanup77_crit_edge, %if.end19.cleanup77_crit_edge, %if.end16.cleanup77_crit_edge, %if.then15, %if.end4.cleanup77_crit_edge, %lor.lhs.false.cleanup77_crit_edge, %if.end.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %entry.cleanup77_crit_edge ], [ -22, %lor.lhs.false.cleanup77_crit_edge ], [ -22, %if.end.cleanup77_crit_edge ], [ -21, %if.end4.cleanup77_crit_edge ], [ -95, %if.end16.cleanup77_crit_edge ], [ %call.i, %remap_verify_area.exit.cleanup77_crit_edge ], [ -22, %if.end24.cleanup77_crit_edge ], [ -22, %if.end19.cleanup77_crit_edge ], [ 0, %for.end.cleanup77_crit_edge ], [ 0, %if.end29.cleanup77_crit_edge ], [ 0, %fatal_signal_pending.exit.cleanup77_crit_edge ], [ 0, %for.inc74.cleanup77_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_check_limits(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vfs_dedupe_get_folio(ptr nocapture noundef readonly %inode, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %2 = lshr i64 %pos, 12
  %conv = trunc i64 %2 to i32
  %call.i = tail call ptr @read_cache_folio(ptr noundef %1, i32 noundef %conv, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !58
  unreachable

folio_flags.exit.i:                               ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.then3, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  br label %cleanup

if.then3:                                         ; preds = %folio_flags.exit.i
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !46

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then3
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@vfs_dedupe_get_folio, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !56

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %call.i, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_uptodate.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %entry.cleanup_crit_edge ], [ %call.i, %folio_test_uptodate.exit.thread ], [ inttoptr (i32 -5 to ptr), %folio_put_testzero.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_folio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_folio(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_permission(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_generic_remap_file_range_prep, !1, !"__ksymtab_generic_remap_file_range_prep", i1 false, i1 false}
!1 = !{!"../fs/remap_range.c", i32 355, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/remap_range.c", i32 363, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_do_clone_file_range, !6, !"__ksymtab_do_clone_file_range", i1 false, i1 false}
!6 = !{!"../fs/remap_range.c", i32 397, i32 1}
!7 = !{ptr @__ksymtab_vfs_clone_file_range, !8, !"__ksymtab_vfs_clone_file_range", i1 false, i1 false}
!8 = !{!"../fs/remap_range.c", i32 412, i32 1}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/remap_range.c", i32 437, i32 2}
!11 = !{ptr @__ksymtab_vfs_dedupe_file_range_one, !12, !"__ksymtab_vfs_dedupe_file_range_one", i1 false, i1 false}
!12 = !{!"../fs/remap_range.c", i32 484, i32 1}
!13 = !{ptr @__ksymtab_vfs_dedupe_file_range, !14, !"__ksymtab_vfs_dedupe_file_range", i1 false, i1 false}
!14 = !{!"../fs/remap_range.c", i32 564, i32 1}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/pagemap.h", i32 777, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../fs/remap_range.c", i32 424, i32 13}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
!44 = !{i64 997346, i64 997407}
!45 = !{i64 1000078}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 1000363}
!48 = !{i64 2152989400}
!49 = !{i64 2152989242}
!50 = !{i64 2152989570}
!51 = !{i64 2149772065}
!52 = !{i64 2153310271, i64 2153310754, i64 2153310308, i64 2153310364, i64 2153310398, i64 2153310422, i64 2153310463, i64 2153310484, i64 2153310512, i64 2153310546}
!53 = !{i64 2148681142}
!54 = !{i64 2148595851, i64 2148595883, i64 2148595912, i64 2148595946, i64 2148595977, i64 2148596000}
!55 = !{i64 2148681371}
!56 = !{i64 2148213392, i64 2148213397, i64 2148213410, i64 2148213454, i64 2148213488, i64 2148213509}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2150149202, i64 2150149693, i64 2150149239, i64 2150149295, i64 2150149329, i64 2150149353, i64 2150149394, i64 2150149415, i64 2150149443, i64 2150149477}
!59 = !{i64 2148601524, i64 2148601556, i64 2148601585, i64 2148601619, i64 2148601650, i64 2148601673}
!60 = !{i64 2148690629}
!61 = !{i64 2150899094}
!62 = !{i64 2150915988, i64 2150916479, i64 2150916025, i64 2150916081, i64 2150916115, i64 2150916139, i64 2150916180, i64 2150916201, i64 2150916229, i64 2150916263}
!63 = !{!"branch_weights", i32 4000000, i32 4001}
!64 = !{i64 2152825650}
!65 = !{i64 2152834500}
!66 = !{i64 2152844454}
!67 = !{i64 2152853949}
!68 = !{i64 2152863426}
!69 = !{i64 2152893968}
!70 = !{!71}
!71 = distinct !{!71, !72, !"fdget: %agg.result"}
!72 = distinct !{!72, !"fdget"}
