; ModuleID = '/llk/IR_all_yes/fs/stat.c_pt.bc'
source_filename = "../fs/stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+generic_fillattr\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_fillattr\09\09\09\09"
module asm "\09.long\09__crc_generic_fillattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fillattr:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fillattr\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fillattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_fill_statx_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_fill_statx_attr\09\09\09\09"
module asm "\09.long\09__crc_generic_fill_statx_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fill_statx_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fill_statx_attr\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fill_statx_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_getattr_nosec\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_getattr_nosec\09\09\09\09"
module asm "\09.long\09__crc_vfs_getattr_nosec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_getattr_nosec:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_getattr_nosec\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_getattr_nosec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vfs_getattr\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_getattr\09\09\09\09"
module asm "\09.long\09__crc_vfs_getattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_getattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__inode_add_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc___inode_add_bytes\09\09\09\09"
module asm "\09.long\09__crc___inode_add_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22__inode_add_bytes\22\09\09\09\09\09"
module asm "__kstrtabns___inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_add_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_add_bytes\09\09\09\09"
module asm "\09.long\09__crc_inode_add_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_add_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__inode_sub_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc___inode_sub_bytes\09\09\09\09"
module asm "\09.long\09__crc___inode_sub_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22__inode_sub_bytes\22\09\09\09\09\09"
module asm "__kstrtabns___inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_sub_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_sub_bytes\09\09\09\09"
module asm "\09.long\09__crc_inode_sub_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_sub_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_get_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_get_bytes\09\09\09\09"
module asm "\09.long\09__crc_inode_get_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_get_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_get_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_get_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+inode_set_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_inode_set_bytes\09\09\09\09"
module asm "\09.long\09__crc_inode_set_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_set_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_set_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_set_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.81, %struct.trace_event, ptr, ptr, %union.anon.83, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.81 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.83 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.98, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.99, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.100, ptr, %struct.address_space, %struct.list_head, %union.anon.101, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.98 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.99 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.101 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.96, %struct.list_head, %struct.list_head, %union.anon.97 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.spinlock, i32 }
%union.anon.96 = type { %struct.list_head }
%union.anon.97 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file = type { %union.anon.31, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.31 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.statx = type { i32, i32, i64, i32, i32, i32, i16, [1 x i16], i64, i64, i64, i64, %struct.statx_timestamp, %struct.statx_timestamp, %struct.statx_timestamp, %struct.statx_timestamp, i32, i32, i32, i32, i64, i64, [12 x i64] }
%struct.statx_timestamp = type { i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.87, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.87 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.44 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.44 = type { %struct.callback_head }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat64 = type { i64, [4 x i8], i32, i32, i32, i32, i32, i64, [4 x i8], i64, i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@__kstrtab_generic_fillattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fillattr = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fillattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fillattr to i32), ptr @__kstrtab_generic_fillattr, ptr @__kstrtabns_generic_fillattr }, section "___ksymtab+generic_fillattr", align 4
@__kstrtab_generic_fill_statx_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fill_statx_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fill_statx_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fill_statx_attr to i32), ptr @__kstrtab_generic_fill_statx_attr, ptr @__kstrtabns_generic_fill_statx_attr }, section "___ksymtab+generic_fill_statx_attr", align 4
@__kstrtab_vfs_getattr_nosec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_getattr_nosec = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_getattr_nosec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_getattr_nosec to i32), ptr @__kstrtab_vfs_getattr_nosec, ptr @__kstrtabns_vfs_getattr_nosec }, section "___ksymtab+vfs_getattr_nosec", align 4
@__kstrtab_vfs_getattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_getattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_getattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_getattr to i32), ptr @__kstrtab_vfs_getattr, ptr @__kstrtabns_vfs_getattr }, section "___ksymtab+vfs_getattr", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_newstat\00", [46 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__newstat = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__newstat, ptr @args__newstat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__newstat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__newstat, i64 20) }, ptr @event_enter__newstat, ptr @event_exit__newstat }, align 4
@event_enter__newstat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__newstat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__newstat = internal global ptr @event_enter__newstat, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_newstat\00", [47 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__newstat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__newstat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__newstat = internal global ptr @event_exit__newstat, section "_ftrace_events", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_newstat\00", [20 x i8] zeroinitializer }, align 32
@types__newstat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@args__newstat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__newstat = internal global ptr @__syscall_meta__newstat, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_newlstat\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__newlstat = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__newlstat, ptr @args__newlstat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__newlstat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__newlstat, i64 20) }, ptr @event_enter__newlstat, ptr @event_exit__newlstat }, align 4
@event_enter__newlstat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__newlstat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__newlstat = internal global ptr @event_enter__newlstat, section "_ftrace_events", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_newlstat\00", [46 x i8] zeroinitializer }, align 32
@event_exit__newlstat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__newlstat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__newlstat = internal global ptr @event_exit__newlstat, section "_ftrace_events", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_newlstat\00", [19 x i8] zeroinitializer }, align 32
@types__newlstat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@args__newlstat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__newlstat = internal global ptr @__syscall_meta__newlstat, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_newfstat\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__newfstat = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__newfstat, ptr @args__newfstat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__newfstat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__newfstat, i64 20) }, ptr @event_enter__newfstat, ptr @event_exit__newfstat }, align 4
@event_enter__newfstat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__newfstat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__newfstat = internal global ptr @event_enter__newfstat, section "_ftrace_events", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_newfstat\00", [46 x i8] zeroinitializer }, align 32
@event_exit__newfstat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__newfstat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__newfstat = internal global ptr @event_exit__newfstat, section "_ftrace_events", align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_newfstat\00", [19 x i8] zeroinitializer }, align 32
@types__newfstat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.31], [24 x i8] zeroinitializer }, align 32
@args__newfstat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__newfstat = internal global ptr @__syscall_meta__newfstat, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_readlinkat\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__readlinkat = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 4, ptr @types__readlinkat, ptr @args__readlinkat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__readlinkat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__readlinkat, i64 20) }, ptr @event_enter__readlinkat, ptr @event_exit__readlinkat }, align 4
@event_enter__readlinkat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__readlinkat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__readlinkat = internal global ptr @event_enter__readlinkat, section "_ftrace_events", align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_readlinkat\00", [44 x i8] zeroinitializer }, align 32
@event_exit__readlinkat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__readlinkat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__readlinkat = internal global ptr @event_exit__readlinkat, section "_ftrace_events", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_readlinkat\00", [17 x i8] zeroinitializer }, align 32
@types__readlinkat = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.30, ptr @.str.43, ptr @.str.42], [16 x i8] zeroinitializer }, align 32
@args__readlinkat = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__readlinkat = internal global ptr @__syscall_meta__readlinkat, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_readlink\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__readlink = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 3, ptr @types__readlink, ptr @args__readlink, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__readlink, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__readlink, i64 20) }, ptr @event_enter__readlink, ptr @event_exit__readlink }, align 4
@event_enter__readlink = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__readlink, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__readlink = internal global ptr @event_enter__readlink, section "_ftrace_events", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_readlink\00", [46 x i8] zeroinitializer }, align 32
@event_exit__readlink = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__readlink, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__readlink = internal global ptr @event_exit__readlink, section "_ftrace_events", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_readlink\00", [19 x i8] zeroinitializer }, align 32
@types__readlink = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.43, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@args__readlink = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.48, ptr @.str.46, ptr @.str.47], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__readlink = internal global ptr @__syscall_meta__readlink, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_stat64\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__stat64 = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 2, ptr @types__stat64, ptr @args__stat64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__stat64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__stat64, i64 20) }, ptr @event_enter__stat64, ptr @event_exit__stat64 }, align 4
@event_enter__stat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__stat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__stat64 = internal global ptr @event_enter__stat64, section "_ftrace_events", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_stat64\00", [16 x i8] zeroinitializer }, align 32
@event_exit__stat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__stat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__stat64 = internal global ptr @event_exit__stat64, section "_ftrace_events", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_stat64\00", [21 x i8] zeroinitializer }, align 32
@types__stat64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@args__stat64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__stat64 = internal global ptr @__syscall_meta__stat64, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_lstat64\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__lstat64 = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 2, ptr @types__lstat64, ptr @args__lstat64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lstat64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lstat64, i64 20) }, ptr @event_enter__lstat64, ptr @event_exit__lstat64 }, align 4
@event_enter__lstat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__lstat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lstat64 = internal global ptr @event_enter__lstat64, section "_ftrace_events", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_lstat64\00", [47 x i8] zeroinitializer }, align 32
@event_exit__lstat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__lstat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lstat64 = internal global ptr @event_exit__lstat64, section "_ftrace_events", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_lstat64\00", [20 x i8] zeroinitializer }, align 32
@types__lstat64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.30, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@args__lstat64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lstat64 = internal global ptr @__syscall_meta__lstat64, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_fstat64\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__fstat64 = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 2, ptr @types__fstat64, ptr @args__fstat64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fstat64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fstat64, i64 20) }, ptr @event_enter__fstat64, ptr @event_exit__fstat64 }, align 4
@event_enter__fstat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__fstat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fstat64 = internal global ptr @event_enter__fstat64, section "_ftrace_events", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_fstat64\00", [47 x i8] zeroinitializer }, align 32
@event_exit__fstat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__fstat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fstat64 = internal global ptr @event_exit__fstat64, section "_ftrace_events", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_fstat64\00", [20 x i8] zeroinitializer }, align 32
@types__fstat64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.51, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@args__fstat64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.41, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fstat64 = internal global ptr @__syscall_meta__fstat64, section "__syscalls_metadata", align 4
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_fstatat64\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__fstatat64 = internal global %struct.syscall_metadata { ptr @.str.26, i32 -1, i32 4, ptr @types__fstatat64, ptr @args__fstatat64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fstatat64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fstatat64, i64 20) }, ptr @event_enter__fstatat64, ptr @event_exit__fstatat64 }, align 4
@event_enter__fstatat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__fstatat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fstatat64 = internal global ptr @event_enter__fstatat64, section "_ftrace_events", align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_fstatat64\00", [45 x i8] zeroinitializer }, align 32
@event_exit__fstatat64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__fstatat64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fstatat64 = internal global ptr @event_exit__fstatat64, section "_ftrace_events", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fstatat64\00", [18 x i8] zeroinitializer }, align 32
@types__fstatat64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.30, ptr @.str.49, ptr @.str.42], [16 x i8] zeroinitializer }, align 32
@args__fstatat64 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.44, ptr @.str.32, ptr @.str.33, ptr @.str.52], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fstatat64 = internal global ptr @__syscall_meta__fstatat64, section "__syscalls_metadata", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_statx\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__statx = internal global %struct.syscall_metadata { ptr @.str.29, i32 -1, i32 5, ptr @types__statx, ptr @args__statx, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__statx, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__statx, i64 20) }, ptr @event_enter__statx, ptr @event_exit__statx }, align 4
@event_enter__statx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.81 { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__statx, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__statx = internal global ptr @event_enter__statx, section "_ftrace_events", align 4
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_statx\00", [17 x i8] zeroinitializer }, align 32
@event_exit__statx = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.81 { ptr @.str.28 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.83 zeroinitializer, ptr @__syscall_meta__statx, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__statx = internal global ptr @event_exit__statx, section "_ftrace_events", align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_statx\00", [22 x i8] zeroinitializer }, align 32
@types__statx = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.42, ptr @.str.30, ptr @.str.54, ptr @.str.40, ptr @.str.55], [44 x i8] zeroinitializer }, align 32
@args__statx = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.32, ptr @.str.56, ptr @.str.57, ptr @.str.58], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__statx = internal global ptr @__syscall_meta__statx, section "__syscalls_metadata", align 4
@__kstrtab___inode_add_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns___inode_add_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab___inode_add_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inode_add_bytes to i32), ptr @__kstrtab___inode_add_bytes, ptr @__kstrtabns___inode_add_bytes }, section "___ksymtab+__inode_add_bytes", align 4
@__kstrtab_inode_add_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_add_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_add_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_add_bytes to i32), ptr @__kstrtab_inode_add_bytes, ptr @__kstrtabns_inode_add_bytes }, section "___ksymtab+inode_add_bytes", align 4
@__kstrtab___inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns___inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab___inode_sub_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inode_sub_bytes to i32), ptr @__kstrtab___inode_sub_bytes, ptr @__kstrtabns___inode_sub_bytes }, section "___ksymtab+__inode_sub_bytes", align 4
@__kstrtab_inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_sub_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_sub_bytes to i32), ptr @__kstrtab_inode_sub_bytes, ptr @__kstrtabns_inode_sub_bytes }, section "___ksymtab+inode_sub_bytes", align 4
@__kstrtab_inode_get_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_get_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_get_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_get_bytes to i32), ptr @__kstrtab_inode_get_bytes, ptr @__kstrtabns_inode_get_bytes }, section "___ksymtab+inode_get_bytes", align 4
@__kstrtab_inode_set_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_set_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_set_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_set_bytes to i32), ptr @__kstrtab_inode_set_bytes, ptr @__kstrtabns_inode_set_bytes }, section "___ksymtab+inode_set_bytes", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"struct stat *\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"filename\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"statbuf\00", [24 x i8] zeroinitializer }, align 32
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"char *\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfd\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pathname\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bufsiz\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"struct stat64 *\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flag\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unsigned\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"struct statx *\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"buffer\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"event_enter__newstat\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c"event_exit__newstat\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"types__newstat\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"args__newstat\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"event_enter__newlstat\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"event_exit__newlstat\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"types__newlstat\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [15 x i8] c"args__newlstat\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 392, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"event_enter__newfstat\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [21 x i8] c"event_exit__newfstat\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"types__newfstat\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"args__newfstat\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"event_enter__readlinkat\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"event_exit__readlinkat\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [18 x i8] c"types__readlinkat\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"args__readlinkat\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"event_enter__readlink\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"event_exit__readlink\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"types__readlink\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"args__readlink\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"event_enter__stat64\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"event_exit__stat64\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"types__stat64\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"args__stat64\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"event_enter__lstat64\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"event_exit__lstat64\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [15 x i8] c"types__lstat64\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"args__lstat64\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 534, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"event_enter__fstat64\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"event_exit__fstat64\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [15 x i8] c"types__fstat64\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"args__fstat64\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [23 x i8] c"event_enter__fstatat64\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [22 x i8] c"event_exit__fstatat64\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"types__fstatat64\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [16 x i8] c"args__fstatat64\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"event_enter__statx\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"event_exit__statx\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"types__statx\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [12 x i8] c"args__statx\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 381, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 174, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 419, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 467, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 473, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 522, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 546, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 557, i32 1 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private constant [13 x i8] c"../fs/stat.c\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 634, i32 1 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @__event_enter__fstat64, ptr @__event_enter__fstatat64, ptr @__event_enter__lstat64, ptr @__event_enter__newfstat, ptr @__event_enter__newlstat, ptr @__event_enter__newstat, ptr @__event_enter__readlink, ptr @__event_enter__readlinkat, ptr @__event_enter__stat64, ptr @__event_enter__statx, ptr @__event_exit__fstat64, ptr @__event_exit__fstatat64, ptr @__event_exit__lstat64, ptr @__event_exit__newfstat, ptr @__event_exit__newlstat, ptr @__event_exit__newstat, ptr @__event_exit__readlink, ptr @__event_exit__readlinkat, ptr @__event_exit__stat64, ptr @__event_exit__statx, ptr @__ksymtab___inode_add_bytes, ptr @__ksymtab___inode_sub_bytes, ptr @__ksymtab_generic_fill_statx_attr, ptr @__ksymtab_generic_fillattr, ptr @__ksymtab_inode_add_bytes, ptr @__ksymtab_inode_get_bytes, ptr @__ksymtab_inode_set_bytes, ptr @__ksymtab_inode_sub_bytes, ptr @__ksymtab_vfs_getattr, ptr @__ksymtab_vfs_getattr_nosec, ptr @__p_syscall_meta__fstat64, ptr @__p_syscall_meta__fstatat64, ptr @__p_syscall_meta__lstat64, ptr @__p_syscall_meta__newfstat, ptr @__p_syscall_meta__newlstat, ptr @__p_syscall_meta__newstat, ptr @__p_syscall_meta__readlink, ptr @__p_syscall_meta__readlinkat, ptr @__p_syscall_meta__stat64, ptr @__p_syscall_meta__statx, ptr @__syscall_meta__fstat64, ptr @__syscall_meta__fstatat64, ptr @__syscall_meta__lstat64, ptr @__syscall_meta__newfstat, ptr @__syscall_meta__newlstat, ptr @__syscall_meta__newstat, ptr @__syscall_meta__readlink, ptr @__syscall_meta__readlinkat, ptr @__syscall_meta__stat64, ptr @__syscall_meta__statx, ptr @event_enter__fstat64, ptr @event_enter__fstatat64, ptr @event_enter__lstat64, ptr @event_enter__newfstat, ptr @event_enter__newlstat, ptr @event_enter__newstat, ptr @event_enter__readlink, ptr @event_enter__readlinkat, ptr @event_enter__stat64, ptr @event_enter__statx, ptr @event_exit__fstat64, ptr @event_exit__fstatat64, ptr @event_exit__lstat64, ptr @event_exit__newfstat, ptr @event_exit__newlstat, ptr @event_exit__newstat, ptr @event_exit__readlink, ptr @event_exit__readlinkat, ptr @event_exit__stat64, ptr @event_exit__statx, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__newstat, ptr @args__newstat, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__newlstat, ptr @args__newlstat, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__newfstat, ptr @args__newfstat, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__readlinkat, ptr @args__readlinkat, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__readlink, ptr @args__readlink, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__stat64, ptr @args__stat64, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__lstat64, ptr @args__lstat64, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__fstat64, ptr @args__fstat64, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @types__fstatat64, ptr @args__fstatat64, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @types__statx, ptr @args__statx, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__newstat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__newstat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__newstat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__newstat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__newlstat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__newlstat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__newlstat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__newlstat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__newfstat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__newfstat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__newfstat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__newfstat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__readlinkat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__readlinkat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__readlinkat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__readlinkat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__readlink to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__readlink to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__readlink to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__readlink to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__stat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__stat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__stat64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__stat64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lstat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lstat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lstat64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lstat64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fstat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fstat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fstat64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fstat64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fstatat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fstatat64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fstatat64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fstatat64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__statx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__statx to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__statx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__statx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_newstat = dso_local alias i32 (ptr, ptr), ptr @__se_sys_newstat
@sys_newlstat = dso_local alias i32 (ptr, ptr), ptr @__se_sys_newlstat
@sys_newfstat = dso_local alias i32 (i32, ptr), ptr @__se_sys_newfstat
@sys_readlinkat = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_readlinkat
@sys_readlink = dso_local alias i32 (ptr, ptr, i32), ptr @__se_sys_readlink
@sys_stat64 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_stat64
@sys_lstat64 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_lstat64
@sys_fstat64 = dso_local alias i32 (i32, ptr), ptr @__se_sys_fstat64
@sys_fstatat64 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_fstatat64
@sys_statx = dso_local alias i32 (i32, ptr, i32, i32, ptr), ptr @__se_sys_statx

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_fillattr(ptr noundef %mnt_userns, ptr noundef %inode, ptr nocapture noundef writeonly %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_dev, align 8
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %5 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %6 to i64
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %7 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv, ptr %ino, align 8
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %mode, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %14 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %nlink, align 8
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %15 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 53
  %16 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %18 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %17, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

entry.i_uid_into_mnt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %entry
  %cmp.i21.i.i = icmp eq ptr %17, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %17, [1 x i32] %19) #8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #8
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %entry.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %entry.i_uid_into_mnt.exit_crit_edge ]
  %20 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.sroa.0.0.i.i, ptr %uid, align 8
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_user_ns.i.i32 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 53
  %23 = ptrtoint ptr %s_user_ns.i.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_user_ns.i.i32, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %25 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack.i33 = load i32, ptr %i_gid.i, align 8
  %26 = insertvalue [1 x i32] undef, i32 %.unpack.i33, 0
  %cmp.i.i.i35 = icmp eq ptr %24, %mnt_userns
  %spec.select.i.i.i36 = or i1 %cmp.i.i.i.i, %cmp.i.i.i35
  br i1 %spec.select.i.i.i36, label %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i38

