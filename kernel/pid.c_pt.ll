; ModuleID = '/llk/IR_all_yes/kernel/pid.c_pt.bc'
source_filename = "../kernel/pid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+init_pid_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_init_pid_ns\09\09\09\09"
module asm "\09.long\09__crc_init_pid_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22init_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_init_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+put_pid\22, \22a\22\09"
module asm "\09.weak\09__crc_put_pid\09\09\09\09"
module asm "\09.long\09__crc_put_pid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22put_pid\22\09\09\09\09\09"
module asm "__kstrtabns_put_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+find_pid_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_find_pid_ns\09\09\09\09"
module asm "\09.long\09__crc_find_pid_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22find_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_find_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+find_vpid\22, \22a\22\09"
module asm "\09.weak\09__crc_find_vpid\09\09\09\09"
module asm "\09.long\09__crc_find_vpid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_vpid:\09\09\09\09\09"
module asm "\09.asciz \09\22find_vpid\22\09\09\09\09\09"
module asm "__kstrtabns_find_vpid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pid_task\22, \22a\22\09"
module asm "\09.weak\09__crc_pid_task\09\09\09\09"
module asm "\09.long\09__crc_pid_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22pid_task\22\09\09\09\09\09"
module asm "__kstrtabns_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_task_pid\22, \22a\22\09"
module asm "\09.weak\09__crc_get_task_pid\09\09\09\09"
module asm "\09.long\09__crc_get_task_pid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_task_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22get_task_pid\22\09\09\09\09\09"
module asm "__kstrtabns_get_task_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_pid_task\22, \22a\22\09"
module asm "\09.weak\09__crc_get_pid_task\09\09\09\09"
module asm "\09.long\09__crc_get_pid_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22get_pid_task\22\09\09\09\09\09"
module asm "__kstrtabns_get_pid_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+find_get_pid\22, \22a\22\09"
module asm "\09.weak\09__crc_find_get_pid\09\09\09\09"
module asm "\09.long\09__crc_find_get_pid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_get_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22find_get_pid\22\09\09\09\09\09"
module asm "__kstrtabns_find_get_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pid_nr_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_pid_nr_ns\09\09\09\09"
module asm "\09.long\09__crc_pid_nr_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22pid_nr_ns\22\09\09\09\09\09"
module asm "__kstrtabns_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pid_vnr\22, \22a\22\09"
module asm "\09.weak\09__crc_pid_vnr\09\09\09\09"
module asm "\09.long\09__crc_pid_vnr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pid_vnr:\09\09\09\09\09"
module asm "\09.asciz \09\22pid_vnr\22\09\09\09\09\09"
module asm "__kstrtabns_pid_vnr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__task_pid_nr_ns\22, \22a\22\09"
module asm "\09.weak\09__crc___task_pid_nr_ns\09\09\09\09"
module asm "\09.long\09__crc___task_pid_nr_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___task_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22__task_pid_nr_ns\22\09\09\09\09\09"
module asm "__kstrtabns___task_pid_nr_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+task_active_pid_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_task_active_pid_ns\09\09\09\09"
module asm "\09.long\09__crc_task_active_pid_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_task_active_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22task_active_pid_ns\22\09\09\09\09\09"
module asm "__kstrtabns_task_active_pid_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.144, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.122 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.144 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.47 }
%union.anon.47 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.58, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32 }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.85, %struct.trace_event, ptr, ptr, %union.anon.86, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.86 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@init_pid_ns = dso_local global { %struct.pid_namespace, [40 x i8] } { %struct.pid_namespace { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, %struct.callback_head zeroinitializer, i32 -2147483648, ptr @init_task, ptr null, i32 0, ptr null, ptr null, ptr @init_user_ns, ptr null, i32 0, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr @pidns_operations, i32 -268435460, %struct.refcount_struct { %struct.atomic_t { i32 2 } } } }, [40 x i8] zeroinitializer }, align 32
@init_struct_pid = dso_local global { %struct.pid, [52 x i8] } { %struct.pid { %struct.refcount_struct { %struct.atomic_t { i32 1 } }, i32 0, %struct.spinlock zeroinitializer, [4 x %struct.hlist_head] zeroinitializer, %struct.hlist_head zeroinitializer, %struct.wait_queue_head zeroinitializer, %struct.callback_head zeroinitializer, [1 x %struct.upid] [%struct.upid { i32 0, ptr @init_pid_ns }] }, [52 x i8] zeroinitializer }, align 32
@pid_max = dso_local global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@pid_max_min = dso_local global { i32, [28 x i8] } { i32 301, [28 x i8] zeroinitializer }, align 32
@pid_max_max = dso_local global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"init_pid_ns.idr.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@pidns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@__kstrtab_init_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_init_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_pid_ns to i32), ptr @__kstrtab_init_pid_ns, ptr @__kstrtabns_init_pid_ns }, section "___ksymtab_gpl+init_pid_ns", align 4
@__kstrtab_put_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_put_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_pid to i32), ptr @__kstrtab_put_pid, ptr @__kstrtabns_put_pid }, section "___ksymtab_gpl+put_pid", align 4
@pidmap_lock = internal global %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel/pid.c\00", [19 x i8] zeroinitializer }, align 32
@alloc_pid.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pid->lock\00", [21 x i8] zeroinitializer }, align 32
@alloc_pid.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pid->wait_pidfd\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_find_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_find_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_pid_ns to i32), ptr @__kstrtab_find_pid_ns, ptr @__kstrtabns_find_pid_ns }, section "___ksymtab_gpl+find_pid_ns", align 4
@__kstrtab_find_vpid = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_vpid = external dso_local constant [0 x i8], align 1
@__ksymtab_find_vpid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_vpid to i32), ptr @__kstrtab_find_vpid, ptr @__kstrtabns_find_vpid }, section "___ksymtab_gpl+find_vpid", align 4
@pid_task.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_pid_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_pid_task = external dso_local constant [0 x i8], align 1
@__ksymtab_pid_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pid_task to i32), ptr @__kstrtab_pid_task, ptr @__kstrtabns_pid_task }, section "___ksymtab+pid_task", align 4
@find_task_by_pid_ns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"find_task_by_pid_ns() needs rcu_read_lock() protection\00", [41 x i8] zeroinitializer }, align 32
@get_task_pid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_get_task_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_task_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_get_task_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_task_pid to i32), ptr @__kstrtab_get_task_pid, ptr @__kstrtabns_get_task_pid }, section "___ksymtab_gpl+get_task_pid", align 4
@__kstrtab_get_pid_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_pid_task = external dso_local constant [0 x i8], align 1
@__ksymtab_get_pid_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_pid_task to i32), ptr @__kstrtab_get_pid_task, ptr @__kstrtabns_get_pid_task }, section "___ksymtab_gpl+get_pid_task", align 4
@__kstrtab_find_get_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_get_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_find_get_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_get_pid to i32), ptr @__kstrtab_find_get_pid, ptr @__kstrtabns_find_get_pid }, section "___ksymtab_gpl+find_get_pid", align 4
@__kstrtab_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_pid_nr_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pid_nr_ns to i32), ptr @__kstrtab_pid_nr_ns, ptr @__kstrtabns_pid_nr_ns }, section "___ksymtab_gpl+pid_nr_ns", align 4
@__kstrtab_pid_vnr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pid_vnr = external dso_local constant [0 x i8], align 1
@__ksymtab_pid_vnr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pid_vnr to i32), ptr @__kstrtab_pid_vnr, ptr @__kstrtabns_pid_vnr }, section "___ksymtab_gpl+pid_vnr", align 4
@__task_pid_nr_ns.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab___task_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns___task_pid_nr_ns = external dso_local constant [0 x i8], align 1
@__ksymtab___task_pid_nr_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__task_pid_nr_ns to i32), ptr @__kstrtab___task_pid_nr_ns, ptr @__kstrtabns___task_pid_nr_ns }, section "___ksymtab+__task_pid_nr_ns", align 4
@__kstrtab_task_active_pid_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_task_active_pid_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_task_active_pid_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @task_active_pid_ns to i32), ptr @__kstrtab_task_active_pid_ns, ptr @__kstrtabns_task_active_pid_ns }, section "___ksymtab_gpl+task_active_pid_ns", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[pidfd]\00", [24 x i8] zeroinitializer }, align 32
@pidfd_fops = external dso_local constant %struct.file_operations, align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_enter_pidfd_open\00", [43 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__pidfd_open = internal global %struct.syscall_metadata { ptr @.str.10, i32 -1, i32 2, ptr @types__pidfd_open, ptr @args__pidfd_open, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pidfd_open, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pidfd_open, i64 20) }, ptr @event_enter__pidfd_open, ptr @event_exit__pidfd_open }, align 4
@event_enter__pidfd_open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.85 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.86 zeroinitializer, ptr @__syscall_meta__pidfd_open, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pidfd_open = internal global ptr @event_enter__pidfd_open, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_exit_pidfd_open\00", [44 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__pidfd_open = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.85 { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.86 zeroinitializer, ptr @__syscall_meta__pidfd_open, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pidfd_open = internal global ptr @event_exit__pidfd_open, section "_ftrace_events", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_pidfd_open\00", [17 x i8] zeroinitializer }, align 32
@types__pidfd_open = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.24, ptr @.str.25], [24 x i8] zeroinitializer }, align 32
@args__pidfd_open = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.13, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pidfd_open = internal global ptr @__syscall_meta__pidfd_open, section "__syscalls_metadata", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@pid_idr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.1, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016pid_max: default: %u minimum: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pid_idr_init\00", [19 x i8] zeroinitializer }, align 32
@pid_idr_init._entry_ptr = internal global ptr @pid_idr_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_enter_pidfd_getfd\00", [42 x i8] zeroinitializer }, align 32
@__syscall_meta__pidfd_getfd = internal global %struct.syscall_metadata { ptr @.str.16, i32 -1, i32 3, ptr @types__pidfd_getfd, ptr @args__pidfd_getfd, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__pidfd_getfd, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__pidfd_getfd, i64 20) }, ptr @event_enter__pidfd_getfd, ptr @event_exit__pidfd_getfd }, align 4
@event_enter__pidfd_getfd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.85 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.86 zeroinitializer, ptr @__syscall_meta__pidfd_getfd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__pidfd_getfd = internal global ptr @event_enter__pidfd_getfd, section "_ftrace_events", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sys_exit_pidfd_getfd\00", [43 x i8] zeroinitializer }, align 32
@event_exit__pidfd_getfd = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.85 { ptr @.str.15 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.86 zeroinitializer, ptr @__syscall_meta__pidfd_getfd, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__pidfd_getfd = internal global ptr @event_exit__pidfd_getfd, section "_ftrace_events", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_pidfd_getfd\00", [16 x i8] zeroinitializer }, align 32
@types__pidfd_getfd = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.28, ptr @.str.28, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@args__pidfd_getfd = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@__p_syscall_meta__pidfd_getfd = internal global ptr @__syscall_meta__pidfd_getfd, section "__syscalls_metadata", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pidmap_lock\00", [20 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pidfd\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fd\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 2147483649]
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"init_pid_ns\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 75, i32 22 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"init_struct_pid\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 48, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"pid_max\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 62, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"pid_max_min\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 66, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"pid_max_max\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 67, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 77, i32 9 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 147, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 261, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 265, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 401, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 415, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 604, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant [24 x i8] c"event_enter__pidfd_open\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [23 x i8] c"event_exit__pidfd_open\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"types__pidfd_open\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"args__pidfd_open\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 659, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 663, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"event_enter__pidfd_getfd\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [24 x i8] c"event_exit__pidfd_getfd\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"types__pidfd_getfd\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"args__pidfd_getfd\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 103, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 36, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 695, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 723, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 628, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 378, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [16 x i8] c"../kernel/pid.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 723, i32 1 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__event_enter__pidfd_getfd, ptr @__event_enter__pidfd_open, ptr @__event_exit__pidfd_getfd, ptr @__event_exit__pidfd_open, ptr @__ksymtab___task_pid_nr_ns, ptr @__ksymtab_find_get_pid, ptr @__ksymtab_find_pid_ns, ptr @__ksymtab_find_vpid, ptr @__ksymtab_get_pid_task, ptr @__ksymtab_get_task_pid, ptr @__ksymtab_init_pid_ns, ptr @__ksymtab_pid_nr_ns, ptr @__ksymtab_pid_task, ptr @__ksymtab_pid_vnr, ptr @__ksymtab_put_pid, ptr @__ksymtab_task_active_pid_ns, ptr @__p_syscall_meta__pidfd_getfd, ptr @__p_syscall_meta__pidfd_open, ptr @__syscall_meta__pidfd_getfd, ptr @__syscall_meta__pidfd_open, ptr @event_enter__pidfd_getfd, ptr @event_enter__pidfd_open, ptr @event_exit__pidfd_getfd, ptr @event_exit__pidfd_open, ptr @pid_idr_init._entry, ptr @pid_idr_init._entry_ptr, ptr @init_pid_ns, ptr @init_struct_pid, ptr @pid_max, ptr @pid_max_min, ptr @pid_max_max, ptr @.str, ptr @.str.1, ptr @alloc_pid.__key, ptr @.str.2, ptr @alloc_pid.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @types__pidfd_open, ptr @args__pidfd_open, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @types__pidfd_getfd, ptr @args__pidfd_getfd, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pid_ns to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_struct_pid to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_max_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_max_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pid.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pid.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pidfd_open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pidfd_open to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pidfd_open to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pidfd_open to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pid_idr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__pidfd_getfd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__pidfd_getfd to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__pidfd_getfd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__pidfd_getfd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_pidfd_open = dso_local alias i32 (i32, i32), ptr @__se_sys_pidfd_open
@sys_pidfd_getfd = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_pidfd_getfd

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_pid(ptr noundef %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %level = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 1
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  %ns1 = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %1, i32 1
  %2 = ptrtoint ptr %ns1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns1, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then2, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !122

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef 3) #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %pid_cachep = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %pid_cachep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pid_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %pid) #12
  tail call void @put_pid_ns(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_pid(ptr noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pidmap_lock) #12
  %level = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 1
  %numbers = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %entry
  %i.046 = phi i32 [ 0, %entry ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.upid, ptr %numbers, i32 %i.046
  %ns7 = getelementptr %struct.upid, ptr %numbers, i32 %i.046, i32 1
  %0 = ptrtoint ptr %ns7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns7, align 4
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pid_allocated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid_allocated, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %pid_allocated, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.body.sw.epilog_crit_edge [
    i32 3, label %for.body.sw.bb_crit_edge
    i32 2, label %for.body.sw.bb_crit_edge47
    i32 -2147483647, label %sw.bb9
  ]

for.body.sw.bb_crit_edge47:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge47
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %child_reaper to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %child_reaper, align 4
  %call8 = tail call i32 @wake_up_process(ptr noundef %6) #12
  br label %sw.epilog

sw.bb9:                                           ; preds = %for.body
  %child_reaper10 = getelementptr inbounds %struct.pid_namespace, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %child_reaper10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %child_reaper10, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb9.if.end_crit_edge, label %do.end21, !prof !122

sw.bb9.if.end_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end21:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end21, %sw.bb9.if.end_crit_edge
  %9 = ptrtoint ptr %pid_allocated to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pid_allocated, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb, %for.body.sw.epilog_crit_edge
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %call35 = tail call ptr @idr_remove(ptr noundef %1, i32 noundef %11) #12
  %inc = add i32 %i.046, 1
  %12 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level, align 4
  %cmp5.not = icmp ugt i32 %inc, %13
  br i1 %cmp5.not, label %for.end, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pidmap_lock, i32 noundef %call2) #12
  %rcu = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @delayed_put_pid) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delayed_put_pid(ptr noundef %rhp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rhp, i32 -124
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.put_pid.exit_crit_edge, label %if.end.i

entry.put_pid.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_pid.exit

if.end.i:                                         ; preds = %entry
  %level.i = getelementptr i8, ptr %rhp, i32 -120
  %0 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %add.ptr, i32 0, i32 7, i32 %1, i32 1
  %2 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns1.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr, ptr nonnull %add.ptr, i32 1, ptr nonnull elementtype(i32) %add.ptr) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then2.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_pid.exit_crit_edge, label %if.then10.i.i.i.i, !prof !122

if.end5.i.i.i.i.put_pid.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_pid.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr, i32 noundef 3) #12
  br label %put_pid.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %pid_cachep.i = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %pid_cachep.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pid_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %add.ptr) #12
  tail call void @put_pid_ns(ptr noundef %3) #12
  br label %put_pid.exit

