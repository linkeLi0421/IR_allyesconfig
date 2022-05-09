; ModuleID = '/llk/IR_all_yes/fs/exec.c_pt.bc'
source_filename = "../fs/exec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__register_binfmt\22, \22a\22\09"
module asm "\09.weak\09__crc___register_binfmt\09\09\09\09"
module asm "\09.long\09__crc___register_binfmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___register_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22__register_binfmt\22\09\09\09\09\09"
module asm "__kstrtabns___register_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_binfmt\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_binfmt\09\09\09\09"
module asm "\09.long\09__crc_unregister_binfmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_binfmt\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+copy_string_kernel\22, \22a\22\09"
module asm "\09.weak\09__crc_copy_string_kernel\09\09\09\09"
module asm "\09.long\09__crc_copy_string_kernel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_string_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_string_kernel\22\09\09\09\09\09"
module asm "__kstrtabns_copy_string_kernel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+setup_arg_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_setup_arg_pages\09\09\09\09"
module asm "\09.long\09__crc_setup_arg_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_arg_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_arg_pages\22\09\09\09\09\09"
module asm "__kstrtabns_setup_arg_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+open_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_open_exec\09\09\09\09"
module asm "\09.long\09__crc_open_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22open_exec\22\09\09\09\09\09"
module asm "__kstrtabns_open_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+read_code\22, \22a\22\09"
module asm "\09.weak\09__crc_read_code\09\09\09\09"
module asm "\09.long\09__crc_read_code\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_code:\09\09\09\09\09"
module asm "\09.asciz \09\22read_code\22\09\09\09\09\09"
module asm "__kstrtabns_read_code:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__get_task_comm\22, \22a\22\09"
module asm "\09.weak\09__crc___get_task_comm\09\09\09\09"
module asm "\09.long\09__crc___get_task_comm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_task_comm:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_task_comm\22\09\09\09\09\09"
module asm "__kstrtabns___get_task_comm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+begin_new_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_begin_new_exec\09\09\09\09"
module asm "\09.long\09__crc_begin_new_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_begin_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22begin_new_exec\22\09\09\09\09\09"
module asm "__kstrtabns_begin_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+would_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_would_dump\09\09\09\09"
module asm "\09.long\09__crc_would_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_would_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22would_dump\22\09\09\09\09\09"
module asm "__kstrtabns_would_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+setup_new_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_setup_new_exec\09\09\09\09"
module asm "\09.long\09__crc_setup_new_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_setup_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22setup_new_exec\22\09\09\09\09\09"
module asm "__kstrtabns_setup_new_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+finalize_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_finalize_exec\09\09\09\09"
module asm "\09.long\09__crc_finalize_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finalize_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22finalize_exec\22\09\09\09\09\09"
module asm "__kstrtabns_finalize_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bprm_change_interp\22, \22a\22\09"
module asm "\09.weak\09__crc_bprm_change_interp\09\09\09\09"
module asm "\09.long\09__crc_bprm_change_interp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bprm_change_interp:\09\09\09\09\09"
module asm "\09.asciz \09\22bprm_change_interp\22\09\09\09\09\09"
module asm "__kstrtabns_bprm_change_interp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+remove_arg_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_remove_arg_zero\09\09\09\09"
module asm "\09.long\09__crc_remove_arg_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_arg_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_arg_zero\22\09\09\09\09\09"
module asm "__kstrtabns_remove_arg_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_binfmt\22, \22a\22\09"
module asm "\09.weak\09__crc_set_binfmt\09\09\09\09"
module asm "\09.long\09__crc_set_binfmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22set_binfmt\22\09\09\09\09\09"
module asm "__kstrtabns_set_binfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.76, %struct.trace_event, ptr, ptr, %union.anon.78, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.76 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.27 }
%union.anon.27 = type { [5 x %struct.uid_gid_extent] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.open_flags = type { i32, i16, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.92, %struct.list_head, %struct.list_head, %union.anon.93 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.92 = type { %struct.list_head }
%union.anon.93 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.104 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.106 = type { ptr }
%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.82 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.101, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.101 = type { %struct.atomic_t }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.mm_struct = type { %struct.anon.10, [0 x i32] }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@suid_dumpable = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@binfmt_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@formats = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @formats, ptr @formats }, [24 x i8] zeroinitializer }, align 32
@__kstrtab___register_binfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns___register_binfmt = external dso_local constant [0 x i8], align 1
@__ksymtab___register_binfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__register_binfmt to i32), ptr @__kstrtab___register_binfmt, ptr @__kstrtabns___register_binfmt }, section "___ksymtab+__register_binfmt", align 4
@__kstrtab_unregister_binfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_binfmt = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_binfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_binfmt to i32), ptr @__kstrtab_unregister_binfmt, ptr @__kstrtabns_unregister_binfmt }, section "___ksymtab+unregister_binfmt", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_uselib\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__uselib = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 1, ptr @types__uselib, ptr @args__uselib, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__uselib, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__uselib, i64 20) }, ptr @event_enter__uselib, ptr @event_exit__uselib }, align 4
@event_enter__uselib = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__uselib, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__uselib = internal global ptr @event_enter__uselib, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_uselib\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__uselib = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__uselib, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__uselib = internal global ptr @event_exit__uselib, section "_ftrace_events", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_uselib\00", [21 x i8] zeroinitializer }, align 32
@types__uselib = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@args__uselib = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.17], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__uselib = internal global ptr @__syscall_meta__uselib, section "__syscalls_metadata", align 4
@__kstrtab_copy_string_kernel = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_string_kernel = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_string_kernel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_string_kernel to i32), ptr @__kstrtab_copy_string_kernel, ptr @__kstrtabns_copy_string_kernel }, section "___ksymtab+copy_string_kernel", align 4
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@setup_arg_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@setup_arg_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014process '%pD4' started with executable stack\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"setup_arg_pages\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fs/exec.c\00", [22 x i8] zeroinitializer }, align 32
@setup_arg_pages._entry_ptr = internal global ptr @setup_arg_pages._entry, section ".printk_index", align 4
@__kstrtab_setup_arg_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_arg_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_arg_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_arg_pages to i32), ptr @__kstrtab_setup_arg_pages, ptr @__kstrtabns_setup_arg_pages }, section "___ksymtab+setup_arg_pages", align 4
@__kstrtab_open_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_open_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_exec to i32), ptr @__kstrtab_open_exec, ptr @__kstrtabns_open_exec }, section "___ksymtab+open_exec", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__kstrtab_read_code = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_code = external dso_local constant [0 x i8], align 1
@__ksymtab_read_code = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_code to i32), ptr @__kstrtab_read_code, ptr @__kstrtabns_read_code }, section "___ksymtab+read_code", align 4
@__kstrtab___get_task_comm = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_task_comm = external dso_local constant [0 x i8], align 1
@__ksymtab___get_task_comm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_task_comm to i32), ptr @__kstrtab___get_task_comm, ptr @__kstrtabns___get_task_comm }, section "___ksymtab_gpl+__get_task_comm", align 4
@__kstrtab_begin_new_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_begin_new_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_begin_new_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @begin_new_exec to i32), ptr @__kstrtab_begin_new_exec, ptr @__kstrtabns_begin_new_exec }, section "___ksymtab+begin_new_exec", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_would_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_would_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_would_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @would_dump to i32), ptr @__kstrtab_would_dump, ptr @__kstrtabns_would_dump }, section "___ksymtab+would_dump", align 4
@__kstrtab_setup_new_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_setup_new_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_setup_new_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @setup_new_exec to i32), ptr @__kstrtab_setup_new_exec, ptr @__kstrtabns_setup_new_exec }, section "___ksymtab+setup_new_exec", align 4
@__kstrtab_finalize_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_finalize_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_finalize_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finalize_exec to i32), ptr @__kstrtab_finalize_exec, ptr @__kstrtabns_finalize_exec }, section "___ksymtab+finalize_exec", align 4
@__kstrtab_bprm_change_interp = external dso_local constant [0 x i8], align 1
@__kstrtabns_bprm_change_interp = external dso_local constant [0 x i8], align 1
@__ksymtab_bprm_change_interp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bprm_change_interp to i32), ptr @__kstrtab_bprm_change_interp, ptr @__kstrtabns_bprm_change_interp }, section "___ksymtab+bprm_change_interp", align 4
@__kstrtab_remove_arg_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_arg_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_arg_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_arg_zero to i32), ptr @__kstrtab_remove_arg_zero, ptr @__kstrtabns_remove_arg_zero }, section "___ksymtab+remove_arg_zero", align 4
@__kstrtab_set_binfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_binfmt = external dso_local constant [0 x i8], align 1
@__ksymtab_set_binfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_binfmt to i32), ptr @__kstrtab_set_binfmt, ptr @__kstrtabns_set_binfmt }, section "___ksymtab+set_binfmt", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_execve\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__execve = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 3, ptr @types__execve, ptr @args__execve, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__execve, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__execve, i64 20) }, ptr @event_enter__execve, ptr @event_exit__execve }, align 4
@event_enter__execve = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__execve, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__execve = internal global ptr @event_enter__execve, section "_ftrace_events", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_execve\00", [16 x i8] zeroinitializer }, align 32
@event_exit__execve = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__execve, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__execve = internal global ptr @event_exit__execve, section "_ftrace_events", align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_execve\00", [21 x i8] zeroinitializer }, align 32
@types__execve = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.16, ptr @.str.33, ptr @.str.33], [20 x i8] zeroinitializer }, align 32
@args__execve = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__execve = internal global ptr @__syscall_meta__execve, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sys_enter_execveat\00", [45 x i8] zeroinitializer }, align 32
@__syscall_meta__execveat = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 5, ptr @types__execveat, ptr @args__execveat, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__execveat, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__execveat, i64 20) }, ptr @event_enter__execveat, ptr @event_exit__execveat }, align 4
@event_enter__execveat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.76 { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__execveat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__execveat = internal global ptr @event_enter__execveat, section "_ftrace_events", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_exit_execveat\00", [46 x i8] zeroinitializer }, align 32
@event_exit__execveat = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.76 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.78 zeroinitializer, ptr @__syscall_meta__execveat, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__execveat = internal global ptr @event_exit__execveat, section "_ftrace_events", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_execveat\00", [19 x i8] zeroinitializer }, align 32
@types__execveat = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.41, ptr @.str.16, ptr @.str.33, ptr @.str.33, ptr @.str.41], [44 x i8] zeroinitializer }, align 32
@args__execveat = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.42, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.43], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__execveat = internal global ptr @__syscall_meta__execveat, section "__syscalls_metadata", align 4
@__initcall__kmod_exec__435_2135_init_fs_exec_sysctls5 = internal global ptr @init_fs_exec_sysctls, section ".initcall5.init", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"binfmt_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const char *\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"library\00", [24 x i8] zeroinitializer }, align 32
@__do_sys_uselib.uselib_flags = internal constant %struct.open_flags { i32 131104, i16 0, i32 5, i32 256, i32 1 }, align 4
@__do_sys_uselib.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__const.do_open_execat.open_exec_flags = private unnamed_addr constant { i32, i16, [2 x i8], i32, i32, i32 } { i32 131104, i16 0, [2 x i8] zeroinitializer, i32 1, i32 256, i32 1 }, align 4
@do_open_execat.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_task_rename = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/task.h\00", [36 x i8] zeroinitializer }, align 32
@trace_task_rename.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@cgroup_threadgroup_rwsem = external dso_local global %struct.percpu_rw_semaphore, align 4
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@sighand_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"/dev/fd/%d\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"/dev/fd/%d/%s\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"binfmt-%04x\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_sched_process_exec = external dso_local global %struct.tracepoint, align 4
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_process_exec.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"const char *const *\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"filename\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"argv\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"envp\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@fs_exec_sysctls = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.46, ptr @suid_dumpable, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax_coredump, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs_exec_sysctls\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"suid_dumpable\00", [18 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"suid_dumpable\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 81, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"binfmt_lock\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 83, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"event_enter__uselib\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"event_exit__uselib\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"types__uselib\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"args__uselib\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 817, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"event_enter__execve\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"event_exit__execve\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"types__execve\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"args__execve\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"event_enter__execveat\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [21 x i8] c"event_exit__execveat\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"types__execveat\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"args__execveat\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 84, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 123, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 717, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [31 x i8] c"../include/trace/events/task.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 34, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 108, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 49, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 34, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1516, i32 41 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1518, i32 41 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 695, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 723, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 1742, i32 7 }
@___asan_gen_.183 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 397, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 2065, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 55, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 230, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 214, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 156, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 2073, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"fs_exec_sysctls\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 2116, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 2131, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [13 x i8] c"../fs/exec.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 2118, i32 15 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__event_enter__execve, ptr @__event_enter__execveat, ptr @__event_enter__uselib, ptr @__event_exit__execve, ptr @__event_exit__execveat, ptr @__event_exit__uselib, ptr @__initcall__kmod_exec__435_2135_init_fs_exec_sysctls5, ptr @__ksymtab___get_task_comm, ptr @__ksymtab___register_binfmt, ptr @__ksymtab_begin_new_exec, ptr @__ksymtab_bprm_change_interp, ptr @__ksymtab_copy_string_kernel, ptr @__ksymtab_finalize_exec, ptr @__ksymtab_open_exec, ptr @__ksymtab_read_code, ptr @__ksymtab_remove_arg_zero, ptr @__ksymtab_set_binfmt, ptr @__ksymtab_setup_arg_pages, ptr @__ksymtab_setup_new_exec, ptr @__ksymtab_unregister_binfmt, ptr @__ksymtab_would_dump, ptr @__p_syscall_meta__execve, ptr @__p_syscall_meta__execveat, ptr @__p_syscall_meta__uselib, ptr @__syscall_meta__execve, ptr @__syscall_meta__execveat, ptr @__syscall_meta__uselib, ptr @event_enter__execve, ptr @event_enter__execveat, ptr @event_enter__uselib, ptr @event_exit__execve, ptr @event_exit__execveat, ptr @event_exit__uselib, ptr @setup_arg_pages._entry, ptr @setup_arg_pages._entry_ptr, ptr @suid_dumpable, ptr @binfmt_lock, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__uselib, ptr @args__uselib, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__execve, ptr @args__execve, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__execveat, ptr @args__execveat, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @fs_exec_sysctls, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suid_dumpable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binfmt_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__uselib to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__uselib to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__uselib to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__uselib to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_arg_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__execve to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__execve to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__execve to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__execve to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__execveat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__execveat to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__execveat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__execveat to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_exec_sysctls to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_uselib = dso_local alias i32 (ptr), ptr @__se_sys_uselib
@sys_execve = dso_local alias i32 (ptr, ptr, ptr), ptr @__se_sys_execve
@sys_execveat = dso_local alias i32 (i32, ptr, ptr, ptr, i32), ptr @__se_sys_execveat

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__register_binfmt(ptr noundef %fmt, i32 noundef %insert) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @binfmt_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %insert)
  %tobool.not = icmp eq i32 %insert, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %0 = load ptr, ptr @formats, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %fmt, ptr noundef nonnull @formats, ptr noundef %0) #13
  br i1 %call.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  br label %cond.end.sink.split

cond.false:                                       ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @formats, i32 0, i32 1), align 4
  %call.i.i3 = tail call zeroext i1 @__list_add_valid(ptr noundef %fmt, ptr noundef %1, ptr noundef nonnull @formats) #13
  br i1 %call.i.i3, label %cond.false.cond.end.sink.split_crit_edge, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false.cond.end.sink.split_crit_edge:         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.sink.split

cond.end.sink.split:                              ; preds = %cond.false.cond.end.sink.split_crit_edge, %if.end.i.i
  %.sink7 = phi ptr [ %prev1.i.i, %if.end.i.i ], [ getelementptr inbounds (%struct.list_head, ptr @formats, i32 0, i32 1), %cond.false.cond.end.sink.split_crit_edge ]
  %formats.sink = phi ptr [ %0, %if.end.i.i ], [ @formats, %cond.false.cond.end.sink.split_crit_edge ]
  %.sink6 = phi ptr [ @formats, %if.end.i.i ], [ %1, %cond.false.cond.end.sink.split_crit_edge ]
  %2 = ptrtoint ptr %.sink7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %.sink7, align 4
  %3 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %formats.sink, ptr %fmt, align 4
  %prev3.i.i4 = getelementptr inbounds %struct.list_head, ptr %fmt, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.sink6, ptr %prev3.i.i4, align 4
  %5 = ptrtoint ptr %.sink6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %fmt, ptr %.sink6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.end.sink.split, %cond.false.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  tail call void @_raw_write_unlock(ptr noundef nonnull @binfmt_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_binfmt(ptr noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock(ptr noundef nonnull @binfmt_lock) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fmt) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %fmt, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fmt, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock(ptr noundef nonnull @binfmt_lock) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @path_noexec(ptr nocapture noundef readonly %path) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %path, align 4
  %mnt_flags = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mnt_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mnt_flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mnt_sb, align 4
  %s_iflags = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_iflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_iflags, align 8
  %and2 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3 = icmp ne i32 %and2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %tobool3, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_uselib(i32 noundef %library) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %library to ptr
  %call.i = tail call ptr @getname(ptr noundef %0) #13
  %1 = ptrtoint ptr %call.i to i32
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.__do_sys_uselib.exit_crit_edge, label %if.end.i

entry.__do_sys_uselib.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_uselib.exit

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr @do_filp_open(i32 noundef -100, ptr noundef %call.i, ptr noundef nonnull @__do_sys_uselib.uselib_flags) #13
  tail call void @putname(ptr noundef %call.i) #13
  %2 = ptrtoint ptr %call3.i to i32
  %cmp.i93.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i, label %if.end.i.__do_sys_uselib.exit_crit_edge, label %if.end7.i

if.end.i.__do_sys_uselib.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__do_sys_uselib.exit

if.end7.i:                                        ; preds = %if.end.i
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %call3.i, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp.i = icmp eq i16 %7, -32768
  br i1 %cmp.i, label %lor.rhs.i, label %if.end7.i.land.rhs.i_crit_edge

if.end7.i.land.rhs.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

lor.rhs.i:                                        ; preds = %if.end7.i
  %f_path.i = getelementptr inbounds %struct.file, ptr %call3.i, i32 0, i32 1
  %8 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_path.i, align 4
  %mnt_flags.i.i = getelementptr inbounds %struct.vfsmount, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mnt_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mnt_flags.i.i, align 4
  %and.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %path_noexec.exit.i, label %lor.rhs.i.land.rhs.i_crit_edge

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

path_noexec.exit.i:                               ; preds = %lor.rhs.i
  %mnt_sb.i.i = getelementptr inbounds %struct.vfsmount, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %mnt_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mnt_sb.i.i, align 4
  %s_iflags.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %s_iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_iflags.i.i, align 8
  %and2.i.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.i.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.i.not.i, label %if.end52.critedge.i, label %path_noexec.exit.i.land.rhs.i_crit_edge

path_noexec.exit.i.land.rhs.i_crit_edge:          ; preds = %path_noexec.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %path_noexec.exit.i.land.rhs.i_crit_edge, %lor.rhs.i.land.rhs.i_crit_edge, %if.end7.i.land.rhs.i_crit_edge
  %.b91.i = load i1, ptr @__do_sys_uselib.__already_done, align 1
  br i1 %.b91.i, label %land.rhs.i.exit.i_crit_edge, label %if.then19.i, !prof !168

land.rhs.i.exit.i_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit.i

if.then19.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__do_sys_uselib.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 152, i32 noundef 9, ptr noundef null) #13
  br label %exit.i

if.end52.critedge.i:                              ; preds = %path_noexec.exit.i
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %call3.i, i32 0, i32 7
  %16 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f_flags.i.i, align 4
  %and.i94.i = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i)
  %tobool.not.i95.i = icmp eq i32 %and.i94.i, 0
  %spec.select.i.i = select i1 %tobool.not.i95.i, i32 32, i32 4128
  %f_mode.i.i.i = getelementptr inbounds %struct.file, ptr %call3.i, i32 0, i32 8
  %18 = ptrtoint ptr %f_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %f_mode.i.i.i, align 8
  %and.i.i.i = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end52.critedge.i.fsnotify_open.exit.i_crit_edge

if.end52.critedge.i.fsnotify_open.exit.i_crit_edge: ; preds = %if.end52.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fsnotify_open.exit.i

if.end.i.i.i:                                     ; preds = %if.end52.critedge.i
  %dentry.i.i.i = getelementptr inbounds %struct.file, ptr %call3.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %dentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dentry.i.i.i, align 4
  %d_inode.i.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %d_inode.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i.i.i.i.i, align 8
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_fsnotify_connectors.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 48
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i.i.i, i32 noundef 4) #13
  %26 = ptrtoint ptr %s_fsnotify_connectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %s_fsnotify_connectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.fsnotify_open.exit.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.fsnotify_open.exit.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fsnotify_open.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %23, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %30)
  %cmp2.i.i.i.i = icmp eq i16 %30, 16384
  br i1 %cmp2.i.i.i.i, label %if.then4.i.i.i.i, label %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge

if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i.i

if.then4.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %or.i.i.i.i = or i32 %spec.select.i.i, 1073741824
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %21, align 8
  %and5.i.i.i.i = and i32 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and5.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then4.i.i.i.i.notify_child.i.i.i.i_crit_edge, label %if.then4.i.i.i.i.if.end8.i.i.i.i_crit_edge

if.then4.i.i.i.i.if.end8.i.i.i.i_crit_edge:       ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i.i.i

if.then4.i.i.i.i.notify_child.i.i.i.i_crit_edge:  ; preds = %if.then4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then4.i.i.i.i.if.end8.i.i.i.i_crit_edge, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge
  %mask.addr.0.i.i.i.i = phi i32 [ %or.i.i.i.i, %if.then4.i.i.i.i.if.end8.i.i.i.i_crit_edge ], [ %spec.select.i.i, %if.end.i.i.i.i.if.end8.i.i.i.i_crit_edge ]
  %d_parent.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 3
  %33 = ptrtoint ptr %d_parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_parent.i.i.i.i, align 8
  %cmp9.i.i.i.i = icmp eq ptr %34, %21
  br i1 %cmp9.i.i.i.i, label %if.end8.i.i.i.i.notify_child.i.i.i.i_crit_edge, label %if.end12.i.i.i.i

if.end8.i.i.i.i.notify_child.i.i.i.i_crit_edge:   ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i.i.i

if.end12.i.i.i.i:                                 ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i.i.i.i = tail call i32 @__fsnotify_parent(ptr noundef %21, i32 noundef %mask.addr.0.i.i.i.i, ptr noundef %f_path.i, i32 noundef 1) #13
  br label %fsnotify_open.exit.i

notify_child.i.i.i.i:                             ; preds = %if.end8.i.i.i.i.notify_child.i.i.i.i_crit_edge, %if.then4.i.i.i.i.notify_child.i.i.i.i_crit_edge
  %mask.addr.1.i.i.i.i = phi i32 [ %mask.addr.0.i.i.i.i, %if.end8.i.i.i.i.notify_child.i.i.i.i_crit_edge ], [ %or.i.i.i.i, %if.then4.i.i.i.i.notify_child.i.i.i.i_crit_edge ]
  %call14.i.i.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i.i.i, ptr noundef %f_path.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %23, i32 noundef 0) #13
  br label %fsnotify_open.exit.i

fsnotify_open.exit.i:                             ; preds = %notify_child.i.i.i.i, %if.end12.i.i.i.i, %if.end.i.i.i.fsnotify_open.exit.i_crit_edge, %if.end52.critedge.i.fsnotify_open.exit.i_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #13
  %fmt.096.i = load ptr, ptr @formats, align 4
  %cmp54.not97.i = icmp eq ptr %fmt.096.i, @formats
  br i1 %cmp54.not97.i, label %fsnotify_open.exit.i.for.end.i_crit_edge, label %fsnotify_open.exit.i.for.body.i_crit_edge

fsnotify_open.exit.i.for.body.i_crit_edge:        ; preds = %fsnotify_open.exit.i
  br label %for.body.i