i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge: ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_gid_into_mnt.exit

if.end.i.i38:                                     ; preds = %i_uid_into_mnt.exit
  %cmp.i21.i.i37 = icmp eq ptr %24, @init_user_ns
  br i1 %cmp.i21.i.i37, label %if.end.i.i38.if.end7.i.i42_crit_edge, label %if.else.i.i40

if.end.i.i38.if.end7.i.i42_crit_edge:             ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i42

if.else.i.i40:                                    ; preds = %if.end.i.i38
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i39 = tail call i32 @from_kgid(ptr noundef %24, [1 x i32] %26) #8
  br label %if.end7.i.i42

if.end7.i.i42:                                    ; preds = %if.else.i.i40, %if.end.i.i38.if.end7.i.i42_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i39, %if.else.i.i40 ], [ %.unpack.i33, %if.end.i.i38.if.end7.i.i42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i41 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i41, label %if.end7.i.i42.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i44

if.end7.i.i42.i_gid_into_mnt.exit_crit_edge:      ; preds = %if.end7.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %i_gid_into_mnt.exit

if.end9.i.i44:                                    ; preds = %if.end7.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i43 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #8
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i44, %if.end7.i.i42.i_gid_into_mnt.exit_crit_edge, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i45 = phi i32 [ %call10.i.i43, %if.end9.i.i44 ], [ -1, %if.end7.i.i42.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i33, %i_uid_into_mnt.exit.i_gid_into_mnt.exit_crit_edge ]
  %27 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.sroa.0.0.i.i45, ptr %gid, align 4
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %28 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_rdev, align 8
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rdev, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %i_gid_into_mnt.exit
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !192
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %32 = tail call ptr @llvm.returnaddress(i32 0) #8
  %33 = ptrtoint ptr %32 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %33) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %33) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call ptr @llvm.returnaddress(i32 0) #8
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %35) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %35) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !193
  %and.i.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !194

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #8, !srcloc !195
  %37 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !197
  %39 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %40, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %38, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %40, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !198
  %41 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !199
  %43 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %44, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %45 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %42, ptr %size, align 8
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %46 = call ptr @memcpy(ptr %atime, ptr %i_atime, i32 16)
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %47 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %48 = call ptr @memcpy(ptr %ctime, ptr %i_ctime, i32 16)
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %49 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %50 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %51 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shl.i, ptr %blksize, align 4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %52 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_blocks, align 8
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %54 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %blocks, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @generic_fill_statx_attr(ptr nocapture noundef readonly %inode, ptr nocapture noundef %stat) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %2 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %attributes, align 8
  %or = or i64 %3, 16
  store i64 %or, ptr %attributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_flags, align 4
  %and2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %attributes5 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %6 = ptrtoint ptr %attributes5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %attributes5, align 8
  %or6 = or i64 %7, 32
  store i64 %or6, ptr %attributes5, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %8 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attributes_mask, align 8
  %or8 = or i64 %9, 48
  store i64 %or8, ptr %attributes_mask, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_getattr_nosec(ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %4 = call ptr @memset(ptr %stat, i32 0, i32 144)
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2047, ptr %stat, align 8
  %and = and i32 %query_flags, 24576
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags, align 4
  %and1 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %spec.store.select = select i1 %tobool.not, i32 2047, i32 2015
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select, ptr %stat, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 4
  %and4 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %entry.if.end15_crit_edge, label %if.then6

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %13 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %attributes, align 8
  %or7 = or i64 %14, 4096
  store i64 %or7, ptr %attributes, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %entry.if.end15_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %15 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %attributes_mask, align 8
  %or16 = or i64 %16, 2101248
  store i64 %or16, ptr %attributes_mask, align 8
  %17 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %i_op = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_op, align 8
  %getattr = getelementptr inbounds %struct.inode_operations, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %getattr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %getattr, align 8
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 %24(ptr noundef %20, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %and) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @generic_fillattr(ptr noundef %20, ptr noundef %3, ptr noundef %stat)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then19
  %retval.0 = phi i32 [ %call22, %if.then19 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_getattr(ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_inode_getattr(ptr noundef %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %4 = call ptr @memset(ptr %stat, i32 0, i32 144)
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2047, ptr %stat, align 8
  %and.i = and i32 %query_flags, 24576
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_flags.i, align 4
  %and1.i = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 2047, i32 2015
  %10 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select.i, ptr %stat, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags.i, align 4
  %and4.i = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.if.end15.i_crit_edge, label %if.then6.i

if.end.if.end15.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %attributes.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %13 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %attributes.i, align 8
  %or7.i = or i64 %14, 4096
  store i64 %or7.i, ptr %attributes.i, align 8
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then6.i, %if.end.if.end15.i_crit_edge
  %attributes_mask.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %15 = ptrtoint ptr %attributes_mask.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %attributes_mask.i, align 8
  %or16.i = or i64 %16, 2101248
  store i64 %or16.i, ptr %attributes_mask.i, align 8
  %17 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %path, align 4
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %i_op.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %i_op.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_op.i, align 8
  %getattr.i = getelementptr inbounds %struct.inode_operations, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %getattr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %getattr.i, align 8
  %tobool18.not.i = icmp eq ptr %24, null
  br i1 %tobool18.not.i, label %if.end23.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i = tail call i32 %24(ptr noundef %20, ptr noundef %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %and.i) #8
  br label %cleanup

if.end23.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @generic_fillattr(ptr noundef %20, ptr noundef %3, ptr noundef %stat) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23.i, %if.then19.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call22.i, %if.then19.i ], [ 0, %if.end23.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_getattr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fstat(i32 noundef %fd, ptr noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget_raw(i32 noundef %fd) #8, !noalias !201
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call.i4 = tail call i32 @security_inode_getattr(ptr noundef %f_path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.vfs_getattr.exit_crit_edge

if.end.vfs_getattr.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfs_getattr.exit

if.end.i:                                         ; preds = %if.end
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i.i.i, align 8
  %5 = call ptr @memset(ptr %stat, i32 0, i32 144)
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2047, ptr %stat, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_flags.i.i, align 4
  %and1.i.i5 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i5)
  %tobool.not.i.i = icmp eq i32 %and1.i.i5, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 2047, i32 2015
  %11 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select.i.i, ptr %stat, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_flags.i.i, align 4
  %and4.i.i = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.if.end15.i.i_crit_edge, label %if.then6.i.i

if.end.i.if.end15.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then6.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %attributes.i.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %14 = ptrtoint ptr %attributes.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %attributes.i.i, align 8
  %or7.i.i = or i64 %15, 4096
  store i64 %or7.i.i, ptr %attributes.i.i, align 8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.if.end15.i.i_crit_edge
  %attributes_mask.i.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %16 = ptrtoint ptr %attributes_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %attributes_mask.i.i, align 8
  %or16.i.i = or i64 %17, 2101248
  store i64 %or16.i.i, ptr %attributes_mask.i.i, align 8
  %18 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_path, align 4
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  %22 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_op.i.i, align 8
  %getattr.i.i = getelementptr inbounds %struct.inode_operations, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %getattr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %getattr.i.i, align 8
  %tobool18.not.i.i = icmp eq ptr %25, null
  br i1 %tobool18.not.i.i, label %if.end23.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i.i = tail call i32 %25(ptr noundef %21, ptr noundef %f_path, ptr noundef %stat, i32 noundef 2047, i32 noundef 0) #8
  br label %vfs_getattr.exit

if.end23.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @generic_fillattr(ptr noundef %21, ptr noundef %4, ptr noundef %stat) #8
  br label %vfs_getattr.exit

vfs_getattr.exit:                                 ; preds = %if.end23.i.i, %if.then19.i.i, %if.end.vfs_getattr.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i4, %if.end.vfs_getattr.exit_crit_edge ], [ %call22.i.i, %if.then19.i.i ], [ 0, %if.end23.i.i ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i6 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i6, label %vfs_getattr.exit.cleanup_crit_edge, label %if.then.i

vfs_getattr.exit.cleanup_crit_edge:               ; preds = %vfs_getattr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %vfs_getattr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fput(ptr noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %vfs_getattr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %retval.0.i, %vfs_getattr.exit.cleanup_crit_edge ], [ %retval.0.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fstatat(i32 noundef %dfd, ptr noundef %filename, ptr noundef %stat, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %flags, 2048
  %call = tail call fastcc i32 @vfs_statx(i32 noundef %dfd, ptr noundef %filename, i32 noundef %or, ptr noundef %stat, i32 noundef 2047)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfs_statx(i32 noundef %dfd, ptr noundef %filename, i32 noundef %flags, ptr noundef %stat, i32 noundef %request_mask) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !204
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !204
  %and = and i32 %flags, -30977
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %flags, 8
  %and1.lobit = and i32 %and1, 1
  %and5 = lshr i32 %flags, 9
  %3 = and i32 %and5, 4
  %4 = or i32 %and1.lobit, %3
  %and10 = shl nuw nsw i32 %flags, 2
  %5 = and i32 %and10, 16384
  %6 = or i32 %4, %5
  %7 = xor i32 %6, 5
  %call.i51 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %7, ptr noundef nonnull %path, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool15.not52 = icmp eq i32 %call.i51, 0
  br i1 %tobool15.not52, label %if.end17.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17.lr.ph:                                   ; preds = %if.end
  %and.i.i = and i32 %flags, 24576
  %attributes.i.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %attributes_mask.i.i = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %mnt_id20 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 17
  %8 = or i32 %7, 32
  br label %if.end17

retry:                                            ; preds = %if.end26
  %call.i = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %8, ptr noundef nonnull %path, ptr noundef null) #8
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %retry.if.end17_crit_edge, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

retry.if.end17_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %retry.if.end17_crit_edge, %if.end17.lr.ph
  %lookup_flags.353 = phi i32 [ %7, %if.end17.lr.ph ], [ %8, %retry.if.end17_crit_edge ]
  %call.i49 = call i32 @security_inode_getattr(ptr noundef nonnull %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end17.vfs_getattr.exit_crit_edge

if.end17.vfs_getattr.exit_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfs_getattr.exit

if.end.i:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i.i, align 8
  %13 = call ptr @memset(ptr %stat, i32 0, i32 144)
  %14 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2047, ptr %stat, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_flags.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_flags.i.i, align 4
  %and1.i.i = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 2047, i32 2015
  %19 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.i.i, ptr %stat, align 8
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags.i.i, align 4
  %and4.i.i = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.if.end15.i.i_crit_edge, label %if.then6.i.i

if.end.i.if.end15.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then6.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %attributes.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %attributes.i.i, align 8
  %or7.i.i = or i64 %23, 4096
  store i64 %or7.i.i, ptr %attributes.i.i, align 8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.if.end15.i.i_crit_edge
  %24 = ptrtoint ptr %attributes_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %attributes_mask.i.i, align 8
  %or16.i.i = or i64 %25, 2101248
  store i64 %or16.i.i, ptr %attributes_mask.i.i, align 8
  %26 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path, align 4
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %i_op.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 7
  %30 = ptrtoint ptr %i_op.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_op.i.i, align 8
  %getattr.i.i = getelementptr inbounds %struct.inode_operations, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %getattr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %getattr.i.i, align 8
  %tobool18.not.i.i = icmp eq ptr %33, null
  br i1 %tobool18.not.i.i, label %if.end23.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call22.i.i = call i32 %33(ptr noundef %29, ptr noundef nonnull %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %and.i.i) #8
  br label %vfs_getattr.exit

if.end23.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @generic_fillattr(ptr noundef %29, ptr noundef %12, ptr noundef %stat) #8
  br label %vfs_getattr.exit

vfs_getattr.exit:                                 ; preds = %if.end23.i.i, %if.then19.i.i, %if.end17.vfs_getattr.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i49, %if.end17.vfs_getattr.exit_crit_edge ], [ %call22.i.i, %if.then19.i.i ], [ 0, %if.end23.i.i ]
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %path, align 4
  %mnt_id = getelementptr i8, ptr %35, i32 132
  %36 = ptrtoint ptr %mnt_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mnt_id, align 4
  %conv = sext i32 %37 to i64
  %38 = ptrtoint ptr %mnt_id20 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv, ptr %mnt_id20, align 8
  %39 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stat, align 8
  %or21 = or i32 %40, 4096
  store i32 %or21, ptr %stat, align 8
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %35, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %42, %44
  br i1 %cmp, label %if.then24, label %vfs_getattr.exit.if.end26_crit_edge

vfs_getattr.exit.if.end26_crit_edge:              ; preds = %vfs_getattr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %vfs_getattr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %attributes.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %attributes.i.i, align 8
  %or25 = or i64 %46, 8192
  store i64 %or25, ptr %attributes.i.i, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %vfs_getattr.exit.if.end26_crit_edge
  %47 = ptrtoint ptr %attributes_mask.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %attributes_mask.i.i, align 8
  %or27 = or i64 %48, 8192
  store i64 %or27, ptr %attributes_mask.i.i, align 8
  call void @path_put(ptr noundef nonnull %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -116
  %and.i = and i32 %lookup_flags.353, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i50 = icmp eq i32 %and.i, 0
  %49 = and i1 %tobool.not.i50, %cmp.i
  br i1 %49, label %retry, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26.cleanup_crit_edge, %retry.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i51, %if.end.cleanup_crit_edge ], [ %retval.0.i, %if.end26.cleanup_crit_edge ], [ %call.i, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newstat(i32 noundef %filename, i32 noundef %statbuf) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %1 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %call.i.i.i = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %0, i32 noundef 2048, ptr noundef nonnull %stat.i, i32 noundef 2047) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_newstat.exit_crit_edge

entry.__do_sys_newstat.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_newstat.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat(ptr noundef nonnull %stat.i, ptr noundef %2) #8
  br label %__do_sys_newstat.exit

__do_sys_newstat.exit:                            ; preds = %if.end.i, %entry.__do_sys_newstat.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i.i.i, %entry.__do_sys_newstat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newlstat(i32 noundef %filename, i32 noundef %statbuf) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %1 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %call.i.i.i = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %0, i32 noundef 2304, ptr noundef nonnull %stat.i, i32 noundef 2047) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_newlstat.exit_crit_edge

entry.__do_sys_newlstat.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_newlstat.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat(ptr noundef nonnull %stat.i, ptr noundef %2) #8
  br label %__do_sys_newlstat.exit

__do_sys_newlstat.exit:                           ; preds = %if.end.i, %entry.__do_sys_newlstat.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i.i.i, %entry.__do_sys_newlstat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newfstat(i32 noundef %fd, i32 noundef %statbuf) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %0 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %call.i = call i32 @vfs_fstat(i32 noundef %fd, ptr noundef nonnull %stat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__do_sys_newfstat.exit_crit_edge

entry.__do_sys_newfstat.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_newfstat.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat(ptr noundef nonnull %stat.i, ptr noundef %1) #8
  br label %__do_sys_newfstat.exit

__do_sys_newfstat.exit:                           ; preds = %if.then.i, %entry.__do_sys_newfstat.exit_crit_edge
  %error.0.i = phi i32 [ %call.i, %entry.__do_sys_newfstat.exit_crit_edge ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readlinkat(i32 noundef %dfd, i32 noundef %pathname, i32 noundef %buf, i32 noundef %bufsiz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %1 = inttoptr i32 %buf to ptr
  %call.i = tail call fastcc i32 @do_readlinkat(i32 noundef %dfd, ptr noundef %0, ptr noundef %1, i32 noundef %bufsiz) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readlink(i32 noundef %path, i32 noundef %buf, i32 noundef %bufsiz) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %path to ptr
  %1 = inttoptr i32 %buf to ptr
  %call.i = tail call fastcc i32 @do_readlinkat(i32 noundef -100, ptr noundef %0, ptr noundef %1, i32 noundef %bufsiz) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_stat64(i32 noundef %filename, i32 noundef %statbuf) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %1 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %call.i.i.i = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %0, i32 noundef 2048, ptr noundef nonnull %stat.i, i32 noundef 2047) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__do_sys_stat64.exit_crit_edge

entry.__do_sys_stat64.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_stat64.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %stat.i, ptr noundef %2) #8
  br label %__do_sys_stat64.exit

__do_sys_stat64.exit:                             ; preds = %if.then.i, %entry.__do_sys_stat64.exit_crit_edge
  %error.0.i = phi i32 [ %call.i.i.i, %entry.__do_sys_stat64.exit_crit_edge ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lstat64(i32 noundef %filename, i32 noundef %statbuf) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %1 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %call.i.i.i = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %0, i32 noundef 2304, ptr noundef nonnull %stat.i, i32 noundef 2047) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__do_sys_lstat64.exit_crit_edge

entry.__do_sys_lstat64.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_lstat64.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %stat.i, ptr noundef %2) #8
  br label %__do_sys_lstat64.exit

__do_sys_lstat64.exit:                            ; preds = %if.then.i, %entry.__do_sys_lstat64.exit_crit_edge
  %error.0.i = phi i32 [ %call.i.i.i, %entry.__do_sys_lstat64.exit_crit_edge ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstat64(i32 noundef %fd, i32 noundef %statbuf) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %0 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %call.i = call i32 @vfs_fstat(i32 noundef %fd, ptr noundef nonnull %stat.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__do_sys_fstat64.exit_crit_edge

entry.__do_sys_fstat64.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_fstat64.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %stat.i, ptr noundef %1) #8
  br label %__do_sys_fstat64.exit

__do_sys_fstat64.exit:                            ; preds = %if.then.i, %entry.__do_sys_fstat64.exit_crit_edge
  %error.0.i = phi i32 [ %call.i, %entry.__do_sys_fstat64.exit_crit_edge ], [ %call1.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstatat64(i32 noundef %dfd, i32 noundef %filename, i32 noundef %statbuf, i32 noundef %flag) #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #8
  %1 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %or.i.i = or i32 %flag, 2048
  %call.i.i = call fastcc i32 @vfs_statx(i32 noundef %dfd, ptr noundef %0, i32 noundef %or.i.i, ptr noundef nonnull %stat.i, i32 noundef 2047) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_fstatat64.exit_crit_edge

entry.__do_sys_fstatat64.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_fstatat64.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = inttoptr i32 %statbuf to ptr
  %call1.i = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %stat.i, ptr noundef %2) #8
  br label %__do_sys_fstatat64.exit

__do_sys_fstatat64.exit:                          ; preds = %if.end.i, %entry.__do_sys_fstatat64.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i.i, %entry.__do_sys_fstatat64.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_statx(i32 noundef %dfd, ptr noundef %filename, i32 noundef %flags, i32 noundef %mask, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #8
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not = icmp slt i32 %mask, 0
  %and1 = and i32 %flags, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and1)
  %cmp = icmp eq i32 %and1, 24576
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call = call fastcc i32 @vfs_statx(i32 noundef %dfd, ptr noundef %filename, i32 noundef %flags, ptr noundef nonnull %stat, i32 noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call fastcc i32 @cp_statx(ptr noundef nonnull %stat, ptr noundef %buffer)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp_statx(ptr noundef readonly %stat, ptr noundef %buffer) unnamed_addr #4 align 64 {
entry:
  %tmp = alloca %struct.statx, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp) #8
  %0 = getelementptr inbounds i8, ptr %tmp, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 240)
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stat, align 8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp, align 8
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %5 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %blksize, align 4
  %stx_blksize = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 1
  %7 = ptrtoint ptr %stx_blksize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stx_blksize, align 4
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %8 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attributes, align 8
  %stx_attributes = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 2
  %10 = ptrtoint ptr %stx_attributes to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %stx_attributes, align 8
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %11 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlink, align 8
  %stx_nlink = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 3
  %13 = ptrtoint ptr %stx_nlink to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %stx_nlink, align 8
  %14 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %18 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %22 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack = load i32, ptr %uid, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call3 = tail call i32 @from_kuid_munged(ptr noundef %21, [1 x i32] %23) #8
  %stx_uid = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 4
  %24 = ptrtoint ptr %stx_uid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3, ptr %stx_uid, align 4
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %cred11 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred11, align 16
  %user_ns12 = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %user_ns12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns12, align 4
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %31 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack65 = load i32, ptr %gid, align 4
  %32 = insertvalue [1 x i32] undef, i32 %.unpack65, 0
  %call14 = tail call i32 @from_kgid_munged(ptr noundef %30, [1 x i32] %32) #8
  %stx_gid = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 5
  %33 = ptrtoint ptr %stx_gid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call14, ptr %stx_gid, align 8
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mode, align 4
  %stx_mode = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 6
  %36 = ptrtoint ptr %stx_mode to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %stx_mode, align 4
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %37 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ino, align 8
  %stx_ino = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 8
  %39 = ptrtoint ptr %stx_ino to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %stx_ino, align 8
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %40 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %size, align 8
  %stx_size = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 9
  %42 = ptrtoint ptr %stx_size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %stx_size, align 8
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %43 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %blocks, align 8
  %stx_blocks = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 10
  %45 = ptrtoint ptr %stx_blocks to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %stx_blocks, align 8
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %46 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %attributes_mask, align 8
  %stx_attributes_mask = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 11
  %48 = ptrtoint ptr %stx_attributes_mask to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %stx_attributes_mask, align 8
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %49 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %atime, align 8
  %stx_atime = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 12
  %51 = ptrtoint ptr %stx_atime to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %stx_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tv_nsec, align 8
  %tv_nsec18 = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %tv_nsec18 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tv_nsec18, align 8
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  %55 = ptrtoint ptr %btime to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %btime, align 8
  %stx_btime = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 13
  %57 = ptrtoint ptr %stx_btime to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %stx_btime, align 8
  %tv_nsec22 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15, i32 1
  %58 = ptrtoint ptr %tv_nsec22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tv_nsec22, align 8
  %tv_nsec24 = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 13, i32 1
  %60 = ptrtoint ptr %tv_nsec24 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %tv_nsec24, align 8
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %61 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ctime, align 8
  %stx_ctime = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 14
  %63 = ptrtoint ptr %stx_ctime to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %stx_ctime, align 8
  %tv_nsec28 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %64 = ptrtoint ptr %tv_nsec28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tv_nsec28, align 8
  %tv_nsec30 = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %tv_nsec30 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %tv_nsec30, align 8
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %67 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mtime, align 8
  %stx_mtime = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 15
  %69 = ptrtoint ptr %stx_mtime to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %stx_mtime, align 8
  %tv_nsec34 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13, i32 1
  %70 = ptrtoint ptr %tv_nsec34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tv_nsec34, align 8
  %tv_nsec36 = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 15, i32 1
  %72 = ptrtoint ptr %tv_nsec36 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %tv_nsec36, align 8
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %73 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rdev, align 4
  %shr = lshr i32 %74, 20
  %stx_rdev_major = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 16
  %75 = ptrtoint ptr %stx_rdev_major to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr, ptr %stx_rdev_major, align 8
  %and = and i32 %74, 1048575
  %stx_rdev_minor = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 17
  %76 = ptrtoint ptr %stx_rdev_minor to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and, ptr %stx_rdev_minor, align 4
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dev, align 8
  %shr38 = lshr i32 %78, 20
  %stx_dev_major = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 18
  %79 = ptrtoint ptr %stx_dev_major to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shr38, ptr %stx_dev_major, align 8
  %and40 = and i32 %78, 1048575
  %stx_dev_minor = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 19
  %80 = ptrtoint ptr %stx_dev_minor to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and40, ptr %stx_dev_minor, align 4
  %mnt_id = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 17
  %81 = ptrtoint ptr %mnt_id to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %mnt_id, align 8
  %stx_mnt_id = getelementptr inbounds %struct.statx, ptr %tmp, i32 0, i32 20
  %83 = ptrtoint ptr %stx_mnt_id to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %stx_mnt_id, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %84 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 256, i32 -1226833920) #11, !srcloc !205
  %asmresult.i.i = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 256) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %tmp, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %85 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp) #8
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_statx(i32 noundef %dfd, i32 noundef %filename, i32 noundef %flags, i32 noundef %mask, i32 noundef %buffer) #0 align 64 {
entry:
  %stat.i.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %buffer to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i.i) #8
  %1 = call ptr @memset(ptr %stat.i.i, i32 255, i32 144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %tobool.not.i.i = icmp slt i32 %mask, 0
  %and1.i.i = and i32 %flags, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %and1.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i, 24576
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %entry.__do_sys_statx.exit_crit_edge, label %if.end3.i.i

entry.__do_sys_statx.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_statx.exit

if.end3.i.i:                                      ; preds = %entry
  %2 = inttoptr i32 %filename to ptr
  %call.i.i = call fastcc i32 @vfs_statx(i32 noundef %dfd, ptr noundef %2, i32 noundef %flags, ptr noundef nonnull %stat.i.i, i32 noundef %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end3.i.i.__do_sys_statx.exit_crit_edge

if.end3.i.i.__do_sys_statx.exit_crit_edge:        ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_statx.exit

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = call fastcc i32 @cp_statx(ptr noundef nonnull %stat.i.i, ptr noundef %0) #8
  br label %__do_sys_statx.exit

__do_sys_statx.exit:                              ; preds = %if.end6.i.i, %if.end3.i.i.__do_sys_statx.exit_crit_edge, %entry.__do_sys_statx.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call7.i.i, %if.end6.i.i ], [ -22, %entry.__do_sys_statx.exit_crit_edge ], [ %call.i.i, %if.end3.i.i.__do_sys_statx.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i.i) #8
  ret i32 %retval.0.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__inode_add_bytes(ptr nocapture noundef %inode, i64 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i64 %bytes, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks, align 8
  %add = add i64 %1, %shr
  store i64 %add, ptr %i_blocks, align 8
  %i_bytes = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %2 = ptrtoint ptr %i_bytes to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_bytes, align 4
  %4 = trunc i64 %bytes to i16
  %5 = and i16 %4, 511
  %conv2 = add i16 %3, %5
  store i16 %conv2, ptr %i_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %conv2)
  %cmp = icmp ugt i16 %conv2, 511
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i64 %add, 1
  %6 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %inc, ptr %i_blocks, align 8
  %sub = add i16 %conv2, -512
  %7 = ptrtoint ptr %i_bytes to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %sub, ptr %i_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_add_bytes(ptr noundef %inode, i64 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %shr.i = ashr i64 %bytes, 9
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks.i, align 8
  %add.i = add i64 %1, %shr.i
  store i64 %add.i, ptr %i_blocks.i, align 8
  %i_bytes.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %2 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_bytes.i, align 4
  %4 = trunc i64 %bytes to i16
  %5 = and i16 %4, 511
  %conv2.i = add i16 %3, %5
  store i16 %conv2.i, ptr %i_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %conv2.i)
  %cmp.i = icmp ugt i16 %conv2.i, 511
  br i1 %cmp.i, label %if.then.i, label %entry.__inode_add_bytes.exit_crit_edge

entry.__inode_add_bytes.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__inode_add_bytes.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i64 %add.i, 1
  %6 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %inc.i, ptr %i_blocks.i, align 8
  %sub.i = add i16 %conv2.i, -512
  %7 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %sub.i, ptr %i_bytes.i, align 4
  br label %__inode_add_bytes.exit

__inode_add_bytes.exit:                           ; preds = %if.then.i, %entry.__inode_add_bytes.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__inode_sub_bytes(ptr nocapture noundef %inode, i64 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i64 %bytes, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks, align 8
  %sub = sub i64 %1, %shr
  store i64 %sub, ptr %i_blocks, align 8
  %and = and i64 %bytes, 511
  %i_bytes = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %2 = ptrtoint ptr %i_bytes to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_bytes, align 4
  %conv = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv)
  %cmp = icmp ugt i64 %and, %conv
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i64 %sub, -1
  %4 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %dec, ptr %i_blocks, align 8
  %add = add i16 %3, 512
  %5 = ptrtoint ptr %i_bytes to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add, ptr %i_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %i_bytes to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_bytes, align 4
  %8 = trunc i64 %and to i16
  %conv9 = sub i16 %7, %8
  store i16 %conv9, ptr %i_bytes, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inode_sub_bytes(ptr noundef %inode, i64 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %shr.i = ashr i64 %bytes, 9
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks.i, align 8
  %sub.i = sub i64 %1, %shr.i
  store i64 %sub.i, ptr %i_blocks.i, align 8
  %and.i = and i64 %bytes, 511
  %i_bytes.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %2 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_bytes.i, align 4
  %conv.i = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i)
  %cmp.i = icmp ugt i64 %and.i, %conv.i
  br i1 %cmp.i, label %if.then.i, label %entry.__inode_sub_bytes.exit_crit_edge

entry.__inode_sub_bytes.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__inode_sub_bytes.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add i64 %sub.i, -1
  %4 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %dec.i, ptr %i_blocks.i, align 8
  %add.i = add i16 %3, 512
  %5 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %add.i, ptr %i_bytes.i, align 4
  br label %__inode_sub_bytes.exit

__inode_sub_bytes.exit:                           ; preds = %if.then.i, %entry.__inode_sub_bytes.exit_crit_edge
  %6 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_bytes.i, align 4
  %8 = trunc i64 %and.i to i16
  %conv9.i = sub i16 %7, %8
  store i16 %conv9.i, ptr %i_bytes.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @inode_get_bytes(ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #8
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_blocks.i, align 8
  %shl.i = shl i64 %1, 9
  %i_bytes.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %2 = ptrtoint ptr %i_bytes.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_bytes.i, align 4
  %conv.i = zext i16 %3 to i64
  %add.i = add i64 %shl.i, %conv.i
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #8
  ret i64 %add.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @inode_set_bytes(ptr nocapture noundef writeonly %inode, i64 noundef %bytes) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i64 %bytes, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shr, ptr %i_blocks, align 8
  %1 = trunc i64 %bytes to i16
  %conv = and i16 %1, 511
  %i_bytes = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 19
  %2 = ptrtoint ptr %i_bytes to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %i_bytes, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp_new_stat(ptr nocapture noundef readonly %stat, ptr noundef %statbuf) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.stat, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp) #8
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev, align 8
  %2 = and i32 %1, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rdev, align 4
  %6 = and i32 %5, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %9)
  %cmp = icmp sgt i64 %9, 2147483647
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %10 = call ptr @memset(ptr %tmp, i32 0, i32 64)
  %11 = lshr i32 %1, 12
  %shl.i = and i32 %11, 65280
  %or.i = or i32 %shl.i, %1
  %conv.i = trunc i32 %or.i to i16
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %tmp, align 4
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %13 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ino, align 8
  %conv = trunc i64 %14 to i32
  %st_ino = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 2
  %15 = ptrtoint ptr %st_ino to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %st_ino, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %14)
  %16 = icmp ult i64 %14, 4294967296
  br i1 %16, label %if.end12, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mode, align 4
  %st_mode = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 3
  %19 = ptrtoint ptr %st_mode to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %st_mode, align 4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %20 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlink, align 8
  %conv13 = trunc i32 %21 to i16
  %st_nlink = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 4
  %22 = ptrtoint ptr %st_nlink to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv13, ptr %st_nlink, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %21)
  %23 = icmp ult i32 %21, 65536
  br i1 %23, label %do.end, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end12
  %24 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 99
  %28 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %29, i32 0, i32 25
  %30 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %32 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack = load i32, ptr %uid, align 8
  %33 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call25 = tail call i32 @from_kuid_munged(ptr noundef %31, [1 x i32] %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call25)
  %tobool.not = icmp ult i32 %call25, 65536
  br i1 %tobool.not, label %do.end31, label %cond.true

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %34 = load i32, ptr @overflowuid, align 4
  br label %cond.end