put_pid.exit:                                     ; preds = %if.then2.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_pid.exit_crit_edge, %entry.put_pid.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_pid(ptr noundef %ns, ptr nocapture noundef readonly %set_tid, i32 noundef %set_tid_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %level = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 5
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  %add = add i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %set_tid_size)
  %cmp = icmp ult i32 %add, %set_tid_size
  br i1 %cmp, label %entry.cleanup98_crit_edge, label %if.end

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end:                                           ; preds = %entry
  %pid_cachep = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 4
  %2 = ptrtoint ptr %pid_cachep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pid_cachep, align 4
  %call2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup98_crit_edge, label %if.end5

if.end.cleanup98_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 4
  %level7 = getelementptr inbounds %struct.pid, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %level7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %level7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp9174 = icmp sgt i32 %5, -1
  br i1 %cmp9174, label %if.end5.for.body_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %tmp.0177 = phi ptr [ %33, %for.inc.for.body_crit_edge ], [ %ns, %if.end5.for.body_crit_edge ]
  %i.0176 = phi i32 [ %dec49, %for.inc.for.body_crit_edge ], [ %5, %if.end5.for.body_crit_edge ]
  %set_tid_size.addr.0175 = phi i32 [ %set_tid_size.addr.1, %for.inc.for.body_crit_edge ], [ %set_tid_size, %if.end5.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_tid_size.addr.0175)
  %tobool10.not = icmp eq i32 %set_tid_size.addr.0175, 0
  br i1 %tobool10.not, label %for.body.if.end24_crit_edge, label %if.then11

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then11:                                        ; preds = %for.body
  %7 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %level, align 4
  %sub = sub i32 %8, %i.0176
  %arrayidx = getelementptr i32, ptr %set_tid, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp13 = icmp slt i32 %10, 1
  br i1 %cmp13, label %if.then11.out_free_crit_edge, label %lor.lhs.false

if.then11.out_free_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

lor.lhs.false:                                    ; preds = %if.then11
  %11 = load i32, ptr @pid_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp14.not = icmp slt i32 %10, %11
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false.out_free_crit_edge

lor.lhs.false.out_free_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp17.not = icmp eq i32 %10, 1
  br i1 %cmp17.not, label %if.end16.if.end20_crit_edge, label %land.lhs.true

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end16
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %tmp.0177, i32 0, i32 3
  %12 = ptrtoint ptr %child_reaper to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %child_reaper, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %land.lhs.true.out_free_crit_edge, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true.out_free_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %user_ns = getelementptr inbounds %struct.pid_namespace, ptr %tmp.0177, i32 0, i32 8
  %14 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns, align 4
  %call.i = tail call zeroext i1 @ns_capable(ptr noundef %15, i32 noundef 40) #12
  br i1 %call.i, label %if.end20.if.end23_crit_edge, label %checkpoint_restore_ns_capable.exit

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

checkpoint_restore_ns_capable.exit:               ; preds = %if.end20
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %15, i32 noundef 21) #12
  br i1 %call1.i, label %checkpoint_restore_ns_capable.exit.if.end23_crit_edge, label %checkpoint_restore_ns_capable.exit.out_free_crit_edge