fsnotify_open.exit.i.for.end.i_crit_edge:         ; preds = %fsnotify_open.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %fsnotify_open.exit.i.for.body.i_crit_edge
  %fmt.098.i = phi ptr [ %fmt.0.i, %for.inc.i.for.body.i_crit_edge ], [ %fmt.096.i, %fsnotify_open.exit.i.for.body.i_crit_edge ]
  %load_shlib.i = getelementptr inbounds %struct.linux_binfmt, ptr %fmt.098.i, i32 0, i32 3
  %35 = ptrtoint ptr %load_shlib.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %load_shlib.i, align 4
  %tobool58.not.i = icmp eq ptr %36, null
  br i1 %tobool58.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end60.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end60.i:                                       ; preds = %for.body.i
  %module.i = getelementptr inbounds %struct.linux_binfmt, ptr %fmt.098.i, i32 0, i32 1
  %37 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %module.i, align 4
  %call61.i = tail call zeroext i1 @try_module_get(ptr noundef %38) #13
  br i1 %call61.i, label %if.end63.i, label %if.end60.i.for.inc.i_crit_edge

if.end60.i.for.inc.i_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end63.i:                                       ; preds = %if.end60.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @binfmt_lock) #13
  %39 = ptrtoint ptr %load_shlib.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %load_shlib.i, align 4
  %call65.i = tail call i32 %40(ptr noundef %call3.i) #13
  tail call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #13
  %41 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %call65.i)
  %cmp66.not.i = icmp eq i32 %call65.i, -8
  br i1 %cmp66.not.i, label %if.end63.i.for.inc.i_crit_edge, label %if.end63.i.for.end.i_crit_edge

if.end63.i.for.end.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end63.i.for.inc.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end63.i.for.inc.i_crit_edge, %if.end60.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %43 = ptrtoint ptr %fmt.098.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %fmt.0.i = load ptr, ptr %fmt.098.i, align 4
  %cmp54.not.i = icmp eq ptr %fmt.0.i, @formats
  br i1 %cmp54.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end63.i.for.end.i_crit_edge, %fsnotify_open.exit.i.for.end.i_crit_edge
  %error.2.i = phi i32 [ -8, %fsnotify_open.exit.i.for.end.i_crit_edge ], [ -8, %for.inc.i.for.end.i_crit_edge ], [ %call65.i, %if.end63.i.for.end.i_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @binfmt_lock) #13
  br label %exit.i

exit.i:                                           ; preds = %for.end.i, %if.then19.i, %land.rhs.i.exit.i_crit_edge
  %error.3.i = phi i32 [ %error.2.i, %for.end.i ], [ -13, %if.then19.i ], [ -13, %land.rhs.i.exit.i_crit_edge ]
  tail call void @fput(ptr noundef %call3.i) #13
  br label %__do_sys_uselib.exit

__do_sys_uselib.exit:                             ; preds = %exit.i, %if.end.i.__do_sys_uselib.exit_crit_edge, %entry.__do_sys_uselib.exit_crit_edge
  %error.4.i = phi i32 [ %1, %entry.__do_sys_uselib.exit_crit_edge ], [ %2, %if.end.i.__do_sys_uselib.exit_crit_edge ], [ %error.3.i, %exit.i ]
  ret i32 %error.4.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_string_kernel(ptr nocapture noundef readonly %arg, ptr nocapture noundef %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strnlen(ptr noundef %arg, i32 noundef 131072) #16
  %add = add i32 %call, 1
  %p = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %add)
  %cmp.i = icmp ult i32 %add, 131073
  br i1 %cmp.i, label %if.end3, label %if.end.cleanup43_crit_edge

if.end.cleanup43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end3:                                          ; preds = %if.end
  %sub = sub i32 %1, %add
  %2 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %p, align 4
  %argmin = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 4
  %3 = ptrtoint ptr %argmin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argmin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp6 = icmp ult i32 %sub, %4
  br i1 %cmp6, label %if.end3.cleanup43_crit_edge, label %while.body.preheader

if.end3.cleanup43_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

while.body.preheader:                             ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %arg, i32 %add
  br label %while.body

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %while.body.preheader
  %arg.addr.084 = phi ptr [ %add.ptr29, %if.end33.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %len.083 = phi i32 [ %sub30, %if.end33.while.body_crit_edge ], [ %add, %while.body.preheader ]
  %pos.082 = phi i32 [ %sub28, %if.end33.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %and = and i32 %pos.082, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  %cond21 = select i1 %cmp10, i32 4096, i32 %and
  %5 = tail call i32 @llvm.umin.i32(i32 %len.083, i32 %cond21)
  %sub28 = sub i32 %pos.082, %5
  %call31 = tail call fastcc ptr @get_arg_page(ptr noundef %bprm, i32 noundef %sub28, i32 noundef 1)
  %tobool.not = icmp eq ptr %call31, null
  br i1 %tobool.not, label %while.body.cleanup43_crit_edge, label %if.end33

while.body.cleanup43_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end33:                                         ; preds = %while.body
  %sub30 = sub nsw i32 %len.083, %5
  %idx.neg = sub nsw i32 0, %5
  %add.ptr29 = getelementptr i8, ptr %arg.addr.084, i32 %idx.neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %11 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call31, i32 noundef %or.i) #13
  %and35 = and i32 %sub28, -4096
  %17 = ptrtoint ptr %bprm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bprm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %20
  tail call void @flush_cache_page(ptr noundef %18, i32 noundef %and35, i32 noundef %add.i) #13
  %and36 = and i32 %sub28, 4095
  %add.ptr37 = getelementptr i8, ptr %call.i.i, i32 %and36
  %21 = call ptr @memcpy(ptr %add.ptr37, ptr %add.ptr29, i32 %5)
  tail call void @flush_dcache_page(ptr noundef nonnull %call31) #13
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %22 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %28 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @put_arg_page(ptr noundef nonnull %call31)
  %cmp9 = icmp sgt i32 %sub30, 0
  br i1 %cmp9, label %if.end33.while.body_crit_edge, label %if.end33.cleanup43_crit_edge

if.end33.cleanup43_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup43:                                        ; preds = %if.end33.cleanup43_crit_edge, %while.body.cleanup43_crit_edge, %if.end3.cleanup43_crit_edge, %if.end.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.2 = phi i32 [ -14, %entry.cleanup43_crit_edge ], [ -7, %if.end.cleanup43_crit_edge ], [ -7, %if.end3.cleanup43_crit_edge ], [ 0, %if.end33.cleanup43_crit_edge ], [ -7, %while.body.cleanup43_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_arg_page(ptr nocapture noundef %bprm, i32 noundef %pos, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #13
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %spec.select = select i1 %tobool.not, i32 16, i32 17
  %mm = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 2
  %1 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_arg_page, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !174

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %2, i1 noundef zeroext false) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %2, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_arg_page, %if.then.i3.i)) #13
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !174

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %3 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm, align 4
  %call = call i32 @get_user_pages_remote(ptr noundef %4, i32 noundef %pos, i32 noundef 1, i32 noundef %spec.select, ptr noundef nonnull %page, ptr noundef null, ptr noundef null) #13
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_arg_page, %if.then.i.i17)) #13
          to label %mmap_read_unlock.exit [label %if.then.i.i17], !srcloc !174

if.then.i.i17:                                    ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #13
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i17, %mmap_read_lock.exit
  %mmap_lock.i18 = getelementptr inbounds %struct.anon.10, ptr %6, i32 0, i32 15
  call void @up_read(ptr noundef %mmap_lock.i18) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %mmap_read_unlock.exit.cleanup_crit_edge, label %if.end4

mmap_read_unlock.exit.cleanup_crit_edge:          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %mmap_read_unlock.exit
  br i1 %tobool.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %bprm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bprm, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_end.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %sub.i = sub i32 %10, %12
  %shr.i = lshr i32 %sub.i, 12
  %13 = call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %mm1.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm1.i, align 8
  %vma_pages.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 1
  %19 = ptrtoint ptr %vma_pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vma_pages.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %20)
  %tobool2.not.i = icmp eq i32 %shr.i, %20
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.then6.if.end8_crit_edge, label %if.end.i

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i19 = sub i32 %shr.i, %20
  %21 = ptrtoint ptr %vma_pages.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %vma_pages.i, align 4
  %arrayidx.i.i = getelementptr %struct.anon.10, ptr %18, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #13
  %22 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 %sub.i19, ptr elementtype(i32) %arrayidx.i.i) #13, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !177
  call void @mm_trace_rss_stat(ptr noundef nonnull %18, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i) #13
  br label %if.end8

if.end8:                                          ; preds = %if.end.i, %if.then6.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %mmap_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %24, %if.end8 ], [ null, %mmap_read_unlock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_arg_page(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !168

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !178

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.18) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !179
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !181
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_arg_page, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !174

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %4) #13
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @setup_arg_pages(ptr nocapture noundef %bprm, i32 noundef %stack_top, i32 noundef %executable_stack) #0 align 64 {
entry:
  %tlb.i = alloca %struct.mmu_gather, align 4
  %prev = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %6 = ptrtoint ptr %bprm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bprm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev) #13
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %prev, align 4
  %add = add i32 %stack_top, 4095
  %and = and i32 %add, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mmap_min_addr to i32))
  %9 = load i32, ptr @mmap_min_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp = icmp ult i32 %and, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false, !prof !178

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_end, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %sub = sub i32 %11, %13
  %sub4 = sub i32 %and, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub4)
  %cmp5.not = icmp ult i32 %sub, %sub4
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge, !prof !168

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %sub13 = sub i32 %11, %and
  %p = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p, align 4
  %sub14 = sub i32 %15, %sub13
  store i32 %sub14, ptr %p, align 4
  %arg_start = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 35
  %16 = ptrtoint ptr %arg_start to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub14, ptr %arg_start, align 8
  %loader = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 19
  %17 = ptrtoint ptr %loader to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %loader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub19 = sub i32 %18, %sub13
  %19 = ptrtoint ptr %loader to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub19, ptr %loader, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %exec = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 20
  %20 = ptrtoint ptr %exec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exec, align 4
  %sub21 = sub i32 %21, %sub13
  store i32 %sub21, ptr %exec, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@setup_arg_pages, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !174

if.then.i.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end20
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@setup_arg_pages, %if.then.i4.i)) #13
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !174

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #13
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end25, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %executable_stack)
  %cmp35 = icmp eq i32 %executable_stack, 2
  br i1 %cmp35, label %if.end25.if.end48_crit_edge, label %if.else, !prof !178

if.end25.if.end48_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %personality = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 62
  %24 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %personality, align 32
  %and28 = lshr i32 %25, 20
  %26 = and i32 %and28, 4
  %or34 = or i32 %26, 1048947
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %executable_stack)
  %cmp44 = icmp eq i32 %executable_stack, 1
  %spec.select = select i1 %cmp44, i32 1048947, i32 %or34
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.end25.if.end48_crit_edge
  %vm_flags.0 = phi i32 [ 1048951, %if.end25.if.end48_crit_edge ], [ %spec.select, %if.else ]
  %def_flags = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 25
  %27 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %def_flags, align 4
  %or49 = or i32 %28, %vm_flags.0
  %or50 = or i32 %or49, 98304
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %7, align 4
  %31 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_end, align 4
  %call53 = call i32 @mprotect_fixup(ptr noundef %7, ptr noundef nonnull %prev, i32 noundef %30, i32 noundef %32, i32 noundef %or50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body, label %if.end48.out_unlock_crit_edge

if.end48.out_unlock_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

do.body:                                          ; preds = %if.end48
  %33 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev, align 4
  %cmp57.not = icmp eq ptr %34, %7
  br i1 %cmp57.not, label %do.end71, label %do.body65, !prof !168

do.body65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 814, 0\0A.popsection", ""() #13, !srcloc !183
  unreachable

do.end71:                                         ; preds = %do.body
  %and72 = and i32 %or49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.end71.if.end104_crit_edge, label %land.end, !prof !168

do.end71.if.end104_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

land.end:                                         ; preds = %do.end71
  %.b191 = load i1, ptr @setup_arg_pages.__already_done, align 1
  br i1 %.b191, label %land.end.if.end104_crit_edge, label %if.then91, !prof !168

land.end.if.end104_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end104

if.then91:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @setup_arg_pages.__already_done, align 1
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %35 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %file, align 4
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %36) #17
  br label %if.end104

if.end104:                                        ; preds = %if.then91, %land.end.if.end104_crit_edge, %do.end71.if.end104_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and)
  %tobool105.not = icmp eq i32 %11, %and
  br i1 %tobool105.not, label %if.end104.if.end111_crit_edge, label %if.then106

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then106:                                       ; preds = %if.end104
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 6
  %37 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vm_mm.i, align 4
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %7, align 4
  %41 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_end, align 4
  %sub.i = sub i32 %42, %40
  %sub1.i = sub i32 %40, %sub13
  %sub2.i = sub i32 %42, %sub13
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tlb.i) #13
  %43 = call ptr @memset(ptr %tlb.i, i32 255, i32 68)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %sub2.i)
  %cmp.i192 = icmp ugt i32 %sub1.i, %sub2.i
  br i1 %cmp.i192, label %do.body4.i, label %do.end9.i, !prof !178

do.body4.i:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 687, 0\0A.popsection", ""() #13, !srcloc !184
  unreachable

do.end9.i:                                        ; preds = %if.then106
  %call.i193 = call ptr @find_vma(ptr noundef %38, i32 noundef %sub1.i) #13
  %cmp10.not.i = icmp eq ptr %call.i193, %7
  br i1 %cmp10.not.i, label %if.end12.i, label %do.end9.i.shift_arg_pages.exit.thread_crit_edge

do.end9.i.shift_arg_pages.exit.thread_crit_edge:  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shift_arg_pages.exit.thread

if.end12.i:                                       ; preds = %do.end9.i
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 13
  %44 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vm_pgoff.i, align 4
  %call.i.i = call i32 @__vma_adjust(ptr noundef %7, i32 noundef %sub1.i, i32 noundef %42, i32 noundef %45, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool14.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.shift_arg_pages.exit.thread_crit_edge

if.end12.i.shift_arg_pages.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shift_arg_pages.exit.thread

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = call i32 @move_page_tables(ptr noundef %7, i32 noundef %40, ptr noundef %7, i32 noundef %sub1.i, i32 noundef %sub.i, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %call17.i)
  %cmp18.not.i = icmp eq i32 %sub.i, %call17.i
  br i1 %cmp18.not.i, label %if.end20.i, label %if.end16.i.shift_arg_pages.exit.thread_crit_edge

if.end16.i.shift_arg_pages.exit.thread_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %shift_arg_pages.exit.thread

if.end20.i:                                       ; preds = %if.end16.i
  call void @lru_add_drain() #13
  call void @tlb_gather_mmu(ptr noundef nonnull %tlb.i, ptr noundef %38) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2.i, i32 %40)
  %cmp21.i = icmp ugt i32 %sub2.i, %40
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 2
  %46 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vm_next.i, align 4
  %tobool23.not.i = icmp eq ptr %47, null
  br i1 %cmp21.i, label %if.then22.i, label %if.else.i

if.then22.i:                                      ; preds = %if.end20.i
  br i1 %tobool23.not.i, label %if.then22.i.cond.end.i_crit_edge, label %cond.true.i

if.then22.i.cond.end.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then22.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %49, %cond.true.i ], [ 0, %if.then22.i.cond.end.i_crit_edge ]
  call void @free_pgd_range(ptr noundef nonnull %tlb.i, i32 noundef %sub2.i, i32 noundef %42, i32 noundef %sub2.i, i32 noundef %cond.i) #13
  br label %shift_arg_pages.exit

if.else.i:                                        ; preds = %if.end20.i
  br i1 %tobool23.not.i, label %if.else.i.cond.end32.i_crit_edge, label %cond.true28.i

if.else.i.cond.end32.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end32.i

cond.true28.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  br label %cond.end32.i

cond.end32.i:                                     ; preds = %cond.true28.i, %if.else.i.cond.end32.i_crit_edge
  %cond33.i = phi i32 [ %51, %cond.true28.i ], [ 0, %if.else.i.cond.end32.i_crit_edge ]
  call void @free_pgd_range(ptr noundef nonnull %tlb.i, i32 noundef %40, i32 noundef %42, i32 noundef %sub2.i, i32 noundef %cond33.i) #13
  br label %shift_arg_pages.exit

shift_arg_pages.exit.thread:                      ; preds = %if.end16.i.shift_arg_pages.exit.thread_crit_edge, %if.end12.i.shift_arg_pages.exit.thread_crit_edge, %do.end9.i.shift_arg_pages.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end16.i.shift_arg_pages.exit.thread_crit_edge ], [ -12, %if.end12.i.shift_arg_pages.exit.thread_crit_edge ], [ -14, %do.end9.i.shift_arg_pages.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb.i) #13
  br label %out_unlock

shift_arg_pages.exit:                             ; preds = %cond.end32.i, %cond.end.i
  call void @tlb_finish_mmu(ptr noundef nonnull %tlb.i) #13
  %52 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vm_pgoff.i, align 4
  %call.i78.i = call i32 @__vma_adjust(ptr noundef %7, i32 noundef %sub1.i, i32 noundef %sub2.i, i32 noundef %53, ptr noundef null, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tlb.i) #13
  br label %if.end111

if.end111:                                        ; preds = %shift_arg_pages.exit, %if.end104.if.end111_crit_edge
  %vm_flags112 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 8
  %54 = ptrtoint ptr %vm_flags112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_flags112, align 4
  %and113 = and i32 %55, -98305
  store i32 %and113, ptr %vm_flags112, align 4
  %56 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vm_end, align 4
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %7, align 4
  %rlim_stack117 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 21
  %60 = ptrtoint ptr %rlim_stack117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rlim_stack117, align 4
  %and118 = and i32 %61, -4096
  %sub116 = add i32 %57, 131072
  %add119 = sub i32 %sub116, %59
  call void @__sanitizer_cov_trace_cmp4(i32 %add119, i32 %and118)
  %cmp120 = icmp ugt i32 %add119, %and118
  %sub123 = sub i32 %57, %and118
  %sub126 = add i32 %59, -131072
  %stack_base.0 = select i1 %cmp120, i32 %sub123, i32 %sub126
  %62 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p, align 4
  %64 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task, align 8
  %mm131 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 53
  %66 = ptrtoint ptr %mm131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mm131, align 8
  %start_stack = getelementptr inbounds %struct.anon.10, ptr %67, i32 0, i32 34
  %68 = ptrtoint ptr %start_stack to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %start_stack, align 4
  %call132 = call i32 @expand_stack(ptr noundef %7, i32 noundef %stack_base.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  %spec.store.select = select i1 %tobool133.not, i32 0, i32 -14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end111, %shift_arg_pages.exit.thread, %if.end48.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end48.out_unlock_crit_edge ], [ %spec.store.select, %if.end111 ], [ %retval.0.i.ph, %shift_arg_pages.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@setup_arg_pages, %if.then.i.i194)) #13
          to label %mmap_write_unlock.exit [label %if.then.i.i194], !srcloc !174