do.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %cred35 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 99
  %37 = ptrtoint ptr %cred35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cred35, align 16
  %user_ns36 = getelementptr inbounds %struct.cred, ptr %38, i32 0, i32 25
  %39 = ptrtoint ptr %user_ns36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_ns36, align 4
  %41 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack122 = load i32, ptr %uid, align 8
  %42 = insertvalue [1 x i32] undef, i32 %.unpack122, 0
  %call39 = tail call i32 @from_kuid_munged(ptr noundef %40, [1 x i32] %42) #8
  br label %cond.end

cond.end:                                         ; preds = %do.end31, %cond.true
  %cond.in = phi i32 [ %34, %cond.true ], [ %call39, %do.end31 ]
  %conv42 = trunc i32 %cond.in to i16
  %st_uid = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 5
  %43 = ptrtoint ptr %st_uid to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv42, ptr %st_uid, align 4
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %cred53 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 99
  %46 = ptrtoint ptr %cred53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cred53, align 16
  %user_ns54 = getelementptr inbounds %struct.cred, ptr %47, i32 0, i32 25
  %48 = ptrtoint ptr %user_ns54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %user_ns54, align 4
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %50 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack123 = load i32, ptr %gid, align 4
  %51 = insertvalue [1 x i32] undef, i32 %.unpack123, 0
  %call56 = tail call i32 @from_kgid_munged(ptr noundef %49, [1 x i32] %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %call56)
  %tobool58.not = icmp ult i32 %call56, 65536
  br i1 %tobool58.not, label %do.end66, label %cond.true59