checkpoint_restore_ns_capable.exit.out_free_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

checkpoint_restore_ns_capable.exit.if.end23_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end23:                                         ; preds = %checkpoint_restore_ns_capable.exit.if.end23_crit_edge, %if.end20.if.end23_crit_edge
  %dec = add i32 %set_tid_size.addr.0175, -1
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %for.body.if.end24_crit_edge
  %set_tid_size.addr.1 = phi i32 [ %dec, %if.end23 ], [ 0, %for.body.if.end24_crit_edge ]
  %tid.0 = phi i32 [ %10, %if.end23 ], [ 0, %for.body.if.end24_crit_edge ]
  tail call void @idr_preload(i32 noundef 3264) #12
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tid.0)
  %tobool25.not = icmp eq i32 %tid.0, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %add27 = add nuw nsw i32 %tid.0, 1
  %call28 = tail call i32 @idr_alloc(ptr noundef %tmp.0177, ptr noundef null, i32 noundef %tid.0, i32 noundef %add27, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call28)
  %cmp29 = icmp eq i32 %call28, -28
  %spec.select191 = select i1 %cmp29, i32 -17, i32 %call28
  br label %if.end39

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %idr_next.i = getelementptr inbounds %struct.idr, ptr %tmp.0177, i32 0, i32 2
  %16 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %idr_next.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %17)
  %cmp34 = icmp ugt i32 %17, 300
  %spec.select = select i1 %cmp34, i32 300, i32 1
  %18 = load i32, ptr @pid_max, align 4
  %call38 = tail call i32 @idr_alloc_cyclic(ptr noundef %tmp.0177, ptr noundef null, i32 noundef %spec.select, i32 noundef %18, i32 noundef 2592) #12
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then26
  %nr.0 = phi i32 [ %call38, %if.else ], [ %spec.select191, %if.then26 ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pidmap_lock) #12
  %19 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, ptrtoint (ptr @radix_tree_preloads to i32)
  %25 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %25) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %cmp40 = icmp slt i32 %nr.0, 0
  br i1 %cmp40, label %if.then41, label %for.inc

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %nr.0)
  %cmp42 = icmp eq i32 %nr.0, -28
  %spec.select164 = select i1 %cmp42, i32 -11, i32 %nr.0
  %phi.cast = inttoptr i32 %spec.select164 to ptr
  br label %out_free

for.inc:                                          ; preds = %if.end39
  %arrayidx44 = getelementptr %struct.pid, ptr %call2, i32 0, i32 7, i32 %i.0176
  %30 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nr.0, ptr %arrayidx44, align 4
  %ns48 = getelementptr %struct.pid, ptr %call2, i32 0, i32 7, i32 %i.0176, i32 1
  %31 = ptrtoint ptr %ns48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tmp.0177, ptr %ns48, align 8
  %parent = getelementptr inbounds %struct.pid_namespace, ptr %tmp.0177, i32 0, i32 6
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 4
  %dec49 = add nsw i32 %i.0176, -1
  %cmp9 = icmp sgt i32 %i.0176, 0
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %5, %if.end5.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  %cmp.not.i = icmp eq ptr %ns, @init_pid_ns
  br i1 %cmp.not.i, label %for.end.get_pid_ns.exit_crit_edge, label %if.then.i

for.end.get_pid_ns.exit_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid_ns.exit

if.then.i:                                        ; preds = %for.end
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, %for.end.get_pid_ns.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #12
  %36 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %call2, align 8
  %lock = getelementptr inbounds %struct.pid, ptr %call2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @alloc_pid.__key, i16 noundef signext 3) #12
  %uglygep = getelementptr i8, ptr %call2, i32 52
  %37 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  %wait_pidfd = getelementptr inbounds %struct.pid, ptr %call2, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %wait_pidfd, ptr noundef nonnull @.str.4, ptr noundef nonnull @alloc_pid.__key.3) #12
  %inodes = getelementptr inbounds %struct.pid, ptr %call2, i32 0, i32 4
  %38 = ptrtoint ptr %inodes to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %inodes, align 4
  %numbers62 = getelementptr inbounds %struct.pid, ptr %call2, i32 0, i32 7
  %39 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %level, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #12
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 2
  %41 = ptrtoint ptr %pid_allocated to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pid_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %tobool64.not = icmp sgt i32 %42, -1
  br i1 %tobool64.not, label %out_unlock, label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %get_pid_ns.exit
  %add.ptr = getelementptr %struct.upid, ptr %numbers62, i32 %40
  %cmp70.not180 = icmp ult ptr %add.ptr, %numbers62
  br i1 %cmp70.not180, label %for.cond67.preheader.for.end80_crit_edge, label %for.cond67.preheader.for.body71_crit_edge

for.cond67.preheader.for.body71_crit_edge:        ; preds = %for.cond67.preheader
  br label %for.body71

for.cond67.preheader.for.end80_crit_edge:         ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %for.cond67.preheader.for.body71_crit_edge
  %upid.0181 = phi ptr [ %incdec.ptr, %for.body71.for.body71_crit_edge ], [ %add.ptr, %for.cond67.preheader.for.body71_crit_edge ]
  %ns72 = getelementptr inbounds %struct.upid, ptr %upid.0181, i32 0, i32 1
  %43 = ptrtoint ptr %ns72 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ns72, align 4
  %45 = ptrtoint ptr %upid.0181 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %upid.0181, align 4
  %call75 = tail call ptr @idr_replace(ptr noundef %44, ptr noundef nonnull %call2, i32 noundef %46) #12
  %47 = ptrtoint ptr %ns72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ns72, align 4
  %pid_allocated77 = getelementptr inbounds %struct.pid_namespace, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %pid_allocated77 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid_allocated77, align 4
  %inc78 = add i32 %50, 1
  store i32 %inc78, ptr %pid_allocated77, align 4
  %incdec.ptr = getelementptr %struct.upid, ptr %upid.0181, i32 -1
  %cmp70.not = icmp ult ptr %incdec.ptr, %numbers62
  br i1 %cmp70.not, label %for.body71.for.end80_crit_edge, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.body71.for.end80_crit_edge:                   ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.end80:                                        ; preds = %for.body71.for.end80_crit_edge, %for.cond67.preheader.for.end80_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pidmap_lock) #12
  br label %cleanup98

out_unlock:                                       ; preds = %get_pid_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pidmap_lock) #12
  tail call void @put_pid_ns(ptr noundef %ns) #12
  br label %out_free

out_free:                                         ; preds = %out_unlock, %if.then41, %checkpoint_restore_ns_capable.exit.out_free_crit_edge, %land.lhs.true.out_free_crit_edge, %lor.lhs.false.out_free_crit_edge, %if.then11.out_free_crit_edge
  %i.0173 = phi i32 [ %i.0.lcssa, %out_unlock ], [ %i.0176, %if.then41 ], [ %i.0176, %lor.lhs.false.out_free_crit_edge ], [ %i.0176, %if.then11.out_free_crit_edge ], [ %i.0176, %land.lhs.true.out_free_crit_edge ], [ %i.0176, %checkpoint_restore_ns_capable.exit.out_free_crit_edge ]
  %retval1.3 = phi ptr [ inttoptr (i32 -12 to ptr), %out_unlock ], [ %phi.cast, %if.then41 ], [ inttoptr (i32 -1 to ptr), %checkpoint_restore_ns_capable.exit.out_free_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.out_free_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then11.out_free_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.out_free_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #12
  %inc81182 = add i32 %i.0173, 1
  %51 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc81182, i32 %52)
  %cmp83.not183 = icmp ugt i32 %inc81182, %52
  br i1 %cmp83.not183, label %out_free.while.end_crit_edge, label %while.body.lr.ph

out_free.while.end_crit_edge:                     ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %out_free
  %numbers84 = getelementptr inbounds %struct.pid, ptr %call2, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %inc81184 = phi i32 [ %inc81182, %while.body.lr.ph ], [ %inc81, %while.body.while.body_crit_edge ]
  %add.ptr86 = getelementptr %struct.upid, ptr %numbers84, i32 %inc81184
  %ns87 = getelementptr %struct.upid, ptr %numbers84, i32 %inc81184, i32 1
  %53 = ptrtoint ptr %ns87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ns87, align 8
  %55 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr86, align 4
  %call90 = tail call ptr @idr_remove(ptr noundef %54, i32 noundef %56) #12
  %inc81 = add i32 %inc81184, 1
  %57 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %level, align 4
  %cmp83.not = icmp ugt i32 %inc81, %58
  br i1 %cmp83.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out_free.while.end_crit_edge
  %pid_allocated91 = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 2
  %59 = ptrtoint ptr %pid_allocated91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pid_allocated91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %60)
  %cmp92 = icmp eq i32 %60, -2147483648
  br i1 %cmp92, label %if.then93, label %while.end.if.end95_crit_edge

while.end.if.end95_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then93:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %idr_next.i165 = getelementptr inbounds %struct.idr, ptr %ns, i32 0, i32 2
  %61 = ptrtoint ptr %idr_next.i165 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %idr_next.i165, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %while.end.if.end95_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pidmap_lock) #12
  %62 = ptrtoint ptr %pid_cachep to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pid_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %63, ptr noundef nonnull %call2) #12
  br label %cleanup98