if.then.i.i194:                                   ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #13
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i194, %out_unlock
  call void @up_write(ptr noundef %mmap_lock.i) #13
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %mmap_write_unlock.exit ], [ -12, %lor.lhs.false.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mprotect_fixup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @expand_stack(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @open_exec(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @getname_kernel(ptr noundef %name) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc ptr @do_open_execat(i32 noundef -100, ptr noundef %call, i32 noundef 0)
  tail call void @putname(ptr noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %f.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call3, %if.then ]
  ret ptr %f.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @do_open_execat(i32 noundef %fd, ptr noundef %name, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %open_exec_flags = alloca %struct.open_flags, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %open_exec_flags) #13
  %0 = call ptr @memcpy(ptr %open_exec_flags, ptr @__const.do_open_execat.open_exec_flags, i32 20)
  %and = and i32 %flags, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %lookup_flags = getelementptr inbounds %struct.open_flags, ptr %open_exec_flags, i32 0, i32 4
  %1 = ptrtoint ptr %lookup_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lookup_flags, align 4
  %and3 = and i32 %2, -2
  store i32 %and3, ptr %lookup_flags, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and5 = and i32 %flags, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %if.then7

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %lookup_flags8 = getelementptr inbounds %struct.open_flags, ptr %open_exec_flags, i32 0, i32 4
  %3 = ptrtoint ptr %lookup_flags8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lookup_flags8, align 4
  %or = or i32 %4, 16384
  store i32 %or, ptr %lookup_flags8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end4.if.end9_crit_edge
  %call10 = call ptr @do_filp_open(i32 noundef %fd, ptr noundef %name, ptr noundef nonnull %open_exec_flags) #13
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %f_inode.i = getelementptr inbounds %struct.file, ptr %call10, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 8
  %9 = and i16 %8, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %9)
  %cmp16 = icmp eq i16 %9, -32768
  br i1 %cmp16, label %lor.rhs, label %if.end13.land.rhs_crit_edge

if.end13.land.rhs_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

lor.rhs:                                          ; preds = %if.end13
  %f_path = getelementptr inbounds %struct.file, ptr %call10, i32 0, i32 1
  %10 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f_path, align 4
  %mnt_flags.i = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mnt_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mnt_flags.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %path_noexec.exit, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

path_noexec.exit:                                 ; preds = %lor.rhs
  %mnt_sb.i = getelementptr inbounds %struct.vfsmount, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %mnt_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mnt_sb.i, align 4
  %s_iflags.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %s_iflags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_iflags.i, align 8
  %and2.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.i.not = icmp eq i32 %and2.i, 0
  br i1 %tobool3.i.not, label %if.end60.critedge, label %path_noexec.exit.land.rhs_crit_edge

path_noexec.exit.land.rhs_crit_edge:              ; preds = %path_noexec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

land.rhs:                                         ; preds = %path_noexec.exit.land.rhs_crit_edge, %lor.rhs.land.rhs_crit_edge, %if.end13.land.rhs_crit_edge
  %.b86 = load i1, ptr @do_open_execat.__already_done, align 1
  br i1 %.b86, label %land.rhs.exit_crit_edge, label %if.then28, !prof !168

land.rhs.exit_crit_edge:                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @do_open_execat.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 924, i32 noundef 9, ptr noundef null) #13
  br label %exit

if.end60.critedge:                                ; preds = %path_noexec.exit
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 42
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #13
  %18 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end60.critedge
  %c.0.i.i.i = phi i32 [ %19, %if.end60.critedge ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.exit_crit_edge, label %do.cond3.i.i.i, !prof !178

do.body1.i.i.i.exit_crit_edge:                    ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !185
  call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %i_writecount.i) #13, !srcloc !186
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !187
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end64, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !168

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i.i

if.end64:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp67.not = icmp eq i8 %24, 0
  br i1 %cmp67.not, label %if.end64.cleanup_crit_edge, label %if.then69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @fsnotify_open(ptr noundef %call10)
  br label %cleanup

exit:                                             ; preds = %do.body1.i.i.i.exit_crit_edge, %if.then28, %land.rhs.exit_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -13 to ptr), %if.then28 ], [ inttoptr (i32 -13 to ptr), %land.rhs.exit_crit_edge ], [ inttoptr (i32 -26 to ptr), %do.body1.i.i.i.exit_crit_edge ]
  call void @fput(ptr noundef %call10) #13
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then69, %if.end64.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %exit ], [ %call10, %if.end64.cleanup_crit_edge ], [ %call10, %if.then69 ], [ %call10, %if.end9.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %open_exec_flags) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @putname(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @read_code(ptr noundef %file, i32 noundef %addr, i64 noundef %pos, i32 noundef %len) #0 align 64 {
entry:
  %pos.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pos, ptr %pos.addr, align 8
  %1 = inttoptr i32 %addr to ptr
  %call = call i32 @vfs_read(ptr noundef %file, ptr noundef %1, i32 noundef %len, ptr noundef nonnull %pos.addr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 6) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 6), align 4
  %add = add i32 %len, %addr
  %call1 = call i32 %2(i32 noundef %addr, i32 noundef %add) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__get_task_comm(ptr noundef returned %buf, i32 noundef %buf_size, ptr noundef %tsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  %comm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 101
  %call = tail call i32 @strscpy_pad(ptr noundef %buf, ptr noundef %comm, i32 noundef %buf_size) #13
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #13
  ret ptr %buf
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__set_task_comm(ptr noundef %tsk, ptr noundef %buf, i1 noundef zeroext %exec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  tail call fastcc void @trace_task_rename(ptr noundef %tsk, ptr noundef %buf)
  %comm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 101
  %call = tail call i32 @strscpy_pad(ptr noundef %comm, ptr noundef %buf, i32 noundef 16) #13
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #13
  tail call void @perf_event_comm(ptr noundef %tsk, i1 noundef zeroext %exec) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_task_rename(ptr noundef %task, ptr noundef %comm) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_rename, i32 0, i32 1), ptr blockaddress(@trace_task_rename, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !174

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !168

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !188
  %call42 = tail call i32 @__traceiter_task_rename(ptr noundef null, ptr noundef %task, ptr noundef %comm) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !189
  %13 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !168

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_rename, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_task_rename, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_task_rename.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_task_rename.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 57, ptr noundef nonnull @.str.20) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !191
  %31 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_comm(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @begin_new_exec(ptr noundef %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %execfd_creds.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %4 = ptrtoint ptr %execfd_creds.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %execfd_creds.i, align 4
  %5 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %executable.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 6
  %file1.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %cond.in.i = select i1 %tobool.not.i, ptr %file1.i, ptr %executable.i
  %6 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %cond.i, i32 0, i32 1
  %7 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_path.i.i, align 8
  %call.i.i = tail call zeroext i1 @mnt_may_suid(ptr noundef %8) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.bprm_creds_from_file.exit_crit_edge

entry.bprm_creds_from_file.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %bprm_creds_from_file.exit

if.end.i.i:                                       ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i, align 8
  %atomic_flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 66
  %13 = ptrtoint ptr %atomic_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %atomic_flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end4.i.i, label %if.end.i.i.bprm_creds_from_file.exit_crit_edge

if.end.i.i.bprm_creds_from_file.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bprm_creds_from_file.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %cond.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_inode.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load volatile i16, ptr %18, align 8
  %21 = and i16 %20, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i.bprm_creds_from_file.exit_crit_edge, label %if.end7.i.i

if.end4.i.i.bprm_creds_from_file.exit_crit_edge:  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bprm_creds_from_file.exit

if.end7.i.i:                                      ; preds = %if.end4.i.i
  %22 = ptrtoint ptr %f_path.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_path.i.i, align 8
  %mnt_userns.i.i.i.i = getelementptr inbounds %struct.vfsmount, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %mnt_userns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %mnt_userns.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  %i_rwsem.i.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i.i) #13
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %18, align 8
  %conv10.i.i = zext i16 %27 to i32
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_user_ns.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 53
  %30 = ptrtoint ptr %s_user_ns.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_user_ns.i.i.i.i, align 8
  %i_uid.i.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 2
  %32 = ptrtoint ptr %i_uid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.unpack.i.i.i = load i32, ptr %i_uid.i.i.i, align 4
  %33 = insertvalue [1 x i32] undef, i32 %.unpack.i.i.i, 0
  %cmp.i.i.i.i.i.i = icmp eq ptr %25, @init_user_ns
  %cmp.i.i.i.i.i = icmp eq ptr %31, %25
  %spec.select.i.i.i.i.i = or i1 %cmp.i.i.i.i.i.i, %cmp.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %if.end7.i.i.i_uid_into_mnt.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end7.i.i.i_uid_into_mnt.exit.i.i_crit_edge:    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_uid_into_mnt.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end7.i.i
  %cmp.i21.i.i.i.i = icmp eq ptr %31, @init_user_ns
  br i1 %cmp.i21.i.i.i.i, label %if.end.i.i.i.i.if.end7.i.i.i.i_crit_edge, label %if.else.i.i.i.i

if.end.i.i.i.i.if.end7.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i.i.i = tail call i32 @from_kuid(ptr noundef %31, [1 x i32] %33) #13
  br label %if.end7.i.i.i.i

if.end7.i.i.i.i:                                  ; preds = %if.else.i.i.i.i, %if.end.i.i.i.i.if.end7.i.i.i.i_crit_edge
  %uid.0.i.i.i.i = phi i32 [ %call6.i.i.i.i, %if.else.i.i.i.i ], [ %.unpack.i.i.i, %if.end.i.i.i.i.if.end7.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %uid.0.i.i.i.i, -1
  br i1 %cmp.i.i.i.i, label %if.end7.i.i.i.i.i_uid_into_mnt.exit.i.i_crit_edge, label %if.end9.i.i.i.i

if.end7.i.i.i.i.i_uid_into_mnt.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_uid_into_mnt.exit.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i.i.i = tail call i32 @make_kuid(ptr noundef %25, i32 noundef %uid.0.i.i.i.i) #13
  br label %i_uid_into_mnt.exit.i.i

i_uid_into_mnt.exit.i.i:                          ; preds = %if.end9.i.i.i.i, %if.end7.i.i.i.i.i_uid_into_mnt.exit.i.i_crit_edge, %if.end7.i.i.i_uid_into_mnt.exit.i.i_crit_edge
  %retval.sroa.0.0.i.i.i.i = phi i32 [ %call10.i.i.i.i, %if.end9.i.i.i.i ], [ -1, %if.end7.i.i.i.i.i_uid_into_mnt.exit.i.i_crit_edge ], [ %.unpack.i.i.i, %if.end7.i.i.i_uid_into_mnt.exit.i.i_crit_edge ]
  %34 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_user_ns.i.i57.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %s_user_ns.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_user_ns.i.i57.i.i, align 8
  %i_gid.i.i.i = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 3
  %38 = ptrtoint ptr %i_gid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack.i58.i.i = load i32, ptr %i_gid.i.i.i, align 8
  %39 = insertvalue [1 x i32] undef, i32 %.unpack.i58.i.i, 0
  %cmp.i.i.i60.i.i = icmp eq ptr %37, %25
  %spec.select.i.i.i61.i.i = or i1 %cmp.i.i.i.i.i.i, %cmp.i.i.i60.i.i
  br i1 %spec.select.i.i.i61.i.i, label %i_uid_into_mnt.exit.i.i.i_gid_into_mnt.exit.i.i_crit_edge, label %if.end.i.i63.i.i

i_uid_into_mnt.exit.i.i.i_gid_into_mnt.exit.i.i_crit_edge: ; preds = %i_uid_into_mnt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_gid_into_mnt.exit.i.i

if.end.i.i63.i.i:                                 ; preds = %i_uid_into_mnt.exit.i.i
  %cmp.i21.i.i62.i.i = icmp eq ptr %37, @init_user_ns
  br i1 %cmp.i21.i.i62.i.i, label %if.end.i.i63.i.i.if.end7.i.i67.i.i_crit_edge, label %if.else.i.i65.i.i

if.end.i.i63.i.i.if.end7.i.i67.i.i_crit_edge:     ; preds = %if.end.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i.i67.i.i

if.else.i.i65.i.i:                                ; preds = %if.end.i.i63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call6.i.i64.i.i = tail call i32 @from_kgid(ptr noundef %37, [1 x i32] %39) #13
  br label %if.end7.i.i67.i.i

if.end7.i.i67.i.i:                                ; preds = %if.else.i.i65.i.i, %if.end.i.i63.i.i.if.end7.i.i67.i.i_crit_edge
  %gid.0.i.i.i.i = phi i32 [ %call6.i.i64.i.i, %if.else.i.i65.i.i ], [ %.unpack.i58.i.i, %if.end.i.i63.i.i.if.end7.i.i67.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i.i.i)
  %cmp.i.i66.i.i = icmp eq i32 %gid.0.i.i.i.i, -1
  br i1 %cmp.i.i66.i.i, label %if.end7.i.i67.i.i.i_gid_into_mnt.exit.i.i_crit_edge, label %if.end9.i.i69.i.i

if.end7.i.i67.i.i.i_gid_into_mnt.exit.i.i_crit_edge: ; preds = %if.end7.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %i_gid_into_mnt.exit.i.i

if.end9.i.i69.i.i:                                ; preds = %if.end7.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i.i68.i.i = tail call i32 @make_kgid(ptr noundef %25, i32 noundef %gid.0.i.i.i.i) #13
  br label %i_gid_into_mnt.exit.i.i

i_gid_into_mnt.exit.i.i:                          ; preds = %if.end9.i.i69.i.i, %if.end7.i.i67.i.i.i_gid_into_mnt.exit.i.i_crit_edge, %i_uid_into_mnt.exit.i.i.i_gid_into_mnt.exit.i.i_crit_edge
  %retval.sroa.0.0.i.i70.i.i = phi i32 [ %call10.i.i68.i.i, %if.end9.i.i69.i.i ], [ -1, %if.end7.i.i67.i.i.i_gid_into_mnt.exit.i.i_crit_edge ], [ %.unpack.i58.i.i, %i_uid_into_mnt.exit.i.i.i_gid_into_mnt.exit.i.i_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i.i.i) #13
  %cred.i.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %40 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cred.i.i, align 4
  %user_ns.i.i = getelementptr inbounds %struct.cred, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user_ns.i.i, align 4
  %.fca.0.insert40.i.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i.i.i, 0
  %call.i.i.i = tail call i32 @from_kuid(ptr noundef %43, [1 x i32] %.fca.0.insert40.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call.i.i.i, -1
  br i1 %cmp.i.not.i.i, label %i_gid_into_mnt.exit.i.i.bprm_creds_from_file.exit_crit_edge, label %lor.lhs.false.i.i

i_gid_into_mnt.exit.i.i.bprm_creds_from_file.exit_crit_edge: ; preds = %i_gid_into_mnt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bprm_creds_from_file.exit

lor.lhs.false.i.i:                                ; preds = %i_gid_into_mnt.exit.i.i
  %44 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cred.i.i, align 4
  %user_ns19.i.i = getelementptr inbounds %struct.cred, ptr %45, i32 0, i32 25
  %46 = ptrtoint ptr %user_ns19.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %user_ns19.i.i, align 4
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i70.i.i, 0
  %call.i72.i.i = tail call i32 @from_kgid(ptr noundef %47, [1 x i32] %.fca.0.insert.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i72.i.i)
  %cmp.i73.not.i.i = icmp eq i32 %call.i72.i.i, -1
  br i1 %cmp.i73.not.i.i, label %lor.lhs.false.i.i.bprm_creds_from_file.exit_crit_edge, label %if.end23.i.i

lor.lhs.false.i.i.bprm_creds_from_file.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bprm_creds_from_file.exit

if.end23.i.i:                                     ; preds = %lor.lhs.false.i.i
  %and24.i.i = and i32 %conv10.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end23.i.i.if.end28.i.i_crit_edge, label %if.then26.i.i

if.end23.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %per_clear.i.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 11
  %48 = ptrtoint ptr %per_clear.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %per_clear.i.i, align 4
  %or.i.i = or i32 %49, 7602176
  store i32 %or.i.i, ptr %per_clear.i.i, align 4
  %50 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cred.i.i, align 4
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.sroa.0.0.i.i.i.i, ptr %euid.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %if.end23.i.i.if.end28.i.i_crit_edge
  %and29.i.i = and i32 %conv10.i.i, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %and29.i.i)
  %cmp.i.i = icmp eq i32 %and29.i.i, 1032
  br i1 %cmp.i.i, label %if.then31.i.i, label %if.end28.i.i.bprm_creds_from_file.exit_crit_edge

if.end28.i.i.bprm_creds_from_file.exit_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bprm_creds_from_file.exit

if.then31.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %per_clear32.i.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 11
  %53 = ptrtoint ptr %per_clear32.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %per_clear32.i.i, align 4
  %or33.i.i = or i32 %54, 7602176
  store i32 %or33.i.i, ptr %per_clear32.i.i, align 4
  %55 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cred.i.i, align 4
  %egid.i.i = getelementptr inbounds %struct.cred, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %egid.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.sroa.0.0.i.i70.i.i, ptr %egid.i.i, align 4
  br label %bprm_creds_from_file.exit

bprm_creds_from_file.exit:                        ; preds = %if.then31.i.i, %if.end28.i.i.bprm_creds_from_file.exit_crit_edge, %lor.lhs.false.i.i.bprm_creds_from_file.exit_crit_edge, %i_gid_into_mnt.exit.i.i.bprm_creds_from_file.exit_crit_edge, %if.end4.i.i.bprm_creds_from_file.exit_crit_edge, %if.end.i.i.bprm_creds_from_file.exit_crit_edge, %entry.bprm_creds_from_file.exit_crit_edge
  %call.i = tail call i32 @security_bprm_creds_from_file(ptr noundef %bprm, ptr noundef %cond.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %bprm_creds_from_file.exit.cleanup_crit_edge

bprm_creds_from_file.exit.cleanup_crit_edge:      ; preds = %bprm_creds_from_file.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %bprm_creds_from_file.exit
  %58 = ptrtoint ptr %execfd_creds.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %execfd_creds.i, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %execfd_creds.i, align 4
  %call3 = tail call fastcc i32 @de_thread(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %59 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i, align 8
  %io_uring.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 109
  %63 = ptrtoint ptr %io_uring.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io_uring.i, align 8
  %tobool.not.i185 = icmp eq ptr %64, null
  br i1 %tobool.not.i185, label %if.end6.io_uring_task_cancel.exit_crit_edge, label %if.then.i

if.end6.io_uring_task_cancel.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_uring_task_cancel.exit

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__io_uring_cancel(i1 noundef zeroext true) #13
  br label %io_uring_task_cancel.exit

io_uring_task_cancel.exit:                        ; preds = %if.then.i, %if.end6.io_uring_task_cancel.exit_crit_edge
  %call7 = tail call i32 @unshare_files() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %io_uring_task_cancel.exit.cleanup_crit_edge

io_uring_task_cancel.exit.cleanup_crit_edge:      ; preds = %io_uring_task_cancel.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %io_uring_task_cancel.exit
  %mm = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 2
  %65 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mm, align 4
  %67 = ptrtoint ptr %file1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %file1.i, align 4
  %call11 = tail call i32 @set_mm_exe_file(ptr noundef %66, ptr noundef %68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %69 = ptrtoint ptr %file1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %file1.i, align 4
  tail call void @would_dump(ptr noundef %bprm, ptr noundef %70)
  %71 = ptrtoint ptr %execfd_creds.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load16 = load i8, ptr %execfd_creds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %tobool17.not = icmp sgt i8 %bf.load16, -1
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %executable.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %executable.i, align 4
  tail call void @would_dump(ptr noundef %bprm, ptr noundef %73)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  tail call fastcc void @acct_arg_size(ptr noundef %bprm, i32 noundef 0)
  %74 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mm, align 4
  %call21 = tail call fastcc i32 @exec_mmap(ptr noundef %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %76 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %mm, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %77 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %signal, align 16
  tail call void @exit_itimers(ptr noundef %78) #13
  tail call void @flush_itimer_signals() #13
  %call26 = tail call fastcc i32 @unshare_sighand(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.out_unlock_crit_edge

if.end24.out_unlock_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end29:                                         ; preds = %if.end24
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 4
  %and = and i32 %80, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @free_kthread_struct(ptr noundef %3) #13
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and34 = and i32 %82, -73433153
  store i32 %and34, ptr %flags, align 4
  tail call void @flush_thread() #13
  %per_clear = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 11
  %83 = ptrtoint ptr %per_clear to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %per_clear, align 4
  %neg = xor i32 %84, -1
  %personality = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 62
  %85 = ptrtoint ptr %personality to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %personality, align 32
  %and35 = and i32 %86, %neg
  store i32 %and35, ptr %personality, align 32
  %files = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %87 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %files, align 4
  tail call void @do_close_on_exec(ptr noundef %88) #13
  %89 = ptrtoint ptr %execfd_creds.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %bf.load36 = load i8, ptr %execfd_creds.i, align 4
  %90 = and i8 %bf.load36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool40.not = icmp eq i8 %90, 0
  br i1 %tobool40.not, label %if.end32.if.end46_crit_edge, label %if.then41

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then41:                                        ; preds = %if.end32
  %pdeath_signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 60
  %91 = ptrtoint ptr %pdeath_signal to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %pdeath_signal, align 8
  %rlim_stack = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 21
  %92 = ptrtoint ptr %rlim_stack to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rlim_stack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %93)
  %cmp = icmp ugt i32 %93, 8388608
  br i1 %cmp, label %if.then42, label %if.then41.if.end46_crit_edge

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then42:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %rlim_stack to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8388608, ptr %rlim_stack, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then41.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %sas_ss_size = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 118
  %95 = ptrtoint ptr %sas_ss_size to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %sas_ss_size, align 4
  %sas_ss_sp = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 117
  %96 = ptrtoint ptr %sas_ss_sp to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %sas_ss_sp, align 64
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %97 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %interp_flags, align 4
  %and47 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.end, label %if.end46.if.then80_crit_edge

if.end46.if.then80_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

do.end:                                           ; preds = %if.end46
  %99 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 99
  %101 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cred, align 16
  %euid = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %103)
  %agg.tmp.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %uid = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 4
  %104 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %104)
  %agg.tmp51.sroa.0.0.copyload = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp.sroa.0.0.copyload, i32 %agg.tmp51.sroa.0.0.copyload)
  %cmp.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload, %agg.tmp51.sroa.0.0.copyload
  br i1 %cmp.i, label %do.end64, label %do.end.if.then80_crit_edge

do.end.if.then80_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

do.end64:                                         ; preds = %do.end
  %egid = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 9
  %105 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %105)
  %agg.tmp61.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %gid = getelementptr inbounds %struct.cred, ptr %102, i32 0, i32 5
  %106 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %106)
  %agg.tmp69.sroa.0.0.copyload = load i32, ptr %gid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %agg.tmp61.sroa.0.0.copyload, i32 %agg.tmp69.sroa.0.0.copyload)
  %cmp.i186 = icmp eq i32 %agg.tmp61.sroa.0.0.copyload, %agg.tmp69.sroa.0.0.copyload
  br i1 %cmp.i186, label %if.else, label %do.end64.if.then80_crit_edge

do.end64.if.then80_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then80

if.then80:                                        ; preds = %do.end64.if.then80_crit_edge, %do.end.if.then80_crit_edge, %if.end46.if.then80_crit_edge
  %107 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task, align 8
  %mm83 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 53
  %109 = ptrtoint ptr %mm83 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mm83, align 8
  %111 = load i32, ptr @suid_dumpable, align 4
  tail call void @set_dumpable(ptr noundef %110, i32 noundef %111)
  br label %if.end87

if.else:                                          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #15
  %mm86 = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 53
  %112 = ptrtoint ptr %mm86 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mm86, align 8
  tail call void @set_dumpable(ptr noundef %113, i32 noundef 1)
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then80
  tail call void @perf_event_exec() #13
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %114 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %filename, align 4
  %call.i187 = tail call ptr @strrchr(ptr noundef %115, i32 noundef 47) #13
  %tobool.not.i188 = icmp eq ptr %call.i187, null
  %add.ptr.i = getelementptr i8, ptr %call.i187, i32 1
  %cond.i189 = select i1 %tobool.not.i188, ptr %115, ptr %add.ptr.i
  tail call void @__set_task_comm(ptr noundef %3, ptr noundef %cond.i189, i1 noundef zeroext true)
  %self_exec_id = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 126
  %116 = ptrtoint ptr %self_exec_id to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %self_exec_id, align 16
  %add = add i64 %117, 1
  store volatile i64 %add, ptr %self_exec_id, align 16
  tail call void @flush_signal_handlers(ptr noundef %3, i32 noundef 0) #13
  %cred99 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %118 = ptrtoint ptr %cred99 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cred99, align 4
  %call100 = tail call i32 @set_cred_ucounts(ptr noundef %119) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end87.out_unlock_crit_edge, label %if.end103

if.end87.out_unlock_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end103:                                        ; preds = %if.end87
  tail call void @security_bprm_committing_creds(ptr noundef %bprm) #13
  %120 = ptrtoint ptr %cred99 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cred99, align 4
  %call105 = tail call i32 @commit_creds(ptr noundef %121) #13
  %122 = ptrtoint ptr %cred99 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %cred99, align 4
  %mm107 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %123 = ptrtoint ptr %mm107 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mm107, align 8
  %flags.i = getelementptr inbounds %struct.anon.10, ptr %124, i32 0, i32 43
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags.i, align 8
  %and.i.i190 = and i32 %126, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i190)
  %cmp109.not = icmp eq i32 %and.i.i190, 1
  br i1 %cmp109.not, label %if.end103.if.end111_crit_edge, label %if.then110

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end111