cond.true59:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %52 = load i32, ptr @overflowgid, align 4
  br label %cond.end77

do.end66:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %cred70 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 99
  %55 = ptrtoint ptr %cred70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cred70, align 16
  %user_ns71 = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 25
  %57 = ptrtoint ptr %user_ns71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %user_ns71, align 4
  %59 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack124 = load i32, ptr %gid, align 4
  %60 = insertvalue [1 x i32] undef, i32 %.unpack124, 0
  %call74 = tail call i32 @from_kgid_munged(ptr noundef %58, [1 x i32] %60) #8
  br label %cond.end77

cond.end77:                                       ; preds = %do.end66, %cond.true59
  %cond78.in = phi i32 [ %52, %cond.true59 ], [ %call74, %do.end66 ]
  %conv79 = trunc i32 %cond78.in to i16
  %st_gid = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 6
  %61 = ptrtoint ptr %st_gid to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv79, ptr %st_gid, align 2
  %62 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rdev, align 4
  %64 = lshr i32 %63, 12
  %shl.i125 = and i32 %64, 65280
  %or.i126 = or i32 %shl.i125, %63
  %conv.i127 = trunc i32 %or.i126 to i16
  %st_rdev = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 7
  %65 = ptrtoint ptr %st_rdev to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i127, ptr %st_rdev, align 4
  %66 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %size, align 8
  %conv85 = trunc i64 %67 to i32
  %st_size = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 9
  %68 = ptrtoint ptr %st_size to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv85, ptr %st_size, align 4
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %69 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %atime, align 8
  %conv86 = trunc i64 %70 to i32
  %st_atime = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 12
  %71 = ptrtoint ptr %st_atime to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv86, ptr %st_atime, align 4
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %72 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %mtime, align 8
  %conv88 = trunc i64 %73 to i32
  %st_mtime = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 14
  %74 = ptrtoint ptr %st_mtime to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv88, ptr %st_mtime, align 4
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %75 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %ctime, align 8
  %conv90 = trunc i64 %76 to i32
  %st_ctime = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 16
  %77 = ptrtoint ptr %st_ctime to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv90, ptr %st_ctime, align 4
  %tv_nsec = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %78 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tv_nsec, align 8
  %st_atime_nsec = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 13
  %80 = ptrtoint ptr %st_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %st_atime_nsec, align 4
  %tv_nsec93 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13, i32 1
  %81 = ptrtoint ptr %tv_nsec93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tv_nsec93, align 8
  %st_mtime_nsec = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 15
  %83 = ptrtoint ptr %st_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %st_mtime_nsec, align 4
  %tv_nsec95 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %84 = ptrtoint ptr %tv_nsec95 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tv_nsec95, align 8
  %st_ctime_nsec = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 17
  %86 = ptrtoint ptr %st_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %st_ctime_nsec, align 4
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %87 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %blocks, align 8
  %conv96 = trunc i64 %88 to i32
  %st_blocks = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 11
  %89 = ptrtoint ptr %st_blocks to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv96, ptr %st_blocks, align 4
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %90 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blksize, align 4
  %st_blksize = getelementptr inbounds %struct.stat, ptr %tmp, i32 0, i32 10
  %92 = ptrtoint ptr %st_blksize to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %st_blksize, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %cond.end77.cleanup_crit_edge, label %if.end.i.i

