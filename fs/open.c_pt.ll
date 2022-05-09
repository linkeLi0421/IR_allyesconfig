; ModuleID = '/llk/IR_all_yes/fs/open.c_pt.bc'
source_filename = "../fs/open.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vfs_truncate\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_truncate\09\09\09\09"
module asm "\09.long\09__crc_vfs_truncate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_truncate\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vfs_fallocate\22, \22a\22\09"
module asm "\09.weak\09__crc_vfs_fallocate\09\09\09\09"
module asm "\09.long\09__crc_vfs_fallocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_fallocate:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_fallocate\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_fallocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+finish_open\22, \22a\22\09"
module asm "\09.weak\09__crc_finish_open\09\09\09\09"
module asm "\09.long\09__crc_finish_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_open:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_open\22\09\09\09\09\09"
module asm "__kstrtabns_finish_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+finish_no_open\22, \22a\22\09"
module asm "\09.weak\09__crc_finish_no_open\09\09\09\09"
module asm "\09.long\09__crc_finish_no_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_no_open:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_no_open\22\09\09\09\09\09"
module asm "__kstrtabns_finish_no_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+file_path\22, \22a\22\09"
module asm "\09.weak\09__crc_file_path\09\09\09\09"
module asm "\09.long\09__crc_file_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_path:\09\09\09\09\09"
module asm "\09.asciz \09\22file_path\22\09\09\09\09\09"
module asm "__kstrtabns_file_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dentry_open\22, \22a\22\09"
module asm "\09.weak\09__crc_dentry_open\09\09\09\09"
module asm "\09.long\09__crc_dentry_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dentry_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dentry_open\22\09\09\09\09\09"
module asm "__kstrtabns_dentry_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+open_with_fake_path\22, \22a\22\09"
module asm "\09.weak\09__crc_open_with_fake_path\09\09\09\09"
module asm "\09.long\09__crc_open_with_fake_path\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_with_fake_path:\09\09\09\09\09"
module asm "\09.asciz \09\22open_with_fake_path\22\09\09\09\09\09"
module asm "__kstrtabns_open_with_fake_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+filp_open\22, \22a\22\09"
module asm "\09.weak\09__crc_filp_open\09\09\09\09"
module asm "\09.long\09__crc_filp_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filp_open:\09\09\09\09\09"
module asm "\09.asciz \09\22filp_open\22\09\09\09\09\09"
module asm "__kstrtabns_filp_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+file_open_root\22, \22a\22\09"
module asm "\09.weak\09__crc_file_open_root\09\09\09\09"
module asm "\09.long\09__crc_file_open_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_open_root:\09\09\09\09\09"
module asm "\09.asciz \09\22file_open_root\22\09\09\09\09\09"
module asm "__kstrtabns_file_open_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+filp_close\22, \22a\22\09"
module asm "\09.weak\09__crc_filp_close\09\09\09\09"
module asm "\09.long\09__crc_filp_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22filp_close\22\09\09\09\09\09"
module asm "__kstrtabns_filp_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+generic_file_open\22, \22a\22\09"
module asm "\09.weak\09__crc_generic_file_open\09\09\09\09"
module asm "\09.long\09__crc_generic_file_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_open\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nonseekable_open\22, \22a\22\09"
module asm "\09.weak\09__crc_nonseekable_open\09\09\09\09"
module asm "\09.long\09__crc_nonseekable_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nonseekable_open:\09\09\09\09\09"
module asm "\09.asciz \09\22nonseekable_open\22\09\09\09\09\09"
module asm "__kstrtabns_nonseekable_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+stream_open\22, \22a\22\09"
module asm "\09.weak\09__crc_stream_open\09\09\09\09"
module asm "\09.long\09__crc_stream_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stream_open:\09\09\09\09\09"
module asm "\09.asciz \09\22stream_open\22\09\09\09\09\09"
module asm "__kstrtabns_stream_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.79, %struct.trace_event, ptr, ptr, %union.anon.81, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.79 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_cap_struct = type { [2 x i32] }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.108, %struct.list_head, %struct.list_head, %union.anon.109 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.106 }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%union.anon.108 = type { %struct.list_head }
%union.anon.109 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.102 = type { i32 }
%union.anon.103 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.105 = type { ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.85 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.callback_head }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.open_how = type { i64, i64, i64 }
%struct.open_flags = type { i32, i16, i32, i32, i32 }