if.then110:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @perf_event_exit_task(ptr noundef %3) #13
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.end103.if.end111_crit_edge
  tail call void @security_bprm_committed_creds(ptr noundef %bprm) #13
  %127 = ptrtoint ptr %execfd_creds.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load113 = load i8, ptr %execfd_creds.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load113)
  %tobool116.not = icmp sgt i8 %bf.load113, -1
  br i1 %tobool116.not, label %if.end111.cleanup_crit_edge, label %if.then117

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then117:                                       ; preds = %if.end111
  %call118 = tail call i32 @get_unused_fd_flags(i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then117.out_unlock_crit_edge, label %if.end121

if.then117.out_unlock_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unlock

if.end121:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %executable.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %executable.i, align 4
  tail call void @fd_install(i32 noundef %call118, ptr noundef %129) #13
  %130 = ptrtoint ptr %executable.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %executable.i, align 4
  %execfd = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 18
  %131 = ptrtoint ptr %execfd to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call118, ptr %execfd, align 4
  br label %cleanup

out_unlock:                                       ; preds = %if.then117.out_unlock_crit_edge, %if.end87.out_unlock_crit_edge, %if.end24.out_unlock_crit_edge
  %retval1.0 = phi i32 [ %call26, %if.end24.out_unlock_crit_edge ], [ %call100, %if.end87.out_unlock_crit_edge ], [ %call118, %if.then117.out_unlock_crit_edge ]
  %132 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %signal, align 16
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %133, i32 0, i32 61
  tail call void @up_write(ptr noundef %exec_update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end121, %if.end111.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %io_uring_task_cancel.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bprm_creds_from_file.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %bprm_creds_from_file.exit.cleanup_crit_edge ], [ 0, %if.end121 ], [ 0, %if.end111.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %io_uring_task_cancel.exit.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %retval1.0, %out_unlock ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @de_thread(ptr noundef %tsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %sighand = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 112
  %2 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sighand, align 4
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 80
  %4 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %5, %thread_group.i
  br i1 %cmp.i.i.not, label %entry.no_thread_group_crit_edge, label %if.end

entry.no_thread_group_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_thread_group

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #13
  %flags = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %group_exec_task = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %group_exec_task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group_exec_task, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end4, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #13
  br label %cleanup239

if.end4:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %group_exec_task to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tsk, ptr %group_exec_task, align 8
  %call6 = tail call i32 @zap_other_threads(ptr noundef %tsk) #13
  %notify_count = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %notify_count, align 4
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 59
  %12 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp sgt i32 %13, -1
  br i1 %cmp.i, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %call6, -1
  %14 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dec, ptr %notify_count, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %15 = phi i32 [ %dec, %if.then8 ], [ %call6, %if.end4.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not316 = icmp eq i32 %15, 0
  br i1 %tobool12.not316, label %if.end10.while.end_crit_edge, label %__here.lr.ph

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

__here.lr.ph:                                     ; preds = %if.end10
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 116, i32 1
  br label %__here

__here:                                           ; preds = %if.end70.__here_crit_edge, %__here.lr.ph
  %16 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 212
  %20 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 ptrtoint (ptr blockaddress(@de_thread, %__here) to i32), ptr %task_state_change, align 4
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 258, ptr %21, align 128
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #13
  tail call void @schedule() #13
  %23 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %signal.i, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool68.not = icmp eq i32 %25, 0
  br i1 %tobool68.not, label %if.end70, label %__here.killed_crit_edge

__here.killed_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %killed

if.end70:                                         ; preds = %__here
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #13
  %26 = ptrtoint ptr %notify_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %notify_count, align 4
  %tobool12.not = icmp eq i32 %27, 0
  br i1 %tobool12.not, label %if.end70.while.end_crit_edge, label %if.end70.__here_crit_edge

if.end70.__here_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

if.end70.while.end_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end70.while.end_crit_edge, %if.end10.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #13
  %28 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i305 = icmp sgt i32 %29, -1
  br i1 %cmp.i305, label %while.end.if.end213_crit_edge, label %if.then72

while.end.if.end213_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end213

if.then72:                                        ; preds = %while.end
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 75
  %30 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group_leader, align 4
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 57
  %signal.i307 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 116, i32 1
  br label %for.cond

for.cond:                                         ; preds = %__here133.for.cond_crit_edge, %if.then72
  tail call fastcc void @cgroup_threadgroup_change_begin()
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #13
  %32 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %notify_count, align 4
  %33 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool74.not = icmp eq i32 %34, 0
  br i1 %tobool74.not, label %__here133, label %for.end, !prof !178

__here133:                                        ; preds = %for.cond
  %35 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i306 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i306 to ptr
  %task136 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task136 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task136, align 8
  %task_state_change137 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change137 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@de_thread, %__here133) to i32), ptr %task_state_change137, align 4
  %40 = load ptr, ptr %task136, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 258, ptr %40, align 128
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #13
  tail call fastcc void @cgroup_threadgroup_change_end()
  tail call void @schedule() #13
  %42 = ptrtoint ptr %signal.i307 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %signal.i307, align 4
  %44 = and i32 %43, 256
  %tobool155.not = icmp eq i32 %44, 0
  br i1 %tobool155.not, label %__here133.for.cond_crit_edge, label %__here133.killed_crit_edge

__here133.killed_crit_edge:                       ; preds = %__here133
  call void @__sanitizer_cov_trace_pc() #15
  br label %killed

__here133.for.cond_crit_edge:                     ; preds = %__here133
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %start_time = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 92
  %45 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %start_time, align 8
  %start_time158 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 92
  %47 = ptrtoint ptr %start_time158 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %start_time158, align 8
  %start_boottime = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 93
  %48 = ptrtoint ptr %start_boottime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %start_boottime, align 128
  %start_boottime159 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 93
  %50 = ptrtoint ptr %start_boottime159 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %start_boottime159, align 128
  %signal.i309 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 111
  %51 = ptrtoint ptr %signal.i309 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %signal.i309, align 16
  %53 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %signal, align 16
  %cmp.i310 = icmp eq ptr %52, %54
  br i1 %cmp.i310, label %do.end179, label %do.body171, !prof !168

do.body171:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1112, 0\0A.popsection", ""() #13, !srcloc !193
  unreachable

do.end179:                                        ; preds = %for.end
  tail call void @exchange_tids(ptr noundef %tsk, ptr noundef %31) #13
  tail call void @transfer_pid(ptr noundef %31, ptr noundef %tsk, i32 noundef 1) #13
  tail call void @transfer_pid(ptr noundef %31, ptr noundef %tsk, i32 noundef 2) #13
  tail call void @transfer_pid(ptr noundef %31, ptr noundef %tsk, i32 noundef 3) #13
  %tasks = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 50
  %tasks180 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 50
  %55 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tasks, align 4
  %57 = ptrtoint ptr %tasks180 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %tasks180, align 4
  %prev.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 50, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i, align 4
  %prev2.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 50, i32 1
  %60 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %61 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev2.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %tasks180, ptr %62, align 4
  %64 = ptrtoint ptr %tasks180 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tasks180, align 4
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %tasks180, ptr %prev38.i, align 4
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %sibling = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 74
  %sibling181 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 74
  %68 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sibling, align 4
  %70 = ptrtoint ptr %sibling181 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %sibling181, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %sibling181, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 74, i32 1
  %72 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev3.i.i, align 4
  %prev4.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 74, i32 1
  %74 = ptrtoint ptr %prev4.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %prev4.i.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %sibling181, ptr %73, align 4
  store volatile ptr %sibling, ptr %sibling, align 4
  store ptr %sibling, ptr %prev3.i.i, align 4
  %76 = ptrtoint ptr %group_leader to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tsk, ptr %group_leader, align 4
  %group_leader183 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 75
  %77 = ptrtoint ptr %group_leader183 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %tsk, ptr %group_leader183, align 4
  %78 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 17, ptr %exit_signal.i, align 4
  %exit_signal184 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 59
  %79 = ptrtoint ptr %exit_signal184 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %exit_signal184, align 4
  %80 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %81)
  %cmp.not = icmp eq i32 %81, 32
  br i1 %cmp.not, label %do.end202, label %do.body194, !prof !168

do.body194:                                       ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1137, 0\0A.popsection", ""() #13, !srcloc !195
  unreachable

do.end202:                                        ; preds = %do.end179
  %82 = ptrtoint ptr %exit_state to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 16, ptr %exit_state, align 4
  %ptrace = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 4
  %83 = ptrtoint ptr %ptrace to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ptrace, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool204.not = icmp eq i32 %84, 0
  br i1 %tobool204.not, label %do.end202.cleanup.thread_crit_edge, label %if.then211, !prof !168

do.end202.cleanup.thread_crit_edge:               ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.then211:                                       ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #15
  %parent = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 72
  %85 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent, align 8
  tail call void @__wake_up_parent(ptr noundef %31, ptr noundef %86) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then211, %do.end202.cleanup.thread_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #13
  tail call fastcc void @cgroup_threadgroup_change_end()
  tail call void @release_task(ptr noundef %31) #13
  br label %if.end213

if.end213:                                        ; preds = %cleanup.thread, %while.end.if.end213_crit_edge
  %87 = ptrtoint ptr %group_exec_task to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %group_exec_task, align 8
  %88 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %notify_count, align 4
  br label %no_thread_group

no_thread_group:                                  ; preds = %if.end213, %entry.no_thread_group_crit_edge
  %exit_signal216 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 59
  %89 = ptrtoint ptr %exit_signal216 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 17, ptr %exit_signal216, align 4
  br label %cleanup239

killed:                                           ; preds = %__here133.killed_crit_edge, %__here.killed_crit_edge
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #13
  %90 = ptrtoint ptr %group_exec_task to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %group_exec_task, align 8
  %91 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %notify_count, align 4
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #13
  br label %cleanup239

cleanup239:                                       ; preds = %killed, %no_thread_group, %if.then3
  %retval.0 = phi i32 [ -11, %if.then3 ], [ -11, %killed ], [ 0, %no_thread_group ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_files() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_mm_exe_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @would_dump(ptr nocapture noundef %bprm, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %2 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  %call2 = tail call i32 @inode_permission(ptr noundef %5, ptr noundef %1, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then:                                          ; preds = %entry
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %6 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interp_flags, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %interp_flags, align 4
  %mm = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 2
  %8 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm, align 4
  %user_ns3 = getelementptr inbounds %struct.anon.10, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %user_ns3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns3, align 8
  %cmp4.not32 = icmp eq ptr %11, @init_user_ns
  br i1 %cmp4.not32, label %if.then.if.end11_crit_edge, label %if.then.land.rhs_crit_edge

if.then.land.rhs_crit_edge:                       ; preds = %if.then
  br label %land.rhs

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then.land.rhs_crit_edge
  %user_ns.033 = phi ptr [ %13, %while.body.land.rhs_crit_edge ], [ %11, %if.then.land.rhs_crit_edge ]
  %call5 = tail call zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef %user_ns.033, ptr noundef %5, ptr noundef %1) #13
  br i1 %call5, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %parent = getelementptr inbounds %struct.user_namespace, ptr %user_ns.033, i32 0, i32 3
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %cmp4.not = icmp eq ptr %13, @init_user_ns
  br i1 %cmp4.not, label %while.end.thread, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

while.end:                                        ; preds = %land.rhs
  %cmp6.not = icmp eq ptr %11, %user_ns.033
  br i1 %cmp6.not, label %while.end.if.end11_crit_edge, label %if.then7

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

while.end.thread:                                 ; preds = %while.body
  br i1 %cmp4.not32, label %while.end.thread.if.end11_crit_edge, label %while.end.thread.if.then.i_crit_edge

while.end.thread.if.then.i_crit_edge:             ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

while.end.thread.if.end11_crit_edge:              ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then7:                                         ; preds = %while.end
  %tobool.not.i = icmp eq ptr %user_ns.033, null
  br i1 %tobool.not.i, label %if.then7.get_user_ns.exit_crit_edge, label %if.then7.if.then.i_crit_edge

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then7.get_user_ns.exit_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %if.then7.if.then.i_crit_edge, %while.end.thread.if.then.i_crit_edge
  %user_ns.031 = phi ptr [ @init_user_ns, %while.end.thread.if.then.i_crit_edge ], [ %user_ns.033, %if.then7.if.then.i_crit_edge ]
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns.031, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #13, !srcloc !196
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !178

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !168

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #13
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %if.then7.get_user_ns.exit_crit_edge
  %user_ns.030 = phi ptr [ null, %if.then7.get_user_ns.exit_crit_edge ], [ %user_ns.031, %if.else.i.i.i.i.get_user_ns.exit_crit_edge ], [ %user_ns.031, %if.end15.sink.split.i.i.i.i ]
  %16 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mm, align 4
  %user_ns10 = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %user_ns10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %user_ns.030, ptr %user_ns10, align 8
  %tobool.not.i22 = icmp eq ptr %11, null
  br i1 %tobool.not.i22, label %get_user_ns.exit.if.end11_crit_edge, label %land.lhs.true.i

get_user_ns.exit.if.end11_crit_edge:              ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true.i:                                  ; preds = %get_user_ns.exit
  %count.i23 = getelementptr inbounds %struct.user_namespace, ptr %11, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i23, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %count.i23, i32 1, i32 3, i32 1) #13
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i23, ptr %count.i23, i32 1, ptr elementtype(i32) %count.i23) #13, !srcloc !198
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i26, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i25, label %if.end5.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i, !prof !168

if.end5.i.i.i.i.if.end11_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %count.i23, i32 noundef 3) #13
  br label %if.end11

if.then.i26:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !199
  tail call void @__put_user_ns(ptr noundef nonnull %11) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then.i26, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end11_crit_edge, %get_user_ns.exit.if.end11_crit_edge, %while.end.thread.if.end11_crit_edge, %while.end.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acct_arg_size(ptr nocapture noundef %bprm, i32 noundef %pages) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %vma_pages = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 1
  %6 = ptrtoint ptr %vma_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma_pages, align 4
  %tobool.not = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pages)
  %tobool2.not = icmp eq i32 %7, %pages
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %pages, %7
  %8 = ptrtoint ptr %vma_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pages, ptr %vma_pages, align 4
  %arrayidx.i = getelementptr %struct.anon.10, ptr %5, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %sub, ptr elementtype(i32) %arrayidx.i) #13, !srcloc !176
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !177
  tail call void @mm_trace_rss_stat(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @exec_mmap(ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm3 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm3, align 8
  tail call void @exec_mm_release(ptr noundef %3, ptr noundef %5) #13
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @sync_mm_rss(ptr noundef nonnull %5) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 61
  %call4 = tail call i32 @down_write_killable(ptr noundef %exec_update_lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  br i1 %tobool.not, label %if.end7.if.end16_crit_edge, label %if.then9

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@exec_mmap, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !174

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %5, i1 noundef zeroext false) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then9
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  %call.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@exec_mmap, %if.then.i4.i)) #13
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !174

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %5, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #13
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %mmap_read_lock_killable.exit.if.end16_crit_edge, label %if.then12

mmap_read_lock_killable.exit.if.end16_crit_edge:  ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12:                                        ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %exec_update_lock14 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 61
  tail call void @up_write(ptr noundef %exec_update_lock14) #13
  br label %cleanup

if.end16:                                         ; preds = %mmap_read_lock_killable.exit.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  tail call void @membarrier_exec_mmap(ptr noundef %mm) #13
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !200
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool18.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !201
  br i1 %tobool18.not, label %if.then20, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end16.if.end21_crit_edge
  %active_mm22 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 54
  %11 = ptrtoint ptr %active_mm22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_mm22, align 4
  store ptr %mm, ptr %active_mm22, align 4
  %13 = ptrtoint ptr %mm3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mm, ptr %mm3, align 8
  tail call void @trace_hardirqs_on() #13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !202
  %14 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i77 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i77 to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %18 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i.i, label %if.end21.if.end.i_crit_edge, label %cache_ops_need_broadcast.exit.i

if.end21.if.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

cache_ops_need_broadcast.exit.i:                  ; preds = %if.end21
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #13, !srcloc !203
  %20 = and i32 %19, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %cache_ops_need_broadcast.exit.i.if.end.i_crit_edge

cache_ops_need_broadcast.exit.i.if.end.i_crit_edge: ; preds = %cache_ops_need_broadcast.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cache_ops_need_broadcast.exit.i
  %cpu_bitmap.i.i = getelementptr inbounds %struct.mm_struct, ptr %mm, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpu_bitmap.i.i, i32 noundef %21) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %21)
  %cmp4.i.i.i = icmp eq i32 %call.i.i.i, %21
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %17)
  %cmp.not.i.i.i.i = icmp ugt i32 %22, %17
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true5.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

land.lhs.true5.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true5.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !168

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %land.lhs.true5.i.cpumask_test_cpu.exit.i_crit_edge
  %div3.i.i.i = lshr i32 %17, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %cpu_bitmap.i.i, i32 %div3.i.i.i
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i2.i = and i32 %17, 31
  %25 = shl nuw i32 1, %and.i.i2.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not.i = icmp eq i32 %26, 0
  br i1 %tobool8.not.i, label %if.then.i, label %cpumask_test_cpu.exit.i.if.end.i_crit_edge

cpumask_test_cpu.exit.i.if.end.i_crit_edge:       ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %27 = load ptr, ptr @cpu_cache, align 4
  tail call void %27() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !204
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cpumask_test_cpu.exit.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %cache_ops_need_broadcast.exit.i.if.end.i_crit_edge, %if.end21.if.end.i_crit_edge
  %cpu_bitmap.i4.i = getelementptr inbounds %struct.mm_struct, ptr %mm, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %17)
  %cmp.not.i.i.i5.i = icmp ugt i32 %28, %17
  br i1 %cmp.not.i.i.i5.i, label %if.end.i.cpumask_test_and_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i7.i

if.end.i.cpumask_test_and_set_cpu.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_and_set_cpu.exit.i

land.rhs.i.i.i7.i:                                ; preds = %if.end.i
  %.b37.i.i.i6.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i6.i, label %land.rhs.i.i.i7.i.cpumask_test_and_set_cpu.exit.i_crit_edge, label %if.then.i.i.i8.i, !prof !168

land.rhs.i.i.i7.i.cpumask_test_and_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpumask_test_and_set_cpu.exit.i

if.then.i.i.i8.i:                                 ; preds = %land.rhs.i.i.i7.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpumask_test_and_set_cpu.exit.i

cpumask_test_and_set_cpu.exit.i:                  ; preds = %if.then.i.i.i8.i, %land.rhs.i.i.i7.i.cpumask_test_and_set_cpu.exit.i_crit_edge, %if.end.i.cpumask_test_and_set_cpu.exit.i_crit_edge
  %call1.i.i = tail call i32 @_test_and_set_bit(i32 noundef %17, ptr noundef %cpu_bitmap.i4.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool11.not.i = icmp ne i32 %call1.i.i, 0
  %cmp.not.i = icmp eq ptr %12, %mm
  %or.cond.i = and i1 %cmp.not.i, %tobool11.not.i
  br i1 %or.cond.i, label %cpumask_test_and_set_cpu.exit.i.switch_mm.exit_crit_edge, label %if.then12.i

cpumask_test_and_set_cpu.exit.i.switch_mm.exit_crit_edge: ; preds = %cpumask_test_and_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %switch_mm.exit

if.then12.i:                                      ; preds = %cpumask_test_and_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @check_and_switch_context(ptr noundef %mm, ptr noundef null) #13
  br label %switch_mm.exit

switch_mm.exit:                                   ; preds = %if.then12.i, %cpumask_test_and_set_cpu.exit.i.switch_mm.exit_crit_edge
  %29 = ptrtoint ptr %mm3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mm3, align 8
  %vmacache_seqnum = getelementptr inbounds %struct.anon.10, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %vmacache_seqnum to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %vmacache_seqnum, align 8
  %vmas.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 55, i32 1
  %32 = call ptr @memset(ptr %vmas.i, i32 0, i32 16)
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #13
  br i1 %tobool.not, label %if.end45, label %if.then30

if.then30:                                        ; preds = %switch_mm.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@exec_mmap, %if.then.i.i79)) #13
          to label %mmap_read_unlock.exit [label %if.then.i.i79], !srcloc !174

if.then.i.i79:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %5, i1 noundef zeroext false) #13
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i79, %if.then30
  %mmap_lock.i80 = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i80) #13
  %cmp.not = icmp eq ptr %12, %5
  br i1 %cmp.not, label %do.end43, label %do.body35, !prof !168

do.body35:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1026, 0\0A.popsection", ""() #13, !srcloc !205
  unreachable

do.end43:                                         ; preds = %mmap_read_unlock.exit
  %33 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %signal, align 16
  %maxrss = getelementptr inbounds %struct.signal_struct, ptr %34, i32 0, i32 47
  %hiwater_rss.i.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 17
  %35 = ptrtoint ptr %hiwater_rss.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hiwater_rss.i.i, align 8
  %rss_stat.i.i.i.i = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 40
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %rss_stat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %rss_stat.i.i.i.i, align 4
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #13
  %arrayidx.i.i.i.i = getelementptr %struct.anon.10, ptr %5, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i.i, i32 noundef 4) #13
  %40 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0) #13
  %add.i.i.i = add nuw i32 %42, %39
  %arrayidx.i9.i.i.i = getelementptr %struct.anon.10, ptr %5, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i.i, i32 noundef 4) #13
  %43 = ptrtoint ptr %arrayidx.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx.i9.i.i.i, align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #13
  %add3.i.i.i = add i32 %add.i.i.i, %45
  %46 = tail call i32 @llvm.umax.i32(i32 %36, i32 %add3.i.i.i) #13
  %47 = ptrtoint ptr %maxrss to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %maxrss, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp.i81 = icmp ult i32 %48, %46
  br i1 %cmp.i81, label %if.then.i82, label %do.end43.setmax_mm_hiwater_rss.exit_crit_edge

do.end43.setmax_mm_hiwater_rss.exit_crit_edge:    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %setmax_mm_hiwater_rss.exit

if.then.i82:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %maxrss to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %maxrss, align 4
  br label %setmax_mm_hiwater_rss.exit

setmax_mm_hiwater_rss.exit:                       ; preds = %if.then.i82, %do.end43.setmax_mm_hiwater_rss.exit_crit_edge
  tail call void @mm_update_next_owner(ptr noundef nonnull %5) #13
  tail call void @mmput(ptr noundef nonnull %5) #13
  br label %cleanup

if.end45:                                         ; preds = %switch_mm.exit
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %12, i32 0, i32 11
  %call.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #13
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #13, !srcloc !181
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i85, label %if.end45.cleanup_crit_edge, !prof !178

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i85:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmdrop(ptr noundef %12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i85, %if.end45.cleanup_crit_edge, %setmax_mm_hiwater_rss.exit, %if.then12, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then12 ], [ 0, %setmax_mm_hiwater_rss.exit ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.then.i85 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_itimers(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_itimer_signals() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unshare_sighand(ptr noundef %me) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sighand = getelementptr inbounds %struct.task_struct, ptr %me, i32 0, i32 112
  %0 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sighand, align 4
  %count = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #13
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.cleanup43_crit_edge, label %if.then

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sighand_cachep to i32))
  %4 = load ptr, ptr @sighand_cachep, align 4
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then.cleanup43_crit_edge, label %if.end

if.then.cleanup43_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup43

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %count3 = getelementptr inbounds %struct.sighand_struct, ptr %call1, i32 0, i32 1
  %call.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count3, i32 noundef 4) #13
  %5 = ptrtoint ptr %count3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %count3, align 4
  %action = getelementptr inbounds %struct.sighand_struct, ptr %call1, i32 0, i32 3
  %action4 = getelementptr inbounds %struct.sighand_struct, ptr %1, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %action, ptr %action4, i32 1280)
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #13
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !206
  %7 = ptrtoint ptr %sighand to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call1, ptr %sighand, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #13
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #13
  tail call void @__cleanup_sighand(ptr noundef %1) #13
  br label %cleanup43

cleanup43:                                        ; preds = %if.end, %if.then.cleanup43_crit_edge, %entry.cleanup43_crit_edge
  %retval.1 = phi i32 [ 0, %if.end ], [ 0, %entry.cleanup43_crit_edge ], [ -12, %if.then.cleanup43_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_kthread_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_thread() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_close_on_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_dumpable(ptr noundef %mm, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %cmp = icmp ugt i32 %value, 2
  br i1 %cmp, label %do.end, label %do.body22.preheader, !prof !178

do.body22.preheader:                              ; preds = %entry
  %flags = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 43
  br label %do.body22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2059, i32 noundef 9, ptr noundef null) #13
  br label %return

do.body22:                                        ; preds = %__cmpxchg.exit.do.body22_crit_edge, %do.body22.preheader
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 8
  %and = and i32 %1, -4
  %or = or i32 %and, %value
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !207
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #13
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body22
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %flags, i32 %1, i32 %or) #13, !srcloc !208
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !209
  %cmp47.not = icmp eq i32 %asmresult1.i, %1
  br i1 %cmp47.not, label %__cmpxchg.exit.return_crit_edge, label %__cmpxchg.exit.do.body22_crit_edge

__cmpxchg.exit.do.body22_crit_edge:               ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body22