cond.end77.cleanup_crit_edge:                     ; preds = %cond.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %cond.end77
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %statbuf, i32 64, i32 -1226833920) #11, !srcloc !205
  %asmresult.i.i = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 64) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %statbuf, ptr noundef nonnull %tmp, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool98.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool98.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %cond.end77.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %lor.lhs.false.cleanup_crit_edge ], [ -75, %entry.cleanup_crit_edge ], [ -75, %if.end.cleanup_crit_edge ], [ -75, %if.end3.cleanup_crit_edge ], [ -75, %if.end12.cleanup_crit_edge ], [ -14, %cond.end77.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_readlinkat(i32 noundef %dfd, ptr noundef %pathname, ptr noundef %buf, i32 noundef %bufsiz) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  %empty = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #8
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !204
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %empty) #8
  %3 = ptrtoint ptr %empty to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %empty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bufsiz)
  %cmp = icmp slt i32 %bufsiz, 1
  br i1 %cmp, label %entry.cleanup20_crit_edge, label %retry

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

retry:                                            ; preds = %entry
  %call = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %pathname, i32 noundef 16384, ptr noundef nonnull %path, ptr noundef nonnull %empty) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then1, label %retry.cleanup20_crit_edge

retry.cleanup20_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.then1:                                         ; preds = %retry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %and.i.i = and i32 %7, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 6291456
  br i1 %cmp.i, label %if.then1.if.then7_crit_edge, label %lor.lhs.false