cleanup98:                                        ; preds = %if.end95, %for.end80, %if.end.cleanup98_crit_edge, %entry.cleanup98_crit_edge
  %retval.0 = phi ptr [ %retval1.3, %if.end95 ], [ %call2, %for.end80 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup98_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup98_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_pid_allocation(ptr nocapture noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pidmap_lock) #12
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %pid_allocated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pid_allocated, align 4
  %and = and i32 %1, 2147483647
  store i32 %and, ptr %pid_allocated, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pidmap_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_pid_ns(i32 noundef %nr, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @idr_find(ptr noundef %ns, i32 noundef %nr) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_vpid(i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.task_active_pid_ns.exit_crit_edge, label %if.then.i.i

entry.task_active_pid_ns.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %task_active_pid_ns.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %level.i.i = getelementptr inbounds %struct.pid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level.i.i, align 4
  %ns1.i.i = getelementptr %struct.pid, ptr %5, i32 0, i32 7, i32 %7, i32 1
  %8 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns1.i.i, align 4
  br label %task_active_pid_ns.exit

task_active_pid_ns.exit:                          ; preds = %if.then.i.i, %entry.task_active_pid_ns.exit_crit_edge
  %ns.0.i.i = phi ptr [ %9, %if.then.i.i ], [ null, %entry.task_active_pid_ns.exit_crit_edge ]
  %call.i = tail call ptr @idr_find(ptr noundef %ns.0.i.i, i32 noundef %nr) #12
  ret ptr %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @task_active_pid_ns(ptr nocapture noundef readonly %tsk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 78
  %0 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_pid.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ns_of_pid.exit_crit_edge, label %if.then.i

entry.ns_of_pid.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ns_of_pid.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %level.i = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %1, i32 0, i32 7, i32 %3, i32 1
  %4 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns1.i, align 4
  br label %ns_of_pid.exit

ns_of_pid.exit:                                   ; preds = %if.then.i, %entry.ns_of_pid.exit_crit_edge
  %ns.0.i = phi ptr [ %5, %if.then.i ], [ null, %entry.ns_of_pid.exit_crit_edge ]
  ret ptr %ns.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attach_pid(ptr noundef %task, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i = icmp eq i32 %type, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  br label %task_pid_ptr.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 22, i32 %type
  br label %task_pid_ptr.exit

task_pid_ptr.exit:                                ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %thread_pid.i, %cond.true.i ], [ %arrayidx.i, %cond.false.i ]
  %2 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i, align 4
  %arrayidx = getelementptr %struct.task_struct, ptr %task, i32 0, i32 79, i32 %type
  %arrayidx1 = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 %type
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx, align 4
  %pprev.i = getelementptr %struct.task_struct, ptr %task, i32 0, i32 79, i32 %type, i32 1
  %7 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx1, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %arrayidx, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %task_pid_ptr.exit.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

task_pid_ptr.exit.hlist_add_head_rcu.exit_crit_edge: ; preds = %task_pid_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %task_pid_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %task_pid_ptr.exit.hlist_add_head_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @detach_pid(ptr noundef %task, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i.i = icmp eq i32 %type, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  br label %task_pid_ptr.exit.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 22, i32 %type
  br label %task_pid_ptr.exit.i

task_pid_ptr.exit.i:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %thread_pid.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i.i, align 4
  %arrayidx.i = getelementptr %struct.task_struct, ptr %task, i32 0, i32 79, i32 %type
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %pprev2.i.i.i = getelementptr %struct.task_struct, ptr %task, i32 0, i32 79, i32 %type, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %task_pid_ptr.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

task_pid_ptr.exit.i.hlist_del_rcu.exit.i_crit_edge: ; preds = %task_pid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %task_pid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %task_pid_ptr.exit.i.hlist_del_rcu.exit.i_crit_edge
  %10 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %11 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cond.i.i, align 4
  %arrayidx.i9.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i9.i, align 4
  %tobool.not.i.i10.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i10.not.i, label %for.cond.1.i, label %hlist_del_rcu.exit.i.__change_pid.exit_crit_edge

hlist_del_rcu.exit.i.__change_pid.exit_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.cond.1.i:                                     ; preds = %hlist_del_rcu.exit.i
  %arrayidx.i9.1.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.i9.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i9.1.i, align 4
  %tobool.not.i.i10.not.1.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i10.not.1.i, label %for.cond.2.i, label %for.cond.1.i.__change_pid.exit_crit_edge

for.cond.1.i.__change_pid.exit_crit_edge:         ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.i9.2.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.i9.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i9.2.i, align 4
  %tobool.not.i.i10.not.2.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i10.not.2.i, label %for.cond.3.i, label %for.cond.2.i.__change_pid.exit_crit_edge

for.cond.2.i.__change_pid.exit_crit_edge:         ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.i9.3.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx.i9.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i9.3.i, align 4
  %tobool.not.i.i10.not.3.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i10.not.3.i, label %for.end.i, label %for.cond.3.i.__change_pid.exit_crit_edge

for.cond.3.i.__change_pid.exit_crit_edge:         ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.end.i:                                        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @free_pid(ptr noundef %3) #12
  br label %__change_pid.exit

__change_pid.exit:                                ; preds = %for.end.i, %for.cond.3.i.__change_pid.exit_crit_edge, %for.cond.2.i.__change_pid.exit_crit_edge, %for.cond.1.i.__change_pid.exit_crit_edge, %hlist_del_rcu.exit.i.__change_pid.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @change_pid(ptr noundef %task, i32 noundef %type, ptr noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i.i = icmp eq i32 %type, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  br label %task_pid_ptr.exit.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %0 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %1, i32 0, i32 22, i32 %type
  br label %task_pid_ptr.exit.i

task_pid_ptr.exit.i:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %thread_pid.i.i, %cond.true.i.i ], [ %arrayidx.i.i, %cond.false.i.i ]
  %2 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cond.i.i, align 4
  %arrayidx.i = getelementptr %struct.task_struct, ptr %task, i32 0, i32 79, i32 %type
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %pprev2.i.i.i = getelementptr %struct.task_struct, ptr %task, i32 0, i32 79, i32 %type, i32 1
  %6 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %task_pid_ptr.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

task_pid_ptr.exit.i.hlist_del_rcu.exit.i_crit_edge: ; preds = %task_pid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %task_pid_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %task_pid_ptr.exit.i.hlist_del_rcu.exit.i_crit_edge
  %10 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %11 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pid, ptr %cond.i.i, align 4
  %arrayidx.i9.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i9.i, align 4
  %tobool.not.i.i10.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i10.not.i, label %for.cond.1.i, label %hlist_del_rcu.exit.i.__change_pid.exit_crit_edge

hlist_del_rcu.exit.i.__change_pid.exit_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.cond.1.i:                                     ; preds = %hlist_del_rcu.exit.i
  %arrayidx.i9.1.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx.i9.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.i9.1.i, align 4
  %tobool.not.i.i10.not.1.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i10.not.1.i, label %for.cond.2.i, label %for.cond.1.i.__change_pid.exit_crit_edge

for.cond.1.i.__change_pid.exit_crit_edge:         ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.i9.2.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.i9.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.i9.2.i, align 4
  %tobool.not.i.i10.not.2.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i10.not.2.i, label %for.cond.3.i, label %for.cond.2.i.__change_pid.exit_crit_edge

for.cond.2.i.__change_pid.exit_crit_edge:         ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.i9.3.i = getelementptr %struct.pid, ptr %3, i32 0, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx.i9.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i9.3.i, align 4
  %tobool.not.i.i10.not.3.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i10.not.3.i, label %for.end.i, label %for.cond.3.i.__change_pid.exit_crit_edge

for.cond.3.i.__change_pid.exit_crit_edge:         ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__change_pid.exit

for.end.i:                                        ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @free_pid(ptr noundef %3) #12
  br label %__change_pid.exit

__change_pid.exit:                                ; preds = %for.end.i, %for.cond.3.i.__change_pid.exit_crit_edge, %for.cond.2.i.__change_pid.exit_crit_edge, %for.cond.1.i.__change_pid.exit_crit_edge, %hlist_del_rcu.exit.i.__change_pid.exit_crit_edge
  br i1 %cmp.i.i, label %cond.true.i.i5, label %cond.false.i.i8

cond.true.i.i5:                                   ; preds = %__change_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i.i4 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  br label %task_pid_ptr.exit.i11

cond.false.i.i8:                                  ; preds = %__change_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i.i6 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i.i6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i.i6, align 16
  %arrayidx.i.i7 = getelementptr %struct.signal_struct, ptr %21, i32 0, i32 22, i32 %type
  br label %task_pid_ptr.exit.i11

task_pid_ptr.exit.i11:                            ; preds = %cond.false.i.i8, %cond.true.i.i5
  %cond.i.i9 = phi ptr [ %thread_pid.i.i4, %cond.true.i.i5 ], [ %arrayidx.i.i7, %cond.false.i.i8 ]
  %22 = ptrtoint ptr %cond.i.i9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cond.i.i9, align 4
  %arrayidx1.i = getelementptr %struct.pid, ptr %23, i32 0, i32 3, i32 %type
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.i, align 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx.i, align 4
  %27 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx1.i, ptr %pprev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !127
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %arrayidx.i, ptr %arrayidx1.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %task_pid_ptr.exit.i11.attach_pid.exit_crit_edge, label %do.body49.i.i

task_pid_ptr.exit.i11.attach_pid.exit_crit_edge:  ; preds = %task_pid_ptr.exit.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %attach_pid.exit

do.body49.i.i:                                    ; preds = %task_pid_ptr.exit.i11
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx.i, ptr %pprev51.i.i, align 4
  br label %attach_pid.exit

attach_pid.exit:                                  ; preds = %do.body49.i.i, %task_pid_ptr.exit.i11.attach_pid.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exchange_tids(ptr noundef %left, ptr noundef %right) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %thread_pid = getelementptr inbounds %struct.task_struct, ptr %left, i32 0, i32 78
  %0 = ptrtoint ptr %thread_pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_pid, align 16
  %thread_pid1 = getelementptr inbounds %struct.task_struct, ptr %right, i32 0, i32 78
  %2 = ptrtoint ptr %thread_pid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread_pid1, align 16
  %tasks = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 3
  %tasks2 = getelementptr inbounds %struct.pid, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tasks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tasks, align 4
  %6 = ptrtoint ptr %tasks2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tasks2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !128
  %8 = ptrtoint ptr %tasks to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %tasks, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %9 = ptrtoint ptr %tasks2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %tasks2, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %tasks, ptr %pprev.i, align 4
  %pprev91.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %pprev91.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %tasks2, ptr %pprev91.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !130
  %12 = ptrtoint ptr %thread_pid to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %3, ptr %thread_pid, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !131
  %13 = ptrtoint ptr %thread_pid1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %1, ptr %thread_pid1, align 16
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.pid_nr.exit_crit_edge, label %if.then.i

entry.pid_nr.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %numbers.i = getelementptr inbounds %struct.pid, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %entry.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %15, %if.then.i ], [ 0, %entry.pid_nr.exit_crit_edge ]
  %pid = getelementptr inbounds %struct.task_struct, ptr %left, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %nr.0.i, ptr %pid, align 8
  %tobool.not.i105 = icmp eq ptr %1, null
  br i1 %tobool.not.i105, label %pid_nr.exit.pid_nr.exit109_crit_edge, label %if.then.i107

pid_nr.exit.pid_nr.exit109_crit_edge:             ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr.exit109

if.then.i107:                                     ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %numbers.i106 = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %numbers.i106 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %numbers.i106, align 4
  br label %pid_nr.exit109

pid_nr.exit109:                                   ; preds = %if.then.i107, %pid_nr.exit.pid_nr.exit109_crit_edge
  %nr.0.i108 = phi i32 [ %18, %if.then.i107 ], [ 0, %pid_nr.exit.pid_nr.exit109_crit_edge ]
  %pid92 = getelementptr inbounds %struct.task_struct, ptr %right, i32 0, i32 68
  %19 = ptrtoint ptr %pid92 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %nr.0.i108, ptr %pid92, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @transfer_pid(ptr noundef %old, ptr noundef %new, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid = getelementptr inbounds %struct.task_struct, ptr %old, i32 0, i32 78
  %0 = ptrtoint ptr %thread_pid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_pid, align 16
  %thread_pid1 = getelementptr inbounds %struct.task_struct, ptr %new, i32 0, i32 78
  %2 = ptrtoint ptr %thread_pid1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %thread_pid1, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.task_struct, ptr %old, i32 0, i32 79, i32 %type
  %arrayidx3 = getelementptr %struct.task_struct, ptr %new, i32 0, i32 79, i32 %type
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx3, align 4
  %pprev.i = getelementptr %struct.task_struct, ptr %old, i32 0, i32 79, i32 %type, i32 1
  %6 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i, align 4
  %pprev5.i = getelementptr %struct.task_struct, ptr %new, i32 0, i32 79, i32 %type, i32 1
  %8 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %pprev5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !132
  %9 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev5.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx3, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.hlist_replace_rcu.exit_crit_edge, label %do.body50.i

if.end.hlist_replace_rcu.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_replace_rcu.exit

do.body50.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %pprev53.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pprev53.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx3, ptr %pprev53.i, align 4
  br label %hlist_replace_rcu.exit

hlist_replace_rcu.exit:                           ; preds = %do.body50.i, %if.end.hlist_replace_rcu.exit_crit_edge
  %15 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pid_task(ptr noundef %pid, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.pid, ptr %pid, i32 0, i32 3, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @lockdep_tasklist_lock_is_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.then.do.end12_crit_edge

if.then.do.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

lor.lhs.false:                                    ; preds = %if.then
  %call4 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true8

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @pid_task.__warned, align 1
  br i1 %.b22, label %land.lhs.true8.do.end12_crit_edge, label %if.then10

land.lhs.true8.do.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @pid_task.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @.str.5) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then10, %land.lhs.true8.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %if.then.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %1, null
  %.neg = mul i32 %type, -8
  %idx.neg = add i32 %.neg, -1364
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.neg
  %result.0 = select i1 %tobool14.not, ptr null, ptr %add.ptr
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %entry.if.end18_crit_edge
  %result.1 = phi ptr [ %result.0, %do.end12 ], [ null, %entry.if.end18_crit_edge ]
  ret ptr %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_tasklist_lock_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_task_by_pid_ns(i32 noundef %nr, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b7 = load i1, ptr @find_task_by_pid_ns.__warned, align 1
  br i1 %.b7, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @find_task_by_pid_ns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 416, ptr noundef nonnull @.str.6) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call.i = tail call ptr @idr_find(ptr noundef %ns, i32 noundef %nr) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.pid_task.exit_crit_edge, label %if.then.i

do.end.pid_task.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_task.exit

if.then.i:                                        ; preds = %do.end
  %arrayidx.i = getelementptr %struct.pid, ptr %call.i, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i8 = tail call i32 @lockdep_tasklist_lock_is_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool3.not.i = icmp eq i32 %call.i8, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.then.i.do.end12.i_crit_edge

if.then.i.do.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %call4.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b22.i = load i1, ptr @pid_task.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true8.i.do.end12.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @pid_task.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @.str.5) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %if.then.i.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1364
  %result.0.i = select i1 %tobool14.not.i, ptr null, ptr %add.ptr.i
  br label %pid_task.exit

pid_task.exit:                                    ; preds = %do.end12.i, %do.end.pid_task.exit_crit_edge
  %result.1.i = phi ptr [ %result.0.i, %do.end12.i ], [ null, %do.end.pid_task.exit_crit_edge ]
  ret ptr %result.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_task_by_vpid(i32 noundef %vnr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.task_active_pid_ns.exit_crit_edge, label %if.then.i.i

entry.task_active_pid_ns.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %task_active_pid_ns.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %level.i.i = getelementptr inbounds %struct.pid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level.i.i, align 4
  %ns1.i.i = getelementptr %struct.pid, ptr %5, i32 0, i32 7, i32 %7, i32 1
  %8 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns1.i.i, align 4
  br label %task_active_pid_ns.exit

task_active_pid_ns.exit:                          ; preds = %if.then.i.i, %entry.task_active_pid_ns.exit_crit_edge
  %ns.0.i.i = phi ptr [ %9, %if.then.i.i ], [ null, %entry.task_active_pid_ns.exit_crit_edge ]
  %call2 = tail call ptr @find_task_by_pid_ns(i32 noundef %vnr, ptr noundef %ns.0.i.i)
  ret ptr %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_get_task_by_vpid(i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_pid.i.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %rcu_read_lock.exit.find_task_by_vpid.exit_crit_edge, label %if.then.i.i.i

rcu_read_lock.exit.find_task_by_vpid.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_task_by_vpid.exit

if.then.i.i.i:                                    ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %level.i.i.i = getelementptr inbounds %struct.pid, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i.i.i, align 4
  %ns1.i.i.i = getelementptr %struct.pid, ptr %9, i32 0, i32 7, i32 %11, i32 1
  %12 = ptrtoint ptr %ns1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns1.i.i.i, align 4
  br label %find_task_by_vpid.exit

find_task_by_vpid.exit:                           ; preds = %if.then.i.i.i, %rcu_read_lock.exit.find_task_by_vpid.exit_crit_edge
  %ns.0.i.i.i = phi ptr [ %13, %if.then.i.i.i ], [ null, %rcu_read_lock.exit.find_task_by_vpid.exit_crit_edge ]
  %call2.i = tail call ptr @find_task_by_pid_ns(i32 noundef %nr, ptr noundef %ns.0.i.i.i) #12
  %tobool.not = icmp eq ptr %call2.i, null
  br i1 %tobool.not, label %find_task_by_vpid.exit.if.end_crit_edge, label %if.then

find_task_by_vpid.exit.if.end_crit_edge:          ; preds = %find_task_by_vpid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %find_task_by_vpid.exit
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call2.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %find_task_by_vpid.exit.if.end_crit_edge
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %if.end
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %16 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i11 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_task_pid(ptr noundef %task, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i = icmp eq i32 %type, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  br label %task_pid_ptr.exit

cond.false.i:                                     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %4 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 22, i32 %type
  br label %task_pid_ptr.exit

task_pid_ptr.exit:                                ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %thread_pid.i, %cond.true.i ], [ %arrayidx.i, %cond.false.i ]
  %6 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %cond.i, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %task_pid_ptr.exit.do.end8_crit_edge

task_pid_ptr.exit.do.end8_crit_edge:              ; preds = %task_pid_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %task_pid_ptr.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @get_task_pid.__warned, align 1
  br i1 %.b11, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @get_task_pid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 442, ptr noundef nonnull @.str.5) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %task_pid_ptr.exit.do.end8_crit_edge
  %tobool.not.i12 = icmp eq ptr %7, null
  br i1 %tobool.not.i12, label %do.end8.get_pid.exit_crit_edge, label %if.then.i13

do.end8.get_pid.exit_crit_edge:                   ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.then.i13:                                      ; preds = %do.end8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %7, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i13.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.i13.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i13
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i13.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i13.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %do.end8.get_pid.exit_crit_edge
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i14, label %get_pid.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

get_pid.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %get_pid.exit
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %get_pid.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %10 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i21 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_pid_task(ptr noundef %pid, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not.i4 = icmp eq ptr %pid, null
  br i1 %tobool.not.i4, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then.i6

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i6:                                       ; preds = %rcu_read_lock.exit
  %arrayidx.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 3, i32 %type
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i5 = tail call i32 @lockdep_tasklist_lock_is_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool3.not.i = icmp eq i32 %call.i5, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %if.then.i6.do.end12.i_crit_edge

if.then.i6.do.end12.i_crit_edge:                  ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %if.then.i6
  %call4.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i7, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i7:                                 ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i7.do.end12.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i7.do.end12.i_crit_edge:            ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i7
  %.b22.i = load i1, ptr @pid_task.__warned, align 1
  br i1 %.b22.i, label %land.lhs.true8.i.do.end12.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @pid_task.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @.str.5) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end12.i_crit_edge, %land.lhs.true.i7.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %if.then.i6.do.end12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %5, null
  %.neg.i = mul i32 %type, -8
  %idx.neg.i = add i32 %.neg.i, -1364
  %add.ptr.i = getelementptr i8, ptr %5, i32 %idx.neg.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool14.not.i, %tobool.not
  br i1 %or.cond, label %do.end12.i.if.end_crit_edge, label %if.then

do.end12.i.if.end_crit_edge:                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %do.end12.i
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %add.ptr.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %do.end12.i.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %result.1.i19 = phi ptr [ %add.ptr.i, %if.else.i.i.i.i.if.end_crit_edge ], [ %add.ptr.i, %if.end15.sink.split.i.i.i.i ], [ null, %rcu_read_lock.exit.if.end_crit_edge ], [ null, %do.end12.i.if.end_crit_edge ]
  %call.i8 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i8, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i11

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i11:                                ; preds = %if.end
  %call1.i9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9)
  %tobool.not.i10 = icmp eq i32 %call1.i9, 0
  br i1 %tobool.not.i10, label %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i13

land.lhs.true.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i13:                               ; preds = %land.lhs.true.i11
  %.b4.i12 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12, label %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, label %if.then.i14

land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i14:                                      ; preds = %land.lhs.true2.i13
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i14, %land.lhs.true2.i13.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i11.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %8 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i15 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i15 to ptr
  %preempt_count.i.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i16, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i16, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %result.1.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_get_pid(i32 noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_pid.i.i.i, align 16
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %rcu_read_lock.exit.find_vpid.exit_crit_edge, label %if.then.i.i.i

rcu_read_lock.exit.find_vpid.exit_crit_edge:      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_vpid.exit

if.then.i.i.i:                                    ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %level.i.i.i = getelementptr inbounds %struct.pid, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i.i.i, align 4
  %ns1.i.i.i = getelementptr %struct.pid, ptr %9, i32 0, i32 7, i32 %11, i32 1
  %12 = ptrtoint ptr %ns1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns1.i.i.i, align 4
  br label %find_vpid.exit

find_vpid.exit:                                   ; preds = %if.then.i.i.i, %rcu_read_lock.exit.find_vpid.exit_crit_edge
  %ns.0.i.i.i = phi ptr [ %13, %if.then.i.i.i ], [ null, %rcu_read_lock.exit.find_vpid.exit_crit_edge ]
  %call.i.i = tail call ptr @idr_find(ptr noundef %ns.0.i.i.i, i32 noundef %nr) #12
  %tobool.not.i2 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i2, label %find_vpid.exit.get_pid.exit_crit_edge, label %if.then.i3

find_vpid.exit.get_pid.exit_crit_edge:            ; preds = %find_vpid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.then.i3:                                       ; preds = %find_vpid.exit
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i.i, ptr nonnull %call.i.i, i32 1, ptr nonnull elementtype(i32) %call.i.i) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.i3.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i.i, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %find_vpid.exit.get_pid.exit_crit_edge
  %call.i4 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4, label %get_pid.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i7

get_pid.exit.rcu_read_unlock.exit_crit_edge:      ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i7:                                 ; preds = %get_pid.exit
  %call1.i5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not.i6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not.i6, label %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i9

land.lhs.true.i7.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i9:                                ; preds = %land.lhs.true.i7
  %.b4.i8 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8, label %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, label %if.then.i10

land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i10:                                      ; preds = %land.lhs.true2.i9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i10, %land.lhs.true2.i9.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i7.rcu_read_unlock.exit_crit_edge, %get_pid.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %16 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i11 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i11 to ptr
  %preempt_count.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i12, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i12, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %call.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pid_nr_ns(ptr noundef readonly %pid, ptr noundef readonly %ns) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %level = getelementptr inbounds %struct.pid_namespace, ptr %ns, i32 0, i32 5
  %0 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level, align 4
  %level1 = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 1
  %2 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ugt i32 %1, %3
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %ns3 = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %1, i32 1
  %4 = ptrtoint ptr %ns3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns3, align 4
  %cmp4 = icmp eq ptr %5, %ns
  br i1 %cmp4, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %nr.0 = phi i32 [ %7, %if.then5 ], [ 0, %if.then.if.end7_crit_edge ], [ 0, %land.lhs.true.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ]
  ret i32 %nr.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pid_vnr(ptr noundef readonly %pid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 78
  %4 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thread_pid.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.task_active_pid_ns.exit_crit_edge, label %if.then.i.i

entry.task_active_pid_ns.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %task_active_pid_ns.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %level.i.i = getelementptr inbounds %struct.pid, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level.i.i, align 4
  %ns1.i.i = getelementptr %struct.pid, ptr %5, i32 0, i32 7, i32 %7, i32 1
  %8 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns1.i.i, align 4
  br label %task_active_pid_ns.exit

task_active_pid_ns.exit:                          ; preds = %if.then.i.i, %entry.task_active_pid_ns.exit_crit_edge
  %ns.0.i.i = phi ptr [ %9, %if.then.i.i ], [ null, %entry.task_active_pid_ns.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %pid, null
  br i1 %tobool.not.i, label %task_active_pid_ns.exit.pid_nr_ns.exit_crit_edge, label %land.lhs.true.i

task_active_pid_ns.exit.pid_nr_ns.exit_crit_edge: ; preds = %task_active_pid_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr_ns.exit

land.lhs.true.i:                                  ; preds = %task_active_pid_ns.exit
  %level.i = getelementptr inbounds %struct.pid_namespace, ptr %ns.0.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i, align 4
  %level1.i = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 1
  %12 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %level1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp ugt i32 %11, %13
  br i1 %cmp.not.i, label %land.lhs.true.i.pid_nr_ns.exit_crit_edge, label %if.then.i

land.lhs.true.i.pid_nr_ns.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %ns3.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %11, i32 1
  %14 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns3.i, align 4
  %cmp4.i = icmp eq ptr %15, %ns.0.i.i
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.pid_nr_ns.exit_crit_edge

if.then.i.pid_nr_ns.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr_ns.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %11
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  br label %pid_nr_ns.exit

pid_nr_ns.exit:                                   ; preds = %if.then5.i, %if.then.i.pid_nr_ns.exit_crit_edge, %land.lhs.true.i.pid_nr_ns.exit_crit_edge, %task_active_pid_ns.exit.pid_nr_ns.exit_crit_edge
  %nr.0.i = phi i32 [ %17, %if.then5.i ], [ 0, %if.then.i.pid_nr_ns.exit_crit_edge ], [ 0, %land.lhs.true.i.pid_nr_ns.exit_crit_edge ], [ 0, %task_active_pid_ns.exit.pid_nr_ns.exit_crit_edge ]
  ret i32 %nr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef %type, ptr noundef readonly %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !133
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %ns, null
  br i1 %tobool.not, label %if.then, label %rcu_read_lock.exit.if.end_crit_edge

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task1, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_pid.i.i, align 16
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %level.i.i = getelementptr inbounds %struct.pid, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level.i.i, align 4
  %ns1.i.i = getelementptr %struct.pid, ptr %9, i32 0, i32 7, i32 %11, i32 1
  %12 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ns1.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %ns.addr.0 = phi ptr [ %ns, %rcu_read_lock.exit.if.end_crit_edge ], [ %13, %if.then.i.i ], [ null, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.i = icmp eq i32 %type, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 78
  br label %task_pid_ptr.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %14 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 22, i32 %type
  br label %task_pid_ptr.exit

task_pid_ptr.exit:                                ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %thread_pid.i, %cond.true.i ], [ %arrayidx.i, %cond.false.i ]
  %16 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %cond.i, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %task_pid_ptr.exit.do.end14_crit_edge

task_pid_ptr.exit.do.end14_crit_edge:             ; preds = %task_pid_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

land.lhs.true:                                    ; preds = %task_pid_ptr.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end14_crit_edge, label %land.lhs.true9

land.lhs.true.do.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b18 = load i1, ptr @__task_pid_nr_ns.__warned, align 1
  br i1 %.b18, label %land.lhs.true9.do.end14_crit_edge, label %if.then11

land.lhs.true9.do.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__task_pid_nr_ns.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 500, ptr noundef nonnull @.str.5) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %land.lhs.true9.do.end14_crit_edge, %land.lhs.true.do.end14_crit_edge, %task_pid_ptr.exit.do.end14_crit_edge
  %tobool.not.i19 = icmp eq ptr %17, null
  br i1 %tobool.not.i19, label %do.end14.pid_nr_ns.exit_crit_edge, label %land.lhs.true.i20

do.end14.pid_nr_ns.exit_crit_edge:                ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr_ns.exit

land.lhs.true.i20:                                ; preds = %do.end14
  %level.i = getelementptr inbounds %struct.pid_namespace, ptr %ns.addr.0, i32 0, i32 5
  %18 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level.i, align 4
  %level1.i = getelementptr inbounds %struct.pid, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp ugt i32 %19, %21
  br i1 %cmp.not.i, label %land.lhs.true.i20.pid_nr_ns.exit_crit_edge, label %if.then.i21

land.lhs.true.i20.pid_nr_ns.exit_crit_edge:       ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr_ns.exit

if.then.i21:                                      ; preds = %land.lhs.true.i20
  %ns3.i = getelementptr %struct.pid, ptr %17, i32 0, i32 7, i32 %19, i32 1
  %22 = ptrtoint ptr %ns3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ns3.i, align 4
  %cmp4.i = icmp eq ptr %23, %ns.addr.0
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i21.pid_nr_ns.exit_crit_edge

if.then.i21.pid_nr_ns.exit_crit_edge:             ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr_ns.exit

if.then5.i:                                       ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i22 = getelementptr %struct.pid, ptr %17, i32 0, i32 7, i32 %19
  %24 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i22, align 4
  br label %pid_nr_ns.exit

pid_nr_ns.exit:                                   ; preds = %if.then5.i, %if.then.i21.pid_nr_ns.exit_crit_edge, %land.lhs.true.i20.pid_nr_ns.exit_crit_edge, %do.end14.pid_nr_ns.exit_crit_edge
  %nr.0.i = phi i32 [ %25, %if.then5.i ], [ 0, %if.then.i21.pid_nr_ns.exit_crit_edge ], [ 0, %land.lhs.true.i20.pid_nr_ns.exit_crit_edge ], [ 0, %do.end14.pid_nr_ns.exit_crit_edge ]
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i23, label %pid_nr_ns.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

pid_nr_ns.exit.rcu_read_unlock.exit_crit_edge:    ; preds = %pid_nr_ns.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %pid_nr_ns.exit
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %pid_nr_ns.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !134
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i.i.i.i.i30 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %nr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_ge_pid(i32 noundef %nr, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  %nr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nr, ptr %nr.addr, align 4
  %call = call ptr @idr_get_next(ptr noundef %ns, ptr noundef nonnull %nr.addr) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pidfd_get_pid(i32 noundef %fd, ptr nocapture noundef writeonly %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #12, !noalias !135
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pidfd_pid(ptr noundef nonnull %0) #12
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call2, null
  br i1 %tobool.not.i, label %if.then4.get_pid.exit_crit_edge, label %if.then.i

if.then4.get_pid.exit_crit_edge:                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.then.i:                                        ; preds = %if.then4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge, %if.then4.get_pid.exit_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %3 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_flags, align 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %get_pid.exit, %if.end.if.end7_crit_edge
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i13 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i13, label %if.end7.cleanup_crit_edge, label %if.then.i14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i14:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fput(ptr noundef nonnull %0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i14, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ], [ %call2, %if.end7.cleanup_crit_edge ], [ %call2, %if.then.i14 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pidfd_get_task(i32 noundef %pidfd, ptr nocapture noundef writeonly %flags) local_unnamed_addr #0 align 64 {
entry:
  %f_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags) #12
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f_flags, align 4, !annotation !138
  %call = call ptr @pidfd_get_pid(i32 noundef %pidfd, ptr noundef nonnull %f_flags)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @get_pid_task(ptr noundef %call, i32 noundef 1)
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.put_pid.exit_crit_edge, label %if.end.i

if.end.put_pid.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_pid.exit

if.end.i:                                         ; preds = %if.end
  %level.i = getelementptr inbounds %struct.pid, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %call, i32 0, i32 7, i32 %2, i32 1
  %3 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns1.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then2.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_pid.exit_crit_edge, label %if.then10.i.i.i.i, !prof !122

if.end5.i.i.i.i.put_pid.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_pid.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #12
  br label %put_pid.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %pid_cachep.i = getelementptr inbounds %struct.pid_namespace, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %pid_cachep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pid_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %call) #12
  tail call void @put_pid_ns(ptr noundef %4) #12
  br label %put_pid.exit

put_pid.exit:                                     ; preds = %if.then2.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_pid.exit_crit_edge, %if.end.put_pid.exit_crit_edge
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %put_pid.exit.cleanup_crit_edge, label %if.end6

put_pid.exit.cleanup_crit_edge:                   ; preds = %put_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %put_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %put_pid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ inttoptr (i32 -3 to ptr), %put_pid.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pidfd_create(ptr noundef %pid, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp ne ptr %1, null
  %and = and i32 %flags, -526339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool1.not, %tobool.not.i.i
  br i1 %or.cond, label %if.then.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #12, !srcloc !125
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !126

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !122

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_pid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i.i) #12
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid.exit_crit_edge
  %or5 = or i32 %flags, 524290
  %call6 = tail call i32 @anon_inode_getfd(ptr noundef nonnull @.str.7, ptr noundef nonnull @pidfd_fops, ptr noundef nonnull %pid, i32 noundef %or5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end.i, label %get_pid.exit.cleanup_crit_edge

get_pid.exit.cleanup_crit_edge:                   ; preds = %get_pid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %get_pid.exit
  %level.i = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 1
  %4 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %pid, i32 0, i32 7, i32 %5, i32 1
  %6 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns1.i, align 4
  %call.i.i.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then2.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i16 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i16, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !122

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef 3) #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %pid_cachep.i = getelementptr inbounds %struct.pid_namespace, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %pid_cachep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pid_cachep.i, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %pid) #12
  tail call void @put_pid_ns(ptr noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %get_pid.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %get_pid.exit.cleanup_crit_edge ], [ %call6, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call6, %if.then10.i.i.i.i ], [ %call6, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pidfd_open(i32 noundef %pid, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pid)
  %cmp.i = icmp slt i32 %pid, 1
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.__do_sys_pidfd_open.exit_crit_edge, label %if.end2.i

entry.__do_sys_pidfd_open.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pidfd_open.exit

if.end2.i:                                        ; preds = %entry
  %call.i = tail call ptr @find_get_pid(i32 noundef %pid) #12
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %if.end2.i.__do_sys_pidfd_open.exit_crit_edge, label %if.end.i.i

if.end2.i.__do_sys_pidfd_open.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pidfd_open.exit

if.end.i.i:                                       ; preds = %if.end2.i
  %call6.i = tail call i32 @pidfd_create(ptr noundef nonnull %call.i, i32 noundef %flags) #12
  %level.i.i = getelementptr inbounds %struct.pid, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %level.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level.i.i, align 4
  %ns1.i.i = getelementptr %struct.pid, ptr %call.i, i32 0, i32 7, i32 %1, i32 1
  %2 = ptrtoint ptr %ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns1.i.i, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then2.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.__do_sys_pidfd_open.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !122

if.end5.i.i.i.i.i.__do_sys_pidfd_open.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pidfd_open.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef 3) #12
  br label %__do_sys_pidfd_open.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %pid_cachep.i.i = getelementptr inbounds %struct.pid_namespace, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %pid_cachep.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pid_cachep.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %call.i) #12
  tail call void @put_pid_ns(ptr noundef %3) #12
  br label %__do_sys_pidfd_open.exit

__do_sys_pidfd_open.exit:                         ; preds = %if.then2.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__do_sys_pidfd_open.exit_crit_edge, %if.end2.i.__do_sys_pidfd_open.exit_crit_edge, %entry.__do_sys_pidfd_open.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_pidfd_open.exit_crit_edge ], [ -3, %if.end2.i.__do_sys_pidfd_open.exit_crit_edge ], [ %call6.i, %if.end5.i.i.i.i.i.__do_sys_pidfd_open.exit_crit_edge ], [ %call6.i, %if.then10.i.i.i.i.i ], [ %call6.i, %if.then2.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pid_idr_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pid_max_max, align 4
  %1 = load i32, ptr @pid_max, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #12
  %mul = shl i32 %call4.i.i, 10
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %mul)
  %4 = tail call i32 @llvm.smin.i32(i32 %0, i32 %3)
  store i32 %4, ptr @pid_max, align 4
  %5 = load i32, ptr @pid_max_min, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i126 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #12
  %mul8 = shl i32 %call4.i.i126, 3
  %7 = tail call i32 @llvm.smax.i32(i32 %5, i32 %mul8)
  store i32 %7, ptr @pid_max_min, align 4
  %8 = load i32, ptr @pid_max, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %8, i32 noundef %7) #15
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @init_pid_ns, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  store i32 67108868, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 0, i32 2), align 4
  %call19 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.13, i32 noundef 140, i32 noundef 4, i32 noundef 67379200, ptr noundef null) #12
  store ptr %call19, ptr getelementptr inbounds (%struct.pid_namespace, ptr @init_pid_ns, i32 0, i32 4), align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pidfd_getfd(i32 noundef %pidfd, i32 noundef %fd, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_pidfd_getfd.exit_crit_edge

entry.__do_sys_pidfd_getfd.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pidfd_getfd.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @__fdget(i32 noundef %pidfd) #12, !noalias !139
  %and.i.i.i = and i32 %call.i.i, -4
  %0 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end.i.__do_sys_pidfd_getfd.exit_crit_edge, label %if.end3.i

if.end.i.__do_sys_pidfd_getfd.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pidfd_getfd.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i = tail call ptr @pidfd_pid(ptr noundef nonnull %0) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call.i to i32
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end3.i
  %call.i15.i = tail call ptr @get_pid_task(ptr noundef %call.i, i32 noundef 0) #12
  %tobool.not.i.i = icmp eq ptr %call.i15.i, null
  br i1 %tobool.not.i.i, label %if.else.i.if.end9.i_crit_edge, label %if.end.i.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.else.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i15.i, i32 0, i32 111
  %2 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal.i.i.i, align 16
  %exec_update_lock.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 61
  %call.i.i.i = tail call i32 @down_read_killable(ptr noundef %exec_update_lock.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %4 = inttoptr i32 %call.i.i.i to ptr
  br label %__pidfd_fget.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %call2.i.i.i = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %call.i15.i, i32 noundef 18) #12
  br i1 %call2.i.i.i, label %if.then3.i.i.i, label %if.end.i.i.i.if.end6.i.i.i_crit_edge

if.end.i.i.i.if.end6.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i.i.i = tail call ptr @fget_task(ptr noundef nonnull %call.i15.i, i32 noundef %fd) #12
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.end.i.i.i.if.end6.i.i.i_crit_edge
  %file.0.i.i.i = phi ptr [ %call4.i.i.i, %if.then3.i.i.i ], [ inttoptr (i32 -1 to ptr), %if.end.i.i.i.if.end6.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal.i.i.i, align 16
  %exec_update_lock8.i.i.i = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 61
  tail call void @up_read(ptr noundef %exec_update_lock8.i.i.i) #12
  %tobool9.not.i.i.i = icmp eq ptr %file.0.i.i.i, null
  %spec.select.i.i.i = select i1 %tobool9.not.i.i.i, ptr inttoptr (i32 -9 to ptr), ptr %file.0.i.i.i
  br label %__pidfd_fget.exit.i.i

__pidfd_fget.exit.i.i:                            ; preds = %if.end6.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi ptr [ %4, %if.then.i.i.i ], [ %spec.select.i.i.i, %if.end6.i.i.i ]
  %usage.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i15.i, i32 0, i32 2
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i14.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %__pidfd_fget.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.put_task_struct.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !122

if.end5.i.i.i.i.i.i.put_task_struct.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_task_struct.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef 3) #12
  br label %put_task_struct.exit.i.i

if.then.i14.i.i:                                  ; preds = %__pidfd_fget.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @__put_task_struct(ptr noundef nonnull %call.i15.i) #12
  br label %put_task_struct.exit.i.i

put_task_struct.exit.i.i:                         ; preds = %if.then.i14.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.put_task_struct.exit.i.i_crit_edge
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then3.i.i, label %if.end5.i.i

if.then3.i.i:                                     ; preds = %put_task_struct.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %retval.0.i.i.i to i32
  br label %if.end9.i

if.end5.i.i:                                      ; preds = %put_task_struct.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = tail call i32 @receive_fd(ptr noundef %retval.0.i.i.i, i32 noundef 524288) #12
  tail call void @fput(ptr noundef %retval.0.i.i.i) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end5.i.i, %if.then3.i.i, %if.else.i.if.end9.i_crit_edge, %if.then6.i
  %ret.0.i = phi i32 [ %1, %if.then6.i ], [ %8, %if.then3.i.i ], [ %call6.i.i, %if.end5.i.i ], [ -3, %if.else.i.if.end9.i_crit_edge ]
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i16.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i16.i, label %if.end9.i.__do_sys_pidfd_getfd.exit_crit_edge, label %if.then.i.i

if.end9.i.__do_sys_pidfd_getfd.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__do_sys_pidfd_getfd.exit

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fput(ptr noundef nonnull %0) #12
  br label %__do_sys_pidfd_getfd.exit

__do_sys_pidfd_getfd.exit:                        ; preds = %if.then.i.i, %if.end9.i.__do_sys_pidfd_getfd.exit_crit_edge, %if.end.i.__do_sys_pidfd_getfd.exit_crit_edge, %entry.__do_sys_pidfd_getfd.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.__do_sys_pidfd_getfd.exit_crit_edge ], [ -9, %if.end.i.__do_sys_pidfd_getfd.exit_crit_edge ], [ %ret.0.i, %if.end9.i.__do_sys_pidfd_getfd.exit_crit_edge ], [ %ret.0.i, %if.then.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !110) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !122

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @receive_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !26, !28, !30, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !104, !105, !106, !107, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @init_struct_pid, !1, !"init_struct_pid", i1 false, i1 false}
!1 = !{!"../kernel/pid.c", i32 48, i32 12}
!2 = !{ptr @pid_max, !3, !"pid_max", i1 false, i1 false}
!3 = !{!"../kernel/pid.c", i32 62, i32 5}
!4 = !{ptr @pid_max_min, !5, !"pid_max_min", i1 false, i1 false}
!5 = !{!"../kernel/pid.c", i32 66, i32 5}
!6 = !{ptr @pid_max_max, !7, !"pid_max_max", i1 false, i1 false}
!7 = !{!"../kernel/pid.c", i32 67, i32 5}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/pid.c", i32 77, i32 9}
!10 = !{ptr @init_pid_ns, !11, !"init_pid_ns", i1 false, i1 false}
!11 = !{!"../kernel/pid.c", i32 75, i32 22}
!12 = !{ptr @__ksymtab_init_pid_ns, !13, !"__ksymtab_init_pid_ns", i1 false, i1 false}
!13 = !{!"../kernel/pid.c", i32 87, i32 1}
!14 = !{ptr @__ksymtab_put_pid, !15, !"__ksymtab_put_pid", i1 false, i1 false}
!15 = !{!"../kernel/pid.c", i32 118, i32 1}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/pid.c", i32 147, i32 4}
!18 = !{ptr @alloc_pid.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../kernel/pid.c", i32 261, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @alloc_pid.__key.3, !22, !"__key", i1 false, i1 false}
!22 = !{!"../kernel/pid.c", i32 265, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__ksymtab_find_pid_ns, !25, !"__ksymtab_find_pid_ns", i1 false, i1 false}
!25 = !{!"../kernel/pid.c", i32 313, i32 1}
!26 = !{ptr @__ksymtab_find_vpid, !27, !"__ksymtab_find_vpid", i1 false, i1 false}
!27 = !{!"../kernel/pid.c", i32 319, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../kernel/pid.c", i32 401, i32 11}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__ksymtab_pid_task, !32, !"__ksymtab_pid_task", i1 false, i1 false}
!32 = !{!"../kernel/pid.c", i32 408, i32 1}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../kernel/pid.c", i32 415, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../kernel/pid.c", i32 442, i32 16}
!38 = !{ptr @__ksymtab_get_task_pid, !39, !"__ksymtab_get_task_pid", i1 false, i1 false}
!39 = !{!"../kernel/pid.c", i32 446, i32 1}
!40 = !{ptr @__ksymtab_get_pid_task, !41, !"__ksymtab_get_pid_task", i1 false, i1 false}
!41 = !{!"../kernel/pid.c", i32 458, i32 1}
!42 = !{ptr @__ksymtab_find_get_pid, !43, !"__ksymtab_find_get_pid", i1 false, i1 false}
!43 = !{!"../kernel/pid.c", i32 470, i32 1}
!44 = !{ptr @__ksymtab_pid_nr_ns, !45, !"__ksymtab_pid_nr_ns", i1 false, i1 false}
!45 = !{!"../kernel/pid.c", i32 484, i32 1}
!46 = !{ptr @__ksymtab_pid_vnr, !47, !"__ksymtab_pid_vnr", i1 false, i1 false}
!47 = !{!"../kernel/pid.c", i32 490, i32 1}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../kernel/pid.c", i32 500, i32 17}
!50 = !{ptr @__ksymtab___task_pid_nr_ns, !51, !"__ksymtab___task_pid_nr_ns", i1 false, i1 false}
!51 = !{!"../kernel/pid.c", i32 505, i32 1}
!52 = !{ptr @__ksymtab_task_active_pid_ns, !53, !"__ksymtab_task_active_pid_ns", i1 false, i1 false}
!53 = !{!"../kernel/pid.c", i32 511, i32 1}
!54 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/pid.c", i32 604, i32 24}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/pid.c", i32 628, i32 1}
!58 = !{ptr @event_enter__pidfd_open, !57, !"event_enter__pidfd_open", i1 false, i1 false}
!59 = !{ptr @__event_enter__pidfd_open, !57, !"__event_enter__pidfd_open", i1 false, i1 false}
!60 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @event_exit__pidfd_open, !57, !"event_exit__pidfd_open", i1 false, i1 false}
!62 = !{ptr @__event_exit__pidfd_open, !57, !"__event_exit__pidfd_open", i1 false, i1 false}
!63 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__syscall_meta__pidfd_open, !57, !"__syscall_meta__pidfd_open", i1 false, i1 false}
!65 = !{ptr @__p_syscall_meta__pidfd_open, !57, !"__p_syscall_meta__pidfd_open", i1 false, i1 false}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/pid.c", i32 659, i32 2}
!68 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pid_idr_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @pid_idr_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/pid.c", i32 663, i32 27}
!73 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/pid.c", i32 723, i32 1}
!75 = !{ptr @event_enter__pidfd_getfd, !74, !"event_enter__pidfd_getfd", i1 false, i1 false}
!76 = !{ptr @__event_enter__pidfd_getfd, !74, !"__event_enter__pidfd_getfd", i1 false, i1 false}
!77 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @event_exit__pidfd_getfd, !74, !"event_exit__pidfd_getfd", i1 false, i1 false}
!79 = !{ptr @__event_exit__pidfd_getfd, !74, !"__event_exit__pidfd_getfd", i1 false, i1 false}
!80 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__syscall_meta__pidfd_getfd, !74, !"__syscall_meta__pidfd_getfd", i1 false, i1 false}
!82 = !{ptr @__p_syscall_meta__pidfd_getfd, !74, !"__p_syscall_meta__pidfd_getfd", i1 false, i1 false}
!83 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../kernel/pid.c", i32 103, i32 36}
!85 = !{ptr @pidmap_lock, !84, !"pidmap_lock", i1 false, i1 false}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!88 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!92 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!96 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @types__pidfd_open, !57, !"types__pidfd_open", i1 false, i1 false}
!100 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @args__pidfd_open, !57, !"args__pidfd_open", i1 false, i1 false}
!102 = !{ptr @xa_init_flags.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!104 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @types__pidfd_getfd, !74, !"types__pidfd_getfd", i1 false, i1 false}
!107 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @args__pidfd_getfd, !74, !"args__pidfd_getfd", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148771419}
!121 = !{i64 2148685859, i64 2148685891, i64 2148685920, i64 2148685954, i64 2148685985, i64 2148686008}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2149967654}
!124 = !{i64 2153361993}
!125 = !{i64 2148683394, i64 2148683426, i64 2148683455, i64 2148683489, i64 2148683520, i64 2148683543}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 2151581365}
!128 = !{i64 2151553842}
!129 = !{i64 2151561295}
!130 = !{i64 2157425309}
!131 = !{i64 2157433195}
!132 = !{i64 2151541140}
!133 = !{i64 2150017197}
!134 = !{i64 2150017463}
!135 = !{!136}
!136 = distinct !{!136, !137, !"fdget: %agg.result"}
!137 = distinct !{!137, !"fdget"}
!138 = !{!"auto-init"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"fdget: %agg.result"}
!141 = distinct !{!141, !"fdget"}