__cmpxchg.exit.return_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %__cmpxchg.exit.return_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_exec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signal_handlers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_bprm_committing_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_exit_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_bprm_committed_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_new_exec(ptr noundef %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %rlim_stack = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 21
  tail call void @arch_pick_mmap_layout(ptr noundef %5, ptr noundef %rlim_stack) #13
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 8
  %task_size = getelementptr inbounds %struct.anon.10, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %task_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1226833920, ptr %task_size, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %9 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %signal, align 16
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 61
  tail call void @up_write(ptr noundef %exec_update_lock) #13
  %11 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal, align 16
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 60
  tail call void @mutex_unlock(ptr noundef %cred_guard_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_pick_mmap_layout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @finalize_exec(ptr nocapture noundef readonly %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_leader, align 4
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #13
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %arrayidx = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 51, i32 3
  %rlim_stack = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 21
  %10 = ptrtoint ptr %rlim_stack to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %rlim_stack, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx, align 8
  %13 = load ptr, ptr %task, align 8
  %group_leader5 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 75
  %14 = ptrtoint ptr %group_leader5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group_leader5, align 4
  %alloc_lock.i6 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bprm_change_interp(ptr noundef %interp, ptr nocapture noundef %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %interp1 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 15
  %0 = ptrtoint ptr %interp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interp1, align 4
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %2 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filename, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call noalias ptr @kstrdup(ptr noundef %interp, i32 noundef 3264) #13
  %4 = ptrtoint ptr %interp1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %interp1, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_arg_zero(ptr nocapture noundef %bprm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 12
  %0 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %p = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.preheader
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %call = tail call fastcc ptr @get_arg_page(ptr noundef %bprm, i32 noundef %3, i32 noundef 0)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.end4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %do.body
  %and = and i32 %3, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !169
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !170
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call, i32 noundef %or.i) #13
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end4
  %offset.036 = phi i32 [ %and, %if.end4 ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call.i.i, i32 %offset.036
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %land.rhs.do.end_crit_edge, label %for.inc

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %offset.036, 1
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p, align 4
  %inc8 = add i32 %18, 1
  store i32 %inc8, ptr %p, align 4
  %exitcond.not = icmp eq i32 %inc, 4096
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %land.rhs.do.end_crit_edge
  %offset.0.lcssa = phi i32 [ 4096, %for.inc.do.end_crit_edge ], [ %offset.036, %land.rhs.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !171
  %19 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !172
  %25 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @put_arg_page(ptr noundef nonnull %call)
  %cmp14 = icmp eq i32 %offset.0.lcssa, 4096
  br i1 %cmp14, label %do.end.do.body_crit_edge, label %do.end16

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p, align 4
  %inc18 = add i32 %30, 1
  store i32 %inc18, ptr %p, align 4
  %31 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %argc, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %argc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end16 ], [ -14, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_execve(ptr noundef %kernel_filename, ptr noundef readonly %argv, ptr noundef readonly %envp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @getname_kernel(ptr noundef %kernel_filename) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc ptr @alloc_bprm(i32 noundef -100, ptr noundef %call)
  %cmp.i68 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %call4 to i32
  br label %out_ret

if.end8:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %argv, null
  br i1 %tobool.not.i, label %if.end8.if.end11_crit_edge, label %for.cond.preheader.i

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.cond.preheader.i:                             ; preds = %if.end8
  %2 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %argv, align 4
  %tobool1.not14.i = icmp eq ptr %3, null
  br i1 %tobool1.not14.i, label %for.cond.preheader.i.if.end11_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end11_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %i.015.i)
  %cmp.i69 = icmp eq i32 %i.015.i, 2147483647
  br i1 %cmp.i69, label %for.body.i.out_free_crit_edge, label %if.end3.i

for.body.i.out_free_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end3.i:                                        ; preds = %for.body.i
  %4 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and1.i.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.if.end7.i_crit_edge, label %fatal_signal_pending.exit.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

fatal_signal_pending.exit.i:                      ; preds = %if.end3.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 116, i32 1
  %12 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %signal.i.i.i, align 4
  %14 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not.i = icmp eq i32 %14, 0
  br i1 %tobool5.not.i, label %fatal_signal_pending.exit.i.if.end7.i_crit_edge, label %fatal_signal_pending.exit.i.out_free_crit_edge

fatal_signal_pending.exit.i.out_free_crit_edge:   ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

fatal_signal_pending.exit.i.if.end7.i_crit_edge:  ; preds = %fatal_signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.end7.i:                                        ; preds = %fatal_signal_pending.exit.i.if.end7.i_crit_edge, %if.end3.i.if.end7.i_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 468, i32 noundef 0) #13
  %call.i.i = tail call i32 @__cond_resched() #13
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %arrayidx.i = getelementptr ptr, ptr %argv, i32 %inc.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %if.end7.i.if.end11_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end7.i.if.end11_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %if.end7.i.if.end11_crit_edge, %for.cond.preheader.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %for.cond.preheader.i.if.end11_crit_edge ], [ 0, %if.end8.if.end11_crit_edge ], [ %inc.i, %if.end7.i.if.end11_crit_edge ]
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 12
  %17 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i.ph, ptr %argc, align 4
  %tobool.not.i70 = icmp eq ptr %envp, null
  br i1 %tobool.not.i70, label %if.end11.if.end15_crit_edge, label %for.cond.preheader.i72

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.cond.preheader.i72:                           ; preds = %if.end11
  %18 = ptrtoint ptr %envp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %envp, align 4
  %tobool1.not14.i71 = icmp eq ptr %19, null
  br i1 %tobool1.not14.i71, label %for.cond.preheader.i72.if.end15_crit_edge, label %for.cond.preheader.i72.for.body.i75_crit_edge

for.cond.preheader.i72.for.body.i75_crit_edge:    ; preds = %for.cond.preheader.i72
  br label %for.body.i75

for.cond.preheader.i72.if.end15_crit_edge:        ; preds = %for.cond.preheader.i72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

for.body.i75:                                     ; preds = %if.end7.i89.for.body.i75_crit_edge, %for.cond.preheader.i72.for.body.i75_crit_edge
  %i.015.i73 = phi i32 [ %inc.i86, %if.end7.i89.for.body.i75_crit_edge ], [ 0, %for.cond.preheader.i72.for.body.i75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %i.015.i73)
  %cmp.i74 = icmp eq i32 %i.015.i73, 2147483647
  br i1 %cmp.i74, label %for.body.i75.out_free_crit_edge, label %if.end3.i81

for.body.i75.out_free_crit_edge:                  ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end3.i81:                                      ; preds = %for.body.i75
  %20 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i76 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i76 to ptr
  %task.i77 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i77, align 8
  %stack.i.i.i.i78 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %stack.i.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i.i.i78, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and1.i.i.i.i.i.i79 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and1.i.i.i.i.i.i79, 0
  br i1 %tobool.not.i.i80, label %if.end3.i81.if.end7.i89_crit_edge, label %fatal_signal_pending.exit.i84

if.end3.i81.if.end7.i89_crit_edge:                ; preds = %if.end3.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i89

fatal_signal_pending.exit.i84:                    ; preds = %if.end3.i81
  %signal.i.i.i82 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 116, i32 1
  %28 = ptrtoint ptr %signal.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %signal.i.i.i82, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool5.not.i83 = icmp eq i32 %30, 0
  br i1 %tobool5.not.i83, label %fatal_signal_pending.exit.i84.if.end7.i89_crit_edge, label %fatal_signal_pending.exit.i84.out_free_crit_edge

fatal_signal_pending.exit.i84.out_free_crit_edge: ; preds = %fatal_signal_pending.exit.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

fatal_signal_pending.exit.i84.if.end7.i89_crit_edge: ; preds = %fatal_signal_pending.exit.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i89

if.end7.i89:                                      ; preds = %fatal_signal_pending.exit.i84.if.end7.i89_crit_edge, %if.end3.i81.if.end7.i89_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 468, i32 noundef 0) #13
  %call.i.i85 = tail call i32 @__cond_resched() #13
  %inc.i86 = add nuw nsw i32 %i.015.i73, 1
  %arrayidx.i87 = getelementptr ptr, ptr %envp, i32 %inc.i86
  %31 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i87, align 4
  %tobool1.not.i88 = icmp eq ptr %32, null
  br i1 %tobool1.not.i88, label %if.end7.i89.if.end15_crit_edge, label %if.end7.i89.for.body.i75_crit_edge

if.end7.i89.for.body.i75_crit_edge:               ; preds = %if.end7.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i75

if.end7.i89.if.end15_crit_edge:                   ; preds = %if.end7.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.end15:                                         ; preds = %if.end7.i89.if.end15_crit_edge, %for.cond.preheader.i72.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %retval.0.i90.ph = phi i32 [ 0, %for.cond.preheader.i72.if.end15_crit_edge ], [ 0, %if.end11.if.end15_crit_edge ], [ %inc.i86, %if.end7.i89.if.end15_crit_edge ]
  %envc = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 13
  %33 = ptrtoint ptr %envc to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i90.ph, ptr %envc, align 4
  %rlim_stack.i = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 21
  %34 = ptrtoint ptr %rlim_stack.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rlim_stack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165827, i32 %35)
  %cmp.i92 = icmp ugt i32 %35, 25165827
  %div23.i = lshr i32 %35, 2
  %36 = tail call i32 @llvm.umax.i32(i32 %div23.i, i32 131072) #13
  %37 = select i1 %cmp.i92, i32 6291456, i32 %36
  %38 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %argc, align 4
  %add.i = add i32 %39, %retval.0.i90.ph
  %mul.i = shl i32 %add.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %37)
  %cmp7.not.i = icmp ult i32 %mul.i, %37
  br i1 %cmp7.not.i, label %if.end19, label %if.end15.out_free_crit_edge

if.end15.out_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end19:                                         ; preds = %if.end15
  %sub.neg.i = sub i32 %mul.i, %37
  %p.i = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 3
  %40 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %p.i, align 4
  %sub8.i = add i32 %sub.neg.i, %41
  %argmin.i = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 4
  %42 = ptrtoint ptr %argmin.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub8.i, ptr %argmin.i, align 4
  %filename20 = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 14
  %43 = ptrtoint ptr %filename20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %filename20, align 4
  %call21 = tail call i32 @copy_string_kernel(ptr noundef %44, ptr noundef %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.out_free_crit_edge, label %if.end24

if.end19.out_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end24:                                         ; preds = %if.end19
  %45 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %p.i, align 4
  %exec = getelementptr inbounds %struct.linux_binprm, ptr %call4, i32 0, i32 20
  %47 = ptrtoint ptr %exec to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %exec, align 4
  %48 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %envc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp14.i = icmp sgt i32 %49, 0
  br i1 %cmp14.i, label %if.end24.while.body.i_crit_edge, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end24.while.body.i_crit_edge:                  ; preds = %if.end24
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end24.while.body.i_crit_edge
  %dec15.in.i = phi i32 [ %dec15.i, %cleanup.i.while.body.i_crit_edge ], [ %49, %if.end24.while.body.i_crit_edge ]
  %dec15.i = add nsw i32 %dec15.in.i, -1
  %arrayidx.i94 = getelementptr ptr, ptr %envp, i32 %dec15.i
  %50 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i94, align 4
  %call.i = tail call i32 @copy_string_kernel(ptr noundef %51, ptr noundef %call4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %while.body.i.out_free_crit_edge, label %if.end.i100

while.body.i.out_free_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i100:                                      ; preds = %while.body.i
  %52 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i95 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i95 to ptr
  %task.i96 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i96 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i96, align 8
  %stack.i.i.i.i97 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %stack.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stack.i.i.i.i97, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and1.i.i.i.i.i.i98 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %and1.i.i.i.i.i.i98, 0
  br i1 %tobool.not.i.i99, label %if.end.i100.cleanup.i_crit_edge, label %fatal_signal_pending.exit.i103

if.end.i100.cleanup.i_crit_edge:                  ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

fatal_signal_pending.exit.i103:                   ; preds = %if.end.i100
  %signal.i.i.i101 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 116, i32 1
  %60 = ptrtoint ptr %signal.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %signal.i.i.i101, align 4
  %62 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i102 = icmp eq i32 %62, 0
  br i1 %tobool.not.i102, label %fatal_signal_pending.exit.i103.cleanup.i_crit_edge, label %fatal_signal_pending.exit.i103.out_free_crit_edge

fatal_signal_pending.exit.i103.out_free_crit_edge: ; preds = %fatal_signal_pending.exit.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

fatal_signal_pending.exit.i103.cleanup.i_crit_edge: ; preds = %fatal_signal_pending.exit.i103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %fatal_signal_pending.exit.i103.cleanup.i_crit_edge, %if.end.i100.cleanup.i_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 658, i32 noundef 0) #13
  %call.i.i104 = tail call i32 @__cond_resched() #13
  %cmp.i105 = icmp ugt i32 %dec15.in.i, 1
  br i1 %cmp.i105, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end29_crit_edge

cleanup.i.if.end29_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end29:                                         ; preds = %cleanup.i.if.end29_crit_edge, %if.end24.if.end29_crit_edge
  %63 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp14.i106 = icmp sgt i32 %64, 0
  br i1 %cmp14.i106, label %if.end29.while.body.i112_crit_edge, label %if.end29.if.end34_crit_edge

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.end29.while.body.i112_crit_edge:               ; preds = %if.end29
  br label %while.body.i112

while.body.i112:                                  ; preds = %cleanup.i124.while.body.i112_crit_edge, %if.end29.while.body.i112_crit_edge
  %dec15.in.i107 = phi i32 [ %dec15.i108, %cleanup.i124.while.body.i112_crit_edge ], [ %64, %if.end29.while.body.i112_crit_edge ]
  %dec15.i108 = add nsw i32 %dec15.in.i107, -1
  %arrayidx.i109 = getelementptr ptr, ptr %argv, i32 %dec15.i108
  %65 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i109, align 4
  %call.i110 = tail call i32 @copy_string_kernel(ptr noundef %66, ptr noundef %call4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp1.i111 = icmp slt i32 %call.i110, 0
  br i1 %cmp1.i111, label %while.body.i112.out_free_crit_edge, label %if.end.i118

while.body.i112.out_free_crit_edge:               ; preds = %while.body.i112
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i118:                                      ; preds = %while.body.i112
  %67 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i113 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i113 to ptr
  %task.i114 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i114 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i114, align 8
  %stack.i.i.i.i115 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %stack.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stack.i.i.i.i115, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  %and1.i.i.i.i.i.i116 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i116)
  %tobool.not.i.i117 = icmp eq i32 %and1.i.i.i.i.i.i116, 0
  br i1 %tobool.not.i.i117, label %if.end.i118.cleanup.i124_crit_edge, label %fatal_signal_pending.exit.i121

if.end.i118.cleanup.i124_crit_edge:               ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i124

fatal_signal_pending.exit.i121:                   ; preds = %if.end.i118
  %signal.i.i.i119 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 116, i32 1
  %75 = ptrtoint ptr %signal.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %signal.i.i.i119, align 4
  %77 = and i32 %76, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i120 = icmp eq i32 %77, 0
  br i1 %tobool.not.i120, label %fatal_signal_pending.exit.i121.cleanup.i124_crit_edge, label %fatal_signal_pending.exit.i121.out_free_crit_edge

fatal_signal_pending.exit.i121.out_free_crit_edge: ; preds = %fatal_signal_pending.exit.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

fatal_signal_pending.exit.i121.cleanup.i124_crit_edge: ; preds = %fatal_signal_pending.exit.i121
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i124

cleanup.i124:                                     ; preds = %fatal_signal_pending.exit.i121.cleanup.i124_crit_edge, %if.end.i118.cleanup.i124_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 658, i32 noundef 0) #13
  %call.i.i122 = tail call i32 @__cond_resched() #13
  %cmp.i123 = icmp ugt i32 %dec15.in.i107, 1
  br i1 %cmp.i123, label %cleanup.i124.while.body.i112_crit_edge, label %cleanup.i124.if.end34_crit_edge

cleanup.i124.if.end34_crit_edge:                  ; preds = %cleanup.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

cleanup.i124.while.body.i112_crit_edge:           ; preds = %cleanup.i124
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i112

if.end34:                                         ; preds = %cleanup.i124.if.end34_crit_edge, %if.end29.if.end34_crit_edge
  %call35 = tail call fastcc i32 @bprm_execve(ptr noundef %call4, i32 noundef -100, ptr noundef %call, i32 noundef 0)
  br label %out_free

out_free:                                         ; preds = %if.end34, %fatal_signal_pending.exit.i121.out_free_crit_edge, %while.body.i112.out_free_crit_edge, %fatal_signal_pending.exit.i103.out_free_crit_edge, %while.body.i.out_free_crit_edge, %if.end19.out_free_crit_edge, %if.end15.out_free_crit_edge, %fatal_signal_pending.exit.i84.out_free_crit_edge, %for.body.i75.out_free_crit_edge, %fatal_signal_pending.exit.i.out_free_crit_edge, %for.body.i.out_free_crit_edge
  %retval1.0 = phi i32 [ %call21, %if.end19.out_free_crit_edge ], [ %call35, %if.end34 ], [ -7, %if.end15.out_free_crit_edge ], [ -514, %fatal_signal_pending.exit.i121.out_free_crit_edge ], [ %call.i110, %while.body.i112.out_free_crit_edge ], [ -514, %fatal_signal_pending.exit.i103.out_free_crit_edge ], [ %call.i, %while.body.i.out_free_crit_edge ], [ -514, %fatal_signal_pending.exit.i84.out_free_crit_edge ], [ -7, %for.body.i75.out_free_crit_edge ], [ -514, %fatal_signal_pending.exit.i.out_free_crit_edge ], [ -7, %for.body.i.out_free_crit_edge ]
  tail call fastcc void @free_bprm(ptr noundef %call4)
  br label %out_ret

out_ret:                                          ; preds = %out_free, %if.then6
  %retval1.1 = phi i32 [ %1, %if.then6 ], [ %retval1.0, %out_free ]
  tail call void @putname(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %out_ret, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval1.1, %out_ret ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_bprm(i32 noundef %fd, ptr nocapture noundef readonly %filename) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 348) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100, i32 %fd)
  %cmp = icmp eq i32 %fd, -100
  br i1 %cmp, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %filename, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.else14 [
    i8 47, label %lor.lhs.false.if.then4_crit_edge
    i8 0, label %if.then12
  ]

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %6 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %filename, align 4
  br label %if.end25

if.then12:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.26, i32 noundef %fd) #13
  br label %if.end18

if.else14:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call16 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %fd, ptr noundef %2) #13
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.then12
  %call16.sink = phi ptr [ %call16, %if.else14 ], [ %call13, %if.then12 ]
  %fdpath17 = getelementptr inbounds %struct.linux_binprm, ptr %call7.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %fdpath17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16.sink, ptr %fdpath17, align 8
  %tobool20.not = icmp eq ptr %call16.sink, null
  br i1 %tobool20.not, label %if.end18.out_free_crit_edge, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end18.out_free_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end25:                                         ; preds = %if.end18.if.end25_crit_edge, %if.then4
  %.sink = phi ptr [ %7, %if.then4 ], [ %call16.sink, %if.end18.if.end25_crit_edge ]
  %filename24 = getelementptr inbounds %struct.linux_binprm, ptr %call7.i.i, i32 0, i32 14
  %9 = ptrtoint ptr %filename24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink, ptr %filename24, align 8
  %interp = getelementptr inbounds %struct.linux_binprm, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %interp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.sink, ptr %interp, align 4
  %call.i = tail call ptr @mm_alloc() #13
  %mm1.i = getelementptr inbounds %struct.linux_binprm, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %mm1.i, align 8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end25.out_free_crit_edge, label %if.end.i

if.end25.out_free_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i:                                         ; preds = %if.end25
  %12 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %group_leader.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 75
  %16 = ptrtoint ptr %group_leader.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %group_leader.i, align 4
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #13
  %rlim_stack.i = getelementptr inbounds %struct.linux_binprm, ptr %call7.i.i, i32 0, i32 21
  %18 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 51, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i, align 8
  %24 = ptrtoint ptr %rlim_stack.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %rlim_stack.i, align 4
  %25 = load ptr, ptr %task.i, align 8
  %group_leader7.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 75
  %26 = ptrtoint ptr %group_leader7.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %group_leader7.i, align 4
  %alloc_lock.i24.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i24.i) #13
  %call8.i = tail call fastcc i32 @__bprm_mm_init(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.cleanup_crit_edge, label %if.then14.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14.i:                                      ; preds = %if.end.i
  %28 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mm1.i, align 8
  %mm_count.i.i = getelementptr inbounds %struct.anon.10, ptr %call.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !180
  tail call void @llvm.prefetch.p0(ptr %mm_count.i.i, i32 1, i32 3, i32 1) #13
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i.i, ptr %mm_count.i.i, i32 1, ptr elementtype(i32) %mm_count.i.i) #13, !srcloc !181
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i, label %if.then14.i.out_free_crit_edge, !prof !178

if.then14.i.out_free_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmdrop(ptr noundef nonnull %call.i) #13
  br label %out_free

out_free:                                         ; preds = %if.then.i.i, %if.then14.i.out_free_crit_edge, %if.end25.out_free_crit_edge, %if.end18.out_free_crit_edge
  %retval1.0 = phi i32 [ -12, %if.end18.out_free_crit_edge ], [ -12, %if.end25.out_free_crit_edge ], [ %call8.i, %if.then.i.i ], [ %call8.i, %if.then14.i.out_free_crit_edge ]
  tail call fastcc void @free_bprm(ptr noundef nonnull %call7.i.i)
  br label %out

out:                                              ; preds = %out_free, %entry.out_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %out_free ], [ -12, %entry.out_crit_edge ]
  %30 = inttoptr i32 %retval1.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %30, %out ], [ %call7.i.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bprm_execve(ptr noundef %bprm, i32 noundef %fd, ptr noundef %filename, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %pos.i.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i, align 16
  %cred_guard_mutex.i = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 60
  %call1.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cred_guard_mutex.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @prepare_exec_creds() #13
  %cred.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %6 = ptrtoint ptr %cred.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2.i, ptr %cred.i, align 4
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end8.i, label %if.end, !prof !178

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %signal11.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 111
  %9 = ptrtoint ptr %signal11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %signal11.i, align 16
  %cred_guard_mutex12.i = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 60
  tail call void @mutex_unlock(ptr noundef %cred_guard_mutex12.i) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %11 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i70 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i70 to ptr
  %task.i71 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i71, align 8
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ptrace.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i72 = icmp eq i32 %16, 0
  br i1 %tobool.not.i72, label %if.end.if.end.i73_crit_edge, label %if.then.i

if.end.if.end.i73_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i73

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %unsafe.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 10
  %17 = ptrtoint ptr %unsafe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %unsafe.i, align 4
  %or.i = or i32 %18, 2
  store i32 %or.i, ptr %unsafe.i, align 4
  br label %if.end.i73

if.end.i73:                                       ; preds = %if.then.i, %if.end.if.end.i73_crit_edge
  %19 = ptrtoint ptr %task.i71 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i71, align 8
  %atomic_flags.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 66
  %21 = ptrtoint ptr %atomic_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %atomic_flags.i.i, align 4
  %and1.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i73.if.end7.i_crit_edge, label %if.then4.i

if.end.i73.if.end7.i_crit_edge:                   ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #15
  %unsafe5.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 10
  %23 = ptrtoint ptr %unsafe5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %unsafe5.i, align 4
  %or6.i = or i32 %24, 4
  store i32 %or6.i, ptr %unsafe5.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i73.if.end7.i_crit_edge
  %fs.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 107
  %25 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fs.i, align 128
  %lock.i = getelementptr inbounds %struct.fs_struct, ptr %26, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #13
  %27 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !210
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i, label %if.end7.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #13
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end7.i.rcu_read_lock.exit.i_crit_edge
  %thread_group.i43.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 80
  %31 = ptrtoint ptr %thread_group.i43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %thread_group.i43.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %32, i32 -1396
  %cmp.not45.i = icmp eq ptr %add.ptr.i44.i, %14
  br i1 %cmp.not45.i, label %rcu_read_lock.exit.i.while.end.i_crit_edge, label %while.body.lr.ph.i

rcu_read_lock.exit.i.while.end.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %rcu_read_lock.exit.i
  %33 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fs.i, align 128
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %35 = phi ptr [ %32, %while.body.lr.ph.i ], [ %39, %while.body.i.while.body.i_crit_edge ]
  %n_fs.046.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %spec.select.i, %while.body.i.while.body.i_crit_edge ]
  %fs9.i = getelementptr i8, ptr %35, i32 268
  %36 = ptrtoint ptr %fs9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fs9.i, align 128
  %cmp11.i = icmp eq ptr %37, %34
  %inc.i = zext i1 %cmp11.i to i32
  %spec.select.i = add i32 %n_fs.046.i, %inc.i
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %35, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 -1396
  %cmp.not.i = icmp eq ptr %add.ptr.i.i, %14
  br i1 %cmp.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %rcu_read_lock.exit.i.while.end.i_crit_edge
  %n_fs.0.lcssa.i = phi i32 [ 1, %rcu_read_lock.exit.i.while.end.i_crit_edge ], [ %spec.select.i, %while.body.i.while.end.i_crit_edge ]
  %call.i34.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i34.i, label %while.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i37.i

while.end.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true.i37.i:                              ; preds = %while.end.i
  %call1.i35.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35.i)
  %tobool.not.i36.i = icmp eq i32 %call1.i35.i, 0
  br i1 %tobool.not.i36.i, label %land.lhs.true.i37.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i39.i

land.lhs.true.i37.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i39.i:                             ; preds = %land.lhs.true.i37.i
  %.b4.i38.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38.i, label %land.lhs.true2.i39.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i40.i

land.lhs.true2.i39.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i

if.then.i40.i:                                    ; preds = %land.lhs.true2.i39.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #13
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i40.i, %land.lhs.true2.i39.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i37.i.rcu_read_unlock.exit.i_crit_edge, %while.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !211
  %40 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i.i41.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i41.i to ptr
  %preempt_count.i.i.i.i42.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i42.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i42.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %44 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fs.i, align 128
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %n_fs.0.lcssa.i)
  %cmp15.i = icmp ugt i32 %47, %n_fs.0.lcssa.i
  br i1 %cmp15.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %unsafe17.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 10
  %48 = ptrtoint ptr %unsafe17.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %unsafe17.i, align 4
  %or18.i = or i32 %49, 1
  store i32 %or18.i, ptr %unsafe17.i, align 4
  br label %check_unsafe_exec.exit

if.else.i:                                        ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %in_exec.i = getelementptr inbounds %struct.fs_struct, ptr %45, i32 0, i32 4
  %50 = ptrtoint ptr %in_exec.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %in_exec.i, align 4
  br label %check_unsafe_exec.exit