if.then1.if.then7_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then1
  %8 = ptrtoint ptr %empty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %empty, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool3.not, i32 -22, i32 -2
  %i_op = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %i_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_op, align 8
  %readlink = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %readlink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %readlink, align 16
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then1.if.then7_crit_edge
  %call9 = call i32 @security_inode_readlink(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call void @touch_atime(ptr noundef nonnull %path) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call13 = call i32 @vfs_readlink(ptr noundef %17, ptr noundef %buf, i32 noundef %bufsiz) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.then7.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %error.0 = phi i32 [ %call9, %if.then7.if.end15_crit_edge ], [ %call13, %if.then11 ], [ %cond, %lor.lhs.false.if.end15_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %error.0)
  %cmp.i30 = icmp eq i32 %error.0, -116
  br i1 %cmp.i30, label %retry.1, label %if.end15.cleanup20_crit_edge

if.end15.cleanup20_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

retry.1:                                          ; preds = %if.end15
  %call.1 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %pathname, i32 noundef 16416, ptr noundef nonnull %path, ptr noundef nonnull %empty) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then1.1, label %retry.1.cleanup20_crit_edge

retry.1.cleanup20_crit_edge:                      ; preds = %retry.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.then1.1:                                       ; preds = %retry.1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %and.i.i.1 = and i32 %21, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i.1)
  %cmp.i.1 = icmp eq i32 %and.i.i.1, 6291456
  br i1 %cmp.i.1, label %if.then1.1.if.then7.1_crit_edge, label %lor.lhs.false.1