@__kstrtab_vfs_truncate = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_truncate = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_truncate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_truncate to i32), ptr @__kstrtab_vfs_truncate, ptr @__kstrtabns_vfs_truncate }, section "___ksymtab_gpl+vfs_truncate", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_truncate\00", [45 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__truncate = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__truncate, ptr @args__truncate, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__truncate, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__truncate, i64 20) }, ptr @event_enter__truncate, ptr @event_exit__truncate }, align 4
@event_enter__truncate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__truncate, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__truncate = internal global ptr @event_enter__truncate, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_truncate\00", [46 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__truncate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__truncate, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__truncate = internal global ptr @event_exit__truncate, section "_ftrace_events", align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_truncate\00", [19 x i8] zeroinitializer }, align 32
@types__truncate = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@args__truncate = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.82, ptr @.str.83], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__truncate = internal global ptr @__syscall_meta__truncate, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_ftruncate\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__ftruncate = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__ftruncate, ptr @args__ftruncate, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ftruncate, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ftruncate, i64 20) }, ptr @event_enter__ftruncate, ptr @event_exit__ftruncate }, align 4
@event_enter__ftruncate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__ftruncate, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ftruncate = internal global ptr @event_enter__ftruncate, section "_ftrace_events", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_ftruncate\00", [45 x i8] zeroinitializer }, align 32
@event_exit__ftruncate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__ftruncate, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ftruncate = internal global ptr @event_exit__ftruncate, section "_ftrace_events", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_ftruncate\00", [18 x i8] zeroinitializer }, align 32
@types__ftruncate = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.87, ptr @.str.88], [24 x i8] zeroinitializer }, align 32
@args__ftruncate = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.89, ptr @.str.83], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ftruncate = internal global ptr @__syscall_meta__ftruncate, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_truncate64\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__truncate64 = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__truncate64, ptr @args__truncate64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__truncate64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__truncate64, i64 20) }, ptr @event_enter__truncate64, ptr @event_exit__truncate64 }, align 4
@event_enter__truncate64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__truncate64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__truncate64 = internal global ptr @event_enter__truncate64, section "_ftrace_events", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_truncate64\00", [44 x i8] zeroinitializer }, align 32
@event_exit__truncate64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__truncate64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__truncate64 = internal global ptr @event_exit__truncate64, section "_ftrace_events", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_truncate64\00", [17 x i8] zeroinitializer }, align 32
@types__truncate64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@args__truncate64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.82, ptr @.str.83], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__truncate64 = internal global ptr @__syscall_meta__truncate64, section "__syscalls_metadata", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_ftruncate64\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__ftruncate64 = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 2, ptr @types__ftruncate64, ptr @args__ftruncate64, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__ftruncate64, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__ftruncate64, i64 20) }, ptr @event_enter__ftruncate64, ptr @event_exit__ftruncate64 }, align 4
@event_enter__ftruncate64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__ftruncate64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__ftruncate64 = internal global ptr @event_enter__ftruncate64, section "_ftrace_events", align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_ftruncate64\00", [43 x i8] zeroinitializer }, align 32
@event_exit__ftruncate64 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__ftruncate64, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__ftruncate64 = internal global ptr @event_exit__ftruncate64, section "_ftrace_events", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_ftruncate64\00", [16 x i8] zeroinitializer }, align 32
@types__ftruncate64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.87, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@args__ftruncate64 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.89, ptr @.str.83], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__ftruncate64 = internal global ptr @__syscall_meta__ftruncate64, section "__syscalls_metadata", align 4
@__kstrtab_vfs_fallocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_fallocate = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_fallocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_fallocate to i32), ptr @__kstrtab_vfs_fallocate, ptr @__kstrtabns_vfs_fallocate }, section "___ksymtab_gpl+vfs_fallocate", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_fallocate\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__fallocate = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 4, ptr @types__fallocate, ptr @args__fallocate, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fallocate, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fallocate, i64 20) }, ptr @event_enter__fallocate, ptr @event_exit__fallocate }, align 4
@event_enter__fallocate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fallocate, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fallocate = internal global ptr @event_enter__fallocate, section "_ftrace_events", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_fallocate\00", [45 x i8] zeroinitializer }, align 32
@event_exit__fallocate = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fallocate, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fallocate = internal global ptr @event_exit__fallocate, section "_ftrace_events", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_fallocate\00", [18 x i8] zeroinitializer }, align 32
@types__fallocate = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.91, ptr @.str.91, ptr @.str.90, ptr @.str.90], [16 x i8] zeroinitializer }, align 32
@args__fallocate = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.89, ptr @.str.92, ptr @.str.93, ptr @.str.94], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fallocate = internal global ptr @__syscall_meta__fallocate, section "__syscalls_metadata", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_enter_faccessat\00", [44 x i8] zeroinitializer }, align 32
@__syscall_meta__faccessat = internal global %struct.syscall_metadata { ptr @.str.17, i32 -1, i32 3, ptr @types__faccessat, ptr @args__faccessat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__faccessat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__faccessat, i64 20) }, ptr @event_enter__faccessat, ptr @event_exit__faccessat }, align 4
@event_enter__faccessat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__faccessat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__faccessat = internal global ptr @event_enter__faccessat, section "_ftrace_events", align 4
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_exit_faccessat\00", [45 x i8] zeroinitializer }, align 32
@event_exit__faccessat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__faccessat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__faccessat = internal global ptr @event_exit__faccessat, section "_ftrace_events", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_faccessat\00", [18 x i8] zeroinitializer }, align 32
@types__faccessat = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.91, ptr @.str.80, ptr @.str.91], [20 x i8] zeroinitializer }, align 32
@args__faccessat = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.92], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__faccessat = internal global ptr @__syscall_meta__faccessat, section "__syscalls_metadata", align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_faccessat2\00", [43 x i8] zeroinitializer }, align 32
@__syscall_meta__faccessat2 = internal global %struct.syscall_metadata { ptr @.str.20, i32 -1, i32 4, ptr @types__faccessat2, ptr @args__faccessat2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__faccessat2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__faccessat2, i64 20) }, ptr @event_enter__faccessat2, ptr @event_exit__faccessat2 }, align 4
@event_enter__faccessat2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.18 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__faccessat2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__faccessat2 = internal global ptr @event_enter__faccessat2, section "_ftrace_events", align 4
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_faccessat2\00", [44 x i8] zeroinitializer }, align 32
@event_exit__faccessat2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__faccessat2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__faccessat2 = internal global ptr @event_exit__faccessat2, section "_ftrace_events", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_faccessat2\00", [17 x i8] zeroinitializer }, align 32
@types__faccessat2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.91, ptr @.str.80, ptr @.str.91, ptr @.str.91], [16 x i8] zeroinitializer }, align 32
@args__faccessat2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.92, ptr @.str.98], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__faccessat2 = internal global ptr @__syscall_meta__faccessat2, section "__syscalls_metadata", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_access\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__access = internal global %struct.syscall_metadata { ptr @.str.23, i32 -1, i32 2, ptr @types__access, ptr @args__access, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__access, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__access, i64 20) }, ptr @event_enter__access, ptr @event_exit__access }, align 4
@event_enter__access = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.21 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__access, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__access = internal global ptr @event_enter__access, section "_ftrace_events", align 4
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_access\00", [16 x i8] zeroinitializer }, align 32
@event_exit__access = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.22 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__access, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__access = internal global ptr @event_exit__access, section "_ftrace_events", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_access\00", [21 x i8] zeroinitializer }, align 32
@types__access = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.91], [24 x i8] zeroinitializer }, align 32
@args__access = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.96, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__access = internal global ptr @__syscall_meta__access, section "__syscalls_metadata", align 4
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_chdir\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__chdir = internal global %struct.syscall_metadata { ptr @.str.26, i32 -1, i32 1, ptr @types__chdir, ptr @args__chdir, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__chdir, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__chdir, i64 20) }, ptr @event_enter__chdir, ptr @event_exit__chdir }, align 4
@event_enter__chdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.24 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chdir, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__chdir = internal global ptr @event_enter__chdir, section "_ftrace_events", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_chdir\00", [17 x i8] zeroinitializer }, align 32
@event_exit__chdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.25 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chdir, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__chdir = internal global ptr @event_exit__chdir, section "_ftrace_events", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_chdir\00", [22 x i8] zeroinitializer }, align 32
@types__chdir = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.80], [28 x i8] zeroinitializer }, align 32
@args__chdir = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.96], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__chdir = internal global ptr @__syscall_meta__chdir, section "__syscalls_metadata", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_fchdir\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__fchdir = internal global %struct.syscall_metadata { ptr @.str.29, i32 -1, i32 1, ptr @types__fchdir, ptr @args__fchdir, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fchdir, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fchdir, i64 20) }, ptr @event_enter__fchdir, ptr @event_exit__fchdir }, align 4
@event_enter__fchdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.27 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchdir, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fchdir = internal global ptr @event_enter__fchdir, section "_ftrace_events", align 4
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_fchdir\00", [16 x i8] zeroinitializer }, align 32
@event_exit__fchdir = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.28 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchdir, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fchdir = internal global ptr @event_exit__fchdir, section "_ftrace_events", align 4
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_fchdir\00", [21 x i8] zeroinitializer }, align 32
@types__fchdir = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@args__fchdir = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fchdir = internal global ptr @__syscall_meta__fchdir, section "__syscalls_metadata", align 4
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_chroot\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__chroot = internal global %struct.syscall_metadata { ptr @.str.32, i32 -1, i32 1, ptr @types__chroot, ptr @args__chroot, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__chroot, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__chroot, i64 20) }, ptr @event_enter__chroot, ptr @event_exit__chroot }, align 4
@event_enter__chroot = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chroot, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__chroot = internal global ptr @event_enter__chroot, section "_ftrace_events", align 4
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_chroot\00", [16 x i8] zeroinitializer }, align 32
@event_exit__chroot = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.31 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chroot, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__chroot = internal global ptr @event_exit__chroot, section "_ftrace_events", align 4
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_chroot\00", [21 x i8] zeroinitializer }, align 32
@types__chroot = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.80], [28 x i8] zeroinitializer }, align 32
@args__chroot = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.96], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__chroot = internal global ptr @__syscall_meta__chroot, section "__syscalls_metadata", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_fchmod\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__fchmod = internal global %struct.syscall_metadata { ptr @.str.35, i32 -1, i32 2, ptr @types__fchmod, ptr @args__fchmod, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fchmod, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fchmod, i64 20) }, ptr @event_enter__fchmod, ptr @event_exit__fchmod }, align 4
@event_enter__fchmod = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.33 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchmod, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fchmod = internal global ptr @event_enter__fchmod, section "_ftrace_events", align 4
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_fchmod\00", [16 x i8] zeroinitializer }, align 32
@event_exit__fchmod = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.34 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchmod, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fchmod = internal global ptr @event_exit__fchmod, section "_ftrace_events", align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_fchmod\00", [21 x i8] zeroinitializer }, align 32
@types__fchmod = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.87, ptr @.str.99], [24 x i8] zeroinitializer }, align 32
@args__fchmod = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.89, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fchmod = internal global ptr @__syscall_meta__fchmod, section "__syscalls_metadata", align 4
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_fchmodat\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__fchmodat = internal global %struct.syscall_metadata { ptr @.str.38, i32 -1, i32 3, ptr @types__fchmodat, ptr @args__fchmodat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fchmodat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fchmodat, i64 20) }, ptr @event_enter__fchmodat, ptr @event_exit__fchmodat }, align 4
@event_enter__fchmodat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.36 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchmodat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fchmodat = internal global ptr @event_enter__fchmodat, section "_ftrace_events", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_fchmodat\00", [46 x i8] zeroinitializer }, align 32
@event_exit__fchmodat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.37 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchmodat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fchmodat = internal global ptr @event_exit__fchmodat, section "_ftrace_events", align 4
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_fchmodat\00", [19 x i8] zeroinitializer }, align 32
@types__fchmodat = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.91, ptr @.str.80, ptr @.str.99], [20 x i8] zeroinitializer }, align 32
@args__fchmodat = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.92], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fchmodat = internal global ptr @__syscall_meta__fchmodat, section "__syscalls_metadata", align 4
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_chmod\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__chmod = internal global %struct.syscall_metadata { ptr @.str.41, i32 -1, i32 2, ptr @types__chmod, ptr @args__chmod, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__chmod, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__chmod, i64 20) }, ptr @event_enter__chmod, ptr @event_exit__chmod }, align 4
@event_enter__chmod = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.39 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chmod, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__chmod = internal global ptr @event_enter__chmod, section "_ftrace_events", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_chmod\00", [17 x i8] zeroinitializer }, align 32
@event_exit__chmod = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.40 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chmod, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__chmod = internal global ptr @event_exit__chmod, section "_ftrace_events", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_chmod\00", [22 x i8] zeroinitializer }, align 32
@types__chmod = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.99], [24 x i8] zeroinitializer }, align 32
@args__chmod = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.96, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__chmod = internal global ptr @__syscall_meta__chmod, section "__syscalls_metadata", align 4
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_fchownat\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__fchownat = internal global %struct.syscall_metadata { ptr @.str.45, i32 -1, i32 5, ptr @types__fchownat, ptr @args__fchownat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fchownat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fchownat, i64 20) }, ptr @event_enter__fchownat, ptr @event_exit__fchownat }, align 4
@event_enter__fchownat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.43 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchownat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fchownat = internal global ptr @event_enter__fchownat, section "_ftrace_events", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_fchownat\00", [46 x i8] zeroinitializer }, align 32
@event_exit__fchownat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.44 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchownat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fchownat = internal global ptr @event_exit__fchownat, section "_ftrace_events", align 4
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_fchownat\00", [19 x i8] zeroinitializer }, align 32
@types__fchownat = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.91, ptr @.str.80, ptr @.str.100, ptr @.str.101, ptr @.str.91], [44 x i8] zeroinitializer }, align 32
@args__fchownat = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.102, ptr @.str.103, ptr @.str.104], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fchownat = internal global ptr @__syscall_meta__fchownat, section "__syscalls_metadata", align 4
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_chown\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__chown = internal global %struct.syscall_metadata { ptr @.str.48, i32 -1, i32 3, ptr @types__chown, ptr @args__chown, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__chown, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__chown, i64 20) }, ptr @event_enter__chown, ptr @event_exit__chown }, align 4
@event_enter__chown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.46 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chown, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__chown = internal global ptr @event_enter__chown, section "_ftrace_events", align 4
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_chown\00", [17 x i8] zeroinitializer }, align 32
@event_exit__chown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.47 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__chown, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__chown = internal global ptr @event_exit__chown, section "_ftrace_events", align 4
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_chown\00", [22 x i8] zeroinitializer }, align 32
@types__chown = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.80, ptr @.str.100, ptr @.str.101], [20 x i8] zeroinitializer }, align 32
@args__chown = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.96, ptr @.str.102, ptr @.str.103], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__chown = internal global ptr @__syscall_meta__chown, section "__syscalls_metadata", align 4
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_lchown\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__lchown = internal global %struct.syscall_metadata { ptr @.str.51, i32 -1, i32 3, ptr @types__lchown, ptr @args__lchown, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__lchown, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__lchown, i64 20) }, ptr @event_enter__lchown, ptr @event_exit__lchown }, align 4
@event_enter__lchown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.49 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lchown, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__lchown = internal global ptr @event_enter__lchown, section "_ftrace_events", align 4
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_lchown\00", [16 x i8] zeroinitializer }, align 32
@event_exit__lchown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.50 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__lchown, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__lchown = internal global ptr @event_exit__lchown, section "_ftrace_events", align 4
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_lchown\00", [21 x i8] zeroinitializer }, align 32
@types__lchown = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.80, ptr @.str.100, ptr @.str.101], [20 x i8] zeroinitializer }, align 32
@args__lchown = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.96, ptr @.str.102, ptr @.str.103], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__lchown = internal global ptr @__syscall_meta__lchown, section "__syscalls_metadata", align 4
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_fchown\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__fchown = internal global %struct.syscall_metadata { ptr @.str.54, i32 -1, i32 3, ptr @types__fchown, ptr @args__fchown, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fchown, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fchown, i64 20) }, ptr @event_enter__fchown, ptr @event_exit__fchown }, align 4
@event_enter__fchown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.52 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchown, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fchown = internal global ptr @event_enter__fchown, section "_ftrace_events", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_fchown\00", [16 x i8] zeroinitializer }, align 32
@event_exit__fchown = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.53 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__fchown, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fchown = internal global ptr @event_exit__fchown, section "_ftrace_events", align 4
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_fchown\00", [21 x i8] zeroinitializer }, align 32
@types__fchown = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.87, ptr @.str.100, ptr @.str.101], [20 x i8] zeroinitializer }, align 32
@args__fchown = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.89, ptr @.str.102, ptr @.str.103], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fchown = internal global ptr @__syscall_meta__fchown, section "__syscalls_metadata", align 4
@__kstrtab_finish_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_open = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_open to i32), ptr @__kstrtab_finish_open, ptr @__kstrtabns_finish_open }, section "___ksymtab+finish_open", align 4
@__kstrtab_finish_no_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_no_open = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_no_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_no_open to i32), ptr @__kstrtab_finish_no_open, ptr @__kstrtabns_finish_no_open }, section "___ksymtab+finish_no_open", align 4
@__kstrtab_file_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_path = external dso_local constant [0 x i8], align 1
@__ksymtab_file_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_path to i32), ptr @__kstrtab_file_path, ptr @__kstrtabns_file_path }, section "___ksymtab+file_path", align 4
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/open.c\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_dentry_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dentry_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dentry_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dentry_open to i32), ptr @__kstrtab_dentry_open, ptr @__kstrtabns_dentry_open }, section "___ksymtab+dentry_open", align 4
@__kstrtab_open_with_fake_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_with_fake_path = external dso_local constant [0 x i8], align 1
@__ksymtab_open_with_fake_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_with_fake_path to i32), ptr @__kstrtab_open_with_fake_path, ptr @__kstrtabns_open_with_fake_path }, section "___ksymtab+open_with_fake_path", align 4
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\02\06\06\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_filp_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_filp_open = external dso_local constant [0 x i8], align 1
@__ksymtab_filp_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filp_open to i32), ptr @__kstrtab_filp_open, ptr @__kstrtabns_filp_open }, section "___ksymtab+filp_open", align 4
@__kstrtab_file_open_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_open_root = external dso_local constant [0 x i8], align 1
@__ksymtab_file_open_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_open_root to i32), ptr @__kstrtab_file_open_root, ptr @__kstrtabns_file_open_root }, section "___ksymtab+file_open_root", align 4
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_open\00", [17 x i8] zeroinitializer }, align 32
@__syscall_meta__open = internal global %struct.syscall_metadata { ptr @.str.59, i32 -1, i32 3, ptr @types__open, ptr @args__open, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__open, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__open, i64 20) }, ptr @event_enter__open, ptr @event_exit__open }, align 4
@event_enter__open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.57 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__open, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__open = internal global ptr @event_enter__open, section "_ftrace_events", align 4
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_open\00", [18 x i8] zeroinitializer }, align 32
@event_exit__open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.58 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__open, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__open = internal global ptr @event_exit__open, section "_ftrace_events", align 4
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_open\00", [23 x i8] zeroinitializer }, align 32
@types__open = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.80, ptr @.str.91, ptr @.str.99], [20 x i8] zeroinitializer }, align 32
@args__open = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.96, ptr @.str.98, ptr @.str.92], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__open = internal global ptr @__syscall_meta__open, section "__syscalls_metadata", align 4
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_openat\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__openat = internal global %struct.syscall_metadata { ptr @.str.62, i32 -1, i32 4, ptr @types__openat, ptr @args__openat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__openat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__openat, i64 20) }, ptr @event_enter__openat, ptr @event_exit__openat }, align 4
@event_enter__openat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.60 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__openat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__openat = internal global ptr @event_enter__openat, section "_ftrace_events", align 4
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_openat\00", [16 x i8] zeroinitializer }, align 32
@event_exit__openat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.61 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__openat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__openat = internal global ptr @event_exit__openat, section "_ftrace_events", align 4
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_openat\00", [21 x i8] zeroinitializer }, align 32
@types__openat = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.91, ptr @.str.80, ptr @.str.91, ptr @.str.99], [16 x i8] zeroinitializer }, align 32
@args__openat = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.92], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__openat = internal global ptr @__syscall_meta__openat, section "__syscalls_metadata", align 4
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_openat2\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__openat2 = internal global %struct.syscall_metadata { ptr @.str.65, i32 -1, i32 4, ptr @types__openat2, ptr @args__openat2, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__openat2, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__openat2, i64 20) }, ptr @event_enter__openat2, ptr @event_exit__openat2 }, align 4
@event_enter__openat2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.63 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__openat2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__openat2 = internal global ptr @event_enter__openat2, section "_ftrace_events", align 4
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_openat2\00", [47 x i8] zeroinitializer }, align 32
@event_exit__openat2 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.64 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__openat2, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__openat2 = internal global ptr @event_exit__openat2, section "_ftrace_events", align 4
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_openat2\00", [20 x i8] zeroinitializer }, align 32
@types__openat2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.91, ptr @.str.80, ptr @.str.105, ptr @.str.106], [16 x i8] zeroinitializer }, align 32
@args__openat2 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.107, ptr @.str.108], [16 x i8] zeroinitializer }, align 32
@__p_syscall_meta__openat2 = internal global ptr @__syscall_meta__openat2, section "__syscalls_metadata", align 4
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_creat\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__creat = internal global %struct.syscall_metadata { ptr @.str.68, i32 -1, i32 2, ptr @types__creat, ptr @args__creat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__creat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__creat, i64 20) }, ptr @event_enter__creat, ptr @event_exit__creat }, align 4
@event_enter__creat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.66 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__creat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__creat = internal global ptr @event_enter__creat, section "_ftrace_events", align 4
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_creat\00", [17 x i8] zeroinitializer }, align 32
@event_exit__creat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.67 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__creat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__creat = internal global ptr @event_exit__creat, section "_ftrace_events", align 4
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_creat\00", [22 x i8] zeroinitializer }, align 32
@types__creat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.99], [24 x i8] zeroinitializer }, align 32
@args__creat = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.112, ptr @.str.92], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__creat = internal global ptr @__syscall_meta__creat, section "__syscalls_metadata", align 4
@filp_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.55, i32 1319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013VFS: Close: file count is 0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"filp_close\00", [21 x i8] zeroinitializer }, align 32
@filp_close._entry_ptr = internal global ptr @filp_close._entry, section ".printk_index", align 4
@__kstrtab_filp_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_filp_close = external dso_local constant [0 x i8], align 1
@__ksymtab_filp_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filp_close to i32), ptr @__kstrtab_filp_close, ptr @__kstrtabns_filp_close }, section "___ksymtab+filp_close", align 4
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_close\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__close = internal global %struct.syscall_metadata { ptr @.str.73, i32 -1, i32 1, ptr @types__close, ptr @args__close, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__close, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__close, i64 20) }, ptr @event_enter__close, ptr @event_exit__close }, align 4
@event_enter__close = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.71 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__close, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__close = internal global ptr @event_enter__close, section "_ftrace_events", align 4
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_close\00", [17 x i8] zeroinitializer }, align 32
@event_exit__close = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.72 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__close, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__close = internal global ptr @event_exit__close, section "_ftrace_events", align 4
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_close\00", [22 x i8] zeroinitializer }, align 32
@types__close = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.87], [28 x i8] zeroinitializer }, align 32
@args__close = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.89], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__close = internal global ptr @__syscall_meta__close, section "__syscalls_metadata", align 4
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_close_range\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__close_range = internal global %struct.syscall_metadata { ptr @.str.76, i32 -1, i32 3, ptr @types__close_range, ptr @args__close_range, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__close_range, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__close_range, i64 20) }, ptr @event_enter__close_range, ptr @event_exit__close_range }, align 4
@event_enter__close_range = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.74 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__close_range, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__close_range = internal global ptr @event_enter__close_range, section "_ftrace_events", align 4
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_close_range\00", [43 x i8] zeroinitializer }, align 32
@event_exit__close_range = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.75 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__close_range, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__close_range = internal global ptr @event_exit__close_range, section "_ftrace_events", align 4
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_close_range\00", [16 x i8] zeroinitializer }, align 32
@types__close_range = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.87, ptr @.str.87, ptr @.str.87], [20 x i8] zeroinitializer }, align 32
@args__close_range = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.89, ptr @.str.113, ptr @.str.98], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__close_range = internal global ptr @__syscall_meta__close_range, section "__syscalls_metadata", align 4
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_vhangup\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__vhangup = internal global %struct.syscall_metadata { ptr @.str.79, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__vhangup, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__vhangup, i64 20) }, ptr @event_enter__vhangup, ptr @event_exit__vhangup }, align 4
@event_enter__vhangup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.79 { ptr @.str.77 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__vhangup, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__vhangup = internal global ptr @event_enter__vhangup, section "_ftrace_events", align 4
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_vhangup\00", [47 x i8] zeroinitializer }, align 32
@event_exit__vhangup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.79 { ptr @.str.78 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.81 zeroinitializer, ptr @__syscall_meta__vhangup, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__vhangup = internal global ptr @event_exit__vhangup, section "_ftrace_events", align 4
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_vhangup\00", [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__vhangup = internal global ptr @__syscall_meta__vhangup, section "__syscalls_metadata", align 4
@__kstrtab_generic_file_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_open = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_open to i32), ptr @__kstrtab_generic_file_open, ptr @__kstrtabns_generic_file_open }, section "___ksymtab+generic_file_open", align 4
@__kstrtab_nonseekable_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_nonseekable_open = external dso_local constant [0 x i8], align 1
@__ksymtab_nonseekable_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nonseekable_open to i32), ptr @__kstrtab_nonseekable_open, ptr @__kstrtabns_nonseekable_open }, section "___ksymtab+nonseekable_open", align 4
@__kstrtab_stream_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_stream_open = external dso_local constant [0 x i8], align 1
@__ksymtab_stream_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stream_open to i32), ptr @__kstrtab_stream_open, ptr @__kstrtabns_stream_open }, section "___ksymtab+stream_open", align 4
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"path\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"length\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dfd\00", [28 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"filename\00", [23 x i8] zeroinitializer }, align 32
@__cap_empty_set = external dso_local local_unnamed_addr constant %struct.kernel_cap_struct, align 4
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"umode_t\00", [24 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flag\00", [27 x i8] zeroinitializer }, align 32
@do_dentry_open.empty_fops = internal constant { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@do_dentry_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct open_how *\00", [46 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"how\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usize\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pathname\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"max_fd\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 16384, i64 24576, i64 32768]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 16, i64 4096, i64 8192, i64 24576, i64 49152]
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"event_enter__truncate\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"event_exit__truncate\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"types__truncate\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"args__truncate\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"event_enter__ftruncate\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"event_exit__ftruncate\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"types__ftruncate\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"args__ftruncate\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [24 x i8] c"event_enter__truncate64\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"event_exit__truncate64\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"types__truncate64\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"args__truncate64\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [25 x i8] c"event_enter__ftruncate64\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"event_exit__ftruncate64\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"types__ftruncate64\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [18 x i8] c"args__ftruncate64\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 221, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [23 x i8] c"event_enter__fallocate\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"event_exit__fallocate\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"types__fallocate\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"args__fallocate\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [23 x i8] c"event_enter__faccessat\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"event_exit__faccessat\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"types__faccessat\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"args__faccessat\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [24 x i8] c"event_enter__faccessat2\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [23 x i8] c"event_exit__faccessat2\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"types__faccessat2\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"args__faccessat2\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"event_enter__access\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [19 x i8] c"event_exit__access\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [14 x i8] c"types__access\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [13 x i8] c"args__access\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 479, i32 1 }
@___asan_gen_.289 = private unnamed_addr constant [19 x i8] c"event_enter__chdir\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [18 x i8] c"event_exit__chdir\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [13 x i8] c"types__chdir\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [12 x i8] c"args__chdir\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 484, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"event_enter__fchdir\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c"event_exit__fchdir\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [14 x i8] c"types__fchdir\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [13 x i8] c"args__fchdir\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 510, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c"event_enter__chroot\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [19 x i8] c"event_exit__chroot\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [14 x i8] c"types__chroot\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [13 x i8] c"args__chroot\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 532, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c"event_enter__fchmod\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [19 x i8] c"event_exit__fchmod\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [14 x i8] c"types__fchmod\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [13 x i8] c"args__fchmod\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [22 x i8] c"event_enter__fchmodat\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [21 x i8] c"event_exit__fchmodat\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"types__fchmodat\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [15 x i8] c"args__fchmodat\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 631, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant [19 x i8] c"event_enter__chmod\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [18 x i8] c"event_exit__chmod\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [13 x i8] c"types__chmod\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [12 x i8] c"args__chmod\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 637, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant [22 x i8] c"event_enter__fchownat\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [21 x i8] c"event_exit__fchownat\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [16 x i8] c"types__fchownat\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [15 x i8] c"args__fchownat\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [19 x i8] c"event_enter__chown\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [18 x i8] c"event_exit__chown\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [13 x i8] c"types__chown\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [12 x i8] c"args__chown\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 729, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c"event_enter__lchown\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [19 x i8] c"event_exit__lchown\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [14 x i8] c"types__lchown\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [13 x i8] c"args__lchown\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 734, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c"event_enter__fchown\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [19 x i8] c"event_exit__fchown\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [14 x i8] c"types__fchown\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [13 x i8] c"args__fchown\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 765, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 968, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1027, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant [18 x i8] c"event_enter__open\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [17 x i8] c"event_exit__open\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [12 x i8] c"types__open\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [11 x i8] c"args__open\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1234, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c"event_enter__openat\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [19 x i8] c"event_exit__openat\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [14 x i8] c"types__openat\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [13 x i8] c"args__openat\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1241, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [21 x i8] c"event_enter__openat2\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c"event_exit__openat2\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [15 x i8] c"types__openat2\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [14 x i8] c"args__openat2\00", align 1
@___asan_gen_.568 = private unnamed_addr constant [19 x i8] c"event_enter__creat\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [18 x i8] c"event_exit__creat\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [13 x i8] c"types__creat\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [12 x i8] c"args__creat\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1319, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [19 x i8] c"event_enter__close\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [18 x i8] c"event_exit__close\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [13 x i8] c"types__close\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [12 x i8] c"args__close\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1341, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant [25 x i8] c"event_enter__close_range\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [24 x i8] c"event_exit__close_range\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [19 x i8] c"types__close_range\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [18 x i8] c"args__close_range\00", align 1
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c"event_enter__vhangup\00", align 1
@___asan_gen_.646 = private unnamed_addr constant [20 x i8] c"event_exit__vhangup\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1376, i32 1 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 144, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 49, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.671, i32 34, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 202, i32 1 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 216, i32 1 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 337, i32 1 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 468, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 286, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 473, i32 1 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 601, i32 1 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 723, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant [11 x i8] c"empty_fops\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 774, i32 38 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1249, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 156, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1300, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.749 = private constant [13 x i8] c"../fs/open.c\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.749, i32 1366, i32 1 }
@llvm.compiler.used = appending global [325 x ptr] [ptr @__event_enter__access, ptr @__event_enter__chdir, ptr @__event_enter__chmod, ptr @__event_enter__chown, ptr @__event_enter__chroot, ptr @__event_enter__close, ptr @__event_enter__close_range, ptr @__event_enter__creat, ptr @__event_enter__faccessat, ptr @__event_enter__faccessat2, ptr @__event_enter__fallocate, ptr @__event_enter__fchdir, ptr @__event_enter__fchmod, ptr @__event_enter__fchmodat, ptr @__event_enter__fchown, ptr @__event_enter__fchownat, ptr @__event_enter__ftruncate, ptr @__event_enter__ftruncate64, ptr @__event_enter__lchown, ptr @__event_enter__open, ptr @__event_enter__openat, ptr @__event_enter__openat2, ptr @__event_enter__truncate, ptr @__event_enter__truncate64, ptr @__event_enter__vhangup, ptr @__event_exit__access, ptr @__event_exit__chdir, ptr @__event_exit__chmod, ptr @__event_exit__chown, ptr @__event_exit__chroot, ptr @__event_exit__close, ptr @__event_exit__close_range, ptr @__event_exit__creat, ptr @__event_exit__faccessat, ptr @__event_exit__faccessat2, ptr @__event_exit__fallocate, ptr @__event_exit__fchdir, ptr @__event_exit__fchmod, ptr @__event_exit__fchmodat, ptr @__event_exit__fchown, ptr @__event_exit__fchownat, ptr @__event_exit__ftruncate, ptr @__event_exit__ftruncate64, ptr @__event_exit__lchown, ptr @__event_exit__open, ptr @__event_exit__openat, ptr @__event_exit__openat2, ptr @__event_exit__truncate, ptr @__event_exit__truncate64, ptr @__event_exit__vhangup, ptr @__ksymtab_dentry_open, ptr @__ksymtab_file_open_root, ptr @__ksymtab_file_path, ptr @__ksymtab_filp_close, ptr @__ksymtab_filp_open, ptr @__ksymtab_finish_no_open, ptr @__ksymtab_finish_open, ptr @__ksymtab_generic_file_open, ptr @__ksymtab_nonseekable_open, ptr @__ksymtab_open_with_fake_path, ptr @__ksymtab_stream_open, ptr @__ksymtab_vfs_fallocate, ptr @__ksymtab_vfs_truncate, ptr @__p_syscall_meta__access, ptr @__p_syscall_meta__chdir, ptr @__p_syscall_meta__chmod, ptr @__p_syscall_meta__chown, ptr @__p_syscall_meta__chroot, ptr @__p_syscall_meta__close, ptr @__p_syscall_meta__close_range, ptr @__p_syscall_meta__creat, ptr @__p_syscall_meta__faccessat, ptr @__p_syscall_meta__faccessat2, ptr @__p_syscall_meta__fallocate, ptr @__p_syscall_meta__fchdir, ptr @__p_syscall_meta__fchmod, ptr @__p_syscall_meta__fchmodat, ptr @__p_syscall_meta__fchown, ptr @__p_syscall_meta__fchownat, ptr @__p_syscall_meta__ftruncate, ptr @__p_syscall_meta__ftruncate64, ptr @__p_syscall_meta__lchown, ptr @__p_syscall_meta__open, ptr @__p_syscall_meta__openat, ptr @__p_syscall_meta__openat2, ptr @__p_syscall_meta__truncate, ptr @__p_syscall_meta__truncate64, ptr @__p_syscall_meta__vhangup, ptr @__syscall_meta__access, ptr @__syscall_meta__chdir, ptr @__syscall_meta__chmod, ptr @__syscall_meta__chown, ptr @__syscall_meta__chroot, ptr @__syscall_meta__close, ptr @__syscall_meta__close_range, ptr @__syscall_meta__creat, ptr @__syscall_meta__faccessat, ptr @__syscall_meta__faccessat2, ptr @__syscall_meta__fallocate, ptr @__syscall_meta__fchdir, ptr @__syscall_meta__fchmod, ptr @__syscall_meta__fchmodat, ptr @__syscall_meta__fchown, ptr @__syscall_meta__fchownat, ptr @__syscall_meta__ftruncate, ptr @__syscall_meta__ftruncate64, ptr @__syscall_meta__lchown, ptr @__syscall_meta__open, ptr @__syscall_meta__openat, ptr @__syscall_meta__openat2, ptr @__syscall_meta__truncate, ptr @__syscall_meta__truncate64, ptr @__syscall_meta__vhangup, ptr @event_enter__access, ptr @event_enter__chdir, ptr @event_enter__chmod, ptr @event_enter__chown, ptr @event_enter__chroot, ptr @event_enter__close, ptr @event_enter__close_range, ptr @event_enter__creat, ptr @event_enter__faccessat, ptr @event_enter__faccessat2, ptr @event_enter__fallocate, ptr @event_enter__fchdir, ptr @event_enter__fchmod, ptr @event_enter__fchmodat, ptr @event_enter__fchown, ptr @event_enter__fchownat, ptr @event_enter__ftruncate, ptr @event_enter__ftruncate64, ptr @event_enter__lchown, ptr @event_enter__open, ptr @event_enter__openat, ptr @event_enter__openat2, ptr @event_enter__truncate, ptr @event_enter__truncate64, ptr @event_enter__vhangup, ptr @event_exit__access, ptr @event_exit__chdir, ptr @event_exit__chmod, ptr @event_exit__chown, ptr @event_exit__chroot, ptr @event_exit__close, ptr @event_exit__close_range, ptr @event_exit__creat, ptr @event_exit__faccessat, ptr @event_exit__faccessat2, ptr @event_exit__fallocate, ptr @event_exit__fchdir, ptr @event_exit__fchmod, ptr @event_exit__fchmodat, ptr @event_exit__fchown, ptr @event_exit__fchownat, ptr @event_exit__ftruncate, ptr @event_exit__ftruncate64, ptr @event_exit__lchown, ptr @event_exit__open, ptr @event_exit__openat, ptr @event_exit__openat2, ptr @event_exit__truncate, ptr @event_exit__truncate64, ptr @event_exit__vhangup, ptr @filp_close._entry, ptr @filp_close._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__truncate, ptr @args__truncate, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__ftruncate, ptr @args__ftruncate, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__truncate64, ptr @args__truncate64, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__ftruncate64, ptr @args__ftruncate64, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__fallocate, ptr @args__fallocate, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @types__faccessat, ptr @args__faccessat, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @types__faccessat2, ptr @args__faccessat2, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @types__access, ptr @args__access, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @types__chdir, ptr @args__chdir, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @types__fchdir, ptr @args__fchdir, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @types__chroot, ptr @args__chroot, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @types__fchmod, ptr @args__fchmod, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @types__fchmodat, ptr @args__fchmodat, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @types__chmod, ptr @args__chmod, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @types__fchownat, ptr @args__fchownat, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @types__chown, ptr @args__chown, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @types__lchown, ptr @args__lchown, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @types__fchown, ptr @args__fchown, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @types__open, ptr @args__open, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @types__openat, ptr @args__openat, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @types__openat2, ptr @args__openat2, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @types__creat, ptr @args__creat, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @types__close, ptr @args__close, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @types__close_range, ptr @args__close_range, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @do_dentry_open.empty_fops, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.111, ptr @.str.112, ptr @.str.113], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__truncate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__truncate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__truncate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__truncate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ftruncate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ftruncate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ftruncate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ftruncate to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__truncate64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__truncate64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__truncate64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__truncate64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__ftruncate64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__ftruncate64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__ftruncate64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__ftruncate64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fallocate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fallocate to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fallocate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fallocate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__faccessat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__faccessat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__faccessat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__faccessat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__faccessat2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__faccessat2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__faccessat2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__faccessat2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__access to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__access to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__access to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__access to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__chdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__chdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__chdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__chdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fchdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fchdir to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fchdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fchdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__chroot to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__chroot to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__chroot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__chroot to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fchmod to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fchmod to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fchmod to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fchmod to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fchmodat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fchmodat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fchmodat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fchmodat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__chmod to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__chmod to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__chmod to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__chmod to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fchownat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fchownat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fchownat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fchownat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__chown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__chown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__chown to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__chown to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__lchown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__lchown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__lchown to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__lchown to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fchown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fchown to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__fchown to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__fchown to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__open to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__open to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__openat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__openat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__openat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__openat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__openat2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__openat2 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__openat2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__openat2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__creat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__creat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__creat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__creat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filp_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__close to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__close to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__close to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__close to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__close_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__close_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__close_range to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__close_range to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__vhangup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__vhangup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dentry_open.empty_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_truncate = dso_local alias i32 (ptr, i32), ptr @__se_sys_truncate
@sys_ftruncate = dso_local alias i32 (i32, i32), ptr @__se_sys_ftruncate
@sys_truncate64 = dso_local alias i32 (ptr, i64), ptr @__se_sys_truncate64
@sys_ftruncate64 = dso_local alias i32 (i32, i64), ptr @__se_sys_ftruncate64
@sys_fallocate = dso_local alias i32 (i32, i32, i64, i64), ptr @__se_sys_fallocate
@sys_faccessat = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_faccessat
@sys_faccessat2 = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_faccessat2
@sys_access = dso_local alias i32 (ptr, i32), ptr @__se_sys_access
@sys_chdir = dso_local alias i32 (ptr), ptr @__se_sys_chdir
@sys_fchdir = dso_local alias i32 (i32), ptr @__se_sys_fchdir
@sys_chroot = dso_local alias i32 (ptr), ptr @__se_sys_chroot
@sys_fchmod = dso_local alias i32 (i32, i16), ptr @__se_sys_fchmod
@sys_fchmodat = dso_local alias i32 (i32, ptr, i16), ptr @__se_sys_fchmodat
@sys_chmod = dso_local alias i32 (ptr, i16), ptr @__se_sys_chmod
@sys_fchownat = dso_local alias i32 (i32, ptr, i32, i32, i32), ptr @__se_sys_fchownat
@sys_chown = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_chown
@sys_lchown = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_lchown
@sys_fchown = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_fchown
@sys_open = dso_local alias i32 (ptr, i32, i16), ptr @__se_sys_open
@sys_openat = dso_local alias i32 (i32, ptr, i32, i16), ptr @__se_sys_openat
@sys_openat2 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_openat2
@sys_creat = dso_local alias i32 (ptr, i16), ptr @__se_sys_creat
@sys_close = dso_local alias i32 (i32), ptr @__se_sys_close
@sys_close_range = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_close_range

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_truncate(ptr noundef %mnt_userns, ptr noundef %dentry, i64 noundef %length, i32 noundef %time_attrs, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %newattrs = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #11
  %0 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %cmp = icmp slt i64 %length, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ia_size = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 4
  %1 = ptrtoint ptr %ia_size to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %length, ptr %ia_size, align 8
  %or = or i32 %time_attrs, 8
  %2 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %newattrs, align 8
  %tobool.not = icmp eq ptr %filp, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ia_file = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 8
  %3 = ptrtoint ptr %ia_file to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %filp, ptr %ia_file, align 8
  %or3 = or i32 %time_attrs, 8200
  %4 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or3, ptr %newattrs, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %call = tail call i32 @dentry_needs_remove_privs(ptr noundef %dentry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %if.then9

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %newattrs, align 8
  %or10 = or i32 %call, %6
  %or12 = or i32 %or10, 512
  store i32 %or12, ptr %newattrs, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7.if.end13_crit_edge
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #11
  %call14 = call i32 @notify_change(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef nonnull %newattrs, ptr noundef null) #11
  %9 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i26 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i26) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dentry_needs_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_truncate(ptr noundef %path, i64 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 8
  %6 = and i16 %5, -4096
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.then7 [
    i16 16384, label %entry.cleanup_crit_edge
    i16 -32768, label %if.end8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path, align 4
  %call = tail call i32 @mnt_want_write(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %call13 = tail call i32 @inode_permission(ptr noundef %13, ptr noundef %3, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.mnt_drop_write_and_out_crit_edge

if.end10.mnt_drop_write_and_out_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %mnt_drop_write_and_out

if.end16:                                         ; preds = %if.end10
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %and17 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.mnt_drop_write_and_out_crit_edge

if.end16.mnt_drop_write_and_out_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %mnt_drop_write_and_out

if.end20:                                         ; preds = %if.end16
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #11
  %16 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end20
  %c.0.i.i.i = phi i32 [ %17, %if.end20 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.mnt_drop_write_and_out_crit_edge, label %do.cond3.i.i.i, !prof !398

do.body1.i.i.i.mnt_drop_write_and_out_crit_edge:  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mnt_drop_write_and_out

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !399
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %i_writecount.i) #11, !srcloc !400
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !401
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end24, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !402

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i.i

if.end24:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %call25 = tail call fastcc i32 @break_lease(ptr noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.put_write_and_out_crit_edge

if.end24.put_write_and_out_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_write_and_out

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @security_path_truncate(ptr noundef %path) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.put_write_and_out_crit_edge

if.end28.put_write_and_out_crit_edge:             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_write_and_out

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dentry, align 4
  %call33 = tail call i32 @do_truncate(ptr noundef %13, ptr noundef %20, i64 noundef %length, i32 noundef 0, ptr noundef null)
  br label %put_write_and_out

put_write_and_out:                                ; preds = %if.then31, %if.end28.put_write_and_out_crit_edge, %if.end24.put_write_and_out_crit_edge
  %error.0 = phi i32 [ %call25, %if.end24.put_write_and_out_crit_edge ], [ %call29, %if.end28.put_write_and_out_crit_edge ], [ %call33, %if.then31 ]
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #11, !srcloc !403
  br label %mnt_drop_write_and_out

mnt_drop_write_and_out:                           ; preds = %put_write_and_out, %do.body1.i.i.i.mnt_drop_write_and_out_crit_edge, %if.end16.mnt_drop_write_and_out_crit_edge, %if.end10.mnt_drop_write_and_out_crit_edge
  %error.1 = phi i32 [ %call13, %if.end10.mnt_drop_write_and_out_crit_edge ], [ -1, %if.end16.mnt_drop_write_and_out_crit_edge ], [ %error.0, %put_write_and_out ], [ -26, %do.body1.i.i.i.mnt_drop_write_and_out_crit_edge ]
  %22 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %path, align 4
  tail call void @mnt_drop_write(ptr noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %mnt_drop_write_and_out, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -21, %entry.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ %error.1, %mnt_drop_write_and_out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @break_lease(ptr noundef %inode, i32 noundef %mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !404
  %i_flctx = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 45
  %0 = ptrtoint ptr %i_flctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_flctx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %entry
  %flc_lease = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flc_lease to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %flc_lease, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !405
  %cmp.i.not.i = icmp eq ptr %3, %flc_lease
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

list_empty_careful.exit:                          ; preds = %land.lhs.true
  %prev.i = getelementptr inbounds %struct.file_lock_context, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %5, %flc_lease
  br i1 %cmp.i.not, label %list_empty_careful.exit.return_crit_edge, label %list_empty_careful.exit.if.then_crit_edge

list_empty_careful.exit.if.then_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

list_empty_careful.exit.return_crit_edge:         ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %list_empty_careful.exit.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call5 = tail call i32 @__break_lease(ptr noundef %inode, i32 noundef %mode, i32 noundef 32) #11
  br label %return

return:                                           ; preds = %if.then, %list_empty_careful.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %list_empty_careful.exit.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_sys_truncate(ptr noundef %pathname, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !406
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !406
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %cmp = icmp slt i64 %length, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %retry.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %call.i.peel = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef 1, ptr noundef nonnull %path, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.peel)
  %tobool.not.peel = icmp eq i32 %call.i.peel, 0
  br i1 %tobool.not.peel, label %if.then1.peel, label %retry.preheader.if.end3.peel_crit_edge

retry.preheader.if.end3.peel_crit_edge:           ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.peel

if.then1.peel:                                    ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %call2.peel = call i32 @vfs_truncate(ptr noundef nonnull %path, i64 noundef %length)
  call void @path_put(ptr noundef nonnull %path) #11
  br label %if.end3.peel

if.end3.peel:                                     ; preds = %if.then1.peel, %retry.preheader.if.end3.peel_crit_edge
  %error.0.peel = phi i32 [ %call.i.peel, %retry.preheader.if.end3.peel_crit_edge ], [ %call2.peel, %if.then1.peel ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %error.0.peel)
  %cmp.i.peel = icmp eq i32 %error.0.peel, -116
  br i1 %cmp.i.peel, label %retry, label %if.end3.peel.cleanup_crit_edge

if.end3.peel.cleanup_crit_edge:                   ; preds = %if.end3.peel
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

retry:                                            ; preds = %if.end3.peel
  %call.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %pathname, i32 noundef 33, ptr noundef nonnull %path, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then1, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call i32 @vfs_truncate(ptr noundef nonnull %path, i64 noundef %length)
  call void @path_put(ptr noundef nonnull %path) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %retry.cleanup_crit_edge, %if.end3.peel.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %error.0.peel, %if.end3.peel.cleanup_crit_edge ], [ %call.i, %retry.cleanup_crit_edge ], [ %call2, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_truncate(i32 noundef %path, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %path to ptr
  %conv.i = sext i32 %length to i64
  %call.i = tail call i32 @do_sys_truncate(ptr noundef %0, i64 noundef %conv.i) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_sys_ftruncate(i32 noundef %fd, i64 noundef %length, i32 noundef %small) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %cmp = icmp slt i64 %length, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !407
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end2:                                          ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f_flags, align 4
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %f_path = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %dentry8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %dentry8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry8, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %9)
  %cmp10 = icmp eq i16 %9, -32768
  br i1 %cmp10, label %lor.lhs.false, label %if.end2.out_putf_crit_edge

if.end2.out_putf_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_putf

lor.lhs.false:                                    ; preds = %if.end2
  %f_mode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %10 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_mode, align 8
  %and13 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false.out_putf_crit_edge, label %if.end16

lor.lhs.false.out_putf_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_putf

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %small)
  %tobool17.not51 = icmp ne i32 %small, 0
  %tobool17.not = and i1 %tobool17.not51, %tobool4.not
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %length)
  %cmp18 = icmp ugt i64 %length, 2147483647
  %or.cond = and i1 %cmp18, %tobool17.not
  br i1 %or.cond, label %if.end16.out_putf_crit_edge, label %if.end21

if.end16.out_putf_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_putf

if.end21:                                         ; preds = %if.end16
  %f_inode.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags, align 4
  %and23 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.out_putf_crit_edge

if.end21.out_putf_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_putf

if.end26:                                         ; preds = %if.end21
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  tail call fastcc void @sb_start_write(ptr noundef %17)
  %call29 = tail call i32 @security_path_truncate(ptr noundef %f_path) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_path, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %call35 = tail call i32 @do_truncate(ptr noundef %21, ptr noundef %4, i64 noundef %length, i32 noundef 96, ptr noundef nonnull %0)
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end26.if.end36_crit_edge
  %error.0 = phi i32 [ %call29, %if.end26.if.end36_crit_edge ], [ %call35, %if.then31 ]
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  tail call fastcc void @__sb_end_write(ptr noundef %23) #11
  br label %out_putf

out_putf:                                         ; preds = %if.end36, %if.end21.out_putf_crit_edge, %if.end16.out_putf_crit_edge, %lor.lhs.false.out_putf_crit_edge, %if.end2.out_putf_crit_edge
  %error.1 = phi i32 [ -1, %if.end21.out_putf_crit_edge ], [ %error.0, %if.end36 ], [ -22, %lor.lhs.false.out_putf_crit_edge ], [ -22, %if.end2.out_putf_crit_edge ], [ -22, %if.end16.out_putf_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %out_putf.out_crit_edge, label %if.then.i

out_putf.out_crit_edge:                           ; preds = %out_putf
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i:                                        ; preds = %out_putf
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %out

out:                                              ; preds = %if.then.i, %out_putf.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.2 = phi i32 [ -22, %entry.out_crit_edge ], [ -9, %if.end.out_crit_edge ], [ %error.1, %out_putf.out_crit_edge ], [ %error.1, %if.then.i ]
  ret i32 %error.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_start_write(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.84, i32 noundef 49) #11
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #11
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !410
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 35, ptr noundef nonnull @.str.86) #11
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body7.i.i, label %if.else.i.i, !prof !402

do.body7.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !411
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add21.i.i = add i32 %20, 1
  store i32 %add21.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !412
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then41.i.i, label %do.body7.i.i.do.end43.i.i_crit_edge, !prof !398

do.body7.i.i.do.end43.i.i_crit_edge:              ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end43.i.i

if.then41.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %if.then41.i.i, %do.body7.i.i.do.end43.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #11, !srcloc !413
  br label %__sb_start_write.exit

if.else.i.i:                                      ; preds = %rcu_sync_is_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call50.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i, i1 noundef zeroext false) #11
  br label %__sb_start_write.exit

__sb_start_write.exit:                            ; preds = %if.else.i.i, %do.end43.i.i
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !414
  %22 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.i58.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i58.i.i to ptr
  %preempt_count.i.i59.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i59.i.i, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i59.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ftruncate(i32 noundef %fd, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i32 %length to i64
  %call.i = tail call i32 @do_sys_ftruncate(i32 noundef %fd, i64 noundef %conv.i, i32 noundef 1) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_truncate64(i32 noundef %path, i64 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %path to ptr
  %call.i = tail call i32 @do_sys_truncate(ptr noundef %0, i64 noundef %length) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ftruncate64(i32 noundef %fd, i64 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @do_sys_ftruncate(i32 noundef %fd, i64 noundef %length, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset)
  %cmp = icmp slt i64 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %len)
  %cmp1 = icmp slt i64 %len, 1
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %mode, -124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and4 = and i32 %mode, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and4)
  %cmp5 = icmp eq i32 %and4, 18
  %or.cond144 = or i1 %tobool.not, %cmp5
  %2 = and i32 %mode, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp eq i32 %2, 2
  %or.cond150 = or i1 %3, %or.cond144
  br i1 %or.cond150, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %and14 = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %and17 = and i32 %mode, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond140 = or i1 %tobool15.not, %tobool18.not
  br i1 %or.cond140, label %if.end20, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %and21 = and i32 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %mode, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or.cond141 = or i1 %tobool22.not, %tobool25.not
  br i1 %or.cond141, label %if.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %and28 = and i32 %mode, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %and31 = and i32 %mode, -66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond142 = or i1 %tobool29.not, %tobool32.not
  br i1 %or.cond142, label %if.end34, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %4 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_mode, align 8
  %and35 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %tobool40.not = icmp ult i32 %mode, 2
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %land.lhs.true41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

land.lhs.true41:                                  ; preds = %if.end38
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %and42 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %land.lhs.true41.if.end45_crit_edge, label %land.lhs.true41.cleanup_crit_edge

land.lhs.true41.cleanup_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true41.if.end45_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true41.if.end45_crit_edge, %if.end38.if.end45_crit_edge
  %i_flags46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %i_flags46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flags46, align 4
  %and47 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %and52 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %call56 = tail call i32 @security_file_permission(ptr noundef %file, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 8
  %12 = and i16 %11, -4096
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.114)
  switch i16 %12, label %if.then83 [
    i16 4096, label %if.end59.cleanup_crit_edge
    i16 16384, label %if.then70
    i16 -32768, label %if.end59.if.end84_crit_edge
    i16 24576, label %if.end59.if.end84_crit_edge151
  ]

if.end59.if.end84_crit_edge151:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.end59.if.end84_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then70:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then83:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end84:                                         ; preds = %if.end59.if.end84_crit_edge, %if.end59.if.end84_crit_edge151
  %add = add nuw i64 %len, %offset
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %s_maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %17)
  %cmp85 = icmp sgt i64 %add, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp89 = icmp slt i64 %add, 0
  %or.cond143 = or i1 %cmp89, %cmp85
  br i1 %or.cond143, label %if.end84.cleanup_crit_edge, label %if.end92

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end92:                                         ; preds = %if.end84
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %18 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f_op, align 4
  %fallocate = getelementptr inbounds %struct.file_operations, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %fallocate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fallocate, align 4
  %tobool93.not = icmp eq ptr %21, null
  br i1 %tobool93.not, label %if.end92.cleanup_crit_edge, label %if.end95

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end95:                                         ; preds = %if.end92
  %22 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_inode.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 8
  %26 = and i16 %25, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %26)
  %cmp.i = icmp eq i16 %26, -32768
  br i1 %cmp.i, label %if.end.i, label %if.end95.file_start_write.exit_crit_edge

if.end95.file_start_write.exit_crit_edge:         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_start_write.exit

if.end.i:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  tail call fastcc void @sb_start_write(ptr noundef %28) #11
  br label %file_start_write.exit

file_start_write.exit:                            ; preds = %if.end.i, %if.end95.file_start_write.exit_crit_edge
  %29 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_op, align 4
  %fallocate97 = getelementptr inbounds %struct.file_operations, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %fallocate97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fallocate97, align 4
  %call98 = tail call i32 %32(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %if.then101, label %file_start_write.exit.if.end102_crit_edge

file_start_write.exit.if.end102_crit_edge:        ; preds = %file_start_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then101:                                       ; preds = %file_start_write.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @fsnotify_modify(ptr noundef %file)
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %file_start_write.exit.if.end102_crit_edge
  %33 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %f_inode.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %37)
  %cmp.i146 = icmp eq i16 %37, -32768
  br i1 %cmp.i146, label %if.end.i148, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i148:                                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb.i147 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i147 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i147, align 4
  tail call fastcc void @__sb_end_write(ptr noundef %39) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i148, %if.end102.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then83, %if.then70, %if.end59.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %land.lhs.true41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -21, %if.then70 ], [ -19, %if.then83 ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -9, %if.end34.cleanup_crit_edge ], [ -1, %land.lhs.true41.cleanup_crit_edge ], [ -1, %if.end45.cleanup_crit_edge ], [ -26, %if.end50.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ -29, %if.end59.cleanup_crit_edge ], [ -27, %if.end84.cleanup_crit_edge ], [ -95, %if.end92.cleanup_crit_edge ], [ %call98, %if.end102.cleanup_crit_edge ], [ %call98, %if.end.i148 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_permission(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsnotify_modify(ptr noundef %file) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsnotify_file.exit_crit_edge

entry.fsnotify_file.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #11
  %8 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.end.i.fsnotify_file.exit_crit_edge, label %if.end.i.i

if.end.i.fsnotify_file.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then4.i.i.notify_child.i.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_child.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i.i = tail call i32 @__fsnotify_parent(ptr noundef %3, i32 noundef %mask.addr.0.i.i, ptr noundef %f_path.i, i32 noundef 1) #11
  br label %fsnotify_file.exit

notify_child.i.i:                                 ; preds = %if.end8.i.i.notify_child.i.i_crit_edge, %if.then4.i.i.notify_child.i.i_crit_edge
  %mask.addr.1.i.i = phi i32 [ %mask.addr.0.i.i, %if.end8.i.i.notify_child.i.i_crit_edge ], [ 1073741826, %if.then4.i.i.notify_child.i.i_crit_edge ]
  %call14.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i, ptr noundef %f_path.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %5, i32 noundef 0) #11
  br label %fsnotify_file.exit

fsnotify_file.exit:                               ; preds = %notify_child.i.i, %if.end12.i.i, %if.end.i.fsnotify_file.exit_crit_edge, %entry.fsnotify_file.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_fallocate(i32 noundef %fd, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !415
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @vfs_fallocate(ptr noundef nonnull %0, i32 noundef %mode, i64 noundef %offset, i64 noundef %len)
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ -9, %entry.if.end_crit_edge ], [ %call, %if.then.if.end_crit_edge ], [ %call, %if.then.i ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fallocate(i32 noundef %fd, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !418
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_fallocate.exit_crit_edge, label %if.then.i.i

entry.__do_sys_fallocate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fallocate.exit

if.then.i.i:                                      ; preds = %entry
  %call.i.i = tail call i32 @vfs_fallocate(ptr noundef nonnull %0, i32 noundef %mode, i64 noundef %offset, i64 noundef %len) #11
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.__do_sys_fallocate.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.__do_sys_fallocate.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fallocate.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %__do_sys_fallocate.exit

__do_sys_fallocate.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.__do_sys_fallocate.exit_crit_edge, %entry.__do_sys_fallocate.exit_crit_edge
  %error.0.i.i = phi i32 [ -9, %entry.__do_sys_fallocate.exit_crit_edge ], [ %call.i.i, %if.then.i.i.__do_sys_fallocate.exit_crit_edge ], [ %call.i.i, %if.then.i.i.i ]
  ret i32 %error.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_faccessat(i32 noundef %dfd, i32 noundef %filename, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call fastcc i32 @do_faccessat(i32 noundef %dfd, ptr noundef %0, i32 noundef %mode, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_faccessat2(i32 noundef %dfd, i32 noundef %filename, i32 noundef %mode, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call fastcc i32 @do_faccessat(i32 noundef %dfd, ptr noundef %0, i32 noundef %mode, i32 noundef %flags) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_access(i32 noundef %filename, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call fastcc i32 @do_faccessat(i32 noundef -100, ptr noundef %0, i32 noundef %mode, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chdir(i32 noundef %filename) #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #11
  %1 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !406
  %2 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !406
  %call.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 3, ptr noundef nonnull %path.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_chdir.exit_crit_edge

entry.__do_sys_chdir.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chdir.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i.i, align 8
  %call2.i.i = call i32 @inode_permission(ptr noundef %7, ptr noundef %11, i32 noundef 65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.dput_and_out.i_crit_edge

if.end.i.dput_and_out.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 107
  %16 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fs.i, align 128
  call void @set_fs_pwd(ptr noundef %17, ptr noundef nonnull %path.i) #11
  br label %dput_and_out.i

dput_and_out.i:                                   ; preds = %if.end4.i, %if.end.i.dput_and_out.i_crit_edge
  call void @path_put(ptr noundef nonnull %path.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call2.i.i)
  %cmp.i.i = icmp eq i32 %call2.i.i, -116
  br i1 %cmp.i.i, label %retry.i.1, label %dput_and_out.i.__do_sys_chdir.exit_crit_edge

dput_and_out.i.__do_sys_chdir.exit_crit_edge:     ; preds = %dput_and_out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chdir.exit

retry.i.1:                                        ; preds = %dput_and_out.i
  %call.i.i.1 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 35, ptr noundef nonnull %path.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %retry.i.1.__do_sys_chdir.exit_crit_edge

retry.i.1.__do_sys_chdir.exit_crit_edge:          ; preds = %retry.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chdir.exit

if.end.i.1:                                       ; preds = %retry.i.1
  %18 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i.1 = getelementptr inbounds %struct.vfsmount, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mnt_userns.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %mnt_userns.i.i.i.1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %d_inode.i.i.i.1 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i.i.i.1, align 8
  %call2.i.i.1 = call i32 @inode_permission(ptr noundef %21, ptr noundef %25, i32 noundef 65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call2.i.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end4.i.1, label %if.end.i.1.dput_and_out.i.1_crit_edge

if.end.i.1.dput_and_out.i.1_crit_edge:            ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i.1

if.end4.i.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %26 = call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.1 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.1 to ptr
  %task.i.1 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.1, align 8
  %fs.i.1 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 107
  %30 = ptrtoint ptr %fs.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fs.i.1, align 128
  call void @set_fs_pwd(ptr noundef %31, ptr noundef nonnull %path.i) #11
  br label %dput_and_out.i.1

dput_and_out.i.1:                                 ; preds = %if.end4.i.1, %if.end.i.1.dput_and_out.i.1_crit_edge
  call void @path_put(ptr noundef nonnull %path.i) #11
  br label %__do_sys_chdir.exit

__do_sys_chdir.exit:                              ; preds = %dput_and_out.i.1, %retry.i.1.__do_sys_chdir.exit_crit_edge, %dput_and_out.i.__do_sys_chdir.exit_crit_edge, %entry.__do_sys_chdir.exit_crit_edge
  %error.0.i = phi i32 [ %call.i.i, %entry.__do_sys_chdir.exit_crit_edge ], [ %call2.i.i, %dput_and_out.i.__do_sys_chdir.exit_crit_edge ], [ %call.i.i.1, %retry.i.1.__do_sys_chdir.exit_crit_edge ], [ %call2.i.i.1, %dput_and_out.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #11
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchdir(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget_raw(i32 noundef %fd) #11, !noalias !421
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fchdir.exit_crit_edge, label %if.end.i

entry.__do_sys_fchdir.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchdir.exit

if.end.i:                                         ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dentry.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i.i13.i = and i32 %4, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %and.i.i13.i)
  %cmp.i.i = icmp eq i32 %and.i.i13.i, 2097152
  br i1 %cmp.i.i, label %if.end3.i, label %if.end.i.out_putf.i_crit_edge

if.end.i.out_putf.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_putf.i

if.end3.i:                                        ; preds = %if.end.i
  %f_path.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %5 = ptrtoint ptr %f_path.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_path.i.i.i, align 8
  %mnt_userns.i.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %mnt_userns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %mnt_userns.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i.i, align 8
  %call2.i.i = tail call i32 @inode_permission(ptr noundef %8, ptr noundef %10, i32 noundef 65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool6.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end3.i.out_putf.i_crit_edge

if.end3.i.out_putf.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_putf.i

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 107
  %15 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fs.i, align 128
  tail call void @set_fs_pwd(ptr noundef %16, ptr noundef %f_path.i.i.i) #11
  br label %out_putf.i

out_putf.i:                                       ; preds = %if.then7.i, %if.end3.i.out_putf.i_crit_edge, %if.end.i.out_putf.i_crit_edge
  %error.0.i = phi i32 [ %call2.i.i, %if.end3.i.out_putf.i_crit_edge ], [ 0, %if.then7.i ], [ -20, %if.end.i.out_putf.i_crit_edge ]
  %and.i14.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14.i)
  %tobool.not.i.i = icmp eq i32 %and.i14.i, 0
  br i1 %tobool.not.i.i, label %out_putf.i.__do_sys_fchdir.exit_crit_edge, label %if.then.i.i

out_putf.i.__do_sys_fchdir.exit_crit_edge:        ; preds = %out_putf.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchdir.exit

if.then.i.i:                                      ; preds = %out_putf.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %__do_sys_fchdir.exit

__do_sys_fchdir.exit:                             ; preds = %if.then.i.i, %out_putf.i.__do_sys_fchdir.exit_crit_edge, %entry.__do_sys_fchdir.exit_crit_edge
  %error.1.i = phi i32 [ -9, %entry.__do_sys_fchdir.exit_crit_edge ], [ %error.0.i, %out_putf.i.__do_sys_fchdir.exit_crit_edge ], [ %error.0.i, %if.then.i.i ]
  ret i32 %error.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chroot(i32 noundef %filename) #0 align 64 {
entry:
  %path.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i) #11
  %1 = ptrtoint ptr %path.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i, align 4, !annotation !406
  %2 = getelementptr inbounds %struct.path, ptr %path.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !406
  %call.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 3, ptr noundef nonnull %path.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_chroot.exit_crit_edge

entry.__do_sys_chroot.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chroot.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mnt_userns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %mnt_userns.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode.i.i.i, align 8
  %call2.i.i = call i32 @inode_permission(ptr noundef %7, ptr noundef %11, i32 noundef 65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.dput_and_out.i_crit_edge

if.end.i.dput_and_out.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i

if.end4.i:                                        ; preds = %if.end.i
  %12 = call i32 @llvm.read_register.i32(metadata !387) #11
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
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns.i, align 4
  %call7.i = call zeroext i1 @ns_capable(ptr noundef %19, i32 noundef 18) #11
  br i1 %call7.i, label %if.end9.i, label %if.end4.i.dput_and_out.i_crit_edge

if.end4.i.dput_and_out.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i

if.end9.i:                                        ; preds = %if.end4.i
  %call10.i = call i32 @security_path_chroot(ptr noundef nonnull %path.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end9.i.dput_and_out.i_crit_edge

if.end9.i.dput_and_out.i_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 107
  %22 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fs.i, align 128
  call void @set_fs_root(ptr noundef %23, ptr noundef nonnull %path.i) #11
  br label %dput_and_out.i

dput_and_out.i:                                   ; preds = %if.end13.i, %if.end9.i.dput_and_out.i_crit_edge, %if.end4.i.dput_and_out.i_crit_edge, %if.end.i.dput_and_out.i_crit_edge
  %error.0.i = phi i32 [ %call2.i.i, %if.end.i.dput_and_out.i_crit_edge ], [ %call10.i, %if.end9.i.dput_and_out.i_crit_edge ], [ 0, %if.end13.i ], [ -1, %if.end4.i.dput_and_out.i_crit_edge ]
  call void @path_put(ptr noundef nonnull %path.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %error.0.i)
  %cmp.i.i = icmp eq i32 %error.0.i, -116
  br i1 %cmp.i.i, label %retry.i.1, label %dput_and_out.i.__do_sys_chroot.exit_crit_edge

dput_and_out.i.__do_sys_chroot.exit_crit_edge:    ; preds = %dput_and_out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chroot.exit

retry.i.1:                                        ; preds = %dput_and_out.i
  %call.i.i.1 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 35, ptr noundef nonnull %path.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %retry.i.1.__do_sys_chroot.exit_crit_edge

retry.i.1.__do_sys_chroot.exit_crit_edge:         ; preds = %retry.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chroot.exit

if.end.i.1:                                       ; preds = %retry.i.1
  %24 = ptrtoint ptr %path.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path.i, align 4
  %mnt_userns.i.i.i.1 = getelementptr inbounds %struct.vfsmount, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mnt_userns.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %mnt_userns.i.i.i.1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %d_inode.i.i.i.1 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i.i.i.1, align 8
  %call2.i.i.1 = call i32 @inode_permission(ptr noundef %27, ptr noundef %31, i32 noundef 65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call2.i.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end4.i.1, label %if.end.i.1.dput_and_out.i.1_crit_edge

if.end.i.1.dput_and_out.i.1_crit_edge:            ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i.1

if.end4.i.1:                                      ; preds = %if.end.i.1
  %32 = call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.1 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.1 to ptr
  %task.i.1 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.1, align 8
  %cred.i.1 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 99
  %36 = ptrtoint ptr %cred.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cred.i.1, align 16
  %user_ns.i.1 = getelementptr inbounds %struct.cred, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %user_ns.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %user_ns.i.1, align 4
  %call7.i.1 = call zeroext i1 @ns_capable(ptr noundef %39, i32 noundef 18) #11
  br i1 %call7.i.1, label %if.end9.i.1, label %if.end4.i.1.dput_and_out.i.1_crit_edge

if.end4.i.1.dput_and_out.i.1_crit_edge:           ; preds = %if.end4.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i.1

if.end9.i.1:                                      ; preds = %if.end4.i.1
  %call10.i.1 = call i32 @security_path_chroot(ptr noundef nonnull %path.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.1)
  %tobool11.not.i.1 = icmp eq i32 %call10.i.1, 0
  br i1 %tobool11.not.i.1, label %if.end13.i.1, label %if.end9.i.1.dput_and_out.i.1_crit_edge

if.end9.i.1.dput_and_out.i.1_crit_edge:           ; preds = %if.end9.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %dput_and_out.i.1

if.end13.i.1:                                     ; preds = %if.end9.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %task.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.1, align 8
  %fs.i.1 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 107
  %42 = ptrtoint ptr %fs.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fs.i.1, align 128
  call void @set_fs_root(ptr noundef %43, ptr noundef nonnull %path.i) #11
  br label %dput_and_out.i.1

dput_and_out.i.1:                                 ; preds = %if.end13.i.1, %if.end9.i.1.dput_and_out.i.1_crit_edge, %if.end4.i.1.dput_and_out.i.1_crit_edge, %if.end.i.1.dput_and_out.i.1_crit_edge
  %error.0.i.1 = phi i32 [ %call2.i.i.1, %if.end.i.1.dput_and_out.i.1_crit_edge ], [ %call10.i.1, %if.end9.i.1.dput_and_out.i.1_crit_edge ], [ 0, %if.end13.i.1 ], [ -1, %if.end4.i.1.dput_and_out.i.1_crit_edge ]
  call void @path_put(ptr noundef nonnull %path.i) #11
  br label %__do_sys_chroot.exit

__do_sys_chroot.exit:                             ; preds = %dput_and_out.i.1, %retry.i.1.__do_sys_chroot.exit_crit_edge, %dput_and_out.i.__do_sys_chroot.exit_crit_edge, %entry.__do_sys_chroot.exit_crit_edge
  %error.1.i = phi i32 [ %call.i.i, %entry.__do_sys_chroot.exit_crit_edge ], [ %error.0.i, %dput_and_out.i.__do_sys_chroot.exit_crit_edge ], [ %call.i.i.1, %retry.i.1.__do_sys_chroot.exit_crit_edge ], [ %error.0.i.1, %dput_and_out.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i) #11
  ret i32 %error.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chmod_common(ptr noundef %path, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %delegated_inode = alloca ptr, align 4
  %newattrs = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delegated_inode) #11
  %4 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %delegated_inode, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #11
  %5 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  %6 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %path, align 4
  %call = tail call i32 @mnt_want_write(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %retry_deleg.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

retry_deleg.preheader:                            ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %8 = and i16 %mode, 4095
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1
  br label %retry_deleg

retry_deleg:                                      ; preds = %break_deleg_wait.exit.retry_deleg_crit_edge, %retry_deleg.preheader
  call void @down_write(ptr noundef %i_rwsem.i) #11
  %call1 = call i32 @security_path_chmod(ptr noundef %path, i16 noundef zeroext %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %retry_deleg.out_unlock_crit_edge

retry_deleg.out_unlock_crit_edge:                 ; preds = %retry_deleg
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end4:                                          ; preds = %retry_deleg
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %3, align 8
  %11 = and i16 %10, -4096
  %or35 = or i16 %11, %8
  %12 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %or35, ptr %ia_mode, align 4
  %13 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65, ptr %newattrs, align 8
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %18 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dentry, align 4
  %call11 = call i32 @notify_change(ptr noundef %17, ptr noundef %19, ptr noundef nonnull %newattrs, ptr noundef nonnull %delegated_inode) #11
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %retry_deleg.out_unlock_crit_edge
  %error.0 = phi i32 [ %call1, %retry_deleg.out_unlock_crit_edge ], [ %call11, %if.end4 ]
  call void @up_write(ptr noundef %i_rwsem.i) #11
  %20 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %delegated_inode, align 4
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %out_unlock.if.end18_crit_edge, label %if.then13

out_unlock.if.end18_crit_edge:                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %out_unlock
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 45
  %22 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %if.then13.break_deleg_wait.exit_crit_edge, label %land.lhs.true.i.i

if.then13.break_deleg_wait.exit_crit_edge:        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_deleg_wait.exit

land.lhs.true.i.i:                                ; preds = %if.then13
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %flc_lease.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !405
  %cmp.i.not.i.i.i = icmp eq ptr %25, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %23, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, label %list_empty_careful.exit.i.i.if.then.i.i_crit_edge

list_empty_careful.exit.i.i.if.then.i.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_deleg_wait.exit

if.then.i.i:                                      ; preds = %list_empty_careful.exit.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %call5.i.i = call i32 @__break_lease(ptr noundef nonnull %21, i32 noundef 1, i32 noundef 4) #11
  br label %break_deleg_wait.exit

break_deleg_wait.exit:                            ; preds = %if.then.i.i, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, %if.then13.break_deleg_wait.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call5.i.i, %if.then.i.i ], [ 0, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge ], [ 0, %if.then13.break_deleg_wait.exit_crit_edge ]
  %28 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %delegated_inode, align 4
  call void @iput(ptr noundef %29) #11
  %30 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %delegated_inode, align 4
  %tobool15.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool15.not, label %break_deleg_wait.exit.retry_deleg_crit_edge, label %break_deleg_wait.exit.if.end18_crit_edge

break_deleg_wait.exit.if.end18_crit_edge:         ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

break_deleg_wait.exit.retry_deleg_crit_edge:      ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_deleg

if.end18:                                         ; preds = %break_deleg_wait.exit.if.end18_crit_edge, %out_unlock.if.end18_crit_edge
  %error.1 = phi i32 [ %retval.0.i.i, %break_deleg_wait.exit.if.end18_crit_edge ], [ %error.0, %out_unlock.if.end18_crit_edge ]
  %31 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %path, align 4
  call void @mnt_drop_write(ptr noundef %32) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end18 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delegated_inode) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_chmod(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fchmod(ptr noundef %file, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %call = tail call i32 @chmod_common(ptr noundef %f_path, i16 noundef zeroext %mode)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchmod(i32 noundef %fd, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !425
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %entry.__do_sys_fchmod.exit_crit_edge, label %if.then.i

entry.__do_sys_fchmod.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchmod.exit

if.then.i:                                        ; preds = %entry
  %conv = trunc i32 %mode to i16
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call.i2.i = tail call i32 @chmod_common(ptr noundef %f_path.i.i, i16 noundef zeroext %conv) #11
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.__do_sys_fchmod.exit_crit_edge, label %if.then.i.i

if.then.i.__do_sys_fchmod.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchmod.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %__do_sys_fchmod.exit

__do_sys_fchmod.exit:                             ; preds = %if.then.i.i, %if.then.i.__do_sys_fchmod.exit_crit_edge, %entry.__do_sys_fchmod.exit_crit_edge
  %err.0.i = phi i32 [ -9, %entry.__do_sys_fchmod.exit_crit_edge ], [ %call.i2.i, %if.then.i.__do_sys_fchmod.exit_crit_edge ], [ %call.i2.i, %if.then.i.i ]
  ret i32 %err.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchmodat(i32 noundef %dfd, i32 noundef %filename, i32 noundef %mode) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %conv = trunc i32 %mode to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #11
  %1 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !406
  %2 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !406
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %path.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.__do_sys_fchmodat.exit_crit_edge

entry.__do_sys_fchmodat.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchmodat.exit

if.then.i.i:                                      ; preds = %entry
  %call1.i.i = call i32 @chmod_common(ptr noundef nonnull %path.i.i, i16 noundef zeroext %conv) #11
  call void @path_put(ptr noundef nonnull %path.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i, -116
  br i1 %cmp.i.i.i, label %retry.i.i.1, label %if.then.i.i.__do_sys_fchmodat.exit_crit_edge

if.then.i.i.__do_sys_fchmodat.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchmodat.exit

retry.i.i.1:                                      ; preds = %if.then.i.i
  %call.i.i.i.1 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %0, i32 noundef 33, ptr noundef nonnull %path.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.then.i.i.1, label %retry.i.i.1.__do_sys_fchmodat.exit_crit_edge

retry.i.i.1.__do_sys_fchmodat.exit_crit_edge:     ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchmodat.exit

if.then.i.i.1:                                    ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.1 = call i32 @chmod_common(ptr noundef nonnull %path.i.i, i16 noundef zeroext %conv) #11
  call void @path_put(ptr noundef nonnull %path.i.i) #11
  br label %__do_sys_fchmodat.exit

__do_sys_fchmodat.exit:                           ; preds = %if.then.i.i.1, %retry.i.i.1.__do_sys_fchmodat.exit_crit_edge, %if.then.i.i.__do_sys_fchmodat.exit_crit_edge, %entry.__do_sys_fchmodat.exit_crit_edge
  %error.0.i.i = phi i32 [ %call.i.i.i, %entry.__do_sys_fchmodat.exit_crit_edge ], [ %call1.i.i, %if.then.i.i.__do_sys_fchmodat.exit_crit_edge ], [ %call.i.i.i.1, %retry.i.i.1.__do_sys_fchmodat.exit_crit_edge ], [ %call1.i.i.1, %if.then.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #11
  ret i32 %error.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chmod(i32 noundef %filename, i32 noundef %mode) #0 align 64 {
entry:
  %path.i.i = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %conv = trunc i32 %mode to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #11
  %1 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !406
  %2 = getelementptr inbounds %struct.path, ptr %path.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !406
  %call.i.i.i = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 1, ptr noundef nonnull %path.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.__do_sys_chmod.exit_crit_edge

entry.__do_sys_chmod.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chmod.exit

if.then.i.i:                                      ; preds = %entry
  %call1.i.i = call i32 @chmod_common(ptr noundef nonnull %path.i.i, i16 noundef zeroext %conv) #11
  call void @path_put(ptr noundef nonnull %path.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %call1.i.i)
  %cmp.i.i.i = icmp eq i32 %call1.i.i, -116
  br i1 %cmp.i.i.i, label %retry.i.i.1, label %if.then.i.i.__do_sys_chmod.exit_crit_edge

if.then.i.i.__do_sys_chmod.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chmod.exit

retry.i.i.1:                                      ; preds = %if.then.i.i
  %call.i.i.i.1 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 33, ptr noundef nonnull %path.i.i, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %if.then.i.i.1, label %retry.i.i.1.__do_sys_chmod.exit_crit_edge

retry.i.i.1.__do_sys_chmod.exit_crit_edge:        ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_chmod.exit

if.then.i.i.1:                                    ; preds = %retry.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.1 = call i32 @chmod_common(ptr noundef nonnull %path.i.i, i16 noundef zeroext %conv) #11
  call void @path_put(ptr noundef nonnull %path.i.i) #11
  br label %__do_sys_chmod.exit

__do_sys_chmod.exit:                              ; preds = %if.then.i.i.1, %retry.i.i.1.__do_sys_chmod.exit_crit_edge, %if.then.i.i.__do_sys_chmod.exit_crit_edge, %entry.__do_sys_chmod.exit_crit_edge
  %error.0.i.i = phi i32 [ %call.i.i.i, %entry.__do_sys_chmod.exit_crit_edge ], [ %call1.i.i, %if.then.i.i.__do_sys_chmod.exit_crit_edge ], [ %call.i.i.i.1, %retry.i.i.1.__do_sys_chmod.exit_crit_edge ], [ %call1.i.i.1, %if.then.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #11
  ret i32 %error.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chown_common(ptr noundef %path, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  %delegated_inode = alloca ptr, align 4
  %newattrs = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delegated_inode) #11
  %4 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %delegated_inode, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %newattrs) #11
  %5 = call ptr @memset(ptr %newattrs, i32 255, i32 80)
  %6 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 99
  %10 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  %call3 = tail call i32 @make_kuid(ptr noundef %13, i32 noundef %user) #11
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred12 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred12, align 16
  %user_ns13 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns13, align 4
  %call14 = tail call i32 @make_kgid(ptr noundef %19, i32 noundef %group) #11
  %20 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %mnt_userns.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %s_user_ns.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %s_user_ns.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_user_ns.i, align 8
  %cmp.i.i.i = icmp eq ptr %23, @init_user_ns
  %cmp.i.i = icmp eq ptr %23, %27
  %spec.select.i.i = or i1 %cmp.i.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.mapped_kgid_user.exit_crit_edge, label %if.end.i

entry.mapped_kgid_user.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kgid_user.exit

if.end.i:                                         ; preds = %entry
  %.fca.0.insert75 = insertvalue [1 x i32] poison, i32 %call3, 0
  %call2.i = tail call i32 @from_kuid(ptr noundef %23, [1 x i32] %.fca.0.insert75) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, -1
  br i1 %cmp.i, label %if.end.i.if.end.i103_crit_edge, label %if.end4.i

if.end.i.if.end.i103_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i103

if.end4.i:                                        ; preds = %if.end.i
  %cmp.i17.i = icmp eq ptr %27, @init_user_ns
  br i1 %cmp.i17.i, label %if.end4.i.if.end.i103_crit_edge, label %if.end8.i

if.end4.i.if.end.i103_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i103

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i = tail call i32 @make_kuid(ptr noundef %27, i32 noundef %call2.i) #11
  br label %if.end.i103

if.end.i103:                                      ; preds = %if.end8.i, %if.end4.i.if.end.i103_crit_edge, %if.end.i.if.end.i103_crit_edge
  %retval.sroa.0.0.i.ph = phi i32 [ %call2.i, %if.end4.i.if.end.i103_crit_edge ], [ -1, %if.end.i.if.end.i103_crit_edge ], [ %call9.i, %if.end8.i ]
  %.fca.0.insert113 = insertvalue [1 x i32] poison, i32 %call14, 0
  %call2.i101 = tail call i32 @from_kgid(ptr noundef %23, [1 x i32] %.fca.0.insert113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i101)
  %cmp.i102 = icmp eq i32 %call2.i101, -1
  br i1 %cmp.i102, label %if.end.i103.mapped_kgid_user.exit_crit_edge, label %if.end4.i105

if.end.i103.mapped_kgid_user.exit_crit_edge:      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kgid_user.exit

if.end4.i105:                                     ; preds = %if.end.i103
  %cmp.i17.i104 = icmp eq ptr %27, @init_user_ns
  br i1 %cmp.i17.i104, label %if.end4.i105.mapped_kgid_user.exit_crit_edge, label %if.end8.i107

if.end4.i105.mapped_kgid_user.exit_crit_edge:     ; preds = %if.end4.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %mapped_kgid_user.exit

if.end8.i107:                                     ; preds = %if.end4.i105
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i106 = tail call i32 @make_kgid(ptr noundef %27, i32 noundef %call2.i101) #11
  br label %mapped_kgid_user.exit

mapped_kgid_user.exit:                            ; preds = %if.end8.i107, %if.end4.i105.mapped_kgid_user.exit_crit_edge, %if.end.i103.mapped_kgid_user.exit_crit_edge, %entry.mapped_kgid_user.exit_crit_edge
  %retval.sroa.0.0.i114 = phi i32 [ %retval.sroa.0.0.i.ph, %if.end8.i107 ], [ %retval.sroa.0.0.i.ph, %if.end.i103.mapped_kgid_user.exit_crit_edge ], [ %retval.sroa.0.0.i.ph, %if.end4.i105.mapped_kgid_user.exit_crit_edge ], [ %call3, %entry.mapped_kgid_user.exit_crit_edge ]
  %retval.sroa.0.0.i108 = phi i32 [ %call9.i106, %if.end8.i107 ], [ -1, %if.end.i103.mapped_kgid_user.exit_crit_edge ], [ %call2.i101, %if.end4.i105.mapped_kgid_user.exit_crit_edge ], [ %call14, %entry.mapped_kgid_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %user)
  %cmp.not = icmp eq i32 %user, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i114)
  %cmp.i109.not = icmp eq i32 %retval.sroa.0.0.i114, -1
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %group)
  %cmp31.not = icmp eq i32 %group, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.sroa.0.0.i108)
  %cmp.i110.not = icmp eq i32 %retval.sroa.0.0.i108, -1
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %.fca.0.insert81 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i114, 0
  %.fca.0.insert72 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i108, 0
  br label %retry_deleg

retry_deleg:                                      ; preds = %break_deleg_wait.exit.retry_deleg_crit_edge, %mapped_kgid_user.exit
  %28 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 64, ptr %newattrs, align 8
  br i1 %cmp.not, label %retry_deleg.if.end30_crit_edge, label %if.then

retry_deleg.if.end30_crit_edge:                   ; preds = %retry_deleg
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then:                                          ; preds = %retry_deleg
  br i1 %cmp.i109.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %newattrs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 66, ptr %newattrs, align 8
  %30 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.sroa.0.0.i114, ptr %ia_uid, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end, %retry_deleg.if.end30_crit_edge
  br i1 %cmp31.not, label %if.end30.if.end39_crit_edge, label %if.then32

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then32:                                        ; preds = %if.end30
  br i1 %cmp.i110.not, label %if.then32.cleanup_crit_edge, label %if.end36

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %newattrs, align 8
  %or38 = or i32 %32, 4
  store i32 %or38, ptr %newattrs, align 8
  %33 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.sroa.0.0.i108, ptr %ia_gid, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %if.end30.if.end39_crit_edge
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 8
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %36)
  %cmp40 = icmp eq i16 %36, 16384
  br i1 %cmp40, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %newattrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %newattrs, align 8
  %or44 = or i32 %38, 22528
  store i32 %or44, ptr %newattrs, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  call void @down_write(ptr noundef %i_rwsem.i) #11
  %call48 = call i32 @security_path_chown(ptr noundef %path, [1 x i32] %.fca.0.insert81, [1 x i32] %.fca.0.insert72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.then49, label %if.end45.if.end52_crit_edge

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dentry, align 4
  %call51 = call i32 @notify_change(ptr noundef %23, ptr noundef %40, ptr noundef nonnull %newattrs, ptr noundef nonnull %delegated_inode) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end45.if.end52_crit_edge
  %error.0 = phi i32 [ %call48, %if.end45.if.end52_crit_edge ], [ %call51, %if.then49 ]
  call void @up_write(ptr noundef %i_rwsem.i) #11
  %41 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %delegated_inode, align 4
  %tobool53.not = icmp eq ptr %42, null
  br i1 %tobool53.not, label %if.end52.cleanup_crit_edge, label %if.then54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  %i_flctx.i.i = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 45
  %43 = ptrtoint ptr %i_flctx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_flctx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.then54.break_deleg_wait.exit_crit_edge, label %land.lhs.true.i.i

if.then54.break_deleg_wait.exit_crit_edge:        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_deleg_wait.exit

land.lhs.true.i.i:                                ; preds = %if.then54
  %flc_lease.i.i = getelementptr inbounds %struct.file_lock_context, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %flc_lease.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %flc_lease.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !405
  %cmp.i.not.i.i.i = icmp eq ptr %46, %flc_lease.i.i
  br i1 %cmp.i.not.i.i.i, label %list_empty_careful.exit.i.i, label %land.lhs.true.i.i.if.then.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

list_empty_careful.exit.i.i:                      ; preds = %land.lhs.true.i.i
  %prev.i.i.i = getelementptr inbounds %struct.file_lock_context, ptr %44, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %48, %flc_lease.i.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, label %list_empty_careful.exit.i.i.if.then.i.i_crit_edge

list_empty_careful.exit.i.i.if.then.i.i_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge: ; preds = %list_empty_careful.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_deleg_wait.exit

if.then.i.i:                                      ; preds = %list_empty_careful.exit.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i_crit_edge
  %call5.i.i = call i32 @__break_lease(ptr noundef nonnull %42, i32 noundef 1, i32 noundef 4) #11
  br label %break_deleg_wait.exit

break_deleg_wait.exit:                            ; preds = %if.then.i.i, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge, %if.then54.break_deleg_wait.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call5.i.i, %if.then.i.i ], [ 0, %list_empty_careful.exit.i.i.break_deleg_wait.exit_crit_edge ], [ 0, %if.then54.break_deleg_wait.exit_crit_edge ]
  %49 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %delegated_inode, align 4
  call void @iput(ptr noundef %50) #11
  %51 = ptrtoint ptr %delegated_inode to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %delegated_inode, align 4
  %tobool56.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool56.not, label %break_deleg_wait.exit.retry_deleg_crit_edge, label %break_deleg_wait.exit.cleanup_crit_edge

break_deleg_wait.exit.cleanup_crit_edge:          ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

break_deleg_wait.exit.retry_deleg_crit_edge:      ; preds = %break_deleg_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry_deleg

cleanup:                                          ; preds = %break_deleg_wait.exit.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then32.cleanup_crit_edge ], [ %retval.0.i.i, %break_deleg_wait.exit.cleanup_crit_edge ], [ %error.0, %if.end52.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %newattrs) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delegated_inode) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_chown(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_fchownat(i32 noundef %dfd, ptr noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !406
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !406
  %and = and i32 %flag, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %and1 = lshr i32 %flag, 8
  %and1.lobit = and i32 %and1, 1
  %and2 = shl nuw nsw i32 %flag, 2
  %3 = and i32 %and2, 16384
  %4 = or i32 %and1.lobit, %3
  %5 = xor i32 %4, 1
  %call.i27 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %5, ptr noundef nonnull %path, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool6.not28 = icmp eq i32 %call.i27, 0
  br i1 %tobool6.not28, label %if.end8.lr.ph, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end8.lr.ph:                                    ; preds = %if.end
  %6 = or i32 %5, 32
  br label %if.end8

retry:                                            ; preds = %out_release
  %call.i = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %6, ptr noundef nonnull %path, ptr noundef null) #11
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %retry.if.end8_crit_edge, label %retry.out_crit_edge

retry.out_crit_edge:                              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

retry.if.end8_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end8:                                          ; preds = %retry.if.end8_crit_edge, %if.end8.lr.ph
  %lookup_flags.129 = phi i32 [ %5, %if.end8.lr.ph ], [ %6, %retry.if.end8_crit_edge ]
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %path, align 4
  %call9 = call i32 @mnt_want_write(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_release_crit_edge

if.end8.out_release_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 @chown_common(ptr noundef nonnull %path, i32 noundef %user, i32 noundef %group)
  %9 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %path, align 4
  call void @mnt_drop_write(ptr noundef %10) #11
  br label %out_release

out_release:                                      ; preds = %if.end12, %if.end8.out_release_crit_edge
  %error.0 = phi i32 [ %call9, %if.end8.out_release_crit_edge ], [ %call13, %if.end12 ]
  call void @path_put(ptr noundef nonnull %path) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %error.0)
  %cmp.i = icmp eq i32 %error.0, -116
  %and.i = and i32 %lookup_flags.129, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %11 = and i1 %tobool.not.i, %cmp.i
  br i1 %11, label %retry, label %out_release.out_crit_edge

out_release.out_crit_edge:                        ; preds = %out_release
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %out_release.out_crit_edge, %retry.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.1 = phi i32 [ -22, %entry.out_crit_edge ], [ %call.i27, %if.end.out_crit_edge ], [ %call.i, %retry.out_crit_edge ], [ %error.0, %out_release.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret i32 %error.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchownat(i32 noundef %dfd, i32 noundef %filename, i32 noundef %user, i32 noundef %group, i32 noundef %flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call i32 @do_fchownat(i32 noundef %dfd, ptr noundef %0, i32 noundef %user, i32 noundef %group, i32 noundef %flag) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_chown(i32 noundef %filename, i32 noundef %user, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %0, i32 noundef %user, i32 noundef %group, i32 noundef 0) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lchown(i32 noundef %filename, i32 noundef %user, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call i32 @do_fchownat(i32 noundef -100, ptr noundef %0, i32 noundef %user, i32 noundef %group, i32 noundef 256) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_fchown(ptr noundef %file, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mnt_want_write_file(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %call1 = tail call i32 @chown_common(ptr noundef %f_path, i32 noundef %user, i32 noundef %group)
  tail call void @mnt_drop_write_file(ptr noundef %file) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_fchown(i32 noundef %fd, i32 noundef %user, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !428
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i2 = tail call i32 @mnt_want_write_file(ptr noundef nonnull %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.vfs_fchown.exit_crit_edge

if.then.vfs_fchown.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_fchown.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %f_path.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call1.i = tail call i32 @chown_common(ptr noundef %f_path.i, i32 noundef %user, i32 noundef %group) #11
  tail call void @mnt_drop_write_file(ptr noundef nonnull %0) #11
  br label %vfs_fchown.exit

vfs_fchown.exit:                                  ; preds = %if.end.i, %if.then.vfs_fchown.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ %call.i2, %if.then.vfs_fchown.exit_crit_edge ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i3 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i3, label %vfs_fchown.exit.if.end_crit_edge, label %if.then.i

vfs_fchown.exit.if.end_crit_edge:                 ; preds = %vfs_fchown.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %vfs_fchown.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %vfs_fchown.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %error.0 = phi i32 [ -9, %entry.if.end_crit_edge ], [ %retval.0.i, %vfs_fchown.exit.if.end_crit_edge ], [ %retval.0.i, %if.then.i ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fchown(i32 noundef %fd, i32 noundef %user, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call i32 @__fdget(i32 noundef %fd) #11, !noalias !431
  %and.i.i.i.i = and i32 %call.i.i.i, -4
  %0 = inttoptr i32 %and.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.__do_sys_fchown.exit_crit_edge, label %if.then.i.i

entry.__do_sys_fchown.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchown.exit

if.then.i.i:                                      ; preds = %entry
  %call.i2.i.i = tail call i32 @mnt_want_write_file(ptr noundef nonnull %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.vfs_fchown.exit.i.i_crit_edge

if.then.i.i.vfs_fchown.exit.i.i_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vfs_fchown.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %f_path.i.i.i = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %call1.i.i.i = tail call i32 @chown_common(ptr noundef %f_path.i.i.i, i32 noundef %user, i32 noundef %group) #11
  tail call void @mnt_drop_write_file(ptr noundef nonnull %0) #11
  br label %vfs_fchown.exit.i.i

vfs_fchown.exit.i.i:                              ; preds = %if.end.i.i.i, %if.then.i.i.vfs_fchown.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.i ], [ %call.i2.i.i, %if.then.i.i.vfs_fchown.exit.i.i_crit_edge ]
  %and.i.i.i = and i32 %call.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i3.i.i, label %vfs_fchown.exit.i.i.__do_sys_fchown.exit_crit_edge, label %if.then.i.i.i

vfs_fchown.exit.i.i.__do_sys_fchown.exit_crit_edge: ; preds = %vfs_fchown.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_fchown.exit

if.then.i.i.i:                                    ; preds = %vfs_fchown.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef nonnull %0) #11
  br label %__do_sys_fchown.exit

__do_sys_fchown.exit:                             ; preds = %if.then.i.i.i, %vfs_fchown.exit.i.i.__do_sys_fchown.exit_crit_edge, %entry.__do_sys_fchown.exit_crit_edge
  %error.0.i.i = phi i32 [ -9, %entry.__do_sys_fchown.exit_crit_edge ], [ %retval.0.i.i.i, %vfs_fchown.exit.i.i.__do_sys_fchown.exit_crit_edge ], [ %retval.0.i.i.i, %if.then.i.i.i ]
  ret i32 %error.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @finish_open(ptr noundef %file, ptr noundef %dentry, ptr noundef %open) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !402

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/open.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 916, 0\0A.popsection", ""() #11, !srcloc !434
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dentry7 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dentry, ptr %dentry7, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i, align 8
  %call8 = tail call fastcc i32 @do_dentry_open(ptr noundef %file, ptr noundef %4, ptr noundef %open)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_dentry_open(ptr noundef %f, ptr noundef %inode, ptr noundef readonly %open) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 1
  tail call void @path_get(ptr noundef %f_path) #11
  %f_inode = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %f_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %f_mapping, align 4
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 11
  %call.i = tail call i32 @errseq_sample(ptr noundef %wb_err.i) #11
  %f_wb_err = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 19
  %4 = ptrtoint ptr %f_wb_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i, ptr %f_wb_err, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry.i, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 50
  %call.i366 = tail call i32 @errseq_sample(ptr noundef %s_wb_err.i) #11
  %f_sb_err = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 20
  %9 = ptrtoint ptr %f_sb_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i366, ptr %f_sb_err, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 7
  %10 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f_flags, align 4
  %and = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %f_mode5 = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 8
  br i1 %tobool.not, label %if.end, label %if.then, !prof !402

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 540672, ptr %f_mode5, align 8
  %f_op = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 3
  %13 = ptrtoint ptr %f_op to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @do_dentry_open.empty_fops, ptr %f_op, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_mode5, align 8
  %and6 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end50_crit_edge, label %land.lhs.true

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %inode, align 8
  %18 = and i16 %17, -4096
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.115)
  switch i16 %18, label %if.then27 [
    i16 8192, label %land.lhs.true.if.end50_crit_edge
    i16 24576, label %land.lhs.true.if.end50_crit_edge397
    i16 4096, label %land.lhs.true.if.end50_crit_edge398
    i16 -16384, label %land.lhs.true.if.end50_crit_edge399
  ]

land.lhs.true.if.end50_crit_edge399:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true.if.end50_crit_edge398:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true.if.end50_crit_edge397:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then27:                                        ; preds = %land.lhs.true
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.then27
  %c.0.i.i.i = phi i32 [ %21, %if.then27 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp slt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_file_crit_edge, label %do.cond3.i.i.i, !prof !398

do.body1.i.i.i.cleanup_file_crit_edge:            ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_file

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %add.i.i.i = add nuw i32 %c.0.i.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !399
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %add.i.i.i, ptr elementtype(i32) %i_writecount.i) #11, !srcloc !400
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !401
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end37, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !402

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i.i

if.end37:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %23 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_path, align 8
  %call39 = tail call i32 @__mnt_want_write(ptr noundef %24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end48, label %if.then47, !prof !402

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i368 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #11, !srcloc !403
  br label %cleanup_file

if.end48:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_mode5, align 8
  %or = or i32 %27, 65536
  store i32 %or, ptr %f_mode5, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %land.lhs.true.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge397, %land.lhs.true.if.end50_crit_edge398, %land.lhs.true.if.end50_crit_edge399, %if.end.if.end50_crit_edge
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inode, align 8
  %30 = and i16 %29, -4096
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.116)
  switch i16 %30, label %if.end50.if.end65_crit_edge [
    i16 -32768, label %if.end50.if.then62_crit_edge
    i16 16384, label %if.end50.if.then62_crit_edge400
  ]

if.end50.if.then62_crit_edge400:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end50.if.then62_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end50.if.end65_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then62:                                        ; preds = %if.end50.if.then62_crit_edge, %if.end50.if.then62_crit_edge400
  %32 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_mode5, align 8
  %or64 = or i32 %33, 32768
  store i32 %or64, ptr %f_mode5, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end50.if.end65_crit_edge
  %34 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %tobool66.not = icmp eq ptr %36, null
  br i1 %tobool66.not, label %if.end65.cond.end.thread_crit_edge, label %land.lhs.true67

if.end65.cond.end.thread_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread

land.lhs.true67:                                  ; preds = %if.end65
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call68 = tail call zeroext i1 @try_module_get(ptr noundef %38) #11
  br i1 %call68, label %cond.end, label %land.lhs.true67.cond.end.thread_crit_edge

land.lhs.true67.cond.end.thread_crit_edge:        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %land.lhs.true67.cond.end.thread_crit_edge, %if.end65.cond.end.thread_crit_edge
  %f_op70375 = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 3
  %39 = ptrtoint ptr %f_op70375 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %f_op70375, align 4
  br label %if.end253.sink.split

cond.end:                                         ; preds = %land.lhs.true67
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %34, align 8
  %f_op70 = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 3
  %42 = ptrtoint ptr %f_op70 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %f_op70, align 4
  %tobool72.not = icmp eq ptr %41, null
  br i1 %tobool72.not, label %cond.end.if.end253.sink.split_crit_edge, label %if.end102, !prof !398

cond.end.if.end253.sink.split_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253.sink.split

if.end102:                                        ; preds = %cond.end
  %call103 = tail call i32 @security_file_open(ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup_all_crit_edge

if.end102.cleanup_all_crit_edge:                  ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_all

if.end106:                                        ; preds = %if.end102
  %43 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f_inode, align 8
  %45 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %f_flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !404
  %i_flctx.i = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 45
  %47 = ptrtoint ptr %i_flctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_flctx.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.end106.if.end112_crit_edge, label %land.lhs.true.i

if.end106.if.end112_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

land.lhs.true.i:                                  ; preds = %if.end106
  %flc_lease.i = getelementptr inbounds %struct.file_lock_context, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %flc_lease.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %flc_lease.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !405
  %cmp.i.not.i.i = icmp eq ptr %50, %flc_lease.i
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %land.lhs.true.i.break_lease.exit_crit_edge

land.lhs.true.i.break_lease.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_lease.exit

list_empty_careful.exit.i:                        ; preds = %land.lhs.true.i
  %prev.i.i = getelementptr inbounds %struct.file_lock_context, ptr %48, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %52, %flc_lease.i
  br i1 %cmp.i.not.i, label %list_empty_careful.exit.i.if.end112_crit_edge, label %list_empty_careful.exit.i.break_lease.exit_crit_edge

list_empty_careful.exit.i.break_lease.exit_crit_edge: ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %break_lease.exit

list_empty_careful.exit.i.if.end112_crit_edge:    ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

break_lease.exit:                                 ; preds = %list_empty_careful.exit.i.break_lease.exit_crit_edge, %land.lhs.true.i.break_lease.exit_crit_edge
  %call5.i = tail call i32 @__break_lease(ptr noundef %44, i32 noundef %46, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool110.not = icmp eq i32 %call5.i, 0
  br i1 %tobool110.not, label %break_lease.exit.if.end112_crit_edge, label %break_lease.exit.cleanup_all_crit_edge

break_lease.exit.cleanup_all_crit_edge:           ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_all

break_lease.exit.if.end112_crit_edge:             ; preds = %break_lease.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end112:                                        ; preds = %break_lease.exit.if.end112_crit_edge, %list_empty_careful.exit.i.if.end112_crit_edge, %if.end106.if.end112_crit_edge
  %53 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_mode5, align 8
  %or114 = or i32 %54, 28
  store i32 %or114, ptr %f_mode5, align 8
  %tobool115.not = icmp eq ptr %open, null
  br i1 %tobool115.not, label %if.end119, label %if.end112.if.then121_crit_edge

if.end112.if.then121_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end119:                                        ; preds = %if.end112
  %55 = ptrtoint ptr %f_op70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %f_op70, align 4
  %open118 = getelementptr inbounds %struct.file_operations, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %open118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %open118, align 4
  %tobool120.not = icmp eq ptr %58, null
  br i1 %tobool120.not, label %if.end119.if.end126_crit_edge, label %if.end119.if.then121_crit_edge

if.end119.if.then121_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then121

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.then121:                                       ; preds = %if.end119.if.then121_crit_edge, %if.end112.if.then121_crit_edge
  %open.addr.0385 = phi ptr [ %58, %if.end119.if.then121_crit_edge ], [ %open, %if.end112.if.then121_crit_edge ]
  %call122 = tail call i32 %open.addr.0385(ptr noundef %inode, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then121.if.end126_crit_edge, label %if.then121.cleanup_all_crit_edge

if.then121.cleanup_all_crit_edge:                 ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_all

if.then121.if.end126_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

if.end126:                                        ; preds = %if.then121.if.end126_crit_edge, %if.end119.if.end126_crit_edge
  %59 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %f_mode5, align 8
  %or128 = or i32 %60, 524288
  store i32 %or128, ptr %f_mode5, align 8
  %and130 = and i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and130)
  %cmp131 = icmp eq i32 %and130, 1
  br i1 %cmp131, label %if.then133, label %if.end126.if.end134_crit_edge

if.end126.if.end134_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then133:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %i_readcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 43
  %call.i.i.i369 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_readcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %i_readcount.i, i32 1, i32 3, i32 1) #11
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_readcount.i, ptr %i_readcount.i, i32 1, ptr elementtype(i32) %i_readcount.i) #11, !srcloc !435
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %if.end126.if.end134_crit_edge
  %62 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %f_mode5, align 8
  %and136 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end134.if.end152_crit_edge, label %land.lhs.true138

if.end134.if.end152_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

land.lhs.true138:                                 ; preds = %if.end134
  %64 = ptrtoint ptr %f_op70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %f_op70, align 4
  %read = getelementptr inbounds %struct.file_operations, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read, align 4
  %tobool140.not = icmp eq ptr %67, null
  br i1 %tobool140.not, label %lor.rhs, label %land.lhs.true138.if.then149_crit_edge

land.lhs.true138.if.then149_crit_edge:            ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

lor.rhs:                                          ; preds = %land.lhs.true138
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %65, i32 0, i32 4
  %68 = ptrtoint ptr %read_iter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_iter, align 4
  %tobool142.not = icmp eq ptr %69, null
  br i1 %tobool142.not, label %lor.rhs.if.end152_crit_edge, label %lor.rhs.if.then149_crit_edge, !prof !398

lor.rhs.if.then149_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then149

lor.rhs.if.end152_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

if.then149:                                       ; preds = %lor.rhs.if.then149_crit_edge, %land.lhs.true138.if.then149_crit_edge
  %or151 = or i32 %63, 131072
  %70 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or151, ptr %f_mode5, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %lor.rhs.if.end152_crit_edge, %if.end134.if.end152_crit_edge
  %71 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %f_mode5, align 8
  %and154 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end152.if.end172_crit_edge, label %land.lhs.true156

if.end152.if.end172_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

land.lhs.true156:                                 ; preds = %if.end152
  %73 = ptrtoint ptr %f_op70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %f_op70, align 4
  %write = getelementptr inbounds %struct.file_operations, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write, align 4
  %tobool158.not = icmp eq ptr %76, null
  br i1 %tobool158.not, label %lor.rhs159, label %land.lhs.true156.if.then169_crit_edge

land.lhs.true156.if.then169_crit_edge:            ; preds = %land.lhs.true156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then169

lor.rhs159:                                       ; preds = %land.lhs.true156
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %74, i32 0, i32 5
  %77 = ptrtoint ptr %write_iter to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write_iter, align 4
  %tobool161.not = icmp eq ptr %78, null
  br i1 %tobool161.not, label %lor.rhs159.if.end172_crit_edge, label %lor.rhs159.if.then169_crit_edge, !prof !398

lor.rhs159.if.then169_crit_edge:                  ; preds = %lor.rhs159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then169

lor.rhs159.if.end172_crit_edge:                   ; preds = %lor.rhs159
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.then169:                                       ; preds = %lor.rhs159.if.then169_crit_edge, %land.lhs.true156.if.then169_crit_edge
  %or171 = or i32 %72, 262144
  %79 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or171, ptr %f_mode5, align 8
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %lor.rhs159.if.end172_crit_edge, %if.end152.if.end172_crit_edge
  %f_write_hint = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 5
  %80 = ptrtoint ptr %f_write_hint to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %f_write_hint, align 4
  %81 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %f_flags, align 4
  %and174 = and i32 %82, -961
  store i32 %and174, ptr %f_flags, align 4
  %f_ra = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 13
  %83 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %f_mapping, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %i_mapping176 = getelementptr inbounds %struct.inode, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %i_mapping176 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_mapping176, align 8
  tail call void @file_ra_state_init(ptr noundef %f_ra, ptr noundef %88) #11
  %89 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %f_flags, align 4
  %and178 = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %tobool179.not = icmp eq i32 %and178, 0
  br i1 %tobool179.not, label %if.end172.if.end189_crit_edge, label %if.then180

if.end172.if.end189_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

if.then180:                                       ; preds = %if.end172
  %91 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %f_mapping, align 4
  %a_ops = getelementptr inbounds %struct.address_space, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %a_ops, align 4
  %tobool182.not = icmp eq ptr %94, null
  br i1 %tobool182.not, label %if.then180.cleanup_crit_edge, label %lor.lhs.false183

if.then180.cleanup_crit_edge:                     ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false183:                                 ; preds = %if.then180
  %direct_IO = getelementptr inbounds %struct.address_space_operations, ptr %94, i32 0, i32 12
  %95 = ptrtoint ptr %direct_IO to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %direct_IO, align 4
  %tobool186.not = icmp eq ptr %96, null
  br i1 %tobool186.not, label %lor.lhs.false183.cleanup_crit_edge, label %lor.lhs.false183.if.end189_crit_edge

lor.lhs.false183.if.end189_crit_edge:             ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end189

lor.lhs.false183.cleanup_crit_edge:               ; preds = %lor.lhs.false183
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end189:                                        ; preds = %lor.lhs.false183.if.end189_crit_edge, %if.end172.if.end189_crit_edge
  %97 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %f_mode5, align 8
  %and191 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end189.cleanup_crit_edge, label %do.end197

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end197:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !436
  br label %cleanup

cleanup_all:                                      ; preds = %if.then121.cleanup_all_crit_edge, %break_lease.exit.cleanup_all_crit_edge, %if.end102.cleanup_all_crit_edge
  %error.0 = phi i32 [ %call103, %if.end102.cleanup_all_crit_edge ], [ %call5.i, %break_lease.exit.cleanup_all_crit_edge ], [ %call122, %if.then121.cleanup_all_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %cmp209 = icmp sgt i32 %error.0, 0
  br i1 %cmp209, label %land.rhs, label %cleanup_all.if.end253_crit_edge

cleanup_all.if.end253_crit_edge:                  ; preds = %cleanup_all
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

land.rhs:                                         ; preds = %cleanup_all
  %.b365 = load i1, ptr @do_dentry_open.__already_done, align 1
  br i1 %.b365, label %land.rhs.if.end253_crit_edge, label %if.then226, !prof !402

land.rhs.if.end253_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end253

if.then226:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @do_dentry_open.__already_done, align 1
  br label %if.end253.sink.split

if.end253.sink.split:                             ; preds = %if.then226, %cond.end.if.end253.sink.split_crit_edge, %cond.end.thread
  %.sink = phi i32 [ 880, %if.then226 ], [ 806, %cond.end.if.end253.sink.split_crit_edge ], [ 806, %cond.end.thread ]
  %f_op70377389395.ph = phi ptr [ %f_op70, %if.then226 ], [ %f_op70, %cond.end.if.end253.sink.split_crit_edge ], [ %f_op70375, %cond.end.thread ]
  %.ph = phi i32 [ -22, %if.then226 ], [ -19, %cond.end.if.end253.sink.split_crit_edge ], [ -19, %cond.end.thread ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #11
  br label %if.end253

if.end253:                                        ; preds = %if.end253.sink.split, %land.rhs.if.end253_crit_edge, %cleanup_all.if.end253_crit_edge
  %f_op70377389395 = phi ptr [ %f_op70, %cleanup_all.if.end253_crit_edge ], [ %f_op70, %land.rhs.if.end253_crit_edge ], [ %f_op70377389395.ph, %if.end253.sink.split ]
  %99 = phi i32 [ %error.0, %cleanup_all.if.end253_crit_edge ], [ -22, %land.rhs.if.end253_crit_edge ], [ %.ph, %if.end253.sink.split ]
  %100 = ptrtoint ptr %f_op70377389395 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %f_op70377389395, align 4
  %tobool266.not = icmp eq ptr %101, null
  br i1 %tobool266.not, label %if.end253.do.end272_crit_edge, label %if.then267

if.end253.do.end272_crit_edge:                    ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end272

if.then267:                                       ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  tail call void @module_put(ptr noundef %103) #11
  br label %do.end272

do.end272:                                        ; preds = %if.then267, %if.end253.do.end272_crit_edge
  %104 = ptrtoint ptr %f_mode5 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %f_mode5, align 8
  %and274 = and i32 %105, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and274)
  %tobool275.not = icmp eq i32 %and274, 0
  br i1 %tobool275.not, label %do.end272.cleanup_file_crit_edge, label %if.then276

do.end272.cleanup_file_crit_edge:                 ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_file

if.then276:                                       ; preds = %do.end272
  call void @__sanitizer_cov_trace_pc() #13
  %i_writecount.i370 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i.i371 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i370, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i370, i32 1, i32 3, i32 1) #11
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i370, ptr %i_writecount.i370, i32 1, ptr elementtype(i32) %i_writecount.i370) #11, !srcloc !403
  %107 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %f_path, align 8
  tail call void @__mnt_drop_write(ptr noundef %108) #11
  br label %cleanup_file

cleanup_file:                                     ; preds = %if.then276, %do.end272.cleanup_file_crit_edge, %if.then47, %do.body1.i.i.i.cleanup_file_crit_edge
  %error.2 = phi i32 [ %99, %if.then276 ], [ %99, %do.end272.cleanup_file_crit_edge ], [ %call39, %if.then47 ], [ -26, %do.body1.i.i.i.cleanup_file_crit_edge ]
  tail call void @path_put(ptr noundef %f_path) #11
  %109 = ptrtoint ptr %f_path to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %f_path, align 8
  %110 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %dentry.i, align 4
  %111 = ptrtoint ptr %f_inode to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %f_inode, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup_file, %do.end197, %if.end189.cleanup_crit_edge, %lor.lhs.false183.cleanup_crit_edge, %if.then180.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %error.2, %cleanup_file ], [ -22, %lor.lhs.false183.cleanup_crit_edge ], [ -22, %if.then180.cleanup_crit_edge ], [ 0, %do.end197 ], [ 0, %if.end189.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @finish_no_open(ptr nocapture noundef writeonly %file, ptr noundef %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dentry, ptr %dentry1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @file_path(ptr noundef %filp, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 1
  %call = tail call ptr @d_path(ptr noundef %f_path, ptr noundef %buf, i32 noundef %buflen) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfs_open(ptr nocapture noundef readonly %path, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %0 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %path, align 4
  %2 = ptrtoint ptr %f_path to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %f_path, align 8
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %3 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call fastcc i32 @do_dentry_open(ptr noundef %file, ptr noundef %6, ptr noundef null)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dentry_open(ptr nocapture noundef readonly %path, i32 noundef %flags, ptr noundef %cred) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @creds_are_invalid(ptr noundef %cred) #11
  br i1 %call.i, label %if.then.i, label %entry.__validate_creds.exit_crit_edge, !prof !398

entry.__validate_creds.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef %cred, ptr noundef nonnull @.str.55, i32 noundef 968) #11
  br label %__validate_creds.exit

__validate_creds.exit:                            ; preds = %if.then.i, %entry.__validate_creds.exit_crit_edge
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body5, label %do.end12, !prof !398

do.body5:                                         ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/open.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 971, 0\0A.popsection", ""() #11, !srcloc !437
  unreachable

do.end12:                                         ; preds = %__validate_creds.exit
  %call = tail call ptr @alloc_empty_file(i32 noundef %flags, ptr noundef %cred) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12.if.end20_crit_edge, label %if.then14

do.end12.if.end20_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then14:                                        ; preds = %do.end12
  %f_path.i = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %path, align 4
  %4 = ptrtoint ptr %f_path.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %f_path.i, align 8
  %dentry.i = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i.i, align 8
  %call1.i = tail call fastcc i32 @do_dentry_open(ptr noundef %call, ptr noundef %8, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool16.not = icmp eq i32 %call1.i, 0
  br i1 %tobool16.not, label %if.then14.if.end20_crit_edge, label %if.then17

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef %call) #11
  %9 = inttoptr i32 %call1.i to ptr
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then14.if.end20_crit_edge, %do.end12.if.end20_crit_edge
  %f.0 = phi ptr [ %call, %do.end12.if.end20_crit_edge ], [ %9, %if.then17 ], [ %call, %if.then14.if.end20_crit_edge ]
  ret ptr %f.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_empty_file(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @open_with_fake_path(ptr nocapture noundef readonly %path, i32 noundef %flags, ptr noundef %inode, ptr noundef %cred) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_empty_file_noaccount(i32 noundef %flags, ptr noundef %cred) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %f_path = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %path to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %path, align 4
  %2 = ptrtoint ptr %f_path to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %f_path, align 8
  %call2 = tail call fastcc i32 @do_dentry_open(ptr noundef %call, ptr noundef %inode, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @fput(ptr noundef %call) #11
  %3 = inttoptr i32 %call2 to ptr
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %f.1 = phi ptr [ %call, %entry.if.end5_crit_edge ], [ %3, %if.then3 ], [ %call, %if.then.if.end5_crit_edge ]
  ret ptr %f.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_empty_file_noaccount(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @build_open_how(ptr noalias nocapture sret(%struct.open_how) align 8 %agg.result, i32 noundef %flags, i16 noundef zeroext %mode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.open_how, ptr %agg.result, i32 0, i32 1
  %1 = getelementptr inbounds %struct.open_how, ptr %agg.result, i32 0, i32 2
  %and = and i32 %flags, 8388547
  %2 = zext i32 %and to i64
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %agg.result, align 8
  %4 = and i16 %mode, 4095
  %5 = zext i16 %4 to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %1, align 8
  %and7 = and i64 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool.not = icmp eq i64 %and7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9 = and i64 %2, 2670592
  %8 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %and9, ptr %agg.result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %agg.result, align 8
  %and11 = and i64 %10, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %0, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @build_open_flags(ptr nocapture noundef readonly %how, ptr nocapture noundef writeonly %op) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %how to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %how, align 8
  %2 = trunc i64 %1 to i32
  %idxprom = and i32 %2, 3
  %arrayidx = getelementptr [5 x i8], ptr @.str.56, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %and2 = and i64 %1, -67633153
  %and3 = and i64 %1, -75497412
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool.not = icmp eq i64 %and3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %resolve = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 2
  %5 = ptrtoint ptr %resolve to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %resolve, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %6)
  %tobool5.not = icmp ugt i64 %6, 63
  %7 = and i64 %6, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 24, i64 %7)
  %.not = icmp eq i64 %7, 24
  %or.cond = or i1 %tobool5.not, %.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %and16 = and i64 %1, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  %mode26 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 1
  %8 = ptrtoint ptr %mode26 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mode26, align 8
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %9)
  %tobool20.not = icmp ult i64 %9, 4096
  br i1 %tobool20.not, label %if.end22, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %10 = trunc i64 %9 to i16
  %conv24 = or i16 %10, -32768
  br label %if.end31

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.not = icmp eq i64 %9, 0
  br i1 %cmp.not, label %if.else.if.end31_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %if.end22
  %.sink = phi i16 [ %conv24, %if.end22 ], [ 0, %if.else.if.end31_crit_edge ]
  %mode30 = getelementptr inbounds %struct.open_flags, ptr %op, i32 0, i32 1
  %11 = ptrtoint ptr %mode30 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %mode30, align 4
  %and32 = and i64 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end44_crit_edge, label %if.then34

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then34:                                        ; preds = %if.end31
  %and35 = and i64 %1, 4210752
  call void @__sanitizer_cov_trace_const_cmp8(i64 4210688, i64 %and35)
  %cmp36.not = icmp ne i64 %and35, 4210688
  %and40 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond189 = select i1 %cmp36.not, i1 true, i1 %tobool41.not
  br i1 %or.cond189, label %if.then34.cleanup_crit_edge, label %if.then34.if.end44_crit_edge

if.then34.if.end44_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %if.then34.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %and45 = and i64 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45)
  %tobool46.not = icmp eq i64 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %if.then47

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  %and48 = and i64 %1, -69779457
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and48)
  %tobool49.not = icmp eq i64 %and48, 0
  br i1 %tobool49.not, label %if.then47.if.end52_crit_edge, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.end52:                                         ; preds = %if.then47.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %acc_mode.0 = phi i32 [ %conv, %if.end44.if.end52_crit_edge ], [ 0, %if.then47.if.end52_crit_edge ]
  %and53 = lshr i64 %1, 8
  %12 = and i64 %and53, 4096
  %13 = or i64 %12, %and2
  %conv58 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv58, ptr %op, align 4
  %15 = lshr i32 %2, 8
  %16 = and i32 %15, 2
  %17 = lshr i32 %2, 7
  %18 = and i32 %17, 8
  %19 = or i32 %18, %16
  %20 = or i32 %19, %acc_mode.0
  %acc_mode69 = getelementptr inbounds %struct.open_flags, ptr %op, i32 0, i32 2
  %21 = ptrtoint ptr %acc_mode69 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %acc_mode69, align 4
  %22 = lshr i32 %conv58, 13
  %23 = and i32 %22, 256
  %24 = xor i32 %23, 256
  %intent = getelementptr inbounds %struct.open_flags, ptr %op, i32 0, i32 3
  %25 = ptrtoint ptr %intent to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %intent, align 4
  %and72 = and i64 %1, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72)
  %tobool73.not = icmp eq i64 %and72, 0
  br i1 %tobool73.not, label %if.end52.if.end84_crit_edge, label %if.then74

if.end52.if.end84_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then74:                                        ; preds = %if.end52
  %or76 = or i32 %24, 512
  %26 = ptrtoint ptr %intent to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or76, ptr %intent, align 4
  %and77 = and i64 %1, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and77)
  %tobool78.not = icmp eq i64 %and77, 0
  br i1 %tobool78.not, label %if.then74.if.end84_crit_edge, label %if.then79

if.then74.if.end84_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then79:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %or81 = or i32 %24, 1536
  %27 = ptrtoint ptr %intent to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or81, ptr %intent, align 4
  %or82 = or i64 %13, 32768
  %.pre = trunc i64 %or82 to i32
  %.pre190 = lshr i32 %.pre, 13
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.then74.if.end84_crit_edge, %if.end52.if.end84_crit_edge
  %.pre-phi191 = phi i32 [ %22, %if.then74.if.end84_crit_edge ], [ %.pre190, %if.then79 ], [ %22, %if.end52.if.end84_crit_edge ]
  %.pre-phi = phi i32 [ %conv58, %if.then74.if.end84_crit_edge ], [ %.pre, %if.then79 ], [ %conv58, %if.end52.if.end84_crit_edge ]
  %flags.1 = phi i64 [ %13, %if.then74.if.end84_crit_edge ], [ %or82, %if.then79 ], [ %13, %if.end52.if.end84_crit_edge ]
  %28 = and i32 %.pre-phi191, 2
  %29 = lshr i32 %.pre-phi, 15
  %30 = and i32 %29, 1
  %31 = or i32 %30, %28
  %32 = ptrtoint ptr %resolve to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %resolve, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 18
  %36 = and i32 %35, 262144
  %37 = or i32 %31, %36
  %38 = shl i32 %34, 16
  %39 = and i32 %38, 131072
  %40 = or i32 %37, %39
  %41 = shl i32 %34, 14
  %42 = and i32 %41, 65536
  %43 = or i32 %40, %42
  %44 = and i32 %38, 524288
  %45 = or i32 %43, %44
  %46 = and i32 %38, 1048576
  %47 = or i32 %45, %46
  %48 = xor i32 %47, 1
  %and126 = and i64 %33, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and126)
  %tobool127.not = icmp eq i64 %and126, 0
  br i1 %tobool127.not, label %if.end84.if.end134_crit_edge, label %if.then128

if.end84.if.end134_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then128:                                       ; preds = %if.end84
  %and129 = and i64 %flags.1, 4211264
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and129)
  %tobool130.not = icmp eq i64 %and129, 0
  br i1 %tobool130.not, label %if.end132, label %if.then128.cleanup_crit_edge

if.then128.cleanup_crit_edge:                     ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end132:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  %or133 = or i32 %48, 2097152
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %if.end84.if.end134_crit_edge
  %lookup_flags.7 = phi i32 [ %or133, %if.end132 ], [ %48, %if.end84.if.end134_crit_edge ]
  %lookup_flags135 = getelementptr inbounds %struct.open_flags, ptr %op, i32 0, i32 4
  %49 = ptrtoint ptr %lookup_flags135 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %lookup_flags.7, ptr %lookup_flags135, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.then128.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end134 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then34.cleanup_crit_edge ], [ -22, %if.then47.cleanup_crit_edge ], [ -11, %if.then128.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @file_open_name(ptr noundef %name, i32 noundef %flags, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.open_flags, align 4
  %how = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %op) #11
  %0 = call ptr @memset(ptr %op, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how) #11
  %1 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 1
  %2 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 2
  %and.i = and i32 %flags, 8388547
  %3 = zext i32 %and.i to i64
  %4 = ptrtoint ptr %how to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %how, align 8, !alias.scope !438
  %5 = and i16 %mode, 4095
  %6 = zext i16 %5 to i64
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %1, align 8, !alias.scope !438
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %2, align 8, !alias.scope !438
  %and7.i = and i64 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool.not.i = icmp eq i64 %and7.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i = and i64 %3, 2670592
  %9 = ptrtoint ptr %how to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and9.i, ptr %how, align 8, !alias.scope !438
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %how to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %how, align 8, !alias.scope !438
  %and11.i = and i64 %11, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end.i.build_open_how.exit_crit_edge

if.end.i.build_open_how.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %build_open_how.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %1, align 8, !alias.scope !438
  br label %build_open_how.exit

build_open_how.exit:                              ; preds = %if.then13.i, %if.end.i.build_open_how.exit_crit_edge
  %call = call i32 @build_open_flags(ptr noundef nonnull %how, ptr noundef nonnull %op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %build_open_how.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %build_open_how.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call ptr @do_filp_open(i32 noundef -100, ptr noundef %name, ptr noundef nonnull %op) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %13, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %op) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_filp_open(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @filp_open(ptr noundef %filename, i32 noundef %flags, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %op.i = alloca %struct.open_flags, align 4
  %how.i = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @getname_kernel(ptr noundef %filename) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %op.i) #11
  %0 = call ptr @memset(ptr %op.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how.i) #11
  %1 = getelementptr inbounds %struct.open_how, ptr %how.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.open_how, ptr %how.i, i32 0, i32 2
  %and.i.i = and i32 %flags, 8388547
  %3 = zext i32 %and.i.i to i64
  %4 = ptrtoint ptr %how.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %how.i, align 8, !alias.scope !441
  %5 = and i16 %mode, 4095
  %6 = zext i16 %5 to i64
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %1, align 8, !alias.scope !441
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %2, align 8, !alias.scope !441
  %and7.i.i = and i64 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i)
  %tobool.not.i.i = icmp eq i64 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i.i = and i64 %3, 2670592
  %9 = ptrtoint ptr %how.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and9.i.i, ptr %how.i, align 8, !alias.scope !441
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.if.end.i.i_crit_edge
  %10 = ptrtoint ptr %how.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %how.i, align 8, !alias.scope !441
  %and11.i.i = and i64 %11, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i.i)
  %tobool12.not.i.i = icmp eq i64 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end.i.i.build_open_how.exit.i_crit_edge

if.end.i.i.build_open_how.exit.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %build_open_how.exit.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %1, align 8, !alias.scope !441
  br label %build_open_how.exit.i

build_open_how.exit.i:                            ; preds = %if.then13.i.i, %if.end.i.i.build_open_how.exit.i_crit_edge
  %call.i = call i32 @build_open_flags(ptr noundef nonnull %how.i, ptr noundef nonnull %op.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %build_open_how.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = inttoptr i32 %call.i to ptr
  br label %file_open_name.exit

if.end.i:                                         ; preds = %build_open_how.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call ptr @do_filp_open(i32 noundef -100, ptr noundef %call, ptr noundef nonnull %op.i) #11
  br label %file_open_name.exit

file_open_name.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %13, %if.then.i ], [ %call2.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %op.i) #11
  call void @putname(ptr noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %file_open_name.exit, %entry.if.end_crit_edge
  %file.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %retval.0.i, %file_open_name.exit ]
  ret ptr %file.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @file_open_root(ptr noundef %root, ptr noundef %filename, i32 noundef %flags, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %op = alloca %struct.open_flags, align 4
  %how = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %op) #11
  %0 = call ptr @memset(ptr %op, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how) #11
  %1 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 1
  %2 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 2
  %and.i = and i32 %flags, 8388547
  %3 = zext i32 %and.i to i64
  %4 = ptrtoint ptr %how to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %how, align 8, !alias.scope !444
  %5 = and i16 %mode, 4095
  %6 = zext i16 %5 to i64
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %1, align 8, !alias.scope !444
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %2, align 8, !alias.scope !444
  %and7.i = and i64 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool.not.i = icmp eq i64 %and7.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i = and i64 %3, 2670592
  %9 = ptrtoint ptr %how to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and9.i, ptr %how, align 8, !alias.scope !444
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %10 = ptrtoint ptr %how to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %how, align 8, !alias.scope !444
  %and11.i = and i64 %11, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end.i.build_open_how.exit_crit_edge

if.end.i.build_open_how.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %build_open_how.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %1, align 8, !alias.scope !444
  br label %build_open_how.exit

build_open_how.exit:                              ; preds = %if.then13.i, %if.end.i.build_open_how.exit_crit_edge
  %call = call i32 @build_open_flags(ptr noundef nonnull %how, ptr noundef nonnull %op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %build_open_how.exit
  call void @__sanitizer_cov_trace_pc() #13
  %13 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %build_open_how.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = call ptr @do_file_open_root(ptr noundef %root, ptr noundef %filename, ptr noundef nonnull %op) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %13, %if.then ], [ %call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %op) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_file_open_root(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_sys_open(i32 noundef %dfd, ptr noundef %filename, i32 noundef %flags, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %how = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how) #11
  %0 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 1
  %1 = getelementptr inbounds %struct.open_how, ptr %how, i32 0, i32 2
  %and.i = and i32 %flags, 8388547
  %2 = zext i32 %and.i to i64
  %3 = ptrtoint ptr %how to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %how, align 8, !alias.scope !447
  %4 = and i16 %mode, 4095
  %5 = zext i16 %4 to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8, !alias.scope !447
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %1, align 8, !alias.scope !447
  %and7.i = and i64 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i)
  %tobool.not.i = icmp eq i64 %and7.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i = and i64 %2, 2670592
  %8 = ptrtoint ptr %how to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %and9.i, ptr %how, align 8, !alias.scope !447
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %9 = ptrtoint ptr %how to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %how, align 8, !alias.scope !447
  %and11.i = and i64 %10, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end.i.build_open_how.exit_crit_edge

if.end.i.build_open_how.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %build_open_how.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %0, align 8, !alias.scope !447
  br label %build_open_how.exit

build_open_how.exit:                              ; preds = %if.then13.i, %if.end.i.build_open_how.exit_crit_edge
  %call = call fastcc i32 @do_sys_openat2(i32 noundef %dfd, ptr noundef %filename, ptr noundef nonnull %how)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_sys_openat2(i32 noundef %dfd, ptr noundef %filename, ptr nocapture noundef readonly %how) unnamed_addr #0 align 64 {
entry:
  %op = alloca %struct.open_flags, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %op) #11
  %0 = call ptr @memset(ptr %op, i32 255, i32 20)
  %call = call i32 @build_open_flags(ptr noundef %how, ptr noundef nonnull %op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @getname(ptr noundef %filename) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %how to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %how, align 8
  %conv = trunc i64 %3 to i32
  %call6 = tail call i32 @get_unused_fd_flags(i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %if.then8, label %if.end5.if.end14_crit_edge

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  %call9 = call ptr @do_filp_open(i32 noundef %dfd, ptr noundef %call1, ptr noundef nonnull %op) #11
  %cmp.i29 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  call void @put_unused_fd(i32 noundef %call6) #11
  %4 = ptrtoint ptr %call9 to i32
  br label %if.end14

if.else:                                          ; preds = %if.then8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %call9, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 32, i32 4128
  %f_mode.i.i = getelementptr inbounds %struct.file, ptr %call9, i32 0, i32 8
  %7 = ptrtoint ptr %f_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_mode.i.i, align 8
  %and.i.i = and i32 %8, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.fsnotify_open.exit_crit_edge

if.else.fsnotify_open.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsnotify_open.exit

if.end.i.i:                                       ; preds = %if.else
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %call9, i32 0, i32 1
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %call9, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_inode.i.i.i.i, align 8
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 48
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %s_fsnotify_connectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.fsnotify_open.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.fsnotify_open.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fsnotify_open.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %12, align 8
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp2.i.i.i = icmp eq i16 %19, 16384
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i.if.end8.i.i.i_crit_edge

if.end.i.i.i.if.end8.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %or.i.i.i = or i32 %spec.select.i, 1073741824
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %10, align 8
  %and5.i.i.i = and i32 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and5.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.i.notify_child.i.i.i_crit_edge, label %if.then4.i.i.i.if.end8.i.i.i_crit_edge

if.then4.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i.i

if.then4.i.i.i.notify_child.i.i.i_crit_edge:      ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_child.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then4.i.i.i.if.end8.i.i.i_crit_edge, %if.end.i.i.i.if.end8.i.i.i_crit_edge
  %mask.addr.0.i.i.i = phi i32 [ %or.i.i.i, %if.then4.i.i.i.if.end8.i.i.i_crit_edge ], [ %spec.select.i, %if.end.i.i.i.if.end8.i.i.i_crit_edge ]
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3
  %22 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_parent.i.i.i, align 8
  %cmp9.i.i.i = icmp eq ptr %23, %10
  br i1 %cmp9.i.i.i, label %if.end8.i.i.i.notify_child.i.i.i_crit_edge, label %if.end12.i.i.i

if.end8.i.i.i.notify_child.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_child.i.i.i

if.end12.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i.i.i = call i32 @__fsnotify_parent(ptr noundef %10, i32 noundef %mask.addr.0.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1) #11
  br label %fsnotify_open.exit

notify_child.i.i.i:                               ; preds = %if.end8.i.i.i.notify_child.i.i.i_crit_edge, %if.then4.i.i.i.notify_child.i.i.i_crit_edge
  %mask.addr.1.i.i.i = phi i32 [ %mask.addr.0.i.i.i, %if.end8.i.i.i.notify_child.i.i.i_crit_edge ], [ %or.i.i.i, %if.then4.i.i.i.notify_child.i.i.i_crit_edge ]
  %call14.i.i.i = call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i, ptr noundef %f_path.i.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %12, i32 noundef 0) #11
  br label %fsnotify_open.exit

fsnotify_open.exit:                               ; preds = %notify_child.i.i.i, %if.end12.i.i.i, %if.end.i.i.fsnotify_open.exit_crit_edge, %if.else.fsnotify_open.exit_crit_edge
  call void @fd_install(i32 noundef %call6, ptr noundef %call9) #11
  br label %if.end14

if.end14:                                         ; preds = %fsnotify_open.exit, %if.then11, %if.end5.if.end14_crit_edge
  %fd.1 = phi i32 [ %call6, %if.end5.if.end14_crit_edge ], [ %4, %if.then11 ], [ %call6, %fsnotify_open.exit ]
  call void @putname(ptr noundef %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %fd.1, %if.end14 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %op) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_open(i32 noundef %filename, i32 noundef %flags, i32 noundef %mode) #0 align 64 {
entry:
  %how.i.i = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %mode to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how.i.i) #11
  %0 = getelementptr inbounds %struct.open_how, ptr %how.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.open_how, ptr %how.i.i, i32 0, i32 2
  %and.i.i.i = and i32 %flags, 8388547
  %2 = zext i32 %and.i.i.i to i64
  %3 = ptrtoint ptr %how.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %how.i.i, align 8, !alias.scope !450
  %4 = and i16 %conv, 4095
  %5 = zext i16 %4 to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8, !alias.scope !450
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %1, align 8, !alias.scope !450
  %and7.i.i.i = and i64 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and7.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.if.end.i.i.i_crit_edge, label %if.then.i.i.i

entry.if.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i.i.i = and i64 %2, 2670592
  %8 = ptrtoint ptr %how.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %and9.i.i.i, ptr %how.i.i, align 8, !alias.scope !450
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %entry.if.end.i.i.i_crit_edge
  %9 = ptrtoint ptr %how.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %how.i.i, align 8, !alias.scope !450
  %and11.i.i.i = and i64 %10, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i64 %and11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.then13.i.i.i, label %if.end.i.i.i.__do_sys_open.exit_crit_edge

if.end.i.i.i.__do_sys_open.exit_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_open.exit

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %0, align 8, !alias.scope !450
  br label %__do_sys_open.exit

__do_sys_open.exit:                               ; preds = %if.then13.i.i.i, %if.end.i.i.i.__do_sys_open.exit_crit_edge
  %12 = inttoptr i32 %filename to ptr
  %call.i.i = call fastcc i32 @do_sys_openat2(i32 noundef -100, ptr noundef %12, ptr noundef nonnull %how.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how.i.i) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_openat(i32 noundef %dfd, i32 noundef %filename, i32 noundef %flags, i32 noundef %mode) #0 align 64 {
entry:
  %how.i.i = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %mode to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how.i.i) #11
  %0 = getelementptr inbounds %struct.open_how, ptr %how.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.open_how, ptr %how.i.i, i32 0, i32 2
  %and.i.i.i = and i32 %flags, 8388547
  %2 = zext i32 %and.i.i.i to i64
  %3 = ptrtoint ptr %how.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %how.i.i, align 8, !alias.scope !453
  %4 = and i16 %conv, 4095
  %5 = zext i16 %4 to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %0, align 8, !alias.scope !453
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %1, align 8, !alias.scope !453
  %and7.i.i.i = and i64 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and7.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.if.end.i.i.i_crit_edge, label %if.then.i.i.i

entry.if.end.i.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9.i.i.i = and i64 %2, 2670592
  %8 = ptrtoint ptr %how.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %and9.i.i.i, ptr %how.i.i, align 8, !alias.scope !453
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %entry.if.end.i.i.i_crit_edge
  %9 = ptrtoint ptr %how.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %how.i.i, align 8, !alias.scope !453
  %and11.i.i.i = and i64 %10, 4194368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i64 %and11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.then13.i.i.i, label %if.end.i.i.i.__do_sys_openat.exit_crit_edge

if.end.i.i.i.__do_sys_openat.exit_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_openat.exit

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %0, align 8, !alias.scope !453
  br label %__do_sys_openat.exit

__do_sys_openat.exit:                             ; preds = %if.then13.i.i.i, %if.end.i.i.i.__do_sys_openat.exit_crit_edge
  %12 = inttoptr i32 %filename to ptr
  %call.i.i = call fastcc i32 @do_sys_openat2(i32 noundef %dfd, ptr noundef %12, ptr noundef nonnull %how.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how.i.i) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_openat2(i32 noundef %dfd, i32 noundef %filename, i32 noundef %how, i32 noundef %usize) #0 align 64 {
entry:
  %tmp.i = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %1 = inttoptr i32 %how to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %usize)
  %cmp.i = icmp ult i32 %usize, 24
  %2 = call ptr @memset(ptr %tmp.i, i32 255, i32 24)
  br i1 %cmp.i, label %entry.__do_sys_openat2.exit_crit_edge, label %if.end.i, !prof !398

entry.__do_sys_openat2.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_openat2.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %usize)
  %cmp.i.not.i = icmp eq i32 %usize, 24
  br i1 %cmp.i.not.i, label %if.end.i.if.then.i.i.i_crit_edge, label %if.then9.i.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then9.i.i:                                     ; preds = %if.end.i
  %sub.i.i = add i32 %usize, -24
  %add.ptr10.i.i = getelementptr i8, ptr %1, i32 24
  %call.i.i = tail call i32 @check_zeroed_user(ptr noundef %add.ptr10.i.i, i32 noundef %sub.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp11.i.i = icmp slt i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 -7, i32 %call.i.i
  br i1 %cmp11.i.i, label %if.then9.i.i.__do_sys_openat2.exit_crit_edge, label %if.then9.i.i.if.then.i.i.i_crit_edge

if.then9.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then9.i.i.__do_sys_openat2.exit_crit_edge:     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__do_sys_openat2.exit

if.then.i.i.i:                                    ; preds = %if.then9.i.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  tail call void @__might_fault(ptr noundef nonnull @.str.111, i32 noundef 156) #11
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1226833920) #14, !srcloc !456
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !402

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef 24) #11
  %4 = call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #10, !srcloc !457
  %and.i.i.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #11, !srcloc !458
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !459
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp.i, ptr noundef %1, i32 noundef 24) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !458
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !459
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end7.i, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !402

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 24, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 24, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %tmp.i, i32 %sub.i.i.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %__do_sys_openat2.exit

if.end7.i:                                        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call fastcc i32 @do_sys_openat2(i32 noundef %dfd, ptr noundef %0, ptr noundef nonnull %tmp.i) #11
  br label %__do_sys_openat2.exit

__do_sys_openat2.exit:                            ; preds = %if.end7.i, %if.then11.i.i.i.i, %if.then9.i.i.__do_sys_openat2.exit_crit_edge, %entry.__do_sys_openat2.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end7.i ], [ -22, %entry.__do_sys_openat2.exit_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ %..i.i, %if.then9.i.i.__do_sys_openat2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tmp.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_creat(i32 noundef %pathname, i32 noundef %mode) #0 align 64 {
entry:
  %how.i.i = alloca %struct.open_how, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %pathname to ptr
  %conv = trunc i32 %mode to i16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %how.i.i) #11
  %1 = getelementptr inbounds %struct.open_how, ptr %how.i.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.open_how, ptr %how.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %how.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 577, ptr %how.i.i, align 8, !alias.scope !460
  %4 = and i16 %conv, 4095
  %5 = zext i16 %4 to i64
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %1, align 8, !alias.scope !460
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %2, align 8, !alias.scope !460
  %call.i.i = call fastcc i32 @do_sys_openat2(i32 noundef -100, ptr noundef %0, ptr noundef nonnull %how.i.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %how.i.i) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @filp_close(ptr noundef %filp, ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_count = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %f_count, i32 noundef 4) #11
  %0 = ptrtoint ptr %f_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %f_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_op = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 3
  %2 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_op, align 4
  %flush = getelementptr inbounds %struct.file_operations, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 %5(ptr noundef %filp, ptr noundef %id) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %retval1.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.end.if.end8_crit_edge ]
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then13, label %if.end8.if.end14_crit_edge, !prof !402

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dnotify_flush(ptr noundef %filp, ptr noundef %id) #11
  tail call void @locks_remove_posix(ptr noundef %filp, ptr noundef %id) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end8.if.end14_crit_edge
  tail call void @fput(ptr noundef %filp) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end
  %retval.0 = phi i32 [ %retval1.0, %if.end14 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dnotify_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_remove_posix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_close(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @close_fd(i32 noundef %fd) #11
  %switch.tableidx = add i32 %call.i, 516
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  %spec.select = select i1 %switch.lobit.not, i32 %call.i, i32 -4
  %retval1.0.i = select i1 %0, i32 %spec.select, i32 %call.i
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_close_range(i32 noundef %fd, i32 noundef %max_fd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__close_range(i32 noundef %fd, i32 noundef %max_fd, i32 noundef %flags) #11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_vhangup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 26) #11
  br i1 %call, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_vhangup_self() #11
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup_self() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @generic_file_open(ptr noundef %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %land.lhs.true
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !411
  %and.i.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call ptr @llvm.returnaddress(i32 0) #11
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %6) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %6) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !412
  %and.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !398

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #11, !srcloc !413
  %8 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !463
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !464
  %10 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %11, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %9, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %11, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !465
  %12 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !466
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %15, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %13)
  %cmp = icmp sgt i64 %13, 2147483647
  br i1 %cmp, label %i_size_read.exit.return_crit_edge, label %i_size_read.exit.if.end_crit_edge

i_size_read.exit.if.end_crit_edge:                ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

i_size_read.exit.return_crit_edge:                ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %i_size_read.exit.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %i_size_read.exit.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -75, %i_size_read.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nonseekable_open(ptr nocapture readnone %inode, ptr nocapture noundef %filp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, -29
  store i32 %and, ptr %f_mode, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @stream_open(ptr nocapture readnone %inode, ptr nocapture noundef %filp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mode = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 8
  %0 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_mode, align 8
  %and = and i32 %1, -2129949
  %or = or i32 %and, 2097152
  store i32 %or, ptr %f_mode, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sb_end_write(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1 = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  %dep_map.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #11
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %1) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !467
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b8.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.85, i32 noundef 35, ptr noundef nonnull @.str.86) #11
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %do.end49.i, !prof !402

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !411
  %read_count.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17.i = add i32 %20, -1
  store i32 %add17.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !412
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool28.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool28.not.i, label %if.then37.i, label %do.body3.i.do.end39.i_crit_edge, !prof !398

do.body3.i.do.end39.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39.i

if.then37.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then37.i, %do.body3.i.do.end39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #11, !srcloc !413
  br label %percpu_up_read.exit

do.end49.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !468
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !411
  %read_count75.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %read_count75.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i122.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122.i to ptr
  %cpu78.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %31, %25
  %32 = inttoptr i32 %add80.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81.i = add i32 %34, -1
  store i32 %add81.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !412
  %and.i.i123.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i)
  %tobool92.not.i = icmp eq i32 %and.i.i123.i, 0
  br i1 %tobool92.not.i, label %if.then101.i, label %do.end49.i.do.end104.i_crit_edge, !prof !398

do.end49.i.do.end104.i_crit_edge:                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end104.i

if.then101.i:                                     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end104.i

do.end104.i:                                      ; preds = %if.then101.i, %do.end49.i.do.end104.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #11, !srcloc !413
  %writer.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i) #11
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %do.end104.i, %do.end39.i
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !469
  %36 = tail call i32 @llvm.read_register.i32(metadata !387) #11
  %and.i.i.i120.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120.i to ptr
  %preempt_count.i.i121.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121.i, align 4
  %sub.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i121.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_faccessat(i32 noundef %dfd, ptr noundef %filename, i32 noundef %mode, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #11
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !406
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !406
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode)
  %tobool.not = icmp ult i32 %mode, 8
  %and1 = and i32 %flags, -4865
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = and i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %and5 = lshr i32 %flags, 8
  %and5.lobit = and i32 %and5, 1
  %and10 = shl nuw nsw i32 %flags, 2
  %3 = and i32 %and10, 16384
  %4 = or i32 %and5.lobit, %3
  %5 = xor i32 %4, 1
  %and14 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then16, label %if.end4.if.end20_crit_edge

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then16:                                        ; preds = %if.end4
  %call.i = tail call ptr @prepare_creds() #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then16.cleanup_crit_edge, label %if.end.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then16
  %fsuid.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 10
  %uid.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uid.i, align 4
  %8 = ptrtoint ptr %fsuid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fsuid.i, align 4
  %fsgid.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 11
  %gid.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %gid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gid.i, align 4
  %11 = ptrtoint ptr %fsgid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fsgid.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !387) #11
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
  %securebits.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %securebits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %securebits.i, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.do.body.i.i_crit_edge

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 25
  %20 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_ns.i, align 4
  %call5.i = tail call i32 @make_kuid(ptr noundef %21, i32 noundef 0) #11
  %22 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %call5.i)
  %cmp.i.i = icmp eq i32 %.unpack.i, %call5.i
  %cap_effective14.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 15
  %cap_permitted.i = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 14
  %cap_permitted.sink.i = select i1 %cmp.i.i, ptr %cap_permitted.i, ptr @__cap_empty_set
  %23 = ptrtoint ptr %cap_permitted.sink.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %cap_permitted.sink.i, align 4
  %25 = ptrtoint ptr %cap_effective14.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %cap_effective14.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then4.i, %if.end.i.do.body.i.i_crit_edge
  %26 = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 28
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %26, align 4
  %call17.i = tail call ptr @override_creds(ptr noundef nonnull %call.i) #11
  %call.i.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call.i) #11
  br i1 %call.i.i.i, label %if.then.i.i.i, label %do.body.i.i.__validate_creds.exit.i.i_crit_edge, !prof !398

do.body.i.i.__validate_creds.exit.i.i_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__validate_creds.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__invalid_creds(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.97, i32 noundef 286) #11
  br label %__validate_creds.exit.i.i

__validate_creds.exit.i.i:                        ; preds = %if.then.i.i.i, %do.body.i.i.__validate_creds.exit.i.i_crit_edge
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !470
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #11, !srcloc !471
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then1.i.i, label %__validate_creds.exit.i.i.access_override_creds.exit_crit_edge

__validate_creds.exit.i.i.access_override_creds.exit_crit_edge: ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %access_override_creds.exit

if.then1.i.i:                                     ; preds = %__validate_creds.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_cred(ptr noundef nonnull %call.i) #11
  br label %access_override_creds.exit

access_override_creds.exit:                       ; preds = %if.then1.i.i, %__validate_creds.exit.i.i.access_override_creds.exit_crit_edge
  %tobool17.not = icmp eq ptr %call17.i, null
  br i1 %tobool17.not, label %access_override_creds.exit.cleanup_crit_edge, label %access_override_creds.exit.if.end20_crit_edge

access_override_creds.exit.if.end20_crit_edge:    ; preds = %access_override_creds.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

access_override_creds.exit.cleanup_crit_edge:     ; preds = %access_override_creds.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %access_override_creds.exit.if.end20_crit_edge, %if.end4.if.end20_crit_edge
  %old_cred.0 = phi ptr [ null, %if.end4.if.end20_crit_edge ], [ %call17.i, %access_override_creds.exit.if.end20_crit_edge ]
  %call.i103108 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %5, ptr noundef nonnull %path, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103108)
  %tobool22.not109 = icmp eq i32 %call.i103108, 0
  br i1 %tobool22.not109, label %if.end24.lr.ph, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end24.lr.ph:                                   ; preds = %if.end20
  %and26 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or36 = or i32 %mode, 16
  %and39 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %29 = or i32 %5, 32
  br label %if.end24

retry:                                            ; preds = %out_path_release
  %call.i103 = call i32 @user_path_at_empty(i32 noundef %dfd, ptr noundef %filename, i32 noundef %29, ptr noundef nonnull %path, ptr noundef null) #11
  %tobool22.not = icmp eq i32 %call.i103, 0
  br i1 %tobool22.not, label %retry.if.end24_crit_edge, label %retry.out_crit_edge

retry.out_crit_edge:                              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

retry.if.end24_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24:                                         ; preds = %retry.if.end24_crit_edge, %if.end24.lr.ph
  %lookup_flags.2110 = phi i32 [ %5, %if.end24.lr.ph ], [ %29, %retry.if.end24_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d_inode.i, align 8
  br i1 %tobool27.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end24
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %36 = and i16 %35, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %36)
  %cmp = icmp eq i16 %36, -32768
  br i1 %cmp, label %if.then30, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then30:                                        ; preds = %land.lhs.true
  %call31 = call zeroext i1 @path_noexec(ptr noundef nonnull %path) #11
  br i1 %call31, label %if.then30.out_path_release_crit_edge, label %if.then30.if.end34_crit_edge

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then30.out_path_release_crit_edge:             ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_path_release

if.end34:                                         ; preds = %if.then30.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %37 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %path, align 4
  %mnt_userns.i = getelementptr inbounds %struct.vfsmount, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %mnt_userns.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %mnt_userns.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !397
  %call37 = call i32 @inode_permission(ptr noundef %40, ptr noundef %33, i32 noundef %or36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp ne i32 %call37, 0
  %brmerge = or i1 %tobool38.not, %tobool40.not
  br i1 %brmerge, label %if.end34.out_path_release_crit_edge, label %lor.lhs.false41

if.end34.out_path_release_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_path_release

lor.lhs.false41:                                  ; preds = %if.end34
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %33, align 8
  %43 = and i16 %42, -4096
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.117)
  switch i16 %43, label %if.end66 [
    i16 8192, label %lor.lhs.false41.out_path_release_crit_edge
    i16 24576, label %lor.lhs.false41.out_path_release_crit_edge112
    i16 4096, label %lor.lhs.false41.out_path_release_crit_edge113
    i16 -16384, label %lor.lhs.false41.out_path_release_crit_edge114
  ]

lor.lhs.false41.out_path_release_crit_edge114:    ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_path_release

lor.lhs.false41.out_path_release_crit_edge113:    ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_path_release

lor.lhs.false41.out_path_release_crit_edge112:    ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_path_release

lor.lhs.false41.out_path_release_crit_edge:       ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_path_release

if.end66:                                         ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %path, align 4
  %call68 = call zeroext i1 @__mnt_is_readonly(ptr noundef %46) #11
  %spec.select102 = select i1 %call68, i32 -30, i32 0
  br label %out_path_release

out_path_release:                                 ; preds = %if.end66, %lor.lhs.false41.out_path_release_crit_edge, %lor.lhs.false41.out_path_release_crit_edge112, %lor.lhs.false41.out_path_release_crit_edge113, %lor.lhs.false41.out_path_release_crit_edge114, %if.end34.out_path_release_crit_edge, %if.then30.out_path_release_crit_edge
  %res.0 = phi i32 [ -13, %if.then30.out_path_release_crit_edge ], [ %call37, %if.end34.out_path_release_crit_edge ], [ 0, %lor.lhs.false41.out_path_release_crit_edge ], [ 0, %lor.lhs.false41.out_path_release_crit_edge112 ], [ 0, %lor.lhs.false41.out_path_release_crit_edge113 ], [ 0, %lor.lhs.false41.out_path_release_crit_edge114 ], [ %spec.select102, %if.end66 ]
  call void @path_put(ptr noundef nonnull %path) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -116, i32 %res.0)
  %cmp.i = icmp eq i32 %res.0, -116
  %and.i104 = and i32 %lookup_flags.2110, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp eq i32 %and.i104, 0
  %47 = and i1 %tobool.not.i105, %cmp.i
  br i1 %47, label %retry, label %out_path_release.out_crit_edge

out_path_release.out_crit_edge:                   ; preds = %out_path_release
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %out_path_release.out_crit_edge, %retry.out_crit_edge, %if.end20.out_crit_edge
  %res.1 = phi i32 [ %call.i103108, %if.end20.out_crit_edge ], [ %res.0, %out_path_release.out_crit_edge ], [ %call.i103, %retry.out_crit_edge ]
  %tobool75.not = icmp eq ptr %old_cred.0, null
  br i1 %tobool75.not, label %out.cleanup_crit_edge, label %if.then76

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then76:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @revert_creds(ptr noundef nonnull %old_cred.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %out.cleanup_crit_edge, %access_override_creds.exit.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %access_override_creds.exit.cleanup_crit_edge ], [ %res.1, %if.then76 ], [ %res.1, %out.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__mnt_is_readonly(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_pwd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_path_chroot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fs_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_file_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @close_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__close_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !116, !117, !118, !119, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140, !141, !142, !143, !144, !146, !148, !150, !151, !152, !153, !154, !155, !156, !157, !158, !160, !161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250, !251, !253, !255, !256, !257, !258, !259, !260, !261, !262, !263, !265, !266, !267, !268, !269, !270, !271, !272, !273, !275, !276, !277, !278, !279, !280, !281, !282, !283, !285, !287, !289, !290, !291, !292, !293, !294, !295, !297, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !323, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !360, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !374, !375, !377, !379, !380, !381, !382, !383, !384, !385, !386}
!llvm.named.register.sp = !{!387}
!llvm.module.flags = !{!388, !389, !390, !391, !392, !393, !394, !395}
!llvm.ident = !{!396}

!0 = !{ptr @__ksymtab_vfs_truncate, !1, !"__ksymtab_vfs_truncate", i1 false, i1 false}
!1 = !{!"../fs/open.c", i32 120, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/open.c", i32 144, i32 1}
!4 = !{ptr @event_enter__truncate, !3, !"event_enter__truncate", i1 false, i1 false}
!5 = !{ptr @__event_enter__truncate, !3, !"__event_enter__truncate", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__truncate, !3, !"event_exit__truncate", i1 false, i1 false}
!8 = !{ptr @__event_exit__truncate, !3, !"__event_exit__truncate", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__truncate, !3, !"__syscall_meta__truncate", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__truncate, !3, !"__p_syscall_meta__truncate", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/open.c", i32 202, i32 1}
!14 = !{ptr @event_enter__ftruncate, !13, !"event_enter__ftruncate", i1 false, i1 false}
!15 = !{ptr @__event_enter__ftruncate, !13, !"__event_enter__ftruncate", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @event_exit__ftruncate, !13, !"event_exit__ftruncate", i1 false, i1 false}
!18 = !{ptr @__event_exit__ftruncate, !13, !"__event_exit__ftruncate", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__syscall_meta__ftruncate, !13, !"__syscall_meta__ftruncate", i1 false, i1 false}
!21 = !{ptr @__p_syscall_meta__ftruncate, !13, !"__p_syscall_meta__ftruncate", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/open.c", i32 216, i32 1}
!24 = !{ptr @event_enter__truncate64, !23, !"event_enter__truncate64", i1 false, i1 false}
!25 = !{ptr @__event_enter__truncate64, !23, !"__event_enter__truncate64", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__truncate64, !23, !"event_exit__truncate64", i1 false, i1 false}
!28 = !{ptr @__event_exit__truncate64, !23, !"__event_exit__truncate64", i1 false, i1 false}
!29 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__truncate64, !23, !"__syscall_meta__truncate64", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__truncate64, !23, !"__p_syscall_meta__truncate64", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/open.c", i32 221, i32 1}
!34 = !{ptr @event_enter__ftruncate64, !33, !"event_enter__ftruncate64", i1 false, i1 false}
!35 = !{ptr @__event_enter__ftruncate64, !33, !"__event_enter__ftruncate64", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @event_exit__ftruncate64, !33, !"event_exit__ftruncate64", i1 false, i1 false}
!38 = !{ptr @__event_exit__ftruncate64, !33, !"__event_exit__ftruncate64", i1 false, i1 false}
!39 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__syscall_meta__ftruncate64, !33, !"__syscall_meta__ftruncate64", i1 false, i1 false}
!41 = !{ptr @__p_syscall_meta__ftruncate64, !33, !"__p_syscall_meta__ftruncate64", i1 false, i1 false}
!42 = !{ptr @__ksymtab_vfs_fallocate, !43, !"__ksymtab_vfs_fallocate", i1 false, i1 false}
!43 = !{!"../fs/open.c", i32 323, i32 1}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/open.c", i32 337, i32 1}
!46 = !{ptr @event_enter__fallocate, !45, !"event_enter__fallocate", i1 false, i1 false}
!47 = !{ptr @__event_enter__fallocate, !45, !"__event_enter__fallocate", i1 false, i1 false}
!48 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_exit__fallocate, !45, !"event_exit__fallocate", i1 false, i1 false}
!50 = !{ptr @__event_exit__fallocate, !45, !"__event_exit__fallocate", i1 false, i1 false}
!51 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__syscall_meta__fallocate, !45, !"__syscall_meta__fallocate", i1 false, i1 false}
!53 = !{ptr @__p_syscall_meta__fallocate, !45, !"__p_syscall_meta__fallocate", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/open.c", i32 468, i32 1}
!56 = !{ptr @event_enter__faccessat, !55, !"event_enter__faccessat", i1 false, i1 false}
!57 = !{ptr @__event_enter__faccessat, !55, !"__event_enter__faccessat", i1 false, i1 false}
!58 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @event_exit__faccessat, !55, !"event_exit__faccessat", i1 false, i1 false}
!60 = !{ptr @__event_exit__faccessat, !55, !"__event_exit__faccessat", i1 false, i1 false}
!61 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__syscall_meta__faccessat, !55, !"__syscall_meta__faccessat", i1 false, i1 false}
!63 = !{ptr @__p_syscall_meta__faccessat, !55, !"__p_syscall_meta__faccessat", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/open.c", i32 473, i32 1}
!66 = !{ptr @event_enter__faccessat2, !65, !"event_enter__faccessat2", i1 false, i1 false}
!67 = !{ptr @__event_enter__faccessat2, !65, !"__event_enter__faccessat2", i1 false, i1 false}
!68 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @event_exit__faccessat2, !65, !"event_exit__faccessat2", i1 false, i1 false}
!70 = !{ptr @__event_exit__faccessat2, !65, !"__event_exit__faccessat2", i1 false, i1 false}
!71 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__syscall_meta__faccessat2, !65, !"__syscall_meta__faccessat2", i1 false, i1 false}
!73 = !{ptr @__p_syscall_meta__faccessat2, !65, !"__p_syscall_meta__faccessat2", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/open.c", i32 479, i32 1}
!76 = !{ptr @event_enter__access, !75, !"event_enter__access", i1 false, i1 false}
!77 = !{ptr @__event_enter__access, !75, !"__event_enter__access", i1 false, i1 false}
!78 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @event_exit__access, !75, !"event_exit__access", i1 false, i1 false}
!80 = !{ptr @__event_exit__access, !75, !"__event_exit__access", i1 false, i1 false}
!81 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__syscall_meta__access, !75, !"__syscall_meta__access", i1 false, i1 false}
!83 = !{ptr @__p_syscall_meta__access, !75, !"__p_syscall_meta__access", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/open.c", i32 484, i32 1}
!86 = !{ptr @event_enter__chdir, !85, !"event_enter__chdir", i1 false, i1 false}
!87 = !{ptr @__event_enter__chdir, !85, !"__event_enter__chdir", i1 false, i1 false}
!88 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @event_exit__chdir, !85, !"event_exit__chdir", i1 false, i1 false}
!90 = !{ptr @__event_exit__chdir, !85, !"__event_exit__chdir", i1 false, i1 false}
!91 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__syscall_meta__chdir, !85, !"__syscall_meta__chdir", i1 false, i1 false}
!93 = !{ptr @__p_syscall_meta__chdir, !85, !"__p_syscall_meta__chdir", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/open.c", i32 510, i32 1}
!96 = !{ptr @event_enter__fchdir, !95, !"event_enter__fchdir", i1 false, i1 false}
!97 = !{ptr @__event_enter__fchdir, !95, !"__event_enter__fchdir", i1 false, i1 false}
!98 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @event_exit__fchdir, !95, !"event_exit__fchdir", i1 false, i1 false}
!100 = !{ptr @__event_exit__fchdir, !95, !"__event_exit__fchdir", i1 false, i1 false}
!101 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @__syscall_meta__fchdir, !95, !"__syscall_meta__fchdir", i1 false, i1 false}
!103 = !{ptr @__p_syscall_meta__fchdir, !95, !"__p_syscall_meta__fchdir", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/open.c", i32 532, i32 1}
!106 = !{ptr @event_enter__chroot, !105, !"event_enter__chroot", i1 false, i1 false}
!107 = !{ptr @__event_enter__chroot, !105, !"__event_enter__chroot", i1 false, i1 false}
!108 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @event_exit__chroot, !105, !"event_exit__chroot", i1 false, i1 false}
!110 = !{ptr @__event_exit__chroot, !105, !"__event_exit__chroot", i1 false, i1 false}
!111 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @__syscall_meta__chroot, !105, !"__syscall_meta__chroot", i1 false, i1 false}
!113 = !{ptr @__p_syscall_meta__chroot, !105, !"__p_syscall_meta__chroot", i1 false, i1 false}
!114 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/open.c", i32 601, i32 1}
!116 = !{ptr @event_enter__fchmod, !115, !"event_enter__fchmod", i1 false, i1 false}
!117 = !{ptr @__event_enter__fchmod, !115, !"__event_enter__fchmod", i1 false, i1 false}
!118 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @event_exit__fchmod, !115, !"event_exit__fchmod", i1 false, i1 false}
!120 = !{ptr @__event_exit__fchmod, !115, !"__event_exit__fchmod", i1 false, i1 false}
!121 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @__syscall_meta__fchmod, !115, !"__syscall_meta__fchmod", i1 false, i1 false}
!123 = !{ptr @__p_syscall_meta__fchmod, !115, !"__p_syscall_meta__fchmod", i1 false, i1 false}
!124 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/open.c", i32 631, i32 1}
!126 = !{ptr @event_enter__fchmodat, !125, !"event_enter__fchmodat", i1 false, i1 false}
!127 = !{ptr @__event_enter__fchmodat, !125, !"__event_enter__fchmodat", i1 false, i1 false}
!128 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @event_exit__fchmodat, !125, !"event_exit__fchmodat", i1 false, i1 false}
!130 = !{ptr @__event_exit__fchmodat, !125, !"__event_exit__fchmodat", i1 false, i1 false}
!131 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @__syscall_meta__fchmodat, !125, !"__syscall_meta__fchmodat", i1 false, i1 false}
!133 = !{ptr @__p_syscall_meta__fchmodat, !125, !"__p_syscall_meta__fchmodat", i1 false, i1 false}
!134 = !{ptr @.str.39, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/open.c", i32 637, i32 1}
!136 = !{ptr @event_enter__chmod, !135, !"event_enter__chmod", i1 false, i1 false}
!137 = !{ptr @__event_enter__chmod, !135, !"__event_enter__chmod", i1 false, i1 false}
!138 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @event_exit__chmod, !135, !"event_exit__chmod", i1 false, i1 false}
!140 = !{ptr @__event_exit__chmod, !135, !"__event_exit__chmod", i1 false, i1 false}
!141 = !{ptr @.str.41, !135, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__syscall_meta__chmod, !135, !"__syscall_meta__chmod", i1 false, i1 false}
!143 = !{ptr @__p_syscall_meta__chmod, !135, !"__p_syscall_meta__chmod", i1 false, i1 false}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../fs/open.c", i32 652, i32 18}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../fs/open.c", i32 653, i32 18}
!148 = !{ptr @.str.43, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/open.c", i32 723, i32 1}
!150 = !{ptr @event_enter__fchownat, !149, !"event_enter__fchownat", i1 false, i1 false}
!151 = !{ptr @__event_enter__fchownat, !149, !"__event_enter__fchownat", i1 false, i1 false}
!152 = !{ptr @.str.44, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @event_exit__fchownat, !149, !"event_exit__fchownat", i1 false, i1 false}
!154 = !{ptr @__event_exit__fchownat, !149, !"__event_exit__fchownat", i1 false, i1 false}
!155 = !{ptr @.str.45, !149, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @__syscall_meta__fchownat, !149, !"__syscall_meta__fchownat", i1 false, i1 false}
!157 = !{ptr @__p_syscall_meta__fchownat, !149, !"__p_syscall_meta__fchownat", i1 false, i1 false}
!158 = !{ptr @.str.46, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/open.c", i32 729, i32 1}
!160 = !{ptr @event_enter__chown, !159, !"event_enter__chown", i1 false, i1 false}
!161 = !{ptr @__event_enter__chown, !159, !"__event_enter__chown", i1 false, i1 false}
!162 = !{ptr @.str.47, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @event_exit__chown, !159, !"event_exit__chown", i1 false, i1 false}
!164 = !{ptr @__event_exit__chown, !159, !"__event_exit__chown", i1 false, i1 false}
!165 = !{ptr @.str.48, !159, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @__syscall_meta__chown, !159, !"__syscall_meta__chown", i1 false, i1 false}
!167 = !{ptr @__p_syscall_meta__chown, !159, !"__p_syscall_meta__chown", i1 false, i1 false}
!168 = !{ptr @.str.49, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/open.c", i32 734, i32 1}
!170 = !{ptr @event_enter__lchown, !169, !"event_enter__lchown", i1 false, i1 false}
!171 = !{ptr @__event_enter__lchown, !169, !"__event_enter__lchown", i1 false, i1 false}
!172 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @event_exit__lchown, !169, !"event_exit__lchown", i1 false, i1 false}
!174 = !{ptr @__event_exit__lchown, !169, !"__event_exit__lchown", i1 false, i1 false}
!175 = !{ptr @.str.51, !169, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @__syscall_meta__lchown, !169, !"__syscall_meta__lchown", i1 false, i1 false}
!177 = !{ptr @__p_syscall_meta__lchown, !169, !"__p_syscall_meta__lchown", i1 false, i1 false}
!178 = !{ptr @.str.52, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/open.c", i32 765, i32 1}
!180 = !{ptr @event_enter__fchown, !179, !"event_enter__fchown", i1 false, i1 false}
!181 = !{ptr @__event_enter__fchown, !179, !"__event_enter__fchown", i1 false, i1 false}
!182 = !{ptr @.str.53, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @event_exit__fchown, !179, !"event_exit__fchown", i1 false, i1 false}
!184 = !{ptr @__event_exit__fchown, !179, !"__event_exit__fchown", i1 false, i1 false}
!185 = !{ptr @.str.54, !179, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @__syscall_meta__fchown, !179, !"__syscall_meta__fchown", i1 false, i1 false}
!187 = !{ptr @__p_syscall_meta__fchown, !179, !"__p_syscall_meta__fchown", i1 false, i1 false}
!188 = !{ptr @__ksymtab_finish_open, !189, !"__ksymtab_finish_open", i1 false, i1 false}
!189 = !{!"../fs/open.c", i32 921, i32 1}
!190 = !{ptr @__ksymtab_finish_no_open, !191, !"__ksymtab_finish_no_open", i1 false, i1 false}
!191 = !{!"../fs/open.c", i32 942, i32 1}
!192 = !{ptr @__ksymtab_file_path, !193, !"__ksymtab_file_path", i1 false, i1 false}
!193 = !{!"../fs/open.c", i32 948, i32 1}
!194 = !{ptr @.str.55, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/open.c", i32 968, i32 2}
!196 = !{ptr @__ksymtab_dentry_open, !197, !"__ksymtab_dentry_open", i1 false, i1 false}
!197 = !{!"../fs/open.c", i32 983, i32 1}
!198 = !{ptr @__ksymtab_open_with_fake_path, !199, !"__ksymtab_open_with_fake_path", i1 false, i1 false}
!199 = !{!"../fs/open.c", i32 1001, i32 1}
!200 = !{ptr @.str.56, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/open.c", i32 1027, i32 17}
!202 = !{ptr @__ksymtab_filp_open, !203, !"__ksymtab_filp_open", i1 false, i1 false}
!203 = !{!"../fs/open.c", i32 1184, i32 1}
!204 = !{ptr @__ksymtab_file_open_root, !205, !"__ksymtab_file_open_root", i1 false, i1 false}
!205 = !{!"../fs/open.c", i32 1196, i32 1}
!206 = !{ptr @.str.57, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/open.c", i32 1234, i32 1}
!208 = !{ptr @event_enter__open, !207, !"event_enter__open", i1 false, i1 false}
!209 = !{ptr @__event_enter__open, !207, !"__event_enter__open", i1 false, i1 false}
!210 = !{ptr @.str.58, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @event_exit__open, !207, !"event_exit__open", i1 false, i1 false}
!212 = !{ptr @__event_exit__open, !207, !"__event_exit__open", i1 false, i1 false}
!213 = !{ptr @.str.59, !207, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @__syscall_meta__open, !207, !"__syscall_meta__open", i1 false, i1 false}
!215 = !{ptr @__p_syscall_meta__open, !207, !"__p_syscall_meta__open", i1 false, i1 false}
!216 = !{ptr @.str.60, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../fs/open.c", i32 1241, i32 1}
!218 = !{ptr @event_enter__openat, !217, !"event_enter__openat", i1 false, i1 false}
!219 = !{ptr @__event_enter__openat, !217, !"__event_enter__openat", i1 false, i1 false}
!220 = !{ptr @.str.61, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @event_exit__openat, !217, !"event_exit__openat", i1 false, i1 false}
!222 = !{ptr @__event_exit__openat, !217, !"__event_exit__openat", i1 false, i1 false}
!223 = !{ptr @.str.62, !217, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @__syscall_meta__openat, !217, !"__syscall_meta__openat", i1 false, i1 false}
!225 = !{ptr @__p_syscall_meta__openat, !217, !"__p_syscall_meta__openat", i1 false, i1 false}
!226 = !{ptr @.str.63, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../fs/open.c", i32 1249, i32 1}
!228 = !{ptr @event_enter__openat2, !227, !"event_enter__openat2", i1 false, i1 false}
!229 = !{ptr @__event_enter__openat2, !227, !"__event_enter__openat2", i1 false, i1 false}
!230 = !{ptr @.str.64, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @event_exit__openat2, !227, !"event_exit__openat2", i1 false, i1 false}
!232 = !{ptr @__event_exit__openat2, !227, !"__event_exit__openat2", i1 false, i1 false}
!233 = !{ptr @.str.65, !227, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @__syscall_meta__openat2, !227, !"__syscall_meta__openat2", i1 false, i1 false}
!235 = !{ptr @__p_syscall_meta__openat2, !227, !"__p_syscall_meta__openat2", i1 false, i1 false}
!236 = !{ptr @.str.66, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../fs/open.c", i32 1300, i32 1}
!238 = !{ptr @event_enter__creat, !237, !"event_enter__creat", i1 false, i1 false}
!239 = !{ptr @__event_enter__creat, !237, !"__event_enter__creat", i1 false, i1 false}
!240 = !{ptr @.str.67, !237, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @event_exit__creat, !237, !"event_exit__creat", i1 false, i1 false}
!242 = !{ptr @__event_exit__creat, !237, !"__event_exit__creat", i1 false, i1 false}
!243 = !{ptr @.str.68, !237, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @__syscall_meta__creat, !237, !"__syscall_meta__creat", i1 false, i1 false}
!245 = !{ptr @__p_syscall_meta__creat, !237, !"__p_syscall_meta__creat", i1 false, i1 false}
!246 = !{ptr @.str.69, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/open.c", i32 1319, i32 3}
!248 = !{ptr @.str.70, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @filp_close._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @filp_close._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @__ksymtab_filp_close, !252, !"__ksymtab_filp_close", i1 false, i1 false}
!252 = !{!"../fs/open.c", i32 1334, i32 1}
!253 = !{ptr @.str.71, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/open.c", i32 1341, i32 1}
!255 = !{ptr @event_enter__close, !254, !"event_enter__close", i1 false, i1 false}
!256 = !{ptr @__event_enter__close, !254, !"__event_enter__close", i1 false, i1 false}
!257 = !{ptr @.str.72, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @event_exit__close, !254, !"event_exit__close", i1 false, i1 false}
!259 = !{ptr @__event_exit__close, !254, !"__event_exit__close", i1 false, i1 false}
!260 = !{ptr @.str.73, !254, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @__syscall_meta__close, !254, !"__syscall_meta__close", i1 false, i1 false}
!262 = !{ptr @__p_syscall_meta__close, !254, !"__p_syscall_meta__close", i1 false, i1 false}
!263 = !{ptr @.str.74, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/open.c", i32 1366, i32 1}
!265 = !{ptr @event_enter__close_range, !264, !"event_enter__close_range", i1 false, i1 false}
!266 = !{ptr @__event_enter__close_range, !264, !"__event_enter__close_range", i1 false, i1 false}
!267 = !{ptr @.str.75, !264, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @event_exit__close_range, !264, !"event_exit__close_range", i1 false, i1 false}
!269 = !{ptr @__event_exit__close_range, !264, !"__event_exit__close_range", i1 false, i1 false}
!270 = !{ptr @.str.76, !264, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @__syscall_meta__close_range, !264, !"__syscall_meta__close_range", i1 false, i1 false}
!272 = !{ptr @__p_syscall_meta__close_range, !264, !"__p_syscall_meta__close_range", i1 false, i1 false}
!273 = !{ptr @.str.77, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/open.c", i32 1376, i32 1}
!275 = !{ptr @event_enter__vhangup, !274, !"event_enter__vhangup", i1 false, i1 false}
!276 = !{ptr @__event_enter__vhangup, !274, !"__event_enter__vhangup", i1 false, i1 false}
!277 = !{ptr @.str.78, !274, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @event_exit__vhangup, !274, !"event_exit__vhangup", i1 false, i1 false}
!279 = !{ptr @__event_exit__vhangup, !274, !"__event_exit__vhangup", i1 false, i1 false}
!280 = !{ptr @.str.79, !274, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @__syscall_meta__vhangup, !274, !"__syscall_meta__vhangup", i1 false, i1 false}
!282 = !{ptr @__p_syscall_meta__vhangup, !274, !"__p_syscall_meta__vhangup", i1 false, i1 false}
!283 = !{ptr @__ksymtab_generic_file_open, !284, !"__ksymtab_generic_file_open", i1 false, i1 false}
!284 = !{!"../fs/open.c", i32 1398, i32 1}
!285 = !{ptr @__ksymtab_nonseekable_open, !286, !"__ksymtab_nonseekable_open", i1 false, i1 false}
!286 = !{!"../fs/open.c", i32 1412, i32 1}
!287 = !{ptr @__ksymtab_stream_open, !288, !"__ksymtab_stream_open", i1 false, i1 false}
!288 = !{!"../fs/open.c", i32 1431, i32 1}
!289 = !{ptr @.str.80, !3, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.81, !3, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @types__truncate, !3, !"types__truncate", i1 false, i1 false}
!292 = !{ptr @.str.82, !3, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.83, !3, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @args__truncate, !3, !"args__truncate", i1 false, i1 false}
!295 = !{ptr @.str.84, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!297 = distinct !{null, !298, !"__warned", i1 false, i1 false}
!298 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!299 = !{ptr @.str.85, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @.str.86, !298, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.87, !13, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.88, !13, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @types__ftruncate, !13, !"types__ftruncate", i1 false, i1 false}
!304 = !{ptr @.str.89, !13, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @args__ftruncate, !13, !"args__ftruncate", i1 false, i1 false}
!306 = !{ptr @.str.90, !23, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @types__truncate64, !23, !"types__truncate64", i1 false, i1 false}
!308 = !{ptr @args__truncate64, !23, !"args__truncate64", i1 false, i1 false}
!309 = !{ptr @types__ftruncate64, !33, !"types__ftruncate64", i1 false, i1 false}
!310 = !{ptr @args__ftruncate64, !33, !"args__ftruncate64", i1 false, i1 false}
!311 = !{ptr @.str.91, !45, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @types__fallocate, !45, !"types__fallocate", i1 false, i1 false}
!313 = !{ptr @.str.92, !45, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.93, !45, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.94, !45, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @args__fallocate, !45, !"args__fallocate", i1 false, i1 false}
!317 = !{ptr @types__faccessat, !55, !"types__faccessat", i1 false, i1 false}
!318 = !{ptr @.str.95, !55, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.96, !55, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @args__faccessat, !55, !"args__faccessat", i1 false, i1 false}
!321 = distinct !{null, !322, !"__warned", i1 false, i1 false}
!322 = !{!"../fs/open.c", i32 359, i32 7}
!323 = !{ptr @.str.97, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../include/linux/cred.h", i32 286, i32 3}
!325 = !{ptr @types__faccessat2, !65, !"types__faccessat2", i1 false, i1 false}
!326 = !{ptr @.str.98, !65, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @args__faccessat2, !65, !"args__faccessat2", i1 false, i1 false}
!328 = !{ptr @types__access, !75, !"types__access", i1 false, i1 false}
!329 = !{ptr @args__access, !75, !"args__access", i1 false, i1 false}
!330 = !{ptr @types__chdir, !85, !"types__chdir", i1 false, i1 false}
!331 = !{ptr @args__chdir, !85, !"args__chdir", i1 false, i1 false}
!332 = !{ptr @types__fchdir, !95, !"types__fchdir", i1 false, i1 false}
!333 = !{ptr @args__fchdir, !95, !"args__fchdir", i1 false, i1 false}
!334 = !{ptr @types__chroot, !105, !"types__chroot", i1 false, i1 false}
!335 = !{ptr @args__chroot, !105, !"args__chroot", i1 false, i1 false}
!336 = distinct !{null, !337, !"__warned", i1 false, i1 false}
!337 = !{!"../fs/open.c", i32 547, i32 18}
!338 = !{ptr @.str.99, !115, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @types__fchmod, !115, !"types__fchmod", i1 false, i1 false}
!340 = !{ptr @args__fchmod, !115, !"args__fchmod", i1 false, i1 false}
!341 = !{ptr @types__fchmodat, !125, !"types__fchmodat", i1 false, i1 false}
!342 = !{ptr @args__fchmodat, !125, !"args__fchmodat", i1 false, i1 false}
!343 = !{ptr @types__chmod, !135, !"types__chmod", i1 false, i1 false}
!344 = !{ptr @args__chmod, !135, !"args__chmod", i1 false, i1 false}
!345 = !{ptr @.str.100, !149, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.101, !149, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @types__fchownat, !149, !"types__fchownat", i1 false, i1 false}
!348 = !{ptr @.str.102, !149, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.103, !149, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.104, !149, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @args__fchownat, !149, !"args__fchownat", i1 false, i1 false}
!352 = !{ptr @types__chown, !159, !"types__chown", i1 false, i1 false}
!353 = !{ptr @args__chown, !159, !"args__chown", i1 false, i1 false}
!354 = !{ptr @types__lchown, !169, !"types__lchown", i1 false, i1 false}
!355 = !{ptr @args__lchown, !169, !"args__lchown", i1 false, i1 false}
!356 = !{ptr @types__fchown, !179, !"types__fchown", i1 false, i1 false}
!357 = !{ptr @args__fchown, !179, !"args__fchown", i1 false, i1 false}
!358 = !{ptr @do_dentry_open.empty_fops, !359, !"empty_fops", i1 false, i1 false}
!359 = !{!"../fs/open.c", i32 774, i32 38}
!360 = distinct !{null, !361, !"__already_done", i1 false, i1 false}
!361 = !{!"../fs/open.c", i32 880, i32 6}
!362 = !{ptr @types__open, !207, !"types__open", i1 false, i1 false}
!363 = !{ptr @args__open, !207, !"args__open", i1 false, i1 false}
!364 = !{ptr @types__openat, !217, !"types__openat", i1 false, i1 false}
!365 = !{ptr @args__openat, !217, !"args__openat", i1 false, i1 false}
!366 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @types__openat2, !227, !"types__openat2", i1 false, i1 false}
!369 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @args__openat2, !227, !"args__openat2", i1 false, i1 false}
!372 = distinct !{null, !373, !"__already_done", i1 false, i1 false}
!373 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!374 = distinct !{null, !373, !"<string literal>", i1 false, i1 false}
!375 = distinct !{null, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!377 = !{ptr @.str.111, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!379 = !{ptr @types__creat, !237, !"types__creat", i1 false, i1 false}
!380 = !{ptr @.str.112, !237, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @args__creat, !237, !"args__creat", i1 false, i1 false}
!382 = !{ptr @types__close, !254, !"types__close", i1 false, i1 false}
!383 = !{ptr @args__close, !254, !"args__close", i1 false, i1 false}
!384 = !{ptr @types__close_range, !264, !"types__close_range", i1 false, i1 false}
!385 = !{ptr @.str.113, !264, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @args__close_range, !264, !"args__close_range", i1 false, i1 false}
!387 = !{!"sp"}
!388 = !{i32 1, !"wchar_size", i32 2}
!389 = !{i32 1, !"min_enum_size", i32 4}
!390 = !{i32 8, !"branch-target-enforcement", i32 0}
!391 = !{i32 8, !"sign-return-address", i32 0}
!392 = !{i32 8, !"sign-return-address-all", i32 0}
!393 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!394 = !{i32 7, !"uwtable", i32 1}
!395 = !{i32 7, !"frame-pointer", i32 2}
!396 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!397 = !{i64 2152998044}
!398 = !{!"branch_weights", i32 1, i32 2000}
!399 = !{i64 2148814491}
!400 = !{i64 1198157, i64 1198181, i64 1198202, i64 1198219, i64 1198236}
!401 = !{i64 2148814717}
!402 = !{!"branch_weights", i32 2000, i32 1}
!403 = !{i64 2148715109, i64 2148715135, i64 2148715164, i64 2148715198, i64 2148715229, i64 2148715252}
!404 = !{i64 2153112823}
!405 = !{i64 2148490642}
!406 = !{!"auto-init"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"fdget: %agg.result"}
!409 = distinct !{!409, !"fdget"}
!410 = !{i64 2152929726}
!411 = !{i64 1117324, i64 1117385}
!412 = !{i64 1120056}
!413 = !{i64 1120341}
!414 = !{i64 2152938576}
!415 = !{!416}
!416 = distinct !{!416, !417, !"fdget: %agg.result"}
!417 = distinct !{!417, !"fdget"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"fdget: %agg.result"}
!420 = distinct !{!420, !"fdget"}
!421 = !{!422}
!422 = distinct !{!422, !423, !"fdget_raw: %agg.result"}
!423 = distinct !{!423, !"fdget_raw"}
!424 = !{i64 2153113147}
!425 = !{!426}
!426 = distinct !{!426, !427, !"fdget: %agg.result"}
!427 = distinct !{!427, !"fdget"}
!428 = !{!429}
!429 = distinct !{!429, !430, !"fdget: %agg.result"}
!430 = distinct !{!430, !"fdget"}
!431 = !{!432}
!432 = distinct !{!432, !433, !"fdget: %agg.result"}
!433 = distinct !{!433, !"fdget"}
!434 = !{i64 2156042027, i64 2156042501, i64 2156042064, i64 2156042120, i64 2156042154, i64 2156042178, i64 2156042219, i64 2156042240, i64 2156042268, i64 2156042302}
!435 = !{i64 2148712644, i64 2148712670, i64 2148712699, i64 2148712733, i64 2148712764, i64 2148712787}
!436 = !{i64 2156040515}
!437 = !{i64 2156051718, i64 2156052192, i64 2156051755, i64 2156051811, i64 2156051845, i64 2156051869, i64 2156051910, i64 2156051931, i64 2156051959, i64 2156051993}
!438 = !{!439}
!439 = distinct !{!439, !440, !"build_open_how: %agg.result"}
!440 = distinct !{!440, !"build_open_how"}
!441 = !{!442}
!442 = distinct !{!442, !443, !"build_open_how: %agg.result"}
!443 = distinct !{!443, !"build_open_how"}
!444 = !{!445}
!445 = distinct !{!445, !446, !"build_open_how: %agg.result"}
!446 = distinct !{!446, !"build_open_how"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"build_open_how: %agg.result"}
!449 = distinct !{!449, !"build_open_how"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"build_open_how: %agg.result"}
!452 = distinct !{!452, !"build_open_how"}
!453 = !{!454}
!454 = distinct !{!454, !455, !"build_open_how: %agg.result"}
!455 = distinct !{!455, !"build_open_how"}
!456 = !{i64 2152759063, i64 2152759088}
!457 = !{i64 5254618}
!458 = !{i64 5254815}
!459 = !{i64 2152740048}
!460 = !{!461}
!461 = distinct !{!461, !462, !"build_open_how: %agg.result"}
!462 = distinct !{!462, !"build_open_how"}
!463 = !{i64 2153089415}
!464 = !{i64 2153089257}
!465 = !{i64 2153089585}
!466 = !{i64 2149876694}
!467 = !{i64 2152948530}
!468 = !{i64 2152958025}
!469 = !{i64 2152967502}
!470 = !{i64 2148801120}
!471 = !{i64 2148715829, i64 2148715861, i64 2148715890, i64 2148715924, i64 2148715955, i64 2148715978}
!472 = !{i64 2148801349}