check_unsafe_exec.exit:                           ; preds = %if.else.i, %if.then16.i
  %51 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fs.i, align 128
  %lock22.i = getelementptr inbounds %struct.fs_struct, ptr %52, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock22.i) #13
  %53 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 8
  %in_execve = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 65
  %57 = ptrtoint ptr %in_execve to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load = load i16, ptr %in_execve, align 8
  %bf.set = or i16 %bf.load, 16384
  store i16 %bf.set, ptr %in_execve, align 8
  %call3 = tail call fastcc ptr @do_open_execat(i32 noundef %fd, ptr noundef %filename, i32 noundef %flags)
  %58 = ptrtoint ptr %call3 to i32
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %check_unsafe_exec.exit.out_unmark_crit_edge, label %if.end7

check_unsafe_exec.exit.out_unmark_crit_edge:      ; preds = %check_unsafe_exec.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unmark

if.end7:                                          ; preds = %check_unsafe_exec.exit
  tail call void @sched_exec() #13
  %file8 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %59 = ptrtoint ptr %file8 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call3, ptr %file8, align 4
  %fdpath = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 16
  %60 = ptrtoint ptr %fdpath to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fdpath, align 4
  %tobool9.not = icmp eq ptr %61, null
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %land.lhs.true

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end7
  %call10 = tail call zeroext i1 @get_close_on_exec(i32 noundef %fd) #13
  br i1 %call10, label %if.then11, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %interp_flags = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 17
  %62 = ptrtoint ptr %interp_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %interp_flags, align 4
  %or = or i32 %63, 4
  store i32 %or, ptr %interp_flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  %call13 = tail call i32 @security_bprm_creds_for_exec(ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %if.end12
  %64 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i74 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i74 to ptr
  %task.i75 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i75 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i75, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 68
  %68 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pid.i, align 8
  %preempt_count.i.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i.i76, align 4
  %add.i.i.i.i77 = add i32 %71, 1
  store volatile i32 %add.i.i.i.i77, ptr %preempt_count.i.i.i.i.i76, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !210
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i.i78 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i.i78, label %if.end16.rcu_read_lock.exit.i85_crit_edge, label %land.lhs.true.i.i81

if.end16.rcu_read_lock.exit.i85_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i85

land.lhs.true.i.i81:                              ; preds = %if.end16
  %call1.i.i79 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %call1.i.i79, 0
  br i1 %tobool.not.i.i80, label %land.lhs.true.i.i81.rcu_read_lock.exit.i85_crit_edge, label %land.lhs.true2.i.i83

land.lhs.true.i.i81.rcu_read_lock.exit.i85_crit_edge: ; preds = %land.lhs.true.i.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i85

land.lhs.true2.i.i83:                             ; preds = %land.lhs.true.i.i81
  %.b4.i.i82 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i82, label %land.lhs.true2.i.i83.rcu_read_lock.exit.i85_crit_edge, label %if.then.i.i84

land.lhs.true2.i.i83.rcu_read_lock.exit.i85_crit_edge: ; preds = %land.lhs.true2.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit.i85

if.then.i.i84:                                    ; preds = %land.lhs.true2.i.i83
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 696, ptr noundef nonnull @.str.29) #13
  br label %rcu_read_lock.exit.i85

rcu_read_lock.exit.i85:                           ; preds = %if.then.i.i84, %land.lhs.true2.i.i83.rcu_read_lock.exit.i85_crit_edge, %land.lhs.true.i.i81.rcu_read_lock.exit.i85_crit_edge, %if.end16.rcu_read_lock.exit.i85_crit_edge
  %72 = ptrtoint ptr %task.i75 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i75, align 8
  %parent.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 72
  %74 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %parent.i, align 8
  %call5.i = tail call ptr @task_active_pid_ns(ptr noundef %75) #13
  %call.i48.i = tail call i32 @__task_pid_nr_ns(ptr noundef %73, i32 noundef 0, ptr noundef %call5.i) #13
  %call.i49.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i49.i, label %rcu_read_lock.exit.i85.rcu_read_unlock.exit.i87_crit_edge, label %land.lhs.true.i52.i

rcu_read_lock.exit.i85.rcu_read_unlock.exit.i87_crit_edge: ; preds = %rcu_read_lock.exit.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i87

land.lhs.true.i52.i:                              ; preds = %rcu_read_lock.exit.i85
  %call1.i50.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call1.i50.i, 0
  br i1 %tobool.not.i51.i, label %land.lhs.true.i52.i.rcu_read_unlock.exit.i87_crit_edge, label %land.lhs.true2.i54.i

land.lhs.true.i52.i.rcu_read_unlock.exit.i87_crit_edge: ; preds = %land.lhs.true.i52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i87

land.lhs.true2.i54.i:                             ; preds = %land.lhs.true.i52.i
  %.b4.i53.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i, label %land.lhs.true2.i54.i.rcu_read_unlock.exit.i87_crit_edge, label %if.then.i55.i

land.lhs.true2.i54.i.rcu_read_unlock.exit.i87_crit_edge: ; preds = %land.lhs.true2.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit.i87

if.then.i55.i:                                    ; preds = %land.lhs.true2.i54.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.28, i32 noundef 724, ptr noundef nonnull @.str.30) #13
  br label %rcu_read_unlock.exit.i87

rcu_read_unlock.exit.i87:                         ; preds = %if.then.i55.i, %land.lhs.true2.i54.i.rcu_read_unlock.exit.i87_crit_edge, %land.lhs.true.i52.i.rcu_read_unlock.exit.i87_crit_edge, %rcu_read_lock.exit.i85.rcu_read_unlock.exit.i87_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !211
  %76 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i.i56.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i56.i to ptr
  %preempt_count.i.i.i.i57.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i57.i, align 4
  %sub.i.i.i.i86 = add i32 %79, -1
  store volatile i32 %sub.i.i.i.i86, ptr %preempt_count.i.i.i.i57.i, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  %buf.i.i.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 22
  %point_of_no_return.i.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %arrayidx41.i.i = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 1
  %arrayidx65.i.i = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 2
  %arrayidx89.i.i = getelementptr %struct.linux_binprm, ptr %bprm, i32 0, i32 22, i32 3
  %interpreter.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 7
  %executable.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 6
  br label %if.end.i88

if.end.i88:                                       ; preds = %for.inc.i.if.end.i88_crit_edge, %rcu_read_unlock.exit.i87
  %depth.074.i = phi i32 [ 0, %rcu_read_unlock.exit.i87 ], [ %inc.i91, %for.inc.i.if.end.i88_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i.i.i) #13
  %80 = ptrtoint ptr %pos.i.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %pos.i.i.i, align 8
  %81 = call ptr @memset(ptr %buf.i.i.i, i32 0, i32 256)
  %82 = ptrtoint ptr %file8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %file8, align 4
  %call.i.i.i = call i32 @kernel_read(ptr noundef %83, ptr noundef %buf.i.i.i, i32 noundef 256, ptr noundef nonnull %pos.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i88.out_crit_edge, label %if.end.i.i

if.end.i88.out_crit_edge:                         ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.i:                                       ; preds = %if.end.i88
  %call2.i.i = call i32 @security_bprm_check(ptr noundef %bprm) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i58.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i58.i, label %retry.preheader.i.i, label %if.end.i.i.search_binary_handler.exit.i_crit_edge

if.end.i.i.search_binary_handler.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %search_binary_handler.exit.i

retry.preheader.i.i:                              ; preds = %if.end.i.i
  call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #13
  %fmt.0175.i.i = load ptr, ptr @formats, align 4
  %cmp5.not176.i.i = icmp eq ptr %fmt.0175.i.i, @formats
  br i1 %cmp5.not176.i.i, label %retry.preheader.i.i.for.end.i.i_crit_edge, label %retry.preheader.i.i.for.body.i.i_crit_edge

retry.preheader.i.i.for.body.i.i_crit_edge:       ; preds = %retry.preheader.i.i
  br label %for.body.i.i

retry.preheader.i.i.for.end.i.i_crit_edge:        ; preds = %retry.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %retry.preheader.i.i.for.body.i.i_crit_edge
  %fmt.0178.i.i = phi ptr [ %fmt.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %fmt.0175.i.i, %retry.preheader.i.i.for.body.i.i_crit_edge ]
  %retval1.1177.i.i = phi i32 [ %retval1.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -2, %retry.preheader.i.i.for.body.i.i_crit_edge ]
  %module.i.i = getelementptr inbounds %struct.linux_binfmt, ptr %fmt.0178.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %module.i.i, align 4
  %call6.i.i = call zeroext i1 @try_module_get(ptr noundef %85) #13
  br i1 %call6.i.i, label %if.end8.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end8.i.i:                                      ; preds = %for.body.i.i
  call void @_raw_read_unlock(ptr noundef nonnull @binfmt_lock) #13
  %load_binary.i.i = getelementptr inbounds %struct.linux_binfmt, ptr %fmt.0178.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %load_binary.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %load_binary.i.i, align 4
  %call9.i.i = call i32 %87(ptr noundef %bprm) #13
  call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #13
  %88 = ptrtoint ptr %module.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %module.i.i, align 4
  call void @module_put(ptr noundef %89) #13
  %90 = ptrtoint ptr %point_of_no_return.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i.i = load i8, ptr %point_of_no_return.i.i, align 4
  %91 = and i8 %bf.load.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool10.not.i.i = icmp eq i8 %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %call9.i.i)
  %cmp11.not.i.i = icmp eq i32 %call9.i.i, -8
  %or.cond.i.i = select i1 %tobool10.not.i.i, i1 %cmp11.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end8.i.i.for.inc.i.i_crit_edge, label %if.end8.i.i.cleanup.sink.split.i.i_crit_edge

if.end8.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

if.end8.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end8.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %retval1.2.i.i = phi i32 [ %retval1.1177.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ -8, %if.end8.i.i.for.inc.i.i_crit_edge ]
  %92 = ptrtoint ptr %fmt.0178.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %fmt.0.i.i = load ptr, ptr %fmt.0178.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %fmt.0.i.i, @formats
  br i1 %cmp5.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %retry.preheader.i.i.for.end.i.i_crit_edge
  %retval1.1.lcssa.i.i = phi i32 [ -2, %retry.preheader.i.i.for.end.i.i_crit_edge ], [ %retval1.2.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @binfmt_lock) #13
  %93 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %buf.i.i.i, align 4
  %.off.i.i = add i8 %94, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i.i)
  %switch.i.i = icmp ult i8 %.off.i.i, 2
  %95 = add i8 %94, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %95)
  %96 = icmp ult i8 %95, 95
  %or.cond167.i.i = or i1 %switch.i.i, %96
  br i1 %or.cond167.i.i, label %land.lhs.true39.i.i, label %for.end.i.i.if.end112.i.i_crit_edge

for.end.i.i.if.end112.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112.i.i

land.lhs.true39.i.i:                              ; preds = %for.end.i.i
  %97 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx41.i.i, align 1
  %.off160.i.i = add i8 %98, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off160.i.i)
  %switch161.i.i = icmp ult i8 %.off160.i.i, 2
  %99 = add i8 %98, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %99)
  %100 = icmp ult i8 %99, 95
  %or.cond169.i.i = or i1 %switch161.i.i, %100
  br i1 %or.cond169.i.i, label %land.lhs.true63.i.i, label %land.lhs.true39.i.i.if.end112.i.i_crit_edge

land.lhs.true39.i.i.if.end112.i.i_crit_edge:      ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112.i.i

land.lhs.true63.i.i:                              ; preds = %land.lhs.true39.i.i
  %101 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx65.i.i, align 2
  %.off162.i.i = add i8 %102, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off162.i.i)
  %switch163.i.i = icmp ult i8 %.off162.i.i, 2
  %103 = add i8 %102, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %103)
  %104 = icmp ult i8 %103, 95
  %or.cond171.i.i = or i1 %switch163.i.i, %104
  br i1 %or.cond171.i.i, label %land.lhs.true87.i.i, label %land.lhs.true63.i.i.if.end112.i.i_crit_edge

land.lhs.true63.i.i.if.end112.i.i_crit_edge:      ; preds = %land.lhs.true63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112.i.i

land.lhs.true87.i.i:                              ; preds = %land.lhs.true63.i.i
  %105 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx89.i.i, align 1
  %.off164.i.i = add i8 %106, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off164.i.i)
  %switch165.i.i = icmp ult i8 %.off164.i.i, 2
  %107 = add i8 %106, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %107)
  %108 = icmp ult i8 %107, 95
  %or.cond173.i.i = or i1 %switch165.i.i, %108
  br i1 %or.cond173.i.i, label %land.lhs.true87.i.i.search_binary_handler.exit.i_crit_edge, label %land.lhs.true87.i.i.if.end112.i.i_crit_edge

land.lhs.true87.i.i.if.end112.i.i_crit_edge:      ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end112.i.i

land.lhs.true87.i.i.search_binary_handler.exit.i_crit_edge: ; preds = %land.lhs.true87.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %search_binary_handler.exit.i

if.end112.i.i:                                    ; preds = %land.lhs.true87.i.i.if.end112.i.i_crit_edge, %land.lhs.true63.i.i.if.end112.i.i_crit_edge, %land.lhs.true39.i.i.if.end112.i.i_crit_edge, %for.end.i.i.if.end112.i.i_crit_edge
  %109 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx65.i.i, align 2
  %conv115.i.i = zext i16 %110 to i32
  %call116.i.i = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.31, i32 noundef %conv115.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i.i)
  %cmp117.i.i = icmp slt i32 %call116.i.i, 0
  br i1 %cmp117.i.i, label %if.end112.i.i.search_binary_handler.exit.i_crit_edge, label %retry.1.i.i

if.end112.i.i.search_binary_handler.exit.i_crit_edge: ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %search_binary_handler.exit.i

retry.1.i.i:                                      ; preds = %if.end112.i.i
  call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #13
  %fmt.0175.1.i.i = load ptr, ptr @formats, align 4
  %cmp5.not176.1.i.i = icmp eq ptr %fmt.0175.1.i.i, @formats
  br i1 %cmp5.not176.1.i.i, label %retry.1.i.i.cleanup.sink.split.i.i_crit_edge, label %retry.1.i.i.for.body.1.i.i_crit_edge

retry.1.i.i.for.body.1.i.i_crit_edge:             ; preds = %retry.1.i.i
  br label %for.body.1.i.i

retry.1.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %retry.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

for.body.1.i.i:                                   ; preds = %for.inc.1.i.i.for.body.1.i.i_crit_edge, %retry.1.i.i.for.body.1.i.i_crit_edge
  %fmt.0178.1.i.i = phi ptr [ %fmt.0.1.i.i, %for.inc.1.i.i.for.body.1.i.i_crit_edge ], [ %fmt.0175.1.i.i, %retry.1.i.i.for.body.1.i.i_crit_edge ]
  %retval1.1177.1.i.i = phi i32 [ %retval1.2.1.i.i, %for.inc.1.i.i.for.body.1.i.i_crit_edge ], [ %retval1.1.lcssa.i.i, %retry.1.i.i.for.body.1.i.i_crit_edge ]
  %module.1.i.i = getelementptr inbounds %struct.linux_binfmt, ptr %fmt.0178.1.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %module.1.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %module.1.i.i, align 4
  %call6.1.i.i = call zeroext i1 @try_module_get(ptr noundef %112) #13
  br i1 %call6.1.i.i, label %if.end8.1.i.i, label %for.body.1.i.i.for.inc.1.i.i_crit_edge

for.body.1.i.i.for.inc.1.i.i_crit_edge:           ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

if.end8.1.i.i:                                    ; preds = %for.body.1.i.i
  call void @_raw_read_unlock(ptr noundef nonnull @binfmt_lock) #13
  %load_binary.1.i.i = getelementptr inbounds %struct.linux_binfmt, ptr %fmt.0178.1.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %load_binary.1.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %load_binary.1.i.i, align 4
  %call9.1.i.i = call i32 %114(ptr noundef %bprm) #13
  call void @_raw_read_lock(ptr noundef nonnull @binfmt_lock) #13
  %115 = ptrtoint ptr %module.1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %module.1.i.i, align 4
  call void @module_put(ptr noundef %116) #13
  %117 = ptrtoint ptr %point_of_no_return.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.1.i.i = load i8, ptr %point_of_no_return.i.i, align 4
  %118 = and i8 %bf.load.1.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool10.not.1.i.i = icmp eq i8 %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %call9.1.i.i)
  %cmp11.not.1.i.i = icmp eq i32 %call9.1.i.i, -8
  %or.cond.1.i.i = select i1 %tobool10.not.1.i.i, i1 %cmp11.not.1.i.i, i1 false
  br i1 %or.cond.1.i.i, label %if.end8.1.i.i.for.inc.1.i.i_crit_edge, label %if.end8.1.i.i.cleanup.sink.split.i.i_crit_edge

if.end8.1.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.end8.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

if.end8.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %if.end8.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end8.1.i.i.for.inc.1.i.i_crit_edge, %for.body.1.i.i.for.inc.1.i.i_crit_edge
  %retval1.2.1.i.i = phi i32 [ %retval1.1177.1.i.i, %for.body.1.i.i.for.inc.1.i.i_crit_edge ], [ -8, %if.end8.1.i.i.for.inc.1.i.i_crit_edge ]
  %119 = ptrtoint ptr %fmt.0178.1.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %fmt.0.1.i.i = load ptr, ptr %fmt.0178.1.i.i, align 4
  %cmp5.not.1.i.i = icmp eq ptr %fmt.0.1.i.i, @formats
  br i1 %cmp5.not.1.i.i, label %for.inc.1.i.i.cleanup.sink.split.i.i_crit_edge, label %for.inc.1.i.i.for.body.1.i.i_crit_edge

for.inc.1.i.i.for.body.1.i.i_crit_edge:           ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.1.i.i

for.inc.1.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %for.inc.1.i.i.cleanup.sink.split.i.i_crit_edge, %if.end8.1.i.i.cleanup.sink.split.i.i_crit_edge, %retry.1.i.i.cleanup.sink.split.i.i_crit_edge, %if.end8.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ %retval1.1.lcssa.i.i, %retry.1.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call9.1.i.i, %if.end8.1.i.i.cleanup.sink.split.i.i_crit_edge ], [ %retval1.2.1.i.i, %for.inc.1.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call9.i.i, %if.end8.i.i.cleanup.sink.split.i.i_crit_edge ]
  call void @_raw_read_unlock(ptr noundef nonnull @binfmt_lock) #13
  br label %search_binary_handler.exit.i

search_binary_handler.exit.i:                     ; preds = %cleanup.sink.split.i.i, %if.end112.i.i.search_binary_handler.exit.i_crit_edge, %land.lhs.true87.i.i.search_binary_handler.exit.i_crit_edge, %if.end.i.i.search_binary_handler.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i.search_binary_handler.exit.i_crit_edge ], [ %retval1.1.lcssa.i.i, %if.end112.i.i.search_binary_handler.exit.i_crit_edge ], [ %retval1.1.lcssa.i.i, %land.lhs.true87.i.i.search_binary_handler.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp8.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp8.i, label %search_binary_handler.exit.i.out_crit_edge, label %if.end10.i

search_binary_handler.exit.i.out_crit_edge:       ; preds = %search_binary_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10.i:                                       ; preds = %search_binary_handler.exit.i
  %120 = ptrtoint ptr %interpreter.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %interpreter.i, align 4
  %tobool.not.i89 = icmp eq ptr %121, null
  br i1 %tobool.not.i89, label %for.end.i, label %if.end12.i

if.end12.i:                                       ; preds = %if.end10.i
  %122 = ptrtoint ptr %file8 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %file8, align 4
  store ptr %121, ptr %file8, align 4
  %124 = ptrtoint ptr %interpreter.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %interpreter.i, align 4
  %tobool.not.i59.i = icmp eq ptr %123, null
  br i1 %tobool.not.i59.i, label %if.end12.i.allow_write_access.exit.i_crit_edge, label %if.then.i60.i

if.end12.i.allow_write_access.exit.i_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %allow_write_access.exit.i

if.then.i60.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #15
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %123, i32 0, i32 2
  %125 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_writecount.i.i = getelementptr inbounds %struct.inode, ptr %126, i32 0, i32 42
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %i_writecount.i.i, i32 1, i32 3, i32 1) #13
  %127 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i.i, ptr %i_writecount.i.i, i32 1, ptr elementtype(i32) %i_writecount.i.i) #13, !srcloc !212
  br label %allow_write_access.exit.i

allow_write_access.exit.i:                        ; preds = %if.then.i60.i, %if.end12.i.allow_write_access.exit.i_crit_edge
  %128 = ptrtoint ptr %point_of_no_return.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i = load i8, ptr %point_of_no_return.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool16.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool16.not.i, label %if.else.i90, label %if.then19.i, !prof !168

if.then19.i:                                      ; preds = %allow_write_access.exit.i
  %129 = ptrtoint ptr %executable.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %executable.i, align 4
  %tobool20.not.i = icmp eq ptr %130, null
  br i1 %tobool20.not.i, label %if.end22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef %123) #13
  br label %out

if.end22.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %executable.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %123, ptr %executable.i, align 4
  br label %for.inc.i

if.else.i90:                                      ; preds = %allow_write_access.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef %123) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i90, %if.end22.i
  %inc.i91 = add nuw nsw i32 %depth.074.i, 1
  %exitcond.i = icmp eq i32 %inc.i91, 6
  br i1 %exitcond.i, label %for.inc.i.out_crit_edge, label %for.inc.i.if.end.i88_crit_edge

for.inc.i.if.end.i88_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i88

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.end.i:                                        ; preds = %if.end10.i
  %132 = ptrtoint ptr %task.i75 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task.i75, align 8
  call fastcc void @trace_sched_process_exec(ptr noundef %133, i32 noundef %69, ptr noundef %bprm) #13
  %134 = call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %task.i.i, align 8
  %ptrace.i.i.i = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %ptrace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ptrace.i.i.i, align 16
  %and.i1.i.i = and i32 %139, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i1.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then5.i.i, label %if.then.i62.i, !prof !168

if.then.i62.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %ptrace_message.i.i = getelementptr inbounds %struct.task_struct, ptr %137, i32 0, i32 153
  %140 = ptrtoint ptr %ptrace_message.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call.i48.i, ptr %ptrace_message.i.i, align 32
  call void @ptrace_notify(i32 noundef 1029) #13
  br label %if.end19

if.then5.i.i:                                     ; preds = %for.end.i
  %and.i63.i = and i32 %139, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i63.i)
  %cmp8.i.i = icmp eq i32 %and.i63.i, 1
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.then5.i.i.if.end19_crit_edge

if.then5.i.i.if.end19_crit_edge:                  ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then9.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i.i = call i32 @send_sig(i32 noundef 5, ptr noundef %137, i32 noundef 0) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then9.i.i, %if.then5.i.i.if.end19_crit_edge, %if.then.i62.i
  %141 = ptrtoint ptr %task.i75 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %task.i75, align 8
  call void @proc_exec_connector(ptr noundef %142) #13
  %143 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %task, align 8
  %fs = getelementptr inbounds %struct.task_struct, ptr %144, i32 0, i32 107
  %145 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fs, align 128
  %in_exec = getelementptr inbounds %struct.fs_struct, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %in_exec to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %in_exec, align 4
  %148 = load ptr, ptr %task, align 8
  %in_execve24 = getelementptr inbounds %struct.task_struct, ptr %148, i32 0, i32 65
  %149 = ptrtoint ptr %in_execve24 to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load25 = load i16, ptr %in_execve24, align 8
  %bf.clear26 = and i16 %bf.load25, -16385
  store i16 %bf.clear26, ptr %in_execve24, align 8
  %150 = load ptr, ptr %task, align 8
  %rseq.i = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 174
  %151 = ptrtoint ptr %rseq.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %rseq.i, align 8
  %rseq_sig.i = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 175
  %152 = ptrtoint ptr %rseq_sig.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %rseq_sig.i, align 4
  %rseq_event_mask.i = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 176
  %153 = ptrtoint ptr %rseq_event_mask.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %rseq_event_mask.i, align 32
  %154 = load ptr, ptr %task, align 8
  call void @acct_update_integrals(ptr noundef %154) #13
  br label %cleanup