if.then1.1.if.then7.1_crit_edge:                  ; preds = %if.then1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.1

lor.lhs.false.1:                                  ; preds = %if.then1.1
  %22 = ptrtoint ptr %empty to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %empty, align 4
  %d_inode.i.1 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not.1 = icmp eq i32 %23, 0
  %cond.1 = select i1 %tobool3.not.1, i32 -22, i32 -2
  %i_op.1 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %i_op.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_op.1, align 8
  %readlink.1 = getelementptr inbounds %struct.inode_operations, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %readlink.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %readlink.1, align 16
  %tobool6.not.1 = icmp eq ptr %29, null
  br i1 %tobool6.not.1, label %lor.lhs.false.1.if.end15.1_crit_edge, label %lor.lhs.false.1.if.then7.1_crit_edge

lor.lhs.false.1.if.then7.1_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.1

lor.lhs.false.1.if.end15.1_crit_edge:             ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.1

if.then7.1:                                       ; preds = %lor.lhs.false.1.if.then7.1_crit_edge, %if.then1.1.if.then7.1_crit_edge
  %call9.1 = call i32 @security_inode_readlink(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool10.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool10.not.1, label %if.then11.1, label %if.then7.1.if.end15.1_crit_edge

if.then7.1.if.end15.1_crit_edge:                  ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.1

if.then11.1:                                      ; preds = %if.then7.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @touch_atime(ptr noundef nonnull %path) #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call13.1 = call i32 @vfs_readlink(ptr noundef %31, ptr noundef %buf, i32 noundef %bufsiz) #8
  br label %if.end15.1

if.end15.1:                                       ; preds = %if.then11.1, %if.then7.1.if.end15.1_crit_edge, %lor.lhs.false.1.if.end15.1_crit_edge
  %error.0.1 = phi i32 [ %call9.1, %if.then7.1.if.end15.1_crit_edge ], [ %call13.1, %if.then11.1 ], [ %cond.1, %lor.lhs.false.1.if.end15.1_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end15.1, %retry.1.cleanup20_crit_edge, %if.end15.cleanup20_crit_edge, %retry.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup20_crit_edge ], [ %error.0, %if.end15.cleanup20_crit_edge ], [ %call, %retry.cleanup20_crit_edge ], [ %call.1, %retry.1.cleanup20_crit_edge ], [ %error.0.1, %if.end15.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %empty) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_inode_readlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_readlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cp_new_stat64(ptr nocapture noundef readonly %stat, ptr noundef %statbuf) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.stat64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %tmp) #8
  %0 = getelementptr inbounds i8, ptr %tmp, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 88)
  %dev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %and1.i.i = and i32 %3, 255
  %4 = lshr i32 %3, 12
  %shl.i.i = and i32 %4, 1048320
  %or.i.i = or i32 %shl.i.i, %and1.i.i
  %and2.i.i = shl i32 %3, 12
  %shl3.i.i = and i32 %and2.i.i, -1048576
  %or4.i.i = or i32 %or.i.i, %shl3.i.i
  %conv.i = zext i32 %or4.i.i to i64
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %tmp, align 8
  %rdev = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 8
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdev, align 4
  %and1.i.i47 = and i32 %7, 255
  %8 = lshr i32 %7, 12
  %shl.i.i48 = and i32 %8, 1048320
  %or.i.i49 = or i32 %shl.i.i48, %and1.i.i47
  %and2.i.i50 = shl i32 %7, 12
  %shl3.i.i51 = and i32 %and2.i.i50, -1048576
  %or4.i.i52 = or i32 %or.i.i49, %shl3.i.i51
  %conv.i53 = zext i32 %or4.i.i52 to i64
  %st_rdev = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 7
  %9 = ptrtoint ptr %st_rdev to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i53, ptr %st_rdev, align 8
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %10 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ino, align 8
  %st_ino = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 18
  %12 = ptrtoint ptr %st_ino to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %st_ino, align 8
  %conv = trunc i64 %11 to i32
  %__st_ino = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 2
  %13 = ptrtoint ptr %__st_ino to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %__st_ino, align 4
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mode, align 4
  %conv3 = zext i16 %15 to i32
  %st_mode = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 3
  %16 = ptrtoint ptr %st_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv3, ptr %st_mode, align 8
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %17 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nlink, align 8
  %st_nlink = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 4
  %19 = ptrtoint ptr %st_nlink to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %st_nlink, align 4
  %20 = tail call i32 @llvm.read_register.i32(metadata !182) #8
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 99
  %24 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_ns, align 4
  %uid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 9
  %28 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack = load i32, ptr %uid, align 8
  %29 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call7 = tail call i32 @from_kuid_munged(ptr noundef %27, [1 x i32] %29) #8
  %st_uid = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 5
  %30 = ptrtoint ptr %st_uid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call7, ptr %st_uid, align 8
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %cred15 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 99
  %33 = ptrtoint ptr %cred15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cred15, align 16
  %user_ns16 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %user_ns16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %user_ns16, align 4
  %gid = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 10
  %37 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack46 = load i32, ptr %gid, align 4
  %38 = insertvalue [1 x i32] undef, i32 %.unpack46, 0
  %call18 = tail call i32 @from_kgid_munged(ptr noundef %36, [1 x i32] %38) #8
  %st_gid = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 6
  %39 = ptrtoint ptr %st_gid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call18, ptr %st_gid, align 4
  %atime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12
  %40 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %atime, align 8
  %conv19 = trunc i64 %41 to i32
  %st_atime = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 12
  %42 = ptrtoint ptr %st_atime to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv19, ptr %st_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tv_nsec, align 8
  %st_atime_nsec = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 13
  %45 = ptrtoint ptr %st_atime_nsec to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %st_atime_nsec, align 4
  %mtime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13
  %46 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %mtime, align 8
  %conv22 = trunc i64 %47 to i32
  %st_mtime = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 14
  %48 = ptrtoint ptr %st_mtime to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv22, ptr %st_mtime, align 8
  %tv_nsec24 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 13, i32 1
  %49 = ptrtoint ptr %tv_nsec24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tv_nsec24, align 8
  %st_mtime_nsec = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 15
  %51 = ptrtoint ptr %st_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %st_mtime_nsec, align 4
  %ctime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14
  %52 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ctime, align 8
  %conv26 = trunc i64 %53 to i32
  %st_ctime = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 16
  %54 = ptrtoint ptr %st_ctime to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv26, ptr %st_ctime, align 8
  %tv_nsec28 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %tv_nsec28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tv_nsec28, align 8
  %st_ctime_nsec = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 17
  %57 = ptrtoint ptr %st_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %st_ctime_nsec, align 4
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %58 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %size, align 8
  %st_size = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 9
  %60 = ptrtoint ptr %st_size to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %st_size, align 8
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %61 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %blocks, align 8
  %st_blocks = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 11
  %63 = ptrtoint ptr %st_blocks to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %st_blocks, align 8
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %64 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %blksize, align 4
  %st_blksize = getelementptr inbounds %struct.stat64, ptr %tmp, i32 0, i32 10
  %66 = ptrtoint ptr %st_blksize to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %st_blksize, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %statbuf, i32 104, i32 -1226833920) #11, !srcloc !205
  %asmresult.i.i = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tmp, i32 noundef 104) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %statbuf, ptr noundef nonnull %tmp, i32 noundef 104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %68 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %tmp) #8
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !56, !57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !161, !163, !164, !165, !166, !167, !168, !169, !170, !171, !173, !175, !176, !177, !178, !179, !180, !181}
!llvm.named.register.sp = !{!182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__ksymtab_generic_fillattr, !1, !"__ksymtab_generic_fillattr", i1 false, i1 false}
!1 = !{!"../fs/stat.c", i32 60, i32 1}
!2 = !{ptr @__ksymtab_generic_fill_statx_attr, !3, !"__ksymtab_generic_fill_statx_attr", i1 false, i1 false}
!3 = !{!"../fs/stat.c", i32 78, i32 1}
!4 = !{ptr @__ksymtab_vfs_getattr_nosec, !5, !"__ksymtab_vfs_getattr_nosec", i1 false, i1 false}
!5 = !{!"../fs/stat.c", i32 129, i32 1}
!6 = !{ptr @__ksymtab_vfs_getattr, !7, !"__ksymtab_vfs_getattr", i1 false, i1 false}
!7 = !{!"../fs/stat.c", i32 162, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/stat.c", i32 381, i32 1}
!10 = !{ptr @event_enter__newstat, !9, !"event_enter__newstat", i1 false, i1 false}
!11 = !{ptr @__event_enter__newstat, !9, !"__event_enter__newstat", i1 false, i1 false}
!12 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @event_exit__newstat, !9, !"event_exit__newstat", i1 false, i1 false}
!14 = !{ptr @__event_exit__newstat, !9, !"__event_exit__newstat", i1 false, i1 false}
!15 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__syscall_meta__newstat, !9, !"__syscall_meta__newstat", i1 false, i1 false}
!17 = !{ptr @__p_syscall_meta__newstat, !9, !"__p_syscall_meta__newstat", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/stat.c", i32 392, i32 1}
!20 = !{ptr @event_enter__newlstat, !19, !"event_enter__newlstat", i1 false, i1 false}
!21 = !{ptr @__event_enter__newlstat, !19, !"__event_enter__newlstat", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @event_exit__newlstat, !19, !"event_exit__newlstat", i1 false, i1 false}
!24 = !{ptr @__event_exit__newlstat, !19, !"__event_exit__newlstat", i1 false, i1 false}
!25 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__syscall_meta__newlstat, !19, !"__syscall_meta__newlstat", i1 false, i1 false}
!27 = !{ptr @__p_syscall_meta__newlstat, !19, !"__p_syscall_meta__newlstat", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/stat.c", i32 419, i32 1}
!30 = !{ptr @event_enter__newfstat, !29, !"event_enter__newfstat", i1 false, i1 false}
!31 = !{ptr @__event_enter__newfstat, !29, !"__event_enter__newfstat", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @event_exit__newfstat, !29, !"event_exit__newfstat", i1 false, i1 false}
!34 = !{ptr @__event_exit__newfstat, !29, !"__event_exit__newfstat", i1 false, i1 false}
!35 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__syscall_meta__newfstat, !29, !"__syscall_meta__newfstat", i1 false, i1 false}
!37 = !{ptr @__p_syscall_meta__newfstat, !29, !"__p_syscall_meta__newfstat", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/stat.c", i32 467, i32 1}
!40 = !{ptr @event_enter__readlinkat, !39, !"event_enter__readlinkat", i1 false, i1 false}
!41 = !{ptr @__event_enter__readlinkat, !39, !"__event_enter__readlinkat", i1 false, i1 false}
!42 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @event_exit__readlinkat, !39, !"event_exit__readlinkat", i1 false, i1 false}
!44 = !{ptr @__event_exit__readlinkat, !39, !"__event_exit__readlinkat", i1 false, i1 false}
!45 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__syscall_meta__readlinkat, !39, !"__syscall_meta__readlinkat", i1 false, i1 false}
!47 = !{ptr @__p_syscall_meta__readlinkat, !39, !"__p_syscall_meta__readlinkat", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/stat.c", i32 473, i32 1}
!50 = !{ptr @event_enter__readlink, !49, !"event_enter__readlink", i1 false, i1 false}
!51 = !{ptr @__event_enter__readlink, !49, !"__event_enter__readlink", i1 false, i1 false}
!52 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @event_exit__readlink, !49, !"event_exit__readlink", i1 false, i1 false}
!54 = !{ptr @__event_exit__readlink, !49, !"__event_exit__readlink", i1 false, i1 false}
!55 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__syscall_meta__readlink, !49, !"__syscall_meta__readlink", i1 false, i1 false}
!57 = !{ptr @__p_syscall_meta__readlink, !49, !"__p_syscall_meta__readlink", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/stat.c", i32 522, i32 1}
!60 = !{ptr @event_enter__stat64, !59, !"event_enter__stat64", i1 false, i1 false}
!61 = !{ptr @__event_enter__stat64, !59, !"__event_enter__stat64", i1 false, i1 false}
!62 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @event_exit__stat64, !59, !"event_exit__stat64", i1 false, i1 false}
!64 = !{ptr @__event_exit__stat64, !59, !"__event_exit__stat64", i1 false, i1 false}
!65 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__syscall_meta__stat64, !59, !"__syscall_meta__stat64", i1 false, i1 false}
!67 = !{ptr @__p_syscall_meta__stat64, !59, !"__p_syscall_meta__stat64", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/stat.c", i32 534, i32 1}
!70 = !{ptr @event_enter__lstat64, !69, !"event_enter__lstat64", i1 false, i1 false}
!71 = !{ptr @__event_enter__lstat64, !69, !"__event_enter__lstat64", i1 false, i1 false}
!72 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @event_exit__lstat64, !69, !"event_exit__lstat64", i1 false, i1 false}
!74 = !{ptr @__event_exit__lstat64, !69, !"__event_exit__lstat64", i1 false, i1 false}
!75 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__syscall_meta__lstat64, !69, !"__syscall_meta__lstat64", i1 false, i1 false}
!77 = !{ptr @__p_syscall_meta__lstat64, !69, !"__p_syscall_meta__lstat64", i1 false, i1 false}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/stat.c", i32 546, i32 1}
!80 = !{ptr @event_enter__fstat64, !79, !"event_enter__fstat64", i1 false, i1 false}
!81 = !{ptr @__event_enter__fstat64, !79, !"__event_enter__fstat64", i1 false, i1 false}
!82 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @event_exit__fstat64, !79, !"event_exit__fstat64", i1 false, i1 false}
!84 = !{ptr @__event_exit__fstat64, !79, !"__event_exit__fstat64", i1 false, i1 false}
!85 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @__syscall_meta__fstat64, !79, !"__syscall_meta__fstat64", i1 false, i1 false}
!87 = !{ptr @__p_syscall_meta__fstat64, !79, !"__p_syscall_meta__fstat64", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/stat.c", i32 557, i32 1}
!90 = !{ptr @event_enter__fstatat64, !89, !"event_enter__fstatat64", i1 false, i1 false}
!91 = !{ptr @__event_enter__fstatat64, !89, !"__event_enter__fstatat64", i1 false, i1 false}
!92 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @event_exit__fstatat64, !89, !"event_exit__fstatat64", i1 false, i1 false}
!94 = !{ptr @__event_exit__fstatat64, !89, !"__event_exit__fstatat64", i1 false, i1 false}
!95 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @__syscall_meta__fstatat64, !89, !"__syscall_meta__fstatat64", i1 false, i1 false}
!97 = !{ptr @__p_syscall_meta__fstatat64, !89, !"__p_syscall_meta__fstatat64", i1 false, i1 false}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/stat.c", i32 634, i32 1}
!100 = !{ptr @event_enter__statx, !99, !"event_enter__statx", i1 false, i1 false}
!101 = !{ptr @__event_enter__statx, !99, !"__event_enter__statx", i1 false, i1 false}
!102 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @event_exit__statx, !99, !"event_exit__statx", i1 false, i1 false}
!104 = !{ptr @__event_exit__statx, !99, !"__event_exit__statx", i1 false, i1 false}
!105 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__syscall_meta__statx, !99, !"__syscall_meta__statx", i1 false, i1 false}
!107 = !{ptr @__p_syscall_meta__statx, !99, !"__p_syscall_meta__statx", i1 false, i1 false}
!108 = !{ptr @__ksymtab___inode_add_bytes, !109, !"__ksymtab___inode_add_bytes", i1 false, i1 false}
!109 = !{!"../fs/stat.c", i32 738, i32 1}
!110 = !{ptr @__ksymtab_inode_add_bytes, !111, !"__ksymtab_inode_add_bytes", i1 false, i1 false}
!111 = !{!"../fs/stat.c", i32 747, i32 1}
!112 = !{ptr @__ksymtab___inode_sub_bytes, !113, !"__ksymtab___inode_sub_bytes", i1 false, i1 false}
!113 = !{!"../fs/stat.c", i32 760, i32 1}
!114 = !{ptr @__ksymtab_inode_sub_bytes, !115, !"__ksymtab_inode_sub_bytes", i1 false, i1 false}
!115 = !{!"../fs/stat.c", i32 769, i32 1}
!116 = !{ptr @__ksymtab_inode_get_bytes, !117, !"__ksymtab_inode_get_bytes", i1 false, i1 false}
!117 = !{!"../fs/stat.c", i32 781, i32 1}
!118 = !{ptr @__ksymtab_inode_set_bytes, !119, !"__ksymtab_inode_set_bytes", i1 false, i1 false}
!119 = !{!"../fs/stat.c", i32 791, i32 1}
!120 = !{ptr @.str.30, !9, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.31, !9, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @types__newstat, !9, !"types__newstat", i1 false, i1 false}
!123 = !{ptr @.str.32, !9, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.33, !9, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @args__newstat, !9, !"args__newstat", i1 false, i1 false}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../fs/stat.c", i32 364, i32 2}
!128 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../fs/stat.c", i32 365, i32 2}
!131 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!134 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!137 = !{ptr @.str.39, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!139 = !{ptr @types__newlstat, !19, !"types__newlstat", i1 false, i1 false}
!140 = !{ptr @args__newlstat, !19, !"args__newlstat", i1 false, i1 false}
!141 = !{ptr @.str.40, !29, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @types__newfstat, !29, !"types__newfstat", i1 false, i1 false}
!143 = !{ptr @.str.41, !29, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @args__newfstat, !29, !"args__newfstat", i1 false, i1 false}
!145 = !{ptr @.str.42, !39, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.43, !39, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @types__readlinkat, !39, !"types__readlinkat", i1 false, i1 false}
!148 = !{ptr @.str.44, !39, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.45, !39, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.46, !39, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.47, !39, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @args__readlinkat, !39, !"args__readlinkat", i1 false, i1 false}
!153 = !{ptr @types__readlink, !49, !"types__readlink", i1 false, i1 false}
!154 = !{ptr @.str.48, !49, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @args__readlink, !49, !"args__readlink", i1 false, i1 false}
!156 = !{ptr @.str.49, !59, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @types__stat64, !59, !"types__stat64", i1 false, i1 false}
!158 = !{ptr @args__stat64, !59, !"args__stat64", i1 false, i1 false}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../fs/stat.c", i32 508, i32 32}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../fs/stat.c", i32 509, i32 32}
!163 = !{ptr @types__lstat64, !69, !"types__lstat64", i1 false, i1 false}
!164 = !{ptr @args__lstat64, !69, !"args__lstat64", i1 false, i1 false}
!165 = !{ptr @.str.51, !79, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @types__fstat64, !79, !"types__fstat64", i1 false, i1 false}
!167 = !{ptr @args__fstat64, !79, !"args__fstat64", i1 false, i1 false}
!168 = !{ptr @types__fstatat64, !89, !"types__fstatat64", i1 false, i1 false}
!169 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @args__fstatat64, !89, !"args__fstatat64", i1 false, i1 false}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../fs/stat.c", i32 581, i32 33}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../fs/stat.c", i32 582, i32 33}
!175 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @types__statx, !99, !"types__statx", i1 false, i1 false}
!178 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.58, !99, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @args__statx, !99, !"args__statx", i1 false, i1 false}
!182 = !{!"sp"}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i64 1089676, i64 1089737}
!193 = !{i64 1092408}
!194 = !{!"branch_weights", i32 1, i32 2000}
!195 = !{i64 1092693}
!196 = !{i64 2153075578}
!197 = !{i64 2153075420}
!198 = !{i64 2153075748}
!199 = !{i64 2149862857}
!200 = !{i64 2152984207}
!201 = !{!202}
!202 = distinct !{!202, !203, !"fdget_raw: %agg.result"}
!203 = distinct !{!203, !"fdget_raw"}
!204 = !{!"auto-init"}
!205 = !{i64 2152745907, i64 2152745932}