out:                                              ; preds = %for.inc.i.out_crit_edge, %if.then21.i, %search_binary_handler.exit.i.out_crit_edge, %if.end.i88.out_crit_edge, %if.end12.out_crit_edge
  %retval1.0 = phi i32 [ %call13, %if.end12.out_crit_edge ], [ -8, %if.then21.i ], [ %call.i.i.i, %if.end.i88.out_crit_edge ], [ -40, %for.inc.i.out_crit_edge ], [ %retval.0.i.i, %search_binary_handler.exit.i.out_crit_edge ]
  %point_of_no_return = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 5
  %155 = ptrtoint ptr %point_of_no_return to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load34 = load i8, ptr %point_of_no_return, align 4
  %156 = and i8 %bf.load34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool36.not = icmp eq i8 %156, 0
  br i1 %tobool36.not, label %out.out_unmark_crit_edge, label %land.lhs.true37

out.out_unmark_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unmark

land.lhs.true37:                                  ; preds = %out
  %157 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %stack.i.i.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %160, align 4
  %and1.i.i.i.i.i = and i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i92 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i92, label %land.lhs.true37.if.then42_crit_edge, label %fatal_signal_pending.exit

land.lhs.true37.if.then42_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

fatal_signal_pending.exit:                        ; preds = %land.lhs.true37
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 116, i32 1
  %163 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %signal.i.i, align 4
  %165 = and i32 %164, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool41.not = icmp eq i32 %165, 0
  br i1 %tobool41.not, label %fatal_signal_pending.exit.if.then42_crit_edge, label %fatal_signal_pending.exit.out_unmark_crit_edge

fatal_signal_pending.exit.out_unmark_crit_edge:   ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_unmark

fatal_signal_pending.exit.if.then42_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then42

if.then42:                                        ; preds = %fatal_signal_pending.exit.if.then42_crit_edge, %land.lhs.true37.if.then42_crit_edge
  call void @force_fatal_sig(i32 noundef 11) #13
  br label %out_unmark

out_unmark:                                       ; preds = %if.then42, %fatal_signal_pending.exit.out_unmark_crit_edge, %out.out_unmark_crit_edge, %check_unsafe_exec.exit.out_unmark_crit_edge
  %retval1.1 = phi i32 [ %58, %check_unsafe_exec.exit.out_unmark_crit_edge ], [ %retval1.0, %fatal_signal_pending.exit.out_unmark_crit_edge ], [ %retval1.0, %if.then42 ], [ %retval1.0, %out.out_unmark_crit_edge ]
  %166 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %task, align 8
  %fs46 = getelementptr inbounds %struct.task_struct, ptr %167, i32 0, i32 107
  %168 = ptrtoint ptr %fs46 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fs46, align 128
  %in_exec47 = getelementptr inbounds %struct.fs_struct, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %in_exec47 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %in_exec47, align 4
  %171 = load ptr, ptr %task, align 8
  %in_execve50 = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 65
  %172 = ptrtoint ptr %in_execve50 to i32
  call void @__asan_load2_noabort(i32 %172)
  %bf.load51 = load i16, ptr %in_execve50, align 8
  %bf.clear52 = and i16 %bf.load51, -16385
  store i16 %bf.clear52, ptr %in_execve50, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_unmark, %if.end19, %if.end8.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %out_unmark ], [ 0, %if.end19 ], [ -513, %entry.cleanup_crit_edge ], [ -12, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_bprm(ptr noundef %bprm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 2
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %mm1.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm1.i, align 8
  %vma_pages.i = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 1
  %8 = ptrtoint ptr %vma_pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma_pages.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.then.acct_arg_size.exit_crit_edge, label %if.end.i

if.then.acct_arg_size.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %acct_arg_size.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = sub i32 0, %9
  %10 = ptrtoint ptr %vma_pages.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %vma_pages.i, align 4
  %arrayidx.i.i = getelementptr %struct.anon.10, ptr %7, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i.i, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i, ptr %arrayidx.i.i, i32 %sub.i, ptr elementtype(i32) %arrayidx.i.i) #13, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !177
  tail call void @mm_trace_rss_stat(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i) #13
  br label %acct_arg_size.exit

acct_arg_size.exit:                               ; preds = %if.end.i, %if.then.acct_arg_size.exit_crit_edge
  %12 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm, align 4
  tail call void @mmput(ptr noundef %13) #13
  br label %if.end

if.end:                                           ; preds = %acct_arg_size.exit, %entry.if.end_crit_edge
  %cred = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 9
  %14 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cred, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 111
  %20 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal, align 16
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 60
  tail call void @mutex_unlock(ptr noundef %cred_guard_mutex) #13
  %22 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred, align 4
  tail call void @abort_creds(ptr noundef %23) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %24 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %allow_write_access.exit

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

allow_write_access.exit:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_inode.i.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 1, ptr elementtype(i32) %i_writecount.i) #13, !srcloc !212
  %29 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %30) #13
  br label %if.end10

if.end10:                                         ; preds = %allow_write_access.exit, %if.end5.if.end10_crit_edge
  %executable = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 6
  %31 = ptrtoint ptr %executable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %executable, align 4
  %tobool11.not = icmp eq ptr %32, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fput(ptr noundef nonnull %32) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %interp = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 15
  %33 = ptrtoint ptr %interp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %interp, align 4
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %35 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %filename, align 4
  %cmp.not = icmp eq ptr %34, %36
  br i1 %cmp.not, label %if.end14.if.end17_crit_edge, label %if.then15

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %34) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end14.if.end17_crit_edge
  %fdpath = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 16
  %37 = ptrtoint ptr %fdpath to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fdpath, align 4
  tail call void @kfree(ptr noundef %38) #13
  tail call void @kfree(ptr noundef %bprm) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_binfmt(ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  %binfmt = getelementptr inbounds %struct.anon.10, ptr %5, i32 0, i32 41
  %6 = ptrtoint ptr %binfmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %binfmt, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %module = getelementptr inbounds %struct.linux_binfmt, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %9) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %binfmt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %new, ptr %binfmt, align 8
  %tobool4.not = icmp eq ptr %new, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %module6 = getelementptr inbounds %struct.linux_binfmt, ptr %new, i32 0, i32 1
  %11 = ptrtoint ptr %module6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %module6, align 4
  tail call void @__module_get(ptr noundef %12) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_execve(i32 noundef %filename, i32 noundef %argv, i32 noundef %envp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call ptr @getname(ptr noundef %0) #13
  %.fca.0.insert5.i.i = insertvalue [1 x i32] poison, i32 %argv, 0
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %envp, 0
  %call.i.i = tail call fastcc i32 @do_execveat_common(i32 noundef -100, ptr noundef %call.i, [1 x i32] %.fca.0.insert5.i.i, [1 x i32] %.fca.0.insert.i.i, i32 noundef 0) #13
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_execveat(i32 noundef %fd, i32 noundef %filename, i32 noundef %argv, i32 noundef %envp, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %filename to ptr
  %call.i = tail call ptr @getname_uflags(ptr noundef %0, i32 noundef %flags) #13
  %.fca.0.insert5.i.i = insertvalue [1 x i32] poison, i32 %argv, 0
  %.fca.0.insert.i.i = insertvalue [1 x i32] poison, i32 %envp, 0
  %call.i.i = tail call fastcc i32 @do_execveat_common(i32 noundef %fd, ptr noundef %call.i, [1 x i32] %.fca.0.insert5.i.i, [1 x i32] %.fca.0.insert.i.i, i32 noundef %flags) #13
  ret i32 %call.i.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fs_exec_sysctls() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.44, ptr noundef nonnull @fs_exec_sysctls, ptr noundef nonnull @.str.45) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_filp_open(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsnotify_open(ptr noundef %file) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 32, i32 4128
  %f_mode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %2 = ptrtoint ptr %f_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_mode.i, align 8
  %and.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsnotify_file.exit_crit_edge

entry.fsnotify_file.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fsnotify_file.exit

if.end.i:                                         ; preds = %entry
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_fsnotify_connectors.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 48
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_fsnotify_connectors.i.i, i32 noundef 4) #13
  %10 = ptrtoint ptr %s_fsnotify_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %s_fsnotify_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i, label %if.end.i.fsnotify_file.exit_crit_edge, label %if.end.i.i

if.end.i.fsnotify_file.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fsnotify_file.exit

if.end.i.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %7, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp2.i.i = icmp eq i16 %14, 16384
  br i1 %cmp2.i.i, label %if.then4.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  %or.i.i = or i32 %spec.select, 1073741824
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 8
  %and5.i.i = and i32 %16, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i.notify_child.i.i_crit_edge, label %if.then4.i.i.if.end8.i.i_crit_edge

if.then4.i.i.if.end8.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then4.i.i.notify_child.i.i_crit_edge:          ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i

if.end8.i.i:                                      ; preds = %if.then4.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %mask.addr.0.i.i = phi i32 [ %or.i.i, %if.then4.i.i.if.end8.i.i_crit_edge ], [ %spec.select, %if.end.i.i.if.end8.i.i_crit_edge ]
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d_parent.i.i, align 8
  %cmp9.i.i = icmp eq ptr %18, %5
  br i1 %cmp9.i.i, label %if.end8.i.i.notify_child.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.notify_child.i.i_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %notify_child.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i.i = tail call i32 @__fsnotify_parent(ptr noundef %5, i32 noundef %mask.addr.0.i.i, ptr noundef %f_path.i, i32 noundef 1) #13
  br label %fsnotify_file.exit

notify_child.i.i:                                 ; preds = %if.end8.i.i.notify_child.i.i_crit_edge, %if.then4.i.i.notify_child.i.i_crit_edge
  %mask.addr.1.i.i = phi i32 [ %mask.addr.0.i.i, %if.end8.i.i.notify_child.i.i_crit_edge ], [ %or.i.i, %if.then4.i.i.notify_child.i.i_crit_edge ]
  %call14.i.i = tail call i32 @fsnotify(i32 noundef %mask.addr.1.i.i, ptr noundef %f_path.i, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef %7, i32 noundef 0) #13
  br label %fsnotify_file.exit

fsnotify_file.exit:                               ; preds = %notify_child.i.i, %if.end12.i.i, %if.end.i.fsnotify_file.exit_crit_edge, %entry.fsnotify_file.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @move_page_tables(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pgd_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vma_adjust(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_task_rename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zap_other_threads(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_threadgroup_change_begin() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.23, i32 noundef 49) #13
  %0 = tail call ptr @llvm.returnaddress(i32 0) #13
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 5), i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !213
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 35, ptr noundef nonnull @.str.25) #13
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cgroup_threadgroup_rwsem to i32))
  %6 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body7.i, label %if.else.i, !prof !168

do.body7.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add21.i = add i32 %18, 1
  store i32 %add21.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !200
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then41.i, label %do.body7.i.do.end43.i_crit_edge, !prof !178

do.body7.i.do.end43.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43.i

if.then41.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then41.i, %do.body7.i.do.end43.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #13, !srcloc !215
  br label %percpu_down_read.exit

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call50.i = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cgroup_threadgroup_rwsem, i1 noundef zeroext false) #13
  br label %percpu_down_read.exit

percpu_down_read.exit:                            ; preds = %if.else.i, %do.end43.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !216
  %20 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i1.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgroup_threadgroup_change_end() unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call ptr @llvm.returnaddress(i32 0) #13
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 5), i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !217
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 35, ptr noundef nonnull @.str.25) #13
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cgroup_threadgroup_rwsem to i32))
  %6 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %do.end49.i, !prof !168

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add17.i = add i32 %18, -1
  store i32 %add17.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !200
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool28.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool28.not.i, label %if.then37.i, label %do.body3.i.do.end39.i_crit_edge, !prof !178

do.body3.i.do.end39.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39.i

if.then37.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then37.i, %do.body3.i.do.end39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #13, !srcloc !215
  br label %percpu_up_read.exit

do.end49.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !218
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !214
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i3.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i3.i to ptr
  %cpu78.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu78.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %28, %22
  %29 = inttoptr i32 %add80.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add81.i = add i32 %31, -1
  store i32 %add81.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !200
  %and.i.i4.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool92.not.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool92.not.i, label %if.then101.i, label %do.end49.i.do.end104.i_crit_edge, !prof !178

do.end49.i.do.end104.i_crit_edge:                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end104.i

if.then101.i:                                     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end104.i

do.end104.i:                                      ; preds = %if.then101.i, %do.end49.i.do.end104.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #13, !srcloc !215
  %call111.i = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 2)) #13
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %do.end104.i, %do.end39.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !219
  %33 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exchange_tids(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @transfer_pid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_task(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_cancel(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exec_mm_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_exec_mmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_update_next_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cleanup_sighand(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_bprm_creds_from_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mnt_may_suid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_alloc() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bprm_mm_init(ptr nocapture noundef %bprm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 2
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  %call = tail call ptr @vm_area_alloc(ptr noundef %1) #13
  %2 = ptrtoint ptr %bprm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %bprm, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %vm_ops.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__bprm_mm_init, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !174

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext true) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %1, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__bprm_mm_init, %if.then.i4.i)) #13
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !174

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #13
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %do.end, label %mmap_write_lock_killable.exit.err_free_crit_edge

mmap_write_lock_killable.exit.err_free_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

do.end:                                           ; preds = %mmap_write_lock_killable.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1226833920, ptr %vm_end, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1226838016, ptr %call, align 4
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %personality21 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 62
  %10 = ptrtoint ptr %personality21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %personality21, align 32
  %and22 = lshr i32 %11, 20
  %12 = and i32 %and22, 4
  %or32 = or i32 %12, 1147251
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or32, ptr %vm_flags, align 4
  %call34 = tail call i32 @vm_get_page_prot(i32 noundef %or32) #13
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 7
  %14 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call34, ptr %vm_page_prot, align 4
  %call35 = tail call i32 @insert_vm_struct(ptr noundef %1, ptr noundef nonnull %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %err41

if.end38:                                         ; preds = %do.end
  %total_vm = getelementptr inbounds %struct.anon.10, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %total_vm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %total_vm, align 8
  %stack_vm = getelementptr inbounds %struct.anon.10, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %stack_vm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %stack_vm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__bprm_mm_init, %if.then.i.i65)) #13
          to label %mmap_write_unlock.exit [label %if.then.i.i65], !srcloc !174

if.then.i.i65:                                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext true) #13
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i65, %if.end38
  tail call void @up_write(ptr noundef %mmap_lock.i) #13
  %17 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_end, align 4
  %sub40 = add i32 %18, -4
  %p = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %19 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub40, ptr %p, align 4
  br label %cleanup

err41:                                            ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__bprm_mm_init, %if.then.i.i67)) #13
          to label %mmap_write_unlock.exit69 [label %if.then.i.i67], !srcloc !174

if.then.i.i67:                                    ; preds = %err41
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext true) #13
  br label %mmap_write_unlock.exit69

mmap_write_unlock.exit69:                         ; preds = %if.then.i.i67, %err41
  tail call void @up_write(ptr noundef %mmap_lock.i) #13
  br label %err_free

err_free:                                         ; preds = %mmap_write_unlock.exit69, %mmap_write_lock_killable.exit.err_free_crit_edge
  %err.0 = phi i32 [ %call35, %mmap_write_unlock.exit69 ], [ -4, %mmap_write_lock_killable.exit.err_free_crit_edge ]
  %20 = ptrtoint ptr %bprm to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bprm, align 4
  tail call void @vm_area_free(ptr noundef nonnull %call) #13
  br label %cleanup

cleanup:                                          ; preds = %err_free, %mmap_write_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_free ], [ 0, %mmap_write_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_area_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_vm_struct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_area_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_exec() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @get_close_on_exec(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_bprm_creds_for_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_update_integrals(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_fatal_sig(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_exec_creds() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_process_exec(ptr noundef %p, i32 noundef %old_pid, ptr noundef %bprm) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exec, i32 0, i32 1), ptr blockaddress(@trace_sched_process_exec, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !174

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !168

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !220
  %call42 = tail call i32 @__traceiter_sched_process_exec(ptr noundef null, ptr noundef %p, i32 noundef %old_pid, ptr noundef %bprm) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !221
  %13 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !168

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exec, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exec, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_process_exec.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_sched_process_exec.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 418, ptr noundef nonnull @.str.20) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !191
  %31 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_exec_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_bprm_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_execveat_common(i32 noundef %fd, ptr noundef %filename, [1 x i32] %argv.coerce, [1 x i32] %envp.coerce, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %filename, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %filename to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %flags7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags7, align 4
  %and = and i32 %6, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %do.end

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end:                                           ; preds = %if.end
  %cred = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 16
  %ucounts = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ucounts, align 4
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 111
  %11 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 51, i32 6
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 8
  %call12 = tail call zeroext i1 @is_ucounts_overlimit(ptr noundef %10, i32 noundef 12, i32 noundef %14) #13
  br i1 %call12, label %do.end.out_ret_crit_edge, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.end.out_ret_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_ret

if.end14:                                         ; preds = %do.end.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %flags17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags17, align 4
  %and18 = and i32 %18, -4097
  store i32 %and18, ptr %flags17, align 4
  %call19 = tail call fastcc ptr @alloc_bprm(i32 noundef %fd, ptr noundef %filename)
  %cmp.i96 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %call19 to i32
  br label %out_ret

if.end23:                                         ; preds = %if.end14
  %call26 = tail call fastcc i32 @count([1 x i32] %argv.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end23.out_free_crit_edge, label %if.end28

if.end23.out_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end28:                                         ; preds = %if.end23
  %argc = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 12
  %20 = ptrtoint ptr %argc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call26, ptr %argc, align 4
  %call31 = tail call fastcc i32 @count([1 x i32] %envp.coerce)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.out_free_crit_edge, label %if.end34

if.end28.out_free_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end34:                                         ; preds = %if.end28
  %envc = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 13
  %21 = ptrtoint ptr %envc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call31, ptr %envc, align 4
  %rlim_stack.i = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 21
  %22 = ptrtoint ptr %rlim_stack.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rlim_stack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165827, i32 %23)
  %cmp.i97 = icmp ugt i32 %23, 25165827
  %div23.i = lshr i32 %23, 2
  %24 = tail call i32 @llvm.umax.i32(i32 %div23.i, i32 131072) #13
  %25 = select i1 %cmp.i97, i32 6291456, i32 %24
  %26 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %argc, align 4
  %add.i = add i32 %27, %call31
  %mul.i = shl i32 %add.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %25)
  %cmp7.not.i = icmp ult i32 %mul.i, %25
  br i1 %cmp7.not.i, label %if.end38, label %if.end34.out_free_crit_edge

if.end34.out_free_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end38:                                         ; preds = %if.end34
  %sub.neg.i = sub i32 %mul.i, %25
  %p.i = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 3
  %28 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %p.i, align 4
  %sub8.i = add i32 %sub.neg.i, %29
  %argmin.i = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 4
  %30 = ptrtoint ptr %argmin.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub8.i, ptr %argmin.i, align 4
  %filename39 = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 14
  %31 = ptrtoint ptr %filename39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %filename39, align 4
  %call40 = tail call i32 @copy_string_kernel(ptr noundef %32, ptr noundef %call19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end38.out_free_crit_edge, label %if.end43

if.end38.out_free_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end43:                                         ; preds = %if.end38
  %33 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p.i, align 4
  %exec = getelementptr inbounds %struct.linux_binprm, ptr %call19, i32 0, i32 20
  %35 = ptrtoint ptr %exec to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %exec, align 4
  %36 = ptrtoint ptr %envc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %envc, align 4
  %call47 = tail call fastcc i32 @copy_strings(i32 noundef %37, [1 x i32] %envp.coerce, ptr noundef %call19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end43.out_free_crit_edge, label %if.end50

if.end43.out_free_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end50:                                         ; preds = %if.end43
  %38 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %argc, align 4
  %call54 = tail call fastcc i32 @copy_strings(i32 noundef %39, [1 x i32] %argv.coerce, ptr noundef %call19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.end50.out_free_crit_edge, label %if.end57

if.end50.out_free_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end57:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = tail call fastcc i32 @bprm_execve(ptr noundef %call19, i32 noundef %fd, ptr noundef %filename, i32 noundef %flags)
  br label %out_free

out_free:                                         ; preds = %if.end57, %if.end50.out_free_crit_edge, %if.end43.out_free_crit_edge, %if.end38.out_free_crit_edge, %if.end34.out_free_crit_edge, %if.end28.out_free_crit_edge, %if.end23.out_free_crit_edge
  %retval4.0 = phi i32 [ %call26, %if.end23.out_free_crit_edge ], [ %call31, %if.end28.out_free_crit_edge ], [ %call40, %if.end38.out_free_crit_edge ], [ %call47, %if.end43.out_free_crit_edge ], [ %call54, %if.end50.out_free_crit_edge ], [ %call58, %if.end57 ], [ -7, %if.end34.out_free_crit_edge ]
  tail call fastcc void @free_bprm(ptr noundef %call19)
  br label %out_ret

out_ret:                                          ; preds = %out_free, %if.then21, %do.end.out_ret_crit_edge
  %retval4.1 = phi i32 [ %19, %if.then21 ], [ %retval4.0, %out_free ], [ -11, %do.end.out_ret_crit_edge ]
  tail call void @putname(ptr noundef %filename) #13
  br label %cleanup

cleanup:                                          ; preds = %out_ret, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval4.1, %out_ret ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @count([1 x i32] %argv.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %argv.coerce.fca.0.extract = extractvalue [1 x i32] %argv.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argv.coerce.fca.0.extract)
  %cmp.not = icmp eq i32 %argv.coerce.fca.0.extract, 0
  br i1 %cmp.not, label %entry.cleanup18_crit_edge, label %for.cond.preheader

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

for.cond.preheader:                               ; preds = %entry
  %0 = inttoptr i32 %argv.coerce.fca.0.extract to ptr
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %for.cond.preheader
  %i.0 = phi i32 [ %inc, %cleanup ], [ 0, %for.cond.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 421) #13
  %add.ptr.i = getelementptr ptr, ptr %0, i32 %i.0
  %1 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #9, !srcloc !222
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i, i32 -1226833921) #13, !srcloc !225
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  %asmresult2.i = extractvalue { i32, i32 } %4, 1
  %5 = inttoptr i32 %asmresult2.i to ptr
  %retval.0.i = select i1 %tobool.not.i, ptr %5, ptr inttoptr (i32 -14 to ptr)
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %for.cond.cleanup18_crit_edge, label %if.end

for.cond.cleanup18_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end:                                           ; preds = %for.cond
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup18_crit_edge, label %if.end7

if.end.cleanup18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %i.0)
  %cmp8 = icmp eq i32 %i.0, 2147483647
  br i1 %cmp8, label %if.end7.cleanup18_crit_edge, label %if.end10

if.end7.cleanup18_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

if.end10:                                         ; preds = %if.end7
  %inc = add nuw nsw i32 %i.0, 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and1.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i1 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i1, label %if.end10.cleanup_crit_edge, label %fatal_signal_pending.exit

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fatal_signal_pending.exit:                        ; preds = %if.end10
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 116, i32 1
  %14 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal.i.i, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %fatal_signal_pending.exit.cleanup_crit_edge, label %fatal_signal_pending.exit.cleanup18_crit_edge

fatal_signal_pending.exit.cleanup18_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup18

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %fatal_signal_pending.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 450, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  br label %for.cond

cleanup18:                                        ; preds = %fatal_signal_pending.exit.cleanup18_crit_edge, %if.end7.cleanup18_crit_edge, %if.end.cleanup18_crit_edge, %for.cond.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup18_crit_edge ], [ -14, %if.end.cleanup18_crit_edge ], [ -7, %if.end7.cleanup18_crit_edge ], [ -514, %fatal_signal_pending.exit.cleanup18_crit_edge ], [ %i.0, %for.cond.cleanup18_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_strings(i32 noundef %argc, [1 x i32] %argv.coerce, ptr nocapture noundef %bprm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp178 = icmp sgt i32 %argc, 0
  br i1 %cmp178, label %while.body.lr.ph, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup66

while.body.lr.ph:                                 ; preds = %entry
  %argv.coerce.fca.0.extract.i = extractvalue [1 x i32] %argv.coerce, 0
  %0 = inttoptr i32 %argv.coerce.fca.0.extract.i to ptr
  %p = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 3
  %argmin = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 4
  br label %while.body

while.cond.loopexit:                              ; preds = %while.cond16
  %cmp = icmp sgt i32 %dec182.in, 1
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.out_crit_edge

while.cond.loopexit.out_crit_edge:                ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %dec182.in = phi i32 [ %argc, %while.body.lr.ph ], [ %dec182, %while.cond.loopexit.while.body_crit_edge ]
  %kpos.0181 = phi i32 [ 0, %while.body.lr.ph ], [ %kpos.1, %while.cond.loopexit.while.body_crit_edge ]
  %kaddr.0180 = phi ptr [ null, %while.body.lr.ph ], [ %kaddr.1, %while.cond.loopexit.while.body_crit_edge ]
  %kmapped_page.0179 = phi ptr [ null, %while.body.lr.ph ], [ %kmapped_page.1, %while.cond.loopexit.while.body_crit_edge ]
  %dec182 = add nsw i32 %dec182.in, -1
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 421) #13
  %add.ptr.i = getelementptr ptr, ptr %0, i32 %dec182
  %1 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i115 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i115 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #9, !srcloc !222
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr.i, i32 -1226833921) #13, !srcloc !225
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  %asmresult2.i = extractvalue { i32, i32 } %4, 1
  %5 = inttoptr i32 %asmresult2.i to ptr
  %retval.0.i = select i1 %tobool.not.i, ptr %5, ptr inttoptr (i32 -14 to ptr)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %while.body.out_crit_edge, label %if.end

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %while.body
  %call5 = tail call i32 @strnlen_user(ptr noundef %retval.0.i, i32 noundef 131072) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %call5)
  %cmp.i116 = icmp ult i32 %call5, 131073
  br i1 %cmp.i116, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end10:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub = sub i32 %7, %call5
  store i32 %sub, ptr %p, align 4
  %8 = ptrtoint ptr %argmin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %argmin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp13 = icmp ult i32 %sub, %9
  br i1 %cmp13, label %if.end10.out_crit_edge, label %while.cond16.preheader

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

while.cond16.preheader:                           ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %call5
  br label %while.cond16

while.cond16:                                     ; preds = %if.end.i.i.while.cond16_crit_edge, %while.cond16.preheader
  %kmapped_page.1 = phi ptr [ %kmapped_page.3, %if.end.i.i.while.cond16_crit_edge ], [ %kmapped_page.0179, %while.cond16.preheader ]
  %kaddr.1 = phi ptr [ %kaddr.3, %if.end.i.i.while.cond16_crit_edge ], [ %kaddr.0180, %while.cond16.preheader ]
  %kpos.1 = phi i32 [ %kpos.3, %if.end.i.i.while.cond16_crit_edge ], [ %kpos.0181, %while.cond16.preheader ]
  %str.0 = phi ptr [ %add.ptr33, %if.end.i.i.while.cond16_crit_edge ], [ %add.ptr, %while.cond16.preheader ]
  %len.0 = phi i32 [ %sub34, %if.end.i.i.while.cond16_crit_edge ], [ %call5, %while.cond16.preheader ]
  %pos.0 = phi i32 [ %sub32, %if.end.i.i.while.cond16_crit_edge ], [ %7, %while.cond16.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp17 = icmp sgt i32 %len.0, 0
  br i1 %cmp17, label %while.body18, label %while.cond.loopexit

while.body18:                                     ; preds = %while.cond16
  %10 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i117 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i117, label %while.body18.if.end23_crit_edge, label %fatal_signal_pending.exit

while.body18.if.end23_crit_edge:                  ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

fatal_signal_pending.exit:                        ; preds = %while.body18
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 116, i32 1
  %18 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %signal.i.i, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %fatal_signal_pending.exit.if.end23_crit_edge, label %fatal_signal_pending.exit.out_crit_edge

fatal_signal_pending.exit.out_crit_edge:          ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

fatal_signal_pending.exit.if.end23_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end23:                                         ; preds = %fatal_signal_pending.exit.if.end23_crit_edge, %while.body18.if.end23_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 555, i32 noundef 0) #13
  %call.i = tail call i32 @__cond_resched() #13
  %rem = and i32 %pos.0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp25 = icmp eq i32 %rem, 0
  %spec.store.select = select i1 %cmp25, i32 4096, i32 %rem
  %21 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 %len.0)
  %sub31 = sub nsw i32 %spec.store.select, %21
  %sub32 = sub i32 %pos.0, %21
  %idx.neg = sub nsw i32 0, %21
  %add.ptr33 = getelementptr i8, ptr %str.0, i32 %idx.neg
  %sub34 = sub nsw i32 %len.0, %21
  %tobool35.not = icmp eq ptr %kmapped_page.1, null
  %tobool35.not.not = xor i1 %tobool35.not, true
  %and = and i32 %sub32, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %kpos.1, i32 %and)
  %cmp36.not = icmp eq i32 %kpos.1, %and
  %or.cond = select i1 %tobool35.not.not, i1 %cmp36.not, i1 false
  br i1 %or.cond, label %if.end23.if.end47_crit_edge, label %if.then37

if.end23.if.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then37:                                        ; preds = %if.end23
  %call38 = tail call fastcc ptr @get_arg_page(ptr noundef %bprm, i32 noundef %sub32, i32 noundef 1)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then37.out_crit_edge, label %if.end41

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end41:                                         ; preds = %if.then37
  br i1 %tobool35.not, label %if.end41.if.end44_crit_edge, label %if.then43

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  tail call void @flush_dcache_page(ptr noundef nonnull %kmapped_page.1) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #13
  %22 = ptrtoint ptr %kmapped_page.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kmapped_page.1, align 4
  %shr.i.i = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %shr.i.i, label %if.then43.kunmap.exit_crit_edge [
    i32 2, label %if.then43.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then43.if.end.i_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then43.kunmap.exit_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.then43.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %kmapped_page.1) #13
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then43.kunmap.exit_crit_edge
  tail call fastcc void @put_arg_page(ptr noundef nonnull %kmapped_page.1)
  br label %if.end44

if.end44:                                         ; preds = %kunmap.exit, %if.end41.if.end44_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #13
  %26 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call38, align 4
  %shr.i.i118 = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %shr.i.i118, label %if.end44.if.then.i121_crit_edge [
    i32 2, label %if.end44.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i120
  ]

if.end44.if.else.i_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.end44.if.then.i121_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i121

is_highmem_idx.exit.i120:                         ; preds = %if.end44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i119 = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i119, label %is_highmem_idx.exit.i120.if.else.i_crit_edge, label %is_highmem_idx.exit.i120.if.then.i121_crit_edge

is_highmem_idx.exit.i120.if.then.i121_crit_edge:  ; preds = %is_highmem_idx.exit.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i121

is_highmem_idx.exit.i120.if.else.i_crit_edge:     ; preds = %is_highmem_idx.exit.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.then.i121:                                     ; preds = %is_highmem_idx.exit.i120.if.then.i121_crit_edge, %if.end44.if.then.i121_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call38) #13
  br label %cleanup

if.else.i:                                        ; preds = %is_highmem_idx.exit.i120.if.else.i_crit_edge, %if.end44.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call38) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i121
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i121 ]
  %30 = ptrtoint ptr %bprm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bprm, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call38 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %33 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %33
  tail call void @flush_cache_page(ptr noundef %31, i32 noundef %and, i32 noundef %add.i) #13
  br label %if.end47

if.end47:                                         ; preds = %cleanup, %if.end23.if.end47_crit_edge
  %kmapped_page.3 = phi ptr [ %call38, %cleanup ], [ %kmapped_page.1, %if.end23.if.end47_crit_edge ]
  %kaddr.3 = phi ptr [ %addr.0.i, %cleanup ], [ %kaddr.1, %if.end23.if.end47_crit_edge ]
  %kpos.3 = phi i32 [ %and, %cleanup ], [ %kpos.1, %if.end23.if.end47_crit_edge ]
  %add.ptr48 = getelementptr i8, ptr %kaddr.3, i32 %sub31
  tail call void @__check_object_size(ptr noundef %add.ptr48, i32 noundef %21, i1 noundef zeroext false) #13
  tail call void @__might_fault(ptr noundef nonnull @.str.40, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end47.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end47.if.end.i.i_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end47
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr33, i32 %21, i32 -1226833920) #19, !srcloc !226
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !168

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr48, i32 noundef %21) #13
  %35 = tail call i32 @llvm.read_register.i32(metadata !158) #13
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !222
  %and.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr48, ptr noundef %add.ptr33, i32 noundef %21) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !224
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end47.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %21, %if.end47.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %21, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.while.cond16_crit_edge, label %copy_from_user.exit.thread152, !prof !168

if.end.i.i.while.cond16_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond16

copy_from_user.exit.thread152:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %21, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr48, i32 %sub.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

out:                                              ; preds = %copy_from_user.exit.thread152, %if.then37.out_crit_edge, %fatal_signal_pending.exit.out_crit_edge, %if.end10.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %while.body.out_crit_edge, %while.cond.loopexit.out_crit_edge
  %kmapped_page.6 = phi ptr [ %kmapped_page.3, %copy_from_user.exit.thread152 ], [ %kmapped_page.1, %fatal_signal_pending.exit.out_crit_edge ], [ %kmapped_page.1, %if.then37.out_crit_edge ], [ %kmapped_page.1, %while.cond.loopexit.out_crit_edge ], [ %kmapped_page.0179, %while.body.out_crit_edge ], [ %kmapped_page.0179, %if.end.out_crit_edge ], [ %kmapped_page.0179, %if.end7.out_crit_edge ], [ %kmapped_page.0179, %if.end10.out_crit_edge ]
  %ret.5 = phi i32 [ -14, %copy_from_user.exit.thread152 ], [ -7, %if.then37.out_crit_edge ], [ -514, %fatal_signal_pending.exit.out_crit_edge ], [ 0, %while.cond.loopexit.out_crit_edge ], [ -14, %while.body.out_crit_edge ], [ -14, %if.end.out_crit_edge ], [ -7, %if.end7.out_crit_edge ], [ -7, %if.end10.out_crit_edge ]
  %tobool63.not = icmp eq ptr %kmapped_page.6, null
  br i1 %tobool63.not, label %out.cleanup66_crit_edge, label %if.then64

out.cleanup66_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup66

if.then64:                                        ; preds = %out
  tail call void @flush_dcache_page(ptr noundef nonnull %kmapped_page.6) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #13
  %39 = ptrtoint ptr %kmapped_page.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %kmapped_page.6, align 4
  %shr.i.i123 = lshr i32 %40, 30
  %41 = zext i32 %shr.i.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i123, label %if.then64.kunmap.exit127_crit_edge [
    i32 2, label %if.then64.if.end.i126_crit_edge
    i32 3, label %is_highmem_idx.exit.i125
  ]

if.then64.if.end.i126_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i126

if.then64.kunmap.exit127_crit_edge:               ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit127

is_highmem_idx.exit.i125:                         ; preds = %if.then64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %42 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp2.i.not.i124 = icmp eq i32 %42, 2
  br i1 %cmp2.i.not.i124, label %is_highmem_idx.exit.i125.if.end.i126_crit_edge, label %is_highmem_idx.exit.i125.kunmap.exit127_crit_edge

is_highmem_idx.exit.i125.kunmap.exit127_crit_edge: ; preds = %is_highmem_idx.exit.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit127

is_highmem_idx.exit.i125.if.end.i126_crit_edge:   ; preds = %is_highmem_idx.exit.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i126

if.end.i126:                                      ; preds = %is_highmem_idx.exit.i125.if.end.i126_crit_edge, %if.then64.if.end.i126_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %kmapped_page.6) #13
  br label %kunmap.exit127

kunmap.exit127:                                   ; preds = %if.end.i126, %is_highmem_idx.exit.i125.kunmap.exit127_crit_edge, %if.then64.kunmap.exit127_crit_edge
  tail call fastcc void @put_arg_page(ptr noundef nonnull %kmapped_page.6)
  br label %cleanup66

cleanup66:                                        ; preds = %kunmap.exit127, %out.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %ret.5211 = phi i32 [ %ret.5, %out.cleanup66_crit_edge ], [ %ret.5, %kunmap.exit127 ], [ 0, %entry.cleanup66_crit_edge ]
  ret i32 %ret.5211
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_uflags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_dointvec_minmax_coredump(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @validate_coredump_safety() #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @validate_coredump_safety() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !79, !80, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !104, !106, !108, !110, !111, !112, !114, !116, !118, !119, !120, !122, !123, !125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !137, !139, !141, !142, !144, !146, !147, !148, !149, !150, !151, !153, !154, !156}
!llvm.named.register.sp = !{!158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @suid_dumpable, !1, !"suid_dumpable", i1 false, i1 false}
!1 = !{!"../fs/exec.c", i32 81, i32 5}
!2 = !{ptr @__ksymtab___register_binfmt, !3, !"__ksymtab___register_binfmt", i1 false, i1 false}
!3 = !{!"../fs/exec.c", i32 94, i32 1}
!4 = !{ptr @__ksymtab_unregister_binfmt, !5, !"__ksymtab_unregister_binfmt", i1 false, i1 false}
!5 = !{!"../fs/exec.c", i32 103, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/exec.c", i32 123, i32 1}
!8 = !{ptr @event_enter__uselib, !7, !"event_enter__uselib", i1 false, i1 false}
!9 = !{ptr @__event_enter__uselib, !7, !"__event_enter__uselib", i1 false, i1 false}
!10 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @event_exit__uselib, !7, !"event_exit__uselib", i1 false, i1 false}
!12 = !{ptr @__event_exit__uselib, !7, !"__event_exit__uselib", i1 false, i1 false}
!13 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__syscall_meta__uselib, !7, !"__syscall_meta__uselib", i1 false, i1 false}
!15 = !{ptr @__p_syscall_meta__uselib, !7, !"__p_syscall_meta__uselib", i1 false, i1 false}
!16 = !{ptr @__ksymtab_copy_string_kernel, !17, !"__ksymtab_copy_string_kernel", i1 false, i1 false}
!17 = !{!"../fs/exec.c", i32 647, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../fs/exec.c", i32 817, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @setup_arg_pages._entry, !19, !"_entry", i1 false, i1 false}
!24 = !{ptr @setup_arg_pages._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_setup_arg_pages, !26, !"__ksymtab_setup_arg_pages", i1 false, i1 false}
!26 = !{!"../fs/exec.c", i32 858, i32 1}
!27 = !{ptr @__ksymtab_open_exec, !28, !"__ksymtab_open_exec", i1 false, i1 false}
!28 = !{!"../fs/exec.c", i32 953, i32 1}
!29 = !{ptr @__ksymtab_read_code, !30, !"__ksymtab_read_code", i1 false, i1 false}
!30 = !{!"../fs/exec.c", i32 964, i32 1}
!31 = !{ptr @__ksymtab___get_task_comm, !32, !"__ksymtab___get_task_comm", i1 false, i1 false}
!32 = !{!"../fs/exec.c", i32 1216, i32 1}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../fs/exec.c", i32 1352, i32 15}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../fs/exec.c", i32 1352, i32 31}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../fs/exec.c", i32 1353, i32 15}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../fs/exec.c", i32 1353, i32 31}
!41 = !{ptr @__ksymtab_begin_new_exec, !42, !"__ksymtab_begin_new_exec", i1 false, i1 false}
!42 = !{!"../fs/exec.c", i32 1409, i32 1}
!43 = !{ptr @__ksymtab_would_dump, !44, !"__ksymtab_would_dump", i1 false, i1 false}
!44 = !{!"../fs/exec.c", i32 1431, i32 1}
!45 = !{ptr @__ksymtab_setup_new_exec, !46, !"__ksymtab_setup_new_exec", i1 false, i1 false}
!46 = !{!"../fs/exec.c", i32 1450, i32 1}
!47 = !{ptr @__ksymtab_finalize_exec, !48, !"__ksymtab_finalize_exec", i1 false, i1 false}
!48 = !{!"../fs/exec.c", i32 1460, i32 1}
!49 = !{ptr @__ksymtab_bprm_change_interp, !50, !"__ksymtab_bprm_change_interp", i1 false, i1 false}
!50 = !{!"../fs/exec.c", i32 1548, i32 1}
!51 = !{ptr @__ksymtab_remove_arg_zero, !52, !"__ksymtab_remove_arg_zero", i1 false, i1 false}
!52 = !{!"../fs/exec.c", i32 1699, i32 1}
!53 = !{ptr @__ksymtab_set_binfmt, !54, !"__ksymtab_set_binfmt", i1 false, i1 false}
!54 = !{!"../fs/exec.c", i32 2052, i32 1}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/exec.c", i32 2065, i32 1}
!57 = !{ptr @event_enter__execve, !56, !"event_enter__execve", i1 false, i1 false}
!58 = !{ptr @__event_enter__execve, !56, !"__event_enter__execve", i1 false, i1 false}
!59 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @event_exit__execve, !56, !"event_exit__execve", i1 false, i1 false}
!61 = !{ptr @__event_exit__execve, !56, !"__event_exit__execve", i1 false, i1 false}
!62 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__syscall_meta__execve, !56, !"__syscall_meta__execve", i1 false, i1 false}
!64 = !{ptr @__p_syscall_meta__execve, !56, !"__p_syscall_meta__execve", i1 false, i1 false}
!65 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/exec.c", i32 2073, i32 1}
!67 = !{ptr @event_enter__execveat, !66, !"event_enter__execveat", i1 false, i1 false}
!68 = !{ptr @__event_enter__execveat, !66, !"__event_enter__execveat", i1 false, i1 false}
!69 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @event_exit__execveat, !66, !"event_exit__execveat", i1 false, i1 false}
!71 = !{ptr @__event_exit__execveat, !66, !"__event_exit__execveat", i1 false, i1 false}
!72 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__syscall_meta__execveat, !66, !"__syscall_meta__execveat", i1 false, i1 false}
!74 = !{ptr @__p_syscall_meta__execveat, !66, !"__p_syscall_meta__execveat", i1 false, i1 false}
!75 = !{ptr @__initcall__kmod_exec__435_2135_init_fs_exec_sysctls5, !76, !"__initcall__kmod_exec__435_2135_init_fs_exec_sysctls5", i1 false, i1 false}
!76 = !{!"../fs/exec.c", i32 2135, i32 1}
!77 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/exec.c", i32 84, i32 8}
!79 = !{ptr @binfmt_lock, !78, !"binfmt_lock", i1 false, i1 false}
!80 = !{ptr @formats, !81, !"formats", i1 false, i1 false}
!81 = !{!"../fs/exec.c", i32 83, i32 8}
!82 = !{ptr @.str.16, !7, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @types__uselib, !7, !"types__uselib", i1 false, i1 false}
!84 = !{ptr @.str.17, !7, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @args__uselib, !7, !"args__uselib", i1 false, i1 false}
!86 = !{ptr @__do_sys_uselib.uselib_flags, !87, !"uselib_flags", i1 false, i1 false}
!87 = !{!"../fs/exec.c", i32 129, i32 33}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../fs/exec.c", i32 151, i32 6}
!90 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/mm.h", i32 717, i32 2}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../fs/exec.c", i32 923, i32 6}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/trace/events/task.h", i32 34, i32 1}
!96 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!98 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!101 = !{ptr @.str.21, !100, !"<string literal>", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../fs/exec.c", i32 1064, i32 3}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../fs/exec.c", i32 1091, i32 4}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!110 = !{ptr @.str.24, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/exec.c", i32 1516, i32 41}
!114 = !{ptr @.str.27, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/exec.c", i32 1518, i32 41}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!118 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!122 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/exec.c", i32 1742, i32 7}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/trace/events/sched.h", i32 397, i32 1}
!127 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!129 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @types__execve, !56, !"types__execve", i1 false, i1 false}
!131 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @args__execve, !56, !"args__execve", i1 false, i1 false}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../fs/exec.c", i32 1884, i32 27}
!137 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!141 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.39, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!144 = !{ptr @.str.40, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!146 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @types__execveat, !66, !"types__execveat", i1 false, i1 false}
!148 = !{ptr @.str.42, !66, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @args__execveat, !66, !"args__execveat", i1 false, i1 false}
!151 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/exec.c", i32 2131, i32 2}
!153 = !{ptr @.str.45, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/exec.c", i32 2118, i32 15}
!156 = !{ptr @fs_exec_sysctls, !157, !"fs_exec_sysctls", i1 false, i1 false}
!157 = !{!"../fs/exec.c", i32 2116, i32 25}
!158 = !{!"sp"}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{i64 2154199563}
!170 = !{i64 2152635120}
!171 = !{i64 2152635327}
!172 = !{i64 2154202334}
!173 = !{!"auto-init"}
!174 = !{i64 2148266842, i64 2148266847, i64 2148266860, i64 2148266904, i64 2148266938, i64 2148266959}
!175 = !{i64 2148724289}
!176 = !{i64 2148639574, i64 2148639606, i64 2148639635, i64 2148639669, i64 2148639700, i64 2148639723}
!177 = !{i64 2148724518}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{i64 2153230817, i64 2153231300, i64 2153230854, i64 2153230910, i64 2153230944, i64 2153230968, i64 2153231009, i64 2153231030, i64 2153231058, i64 2153231092}
!180 = !{i64 2148727330}
!181 = !{i64 2148642039, i64 2148642071, i64 2148642100, i64 2148642134, i64 2148642165, i64 2148642188}
!182 = !{i64 2148727559}
!183 = !{i64 2156946206, i64 2156946680, i64 2156946243, i64 2156946299, i64 2156946333, i64 2156946357, i64 2156946398, i64 2156946419, i64 2156946447, i64 2156946481}
!184 = !{i64 2156943511, i64 2156943985, i64 2156943548, i64 2156943604, i64 2156943638, i64 2156943662, i64 2156943703, i64 2156943724, i64 2156943752, i64 2156943786}
!185 = !{i64 2148740701}
!186 = !{i64 1124367, i64 1124391, i64 1124412, i64 1124429, i64 1124446}
!187 = !{i64 2148740927}
!188 = !{i64 2156157120}
!189 = !{i64 2156157325}
!190 = !{i64 2149982746}
!191 = !{i64 2149983782}
!192 = !{i64 2152867223}
!193 = !{i64 2156969315, i64 2156969790, i64 2156969352, i64 2156969408, i64 2156969442, i64 2156969466, i64 2156969507, i64 2156969528, i64 2156969556, i64 2156969590}
!194 = !{i64 2151494688}
!195 = !{i64 2156970910, i64 2156971385, i64 2156970947, i64 2156971003, i64 2156971037, i64 2156971061, i64 2156971102, i64 2156971123, i64 2156971151, i64 2156971185}
!196 = !{i64 2148640384, i64 2148640416, i64 2148640445, i64 2148640479, i64 2148640510, i64 2148640533}
!197 = !{i64 2148728409}
!198 = !{i64 2148642849, i64 2148642881, i64 2148642910, i64 2148642944, i64 2148642975, i64 2148642998}
!199 = !{i64 2149924644}
!200 = !{i64 1046266}
!201 = !{i64 1043969}
!202 = !{i64 1043779}
!203 = !{i64 2155263121}
!204 = !{i64 2154173921}
!205 = !{i64 2156958500, i64 2156958975, i64 2156958537, i64 2156958593, i64 2156958627, i64 2156958651, i64 2156958692, i64 2156958713, i64 2156958741, i64 2156958775}
!206 = !{i64 2156979191}
!207 = !{i64 2157020546}
!208 = !{i64 1148346, i64 1148367, i64 1148390, i64 1148409, i64 1148428}
!209 = !{i64 2157020955}
!210 = !{i64 2149974187}
!211 = !{i64 2149974453}
!212 = !{i64 2148638854, i64 2148638880, i64 2148638909, i64 2148638943, i64 2148638974, i64 2148638997}
!213 = !{i64 2152798905}
!214 = !{i64 1043534, i64 1043595}
!215 = !{i64 1046551}
!216 = !{i64 2152807755}
!217 = !{i64 2152817709}
!218 = !{i64 2152827204}
!219 = !{i64 2152836681}
!220 = !{i64 2156485630}
!221 = !{i64 2156485861}
!222 = !{i64 5123797}
!223 = !{i64 5123994}
!224 = !{i64 2152609227}
!225 = !{i64 2156918431, i64 2156918711, i64 2156919045, i64 2156919379}
!226 = !{i64 2152632303, i64 2152632328}
