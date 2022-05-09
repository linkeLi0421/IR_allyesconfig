; ModuleID = '/llk/IR_all_yes/kernel/capability.c_pt.bc'
source_filename = "../kernel/capability.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__cap_empty_set\22, \22a\22\09"
module asm "\09.weak\09__crc___cap_empty_set\09\09\09\09"
module asm "\09.long\09__crc___cap_empty_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cap_empty_set:\09\09\09\09\09"
module asm "\09.asciz \09\22__cap_empty_set\22\09\09\09\09\09"
module asm "__kstrtabns___cap_empty_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+has_capability\22, \22a\22\09"
module asm "\09.weak\09__crc_has_capability\09\09\09\09"
module asm "\09.long\09__crc_has_capability\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_has_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22has_capability\22\09\09\09\09\09"
module asm "__kstrtabns_has_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ns_capable\22, \22a\22\09"
module asm "\09.weak\09__crc_ns_capable\09\09\09\09"
module asm "\09.long\09__crc_ns_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ns_capable_noaudit\22, \22a\22\09"
module asm "\09.weak\09__crc_ns_capable_noaudit\09\09\09\09"
module asm "\09.long\09__crc_ns_capable_noaudit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_capable_noaudit:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_capable_noaudit\22\09\09\09\09\09"
module asm "__kstrtabns_ns_capable_noaudit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ns_capable_setid\22, \22a\22\09"
module asm "\09.weak\09__crc_ns_capable_setid\09\09\09\09"
module asm "\09.long\09__crc_ns_capable_setid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_capable_setid:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_capable_setid\22\09\09\09\09\09"
module asm "__kstrtabns_ns_capable_setid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+capable\22, \22a\22\09"
module asm "\09.weak\09__crc_capable\09\09\09\09"
module asm "\09.long\09__crc_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22capable\22\09\09\09\09\09"
module asm "__kstrtabns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+file_ns_capable\22, \22a\22\09"
module asm "\09.weak\09__crc_file_ns_capable\09\09\09\09"
module asm "\09.long\09__crc_file_ns_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22file_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_file_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+capable_wrt_inode_uidgid\22, \22a\22\09"
module asm "\09.weak\09__crc_capable_wrt_inode_uidgid\09\09\09\09"
module asm "\09.long\09__crc_capable_wrt_inode_uidgid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capable_wrt_inode_uidgid:\09\09\09\09\09"
module asm "\09.asciz \09\22capable_wrt_inode_uidgid\22\09\09\09\09\09"
module asm "__kstrtabns_capable_wrt_inode_uidgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_cap_struct = type { [2 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.39 }
%union.anon.39 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.41, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__user_cap_data_struct = type { i32, i32, i32 }
%struct.__user_cap_header_struct = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.96 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.98 = type { ptr }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.callback_head }

@__cap_empty_set = dso_local constant %struct.kernel_cap_struct zeroinitializer, align 4
@__kstrtab___cap_empty_set = external dso_local constant [0 x i8], align 1
@__kstrtabns___cap_empty_set = external dso_local constant [0 x i8], align 1
@__ksymtab___cap_empty_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cap_empty_set to i32), ptr @__kstrtab___cap_empty_set, ptr @__kstrtabns___cap_empty_set }, section "___ksymtab+__cap_empty_set", align 4
@file_caps_enabled = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__setup_str_file_caps_disable = internal constant [13 x i8] c"no_file_caps\00", section ".init.rodata", align 1
@__setup_file_caps_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_file_caps_disable, ptr @file_caps_disable, i32 0 }, section ".init.setup", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_capget\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__capget = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 2, ptr @types__capget, ptr @args__capget, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__capget, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__capget, i64 20) }, ptr @event_enter__capget, ptr @event_exit__capget }, align 4
@event_enter__capget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__capget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__capget = internal global ptr @event_enter__capget, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_capget\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__capget = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__capget, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__capget = internal global ptr @event_exit__capget, section "_ftrace_events", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_capget\00", [21 x i8] zeroinitializer }, align 32
@types__capget = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@args__capget = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__capget = internal global ptr @__syscall_meta__capget, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_capset\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__capset = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 2, ptr @types__capset, ptr @args__capset, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__capset, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__capset, i64 20) }, ptr @event_enter__capset, ptr @event_exit__capset }, align 4
@event_enter__capset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__capset, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__capset = internal global ptr @event_enter__capset, section "_ftrace_events", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_capset\00", [16 x i8] zeroinitializer }, align 32
@event_exit__capset = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__capset, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__capset = internal global ptr @event_exit__capset, section "_ftrace_events", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_capset\00", [21 x i8] zeroinitializer }, align 32
@types__capset = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr @.str.19], [24 x i8] zeroinitializer }, align 32
@args__capset = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__capset = internal global ptr @__syscall_meta__capset, section "__syscalls_metadata", align 4
@has_ns_capability.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/capability.c\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_has_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_has_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_has_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @has_capability to i32), ptr @__kstrtab_has_capability, ptr @__kstrtabns_has_capability }, section "___ksymtab+has_capability", align 4
@has_ns_capability_noaudit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_capable to i32), ptr @__kstrtab_ns_capable, ptr @__kstrtabns_ns_capable }, section "___ksymtab+ns_capable", align 4
@__kstrtab_ns_capable_noaudit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_capable_noaudit = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_capable_noaudit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_capable_noaudit to i32), ptr @__kstrtab_ns_capable_noaudit, ptr @__kstrtabns_ns_capable_noaudit }, section "___ksymtab+ns_capable_noaudit", align 4
@__kstrtab_ns_capable_setid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_capable_setid = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_capable_setid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_capable_setid to i32), ptr @__kstrtab_ns_capable_setid, ptr @__kstrtabns_ns_capable_setid }, section "___ksymtab+ns_capable_setid", align 4
@__kstrtab_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capable to i32), ptr @__kstrtab_capable, ptr @__kstrtabns_capable }, section "___ksymtab+capable", align 4
@file_ns_capable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_file_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_file_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_ns_capable to i32), ptr @__kstrtab_file_ns_capable, ptr @__kstrtabns_file_ns_capable }, section "___ksymtab+file_ns_capable", align 4
@__kstrtab_capable_wrt_inode_uidgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_capable_wrt_inode_uidgid = external dso_local constant [0 x i8], align 1
@__ksymtab_capable_wrt_inode_uidgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capable_wrt_inode_uidgid to i32), ptr @__kstrtab_capable_wrt_inode_uidgid, ptr @__kstrtabns_capable_wrt_inode_uidgid }, section "___ksymtab+capable_wrt_inode_uidgid", align 4
@ptracer_capable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cap_user_header_t\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cap_user_data_t\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"header\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dataptr\00", [24 x i8] zeroinitializer }, align 32
@warn_legacy_capability_use.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@warn_legacy_capability_use._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016capability: warning: `%s' uses 32-bit capabilities (legacy support in use)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"warn_legacy_capability_use\00", [37 x i8] zeroinitializer }, align 32
@warn_legacy_capability_use._entry_ptr = internal global ptr @warn_legacy_capability_use._entry, section ".printk_index", align 4
@warn_deprecated_v2.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@warn_deprecated_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016capability: warning: `%s' uses deprecated v2 capabilities in a way that may be insecure\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"warn_deprecated_v2\00", [45 x i8] zeroinitializer }, align 32
@warn_deprecated_v2._entry_ptr = internal global ptr @warn_deprecated_v2._entry, section ".printk_index", align 4
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"const cap_user_data_t\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ns_capable_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\012capability: capable() called with invalid cap=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ns_capable_common\00", [46 x i8] zeroinitializer }, align 32
@ns_capable_common._entry_ptr = internal global ptr @ns_capable_common._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 429392688, i64 537333798, i64 537396514]
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"file_caps_enabled\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 30, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"event_enter__capget\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"event_exit__capget\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"types__capget\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"args__capget\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"event_enter__capset\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"event_exit__capset\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"types__capset\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"args__capset\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 300, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 148, i32 1 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 50, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 74, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 230, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 214, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 174, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 222, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 695, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 723, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [23 x i8] c"../kernel/capability.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 371, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__event_enter__capget, ptr @__event_enter__capset, ptr @__event_exit__capget, ptr @__event_exit__capset, ptr @__ksymtab___cap_empty_set, ptr @__ksymtab_capable, ptr @__ksymtab_capable_wrt_inode_uidgid, ptr @__ksymtab_file_ns_capable, ptr @__ksymtab_has_capability, ptr @__ksymtab_ns_capable, ptr @__ksymtab_ns_capable_noaudit, ptr @__ksymtab_ns_capable_setid, ptr @__p_syscall_meta__capget, ptr @__p_syscall_meta__capset, ptr @__setup_file_caps_disable, ptr @__syscall_meta__capget, ptr @__syscall_meta__capset, ptr @event_enter__capget, ptr @event_enter__capset, ptr @event_exit__capget, ptr @event_exit__capset, ptr @ns_capable_common._entry, ptr @ns_capable_common._entry_ptr, ptr @warn_deprecated_v2._entry, ptr @warn_deprecated_v2._entry_ptr, ptr @warn_legacy_capability_use._entry, ptr @warn_legacy_capability_use._entry_ptr, ptr @file_caps_enabled, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__capget, ptr @args__capget, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__capset, ptr @args__capset, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @file_caps_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__capget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__capget to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__capget to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__capget to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__capset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__capset to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__capset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__capset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_legacy_capability_use._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_deprecated_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns_capable_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_capget = dso_local alias i32 (ptr, ptr), ptr @__se_sys_capget
@sys_capset = dso_local alias i32 (ptr, ptr), ptr @__se_sys_capset

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @file_caps_disable(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @file_caps_enabled, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_capget(i32 noundef %header, i32 noundef %dataptr) #1 align 64 {
entry:
  %tocopy.i = alloca i32, align 4
  %pE.i = alloca %struct.kernel_cap_struct, align 4
  %pI.i = alloca %struct.kernel_cap_struct, align 4
  %pP.i = alloca %struct.kernel_cap_struct, align 4
  %kdata.i = alloca [2 x %struct.__user_cap_data_struct], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %header to ptr
  %1 = inttoptr i32 %dataptr to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tocopy.i) #7
  %2 = ptrtoint ptr %tocopy.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tocopy.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pE.i) #7
  %3 = ptrtoint ptr %pE.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pE.i, align 4, !annotation !112
  %4 = getelementptr inbounds [2 x i32], ptr %pE.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pI.i) #7
  %6 = ptrtoint ptr %pI.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pI.i, align 4, !annotation !112
  %7 = getelementptr inbounds [2 x i32], ptr %pI.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pP.i) #7
  %9 = ptrtoint ptr %pP.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pP.i, align 4, !annotation !112
  %10 = getelementptr inbounds [2 x i32], ptr %pP.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !112
  %call.i = call fastcc i32 @cap_validate_magic(ptr noundef %0, ptr noundef nonnull %tocopy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dataptr)
  %cmp.i = icmp eq i32 %dataptr, 0
  %cmp.not.i = xor i1 %cmp.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.not.i, i1 false
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, -22
  %or.cond52.i = select i1 %cmp.i, i1 %cmp3.i, i1 false
  %cond.i = select i1 %or.cond52.i, i32 0, i32 %call.i
  br label %__do_sys_capget.exit

if.end.i:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 159) #7
  %pid4.i = getelementptr inbounds %struct.__user_cap_header_struct, ptr %0, i32 0, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !113
  %and.i.i = and i32 %14, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pid4.i, i32 -1226833921) #7, !srcloc !116
  %asmresult.i = extractvalue { i32, i32 } %15, 0
  %asmresult6.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i.__do_sys_capget.exit_crit_edge

if.end.i.__do_sys_capget.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capget.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult6.i)
  %cmp10.i = icmp slt i32 %asmresult6.i, 0
  br i1 %cmp10.i, label %if.end9.i.__do_sys_capget.exit_crit_edge, label %if.end12.i

if.end9.i.__do_sys_capget.exit_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capget.exit

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult6.i)
  %tobool.not.i.i = icmp eq i32 %asmresult6.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i.if.else6.i.i_crit_edge, label %land.lhs.true.i.i

if.end12.i.if.else6.i.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else6.i.i

land.lhs.true.i.i:                                ; preds = %if.end12.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %call.i17.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %19, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i17.i.i, i32 %asmresult6.i)
  %cmp.not.i.i = icmp eq i32 %call.i17.i.i, %asmresult6.i
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.else6.i.i_crit_edge, label %if.then.i54.i

land.lhs.true.i.i.if.else6.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else6.i.i

if.then.i54.i:                                    ; preds = %land.lhs.true.i.i
  %20 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i53.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i53.i, label %if.then.i54.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i54.i.rcu_read_lock.exit.i.i_crit_edge:   ; preds = %if.then.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i54.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i55.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i.i

if.then.i.i55.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #7
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i55.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.i54.i.rcu_read_lock.exit.i.i_crit_edge
  %call2.i.i = tail call ptr @find_task_by_vpid(i32 noundef %asmresult6.i) #7
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge, label %if.else.i.i

rcu_read_lock.exit.i.i.if.end.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 @security_capget(ptr noundef nonnull %call2.i.i, ptr noundef nonnull %pE.i, ptr noundef nonnull %pI.i, ptr noundef nonnull %pP.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call5.i.i, %if.else.i.i ], [ -3, %rcu_read_lock.exit.i.i.if.end.i.i_crit_edge ]
  %call.i18.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i18.i.i, label %if.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i21.i.i

if.end.i.i.rcu_read_unlock.exit.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i21.i.i:                            ; preds = %if.end.i.i
  %call1.i19.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i.i)
  %tobool.not.i20.i.i = icmp eq i32 %call1.i19.i.i, 0
  br i1 %tobool.not.i20.i.i, label %land.lhs.true.i21.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i23.i.i

land.lhs.true.i21.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i23.i.i:                           ; preds = %land.lhs.true.i21.i.i
  %.b4.i22.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i.i, label %land.lhs.true2.i23.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true2.i23.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true2.i23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #7
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i24.i.i, %land.lhs.true2.i23.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i21.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !118
  %24 = call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i25.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i25.i.i to ptr
  %preempt_count.i.i.i.i26.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i26.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i26.i.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %cap_get_target_pid.exit.i

if.else6.i.i:                                     ; preds = %land.lhs.true.i.i.if.else6.i.i_crit_edge, %if.end12.i.if.else6.i.i_crit_edge
  %28 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i27.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i27.i.i to ptr
  %task8.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task8.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task8.i.i, align 8
  %call9.i.i = call i32 @security_capget(ptr noundef %31, ptr noundef nonnull %pE.i, ptr noundef nonnull %pI.i, ptr noundef nonnull %pP.i) #7
  br label %cap_get_target_pid.exit.i

cap_get_target_pid.exit.i:                        ; preds = %if.else6.i.i, %rcu_read_unlock.exit.i.i
  %ret.1.i.i = phi i32 [ %ret.0.i.i, %rcu_read_unlock.exit.i.i ], [ %call9.i.i, %if.else6.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool14.not.i = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %cap_get_target_pid.exit.i.if.end29.i_crit_edge

cap_get_target_pid.exit.i.if.end29.i_crit_edge:   ; preds = %cap_get_target_pid.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then15.i:                                      ; preds = %cap_get_target_pid.exit.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %kdata.i) #7
  %32 = call ptr @memset(ptr %kdata.i, i32 255, i32 24)
  %33 = ptrtoint ptr %tocopy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tocopy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1658.not.i = icmp eq i32 %34, 0
  br i1 %cmp1658.not.i, label %if.then15.i.if.then.i.i.i.i_crit_edge, label %if.then15.i.for.body.i_crit_edge

if.then15.i.for.body.i_crit_edge:                 ; preds = %if.then15.i
  br label %for.body.i

if.then15.i.if.then.i.i.i.i_crit_edge:            ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then15.i.for.body.i_crit_edge
  %i.059.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then15.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i32], ptr %pE.i, i32 0, i32 %i.059.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %arrayidx17.i = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata.i, i32 0, i32 %i.059.i
  %37 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr [2 x i32], ptr %pP.i, i32 0, i32 %i.059.i
  %38 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx19.i, align 4
  %permitted.i = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata.i, i32 0, i32 %i.059.i, i32 1
  %40 = ptrtoint ptr %permitted.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %permitted.i, align 4
  %arrayidx22.i = getelementptr [2 x i32], ptr %pI.i, i32 0, i32 %i.059.i
  %41 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx22.i, align 4
  %inheritable.i = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata.i, i32 0, i32 %i.059.i, i32 2
  %43 = ptrtoint ptr %inheritable.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %inheritable.i, align 4
  %inc.i = add nuw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mul.i = mul i32 %34, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %mul.i)
  %cmp1.i.i.i = icmp ugt i32 %mul.i, 24
  br i1 %cmp1.i.i.i, label %if.then3.i.i.i, label %for.end.i.if.then.i.i.i.i_crit_edge, !prof !119

for.end.i.if.then.i.i.i.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

if.then3.i.i.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef 24, i32 noundef %mul.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %kdata.i) #7
  br label %__do_sys_capget.exit

if.then.i.i.i.i:                                  ; preds = %for.end.i.if.then.i.i.i.i_crit_edge, %if.then15.i.if.then.i.i.i.i_crit_edge
  %mul62.i = phi i32 [ %mul.i, %for.end.i.if.then.i.i.i.i_crit_edge ], [ 0, %if.then15.i.if.then.i.i.i.i_crit_edge ]
  call void @__check_object_size(ptr noundef nonnull %kdata.i, i32 noundef %mul62.i, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 174) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %mul62.i, i32 -1226833920) #10, !srcloc !120
  %asmresult.i.i.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kdata.i, i32 noundef %mul62.i) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %kdata.i, i32 noundef %mul62.i) #7
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %mul62.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %mul62.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool25.not.i = icmp eq i32 %n.addr.0.i.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %kdata.i) #7
  br i1 %tobool25.not.i, label %copy_to_user.exit.i.if.end29.i_crit_edge, label %copy_to_user.exit.i.__do_sys_capget.exit_crit_edge

copy_to_user.exit.i.__do_sys_capget.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capget.exit

copy_to_user.exit.i.if.end29.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %copy_to_user.exit.i.if.end29.i_crit_edge, %cap_get_target_pid.exit.i.if.end29.i_crit_edge
  br label %__do_sys_capget.exit

__do_sys_capget.exit:                             ; preds = %if.end29.i, %copy_to_user.exit.i.__do_sys_capget.exit_crit_edge, %if.then3.i.i.i, %if.end9.i.__do_sys_capget.exit_crit_edge, %if.end.i.__do_sys_capget.exit_crit_edge, %if.then.i
  %retval.1.i = phi i32 [ %cond.i, %if.then.i ], [ %ret.1.i.i, %if.end29.i ], [ -14, %copy_to_user.exit.i.__do_sys_capget.exit_crit_edge ], [ -14, %if.end.i.__do_sys_capget.exit_crit_edge ], [ -22, %if.end9.i.__do_sys_capget.exit_crit_edge ], [ -14, %if.then3.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pP.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pI.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pE.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tocopy.i) #7
  ret i32 %retval.1.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_capset(i32 noundef %header, i32 noundef %data) #1 align 64 {
entry:
  %kdata.i = alloca [2 x %struct.__user_cap_data_struct], align 4
  %tocopy.i = alloca i32, align 4
  %inheritable.i = alloca %struct.kernel_cap_struct, align 4
  %permitted.i = alloca %struct.kernel_cap_struct, align 4
  %effective.i = alloca %struct.kernel_cap_struct, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %header to ptr
  %1 = inttoptr i32 %data to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %kdata.i) #7
  %2 = call ptr @memset(ptr %kdata.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tocopy.i) #7
  %3 = ptrtoint ptr %tocopy.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tocopy.i, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inheritable.i) #7
  %4 = ptrtoint ptr %inheritable.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %inheritable.i, align 4, !annotation !112
  %5 = getelementptr inbounds [2 x i32], ptr %inheritable.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %permitted.i) #7
  %7 = ptrtoint ptr %permitted.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %permitted.i, align 4, !annotation !112
  %8 = getelementptr inbounds [2 x i32], ptr %permitted.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %effective.i) #7
  %10 = ptrtoint ptr %effective.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %effective.i, align 4, !annotation !112
  %11 = getelementptr inbounds [2 x i32], ptr %effective.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !112
  %call.i = call fastcc i32 @cap_validate_magic(ptr noundef %0, ptr noundef nonnull %tocopy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.__do_sys_capset.exit_crit_edge

entry.__do_sys_capset.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capset.exit

if.end.i:                                         ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 235) #7
  %pid1.i = getelementptr inbounds %struct.__user_cap_header_struct, ptr %0, i32 0, i32 1
  %13 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !113
  %and.i.i = and i32 %15, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %16 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %pid1.i, i32 -1226833921) #7, !srcloc !121
  %asmresult.i = extractvalue { i32, i32 } %16, 0
  %asmresult3.i = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.__do_sys_capset.exit_crit_edge

if.end.i.__do_sys_capset.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capset.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i)
  %cmp7.not.i = icmp eq i32 %asmresult3.i, 0
  br i1 %cmp7.not.i, label %if.end6.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %17 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i97.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i97.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %20, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i, i32 %call.i.i)
  %cmp10.not.i = icmp eq i32 %asmresult3.i, %call.i.i
  br i1 %cmp10.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %land.lhs.true.i.__do_sys_capset.exit_crit_edge

land.lhs.true.i.__do_sys_capset.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capset.exit

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %if.end6.i.if.end12.i_crit_edge
  %21 = ptrtoint ptr %tocopy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tocopy.i, align 4
  %mul.i = mul i32 %22, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %mul.i)
  %cmp13.i = icmp ugt i32 %mul.i, 24
  br i1 %cmp13.i, label %if.end12.i.__do_sys_capset.exit_crit_edge, label %if.then.i.i.i.i

if.end12.i.__do_sys_capset.exit_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capset.exit

if.then.i.i.i.i:                                  ; preds = %if.end12.i
  call void @__check_object_size(ptr noundef nonnull %kdata.i, i32 noundef %mul.i, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.18, i32 noundef 156) #7
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %mul.i, i32 -1226833920) #10, !srcloc !122
  %asmresult.i.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !123

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kdata.i, i32 noundef %mul.i) #7
  %24 = call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !113
  %and.i.i.i.i.i = and i32 %26, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kdata.i, ptr noundef %1, i32 noundef %mul.i) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #7, !srcloc !114
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %mul.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %mul.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %for.cond.preheader.i, label %if.then11.i.i.i, !prof !123

for.cond.preheader.i:                             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp20101.not.i = icmp eq i32 %22, 0
  br i1 %cmp20101.not.i, label %while.body.preheader.i.thread, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

while.body.preheader.i.thread:                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.i.peel2 = getelementptr [2 x i32], ptr %effective.i, i32 0, i32 %22
  %27 = ptrtoint ptr %arrayidx33.i.peel2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx33.i.peel2, align 4
  %arrayidx35.i.peel3 = getelementptr [2 x i32], ptr %permitted.i, i32 0, i32 %22
  %28 = ptrtoint ptr %arrayidx35.i.peel3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx35.i.peel3, align 4
  %arrayidx37.i.peel4 = getelementptr [2 x i32], ptr %inheritable.i, i32 0, i32 %22
  %29 = ptrtoint ptr %arrayidx37.i.peel4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx37.i.peel4, align 4
  br label %while.end.i.loopexit.loopexit

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = sub i32 %mul.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %kdata.i, i32 %sub.i.i.i
  %30 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %__do_sys_capset.exit

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp31103.i = icmp ult i32 %22, 2
  br i1 %cmp31103.i, label %while.body.preheader.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %arrayidx33.i.peel = getelementptr [2 x i32], ptr %effective.i, i32 0, i32 %22
  %31 = ptrtoint ptr %arrayidx33.i.peel to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx33.i.peel, align 4
  %arrayidx35.i.peel = getelementptr [2 x i32], ptr %permitted.i, i32 0, i32 %22
  %32 = ptrtoint ptr %arrayidx35.i.peel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx35.i.peel, align 4
  %arrayidx37.i.peel = getelementptr [2 x i32], ptr %inheritable.i, i32 0, i32 %22
  %33 = ptrtoint ptr %arrayidx37.i.peel to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx37.i.peel, align 4
  br i1 %cmp20101.not.i, label %while.body.preheader.i.while.end.i.loopexit.loopexit_crit_edge, label %while.body.preheader.i.while.end.i_crit_edge

while.body.preheader.i.while.end.i_crit_edge:     ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i.while.end.i.loopexit.loopexit_crit_edge: ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.loopexit.loopexit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0102.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata.i, i32 0, i32 %i.0102.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %arrayidx22.i = getelementptr [2 x i32], ptr %effective.i, i32 0, i32 %i.0102.i
  %36 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx22.i, align 4
  %permitted24.i = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata.i, i32 0, i32 %i.0102.i, i32 1
  %37 = ptrtoint ptr %permitted24.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %permitted24.i, align 4
  %arrayidx26.i = getelementptr [2 x i32], ptr %permitted.i, i32 0, i32 %i.0102.i
  %39 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx26.i, align 4
  %inheritable28.i = getelementptr [2 x %struct.__user_cap_data_struct], ptr %kdata.i, i32 0, i32 %i.0102.i, i32 2
  %40 = ptrtoint ptr %inheritable28.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %inheritable28.i, align 4
  %arrayidx30.i = getelementptr [2 x i32], ptr %inheritable.i, i32 0, i32 %i.0102.i
  %42 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx30.i, align 4
  %inc.i = add nuw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %22
  br i1 %exitcond.not.i, label %while.cond.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

while.end.i.loopexit.loopexit:                    ; preds = %while.body.preheader.i.while.end.i.loopexit.loopexit_crit_edge, %while.body.preheader.i.thread
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %11, align 4
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %8, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %5, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit.loopexit, %while.body.preheader.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %11, align 4
  %and.i = and i32 %47, 511
  store i32 %and.i, ptr %11, align 4
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %8, align 4
  %and43.i = and i32 %49, 511
  store i32 %and43.i, ptr %8, align 4
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %5, align 4
  %and46.i = and i32 %51, 511
  store i32 %and46.i, ptr %5, align 4
  %call47.i = call ptr @prepare_creds() #7
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %while.end.i.__do_sys_capset.exit_crit_edge, label %if.end50.i

while.end.i.__do_sys_capset.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__do_sys_capset.exit

if.end50.i:                                       ; preds = %while.end.i
  %52 = call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i98.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i98.i to ptr
  %task53.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task53.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task53.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 99
  %56 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cred.i, align 16
  %call54.i = call i32 @security_capset(ptr noundef nonnull %call47.i, ptr noundef %57, ptr noundef nonnull %effective.i, ptr noundef nonnull %inheritable.i, ptr noundef nonnull %permitted.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %error.i, label %if.end57.i

if.end57.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call65.i = call i32 @commit_creds(ptr noundef nonnull %call47.i) #7
  br label %__do_sys_capset.exit

error.i:                                          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @abort_creds(ptr noundef nonnull %call47.i) #7
  br label %__do_sys_capset.exit

__do_sys_capset.exit:                             ; preds = %error.i, %if.end57.i, %while.end.i.__do_sys_capset.exit_crit_edge, %if.then11.i.i.i, %if.end12.i.__do_sys_capset.exit_crit_edge, %land.lhs.true.i.__do_sys_capset.exit_crit_edge, %if.end.i.__do_sys_capset.exit_crit_edge, %entry.__do_sys_capset.exit_crit_edge
  %retval.0.i = phi i32 [ %call54.i, %error.i ], [ %call65.i, %if.end57.i ], [ %call.i, %entry.__do_sys_capset.exit_crit_edge ], [ -14, %if.end.i.__do_sys_capset.exit_crit_edge ], [ -1, %land.lhs.true.i.__do_sys_capset.exit_crit_edge ], [ -14, %if.end12.i.__do_sys_capset.exit_crit_edge ], [ -12, %while.end.i.__do_sys_capset.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %effective.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %permitted.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inheritable.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tocopy.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %kdata.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @has_ns_capability(ptr noundef %t, ptr noundef %ns, i32 noundef %cap) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b10 = load i1, ptr @has_ns_capability.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @has_ns_capability.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 300, ptr noundef nonnull @.str.7) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %call9 = tail call i32 @security_capable(ptr noundef %5, ptr noundef %ns, i32 noundef %cap, i32 noundef 0) #7
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !118
  %6 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i18 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @has_capability(ptr noundef %t, i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @has_ns_capability(ptr noundef %t, ptr noundef nonnull @init_user_ns, i32 noundef %cap)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @has_ns_capability_noaudit(ptr noundef %t, ptr noundef %ns, i32 noundef %cap) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b10 = load i1, ptr @has_ns_capability_noaudit.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @has_ns_capability_noaudit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 341, ptr noundef nonnull @.str.7) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %call9 = tail call i32 @security_capable(ptr noundef %5, ptr noundef %ns, i32 noundef %cap, i32 noundef 2) #7
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !118
  %6 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i18 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp eq i32 %call9, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @has_capability_noaudit(ptr noundef %t, i32 noundef %cap) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @has_ns_capability_noaudit(ptr noundef %t, ptr noundef nonnull @init_user_ns, i32 noundef %cap)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ns_capable(ptr noundef %ns, i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %cap)
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %do.end.i, label %do.end12.i, !prof !119

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cap) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end12.i:                                       ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %call15.i = tail call i32 @security_capable(ptr noundef %6, ptr noundef %ns, i32 noundef %cap, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %do.end12.i.ns_capable_common.exit_crit_edge

do.end12.i.ns_capable_common.exit_crit_edge:      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns_capable_common.exit

if.then17.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %ns_capable_common.exit

ns_capable_common.exit:                           ; preds = %if.then17.i, %do.end12.i.ns_capable_common.exit_crit_edge
  ret i1 %cmp16.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ns_capable_noaudit(ptr noundef %ns, i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %cap)
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %do.end.i, label %do.end12.i, !prof !119

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cap) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end12.i:                                       ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %call15.i = tail call i32 @security_capable(ptr noundef %6, ptr noundef %ns, i32 noundef %cap, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %do.end12.i.ns_capable_common.exit_crit_edge

do.end12.i.ns_capable_common.exit_crit_edge:      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns_capable_common.exit

if.then17.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %ns_capable_common.exit

ns_capable_common.exit:                           ; preds = %if.then17.i, %do.end12.i.ns_capable_common.exit_crit_edge
  ret i1 %cmp16.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ns_capable_setid(ptr noundef %ns, i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %cap)
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %do.end.i, label %do.end12.i, !prof !119

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cap) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end12.i:                                       ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i, align 16
  %call15.i = tail call i32 @security_capable(ptr noundef %6, ptr noundef %ns, i32 noundef %cap, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp eq i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %do.end12.i.ns_capable_common.exit_crit_edge

do.end12.i.ns_capable_common.exit_crit_edge:      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns_capable_common.exit

if.then17.i:                                      ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %10, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %ns_capable_common.exit

ns_capable_common.exit:                           ; preds = %if.then17.i, %do.end12.i.ns_capable_common.exit_crit_edge
  ret i1 %cmp16.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @capable(i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %cap)
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %do.end.i.i, label %do.end12.i.i, !prof !119

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cap) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end12.i.i:                                     ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %5 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred.i.i, align 16
  %call15.i.i = tail call i32 @security_capable(ptr noundef %6, ptr noundef nonnull @init_user_ns, i32 noundef %cap, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %if.then17.i.i, label %do.end12.i.i.ns_capable.exit_crit_edge

do.end12.i.i.ns_capable.exit_crit_edge:           ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ns_capable.exit

if.then17.i.i:                                    ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %10, 256
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %ns_capable.exit

ns_capable.exit:                                  ; preds = %if.then17.i.i, %do.end12.i.i.ns_capable.exit_crit_edge
  ret i1 %cmp16.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @file_ns_capable(ptr nocapture noundef readonly %file, ptr noundef %ns, i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %cap)
  %0 = icmp ugt i32 %cap, 40
  br i1 %0, label %land.rhs4, label %if.end41

land.rhs4:                                        ; preds = %entry
  %.b49 = load i1, ptr @file_ns_capable.__already_done, align 1
  br i1 %.b49, label %land.rhs4.return_crit_edge, label %if.then, !prof !123

land.rhs4.return_crit_edge:                       ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @file_ns_capable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 470, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end41:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %1 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_cred, align 8
  %call = tail call i32 @security_capable(ptr noundef %2, ptr noundef %ns, i32 noundef %cap, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp42 = icmp eq i32 %call, 0
  br label %return

return:                                           ; preds = %if.end41, %if.then, %land.rhs4.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then ], [ %cmp42, %if.end41 ], [ false, %land.rhs4.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef %ns, ptr noundef %mnt_userns, ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %4 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %5 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %cmp.i.i.i.i = icmp eq ptr %mnt_userns, @init_user_ns
  %cmp.i.i.i = icmp eq ptr %3, %mnt_userns
  %spec.select.i.i.i = or i1 %cmp.i.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.i_uid_into_mnt.exit_crit_edge, label %if.end.i.i

entry.i_uid_into_mnt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_uid_into_mnt.exit

if.end.i.i:                                       ; preds = %entry
  %cmp.i21.i.i = icmp eq ptr %3, @init_user_ns
  br i1 %cmp.i21.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.else.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = tail call i32 @from_kuid(ptr noundef %3, [1 x i32] %5) #7
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %uid.0.i.i = phi i32 [ %call6.i.i, %if.else.i.i ], [ %.unpack.i, %if.end.i.i.if.end7.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %uid.0.i.i)
  %cmp.i.i = icmp eq i32 %uid.0.i.i, -1
  br i1 %cmp.i.i, label %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, label %if.end9.i.i

if.end7.i.i.i_uid_into_mnt.exit_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_uid_into_mnt.exit

if.end9.i.i:                                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i = tail call i32 @make_kuid(ptr noundef %mnt_userns, i32 noundef %uid.0.i.i) #7
  br label %i_uid_into_mnt.exit

i_uid_into_mnt.exit:                              ; preds = %if.end9.i.i, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge, %entry.i_uid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i = phi i32 [ %call10.i.i, %if.end9.i.i ], [ -1, %if.end7.i.i.i_uid_into_mnt.exit_crit_edge ], [ %.unpack.i, %entry.i_uid_into_mnt.exit_crit_edge ]
  %.fca.0.insert8 = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i, 0
  %call.i = tail call i32 @from_kuid(ptr noundef %ns, [1 x i32] %.fca.0.insert8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not, label %i_uid_into_mnt.exit.land.end_crit_edge, label %land.rhs

i_uid_into_mnt.exit.land.end_crit_edge:           ; preds = %i_uid_into_mnt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %i_uid_into_mnt.exit
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_user_ns.i.i13 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %s_user_ns.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_user_ns.i.i13, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %10 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack.i14 = load i32, ptr %i_gid.i, align 8
  %11 = insertvalue [1 x i32] undef, i32 %.unpack.i14, 0
  %cmp.i.i.i16 = icmp eq ptr %9, %mnt_userns
  %spec.select.i.i.i17 = or i1 %cmp.i.i.i.i, %cmp.i.i.i16
  br i1 %spec.select.i.i.i17, label %land.rhs.i_gid_into_mnt.exit_crit_edge, label %if.end.i.i19

land.rhs.i_gid_into_mnt.exit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_gid_into_mnt.exit

if.end.i.i19:                                     ; preds = %land.rhs
  %cmp.i21.i.i18 = icmp eq ptr %9, @init_user_ns
  br i1 %cmp.i21.i.i18, label %if.end.i.i19.if.end7.i.i23_crit_edge, label %if.else.i.i21

if.end.i.i19.if.end7.i.i23_crit_edge:             ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i23

if.else.i.i21:                                    ; preds = %if.end.i.i19
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i20 = tail call i32 @from_kgid(ptr noundef %9, [1 x i32] %11) #7
  br label %if.end7.i.i23

if.end7.i.i23:                                    ; preds = %if.else.i.i21, %if.end.i.i19.if.end7.i.i23_crit_edge
  %gid.0.i.i = phi i32 [ %call6.i.i20, %if.else.i.i21 ], [ %.unpack.i14, %if.end.i.i19.if.end7.i.i23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %gid.0.i.i)
  %cmp.i.i22 = icmp eq i32 %gid.0.i.i, -1
  br i1 %cmp.i.i22, label %if.end7.i.i23.i_gid_into_mnt.exit_crit_edge, label %if.end9.i.i25

if.end7.i.i23.i_gid_into_mnt.exit_crit_edge:      ; preds = %if.end7.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_gid_into_mnt.exit

if.end9.i.i25:                                    ; preds = %if.end7.i.i23
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i.i24 = tail call i32 @make_kgid(ptr noundef %mnt_userns, i32 noundef %gid.0.i.i) #7
  br label %i_gid_into_mnt.exit

i_gid_into_mnt.exit:                              ; preds = %if.end9.i.i25, %if.end7.i.i23.i_gid_into_mnt.exit_crit_edge, %land.rhs.i_gid_into_mnt.exit_crit_edge
  %retval.sroa.0.0.i.i26 = phi i32 [ %call10.i.i24, %if.end9.i.i25 ], [ -1, %if.end7.i.i23.i_gid_into_mnt.exit_crit_edge ], [ %.unpack.i14, %land.rhs.i_gid_into_mnt.exit_crit_edge ]
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.i.i26, 0
  %call.i27 = tail call i32 @from_kgid(ptr noundef %ns, [1 x i32] %.fca.0.insert) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i27)
  %cmp.i28 = icmp ne i32 %call.i27, -1
  br label %land.end

land.end:                                         ; preds = %i_gid_into_mnt.exit, %i_uid_into_mnt.exit.land.end_crit_edge
  %12 = phi i1 [ false, %i_uid_into_mnt.exit.land.end_crit_edge ], [ %cmp.i28, %i_gid_into_mnt.exit ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr nocapture noundef readonly %inode, i32 noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %cap)
  %8 = icmp ugt i32 %cap, 40
  br i1 %8, label %do.end.i.i, label %do.end12.i.i, !prof !119

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %cap) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/capability.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 372, 0\0A.popsection", ""() #7, !srcloc !124
  unreachable

do.end12.i.i:                                     ; preds = %entry
  %call15.i.i = tail call i32 @security_capable(ptr noundef %5, ptr noundef %7, i32 noundef %cap, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %land.rhs, label %do.end12.i.i.land.end_crit_edge

do.end12.i.i.land.end_crit_edge:                  ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %12, 256
  store i32 %or.i.i, ptr %flags.i.i, align 4
  %call3 = tail call zeroext i1 @privileged_wrt_inode_uidgid(ptr noundef %7, ptr noundef %mnt_userns, ptr noundef %inode)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end12.i.i.land.end_crit_edge
  %13 = phi i1 [ %call3, %land.rhs ], [ false, %do.end12.i.i.land.end_crit_edge ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ptracer_capable(ptr noundef %tsk, ptr noundef %ns) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !117
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 696, ptr noundef nonnull @.str.23) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %ptracer_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 97
  %4 = ptrtoint ptr %ptracer_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ptracer_cred, align 8
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @ptracer_capable.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ptracer_capable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 528, ptr noundef nonnull @.str.7) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end12_crit_edge, label %if.then10

do.end7.if.end12_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @security_capable(ptr noundef nonnull %5, ptr noundef %ns, i32 noundef 19, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %phi.cmp = icmp eq i32 %call11, 0
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end7.if.end12_crit_edge
  %ret.0 = phi i1 [ %phi.cmp, %if.then10 ], [ true, %do.end7.if.end12_crit_edge ]
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i15, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.end12
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 724, ptr noundef nonnull @.str.24) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !118
  %6 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i.i.i22 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret i1 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cap_validate_magic(ptr noundef %header, ptr nocapture noundef writeonly %tocopy) unnamed_addr #1 align 64 {
entry:
  %name.i25 = alloca [16 x i8], align 1
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 86) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !113
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %header, i32 -1226833921) #7, !srcloc !125
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  %4 = zext i32 %asmresult2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asmresult2, label %sw.default [
    i32 429392688, label %sw.bb
    i32 537333798, label %sw.bb4
    i32 537396514, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #7
  %5 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %.b19.i = load i1, ptr @warn_legacy_capability_use.__already_done, align 1
  br i1 %.b19.i, label %sw.bb.warn_legacy_capability_use.exit_crit_edge, label %if.then.i, !prof !123

sw.bb.warn_legacy_capability_use.exit_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %warn_legacy_capability_use.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @warn_legacy_capability_use.__already_done, align 1
  %6 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %call9.i = call ptr @__get_task_comm(ptr noundef nonnull %name.i, i32 noundef 16, ptr noundef %9) #7
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %call9.i) #11
  br label %warn_legacy_capability_use.exit

warn_legacy_capability_use.exit:                  ; preds = %if.then.i, %sw.bb.warn_legacy_capability_use.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i25) #7
  %10 = call ptr @memset(ptr %name.i25, i32 255, i32 16)
  %.b19.i26 = load i1, ptr @warn_deprecated_v2.__already_done, align 1
  br i1 %.b19.i26, label %sw.bb4.warn_deprecated_v2.exit_crit_edge, label %if.then.i31, !prof !123

sw.bb4.warn_deprecated_v2.exit_crit_edge:         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %warn_deprecated_v2.exit

if.then.i31:                                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @warn_deprecated_v2.__already_done, align 1
  %11 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i27 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i27 to ptr
  %task.i28 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i28, align 8
  %call9.i29 = call ptr @__get_task_comm(ptr noundef nonnull %name.i25, i32 noundef 16, ptr noundef %14) #7
  %call10.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %call9.i29) #11
  br label %warn_deprecated_v2.exit

warn_deprecated_v2.exit:                          ; preds = %if.then.i31, %sw.bb4.warn_deprecated_v2.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i25) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 101) #7
  %15 = tail call i32 @llvm.read_register.i32(metadata !102) #7
  %and.i.i.i21 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i21 to ptr
  %cpu_domain.i.i22 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i22) #6, !srcloc !113
  %and.i23 = and i32 %17, -13
  %or.i24 = or i32 %and.i23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i24) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %header, i32 537396514, i32 -1226833921) #7, !srcloc !126
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  %. = select i1 %tobool16.not, i32 -22, i32 -14
  br label %cleanup

sw.epilog:                                        ; preds = %warn_deprecated_v2.exit, %warn_legacy_capability_use.exit, %if.end.sw.epilog_crit_edge
  %storemerge = phi i32 [ 1, %warn_legacy_capability_use.exit ], [ 2, %if.end.sw.epilog_crit_edge ], [ 2, %warn_deprecated_v2.exit ]
  %19 = ptrtoint ptr %tocopy to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %tocopy, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -14, %entry.cleanup_crit_edge ], [ %., %sw.default ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_capget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_capset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @abort_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !83, !84, !86, !88, !90, !91, !92, !94, !95, !97, !98, !99, !100}
!llvm.named.register.sp = !{!102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__cap_empty_set, !1, !"__cap_empty_set", i1 false, i1 false}
!1 = !{!"../kernel/capability.c", i32 27, i32 20}
!2 = !{ptr @__ksymtab___cap_empty_set, !3, !"__ksymtab___cap_empty_set", i1 false, i1 false}
!3 = !{!"../kernel/capability.c", i32 28, i32 1}
!4 = !{ptr @file_caps_enabled, !5, !"file_caps_enabled", i1 false, i1 false}
!5 = !{!"../kernel/capability.c", i32 30, i32 5}
!6 = !{ptr @__setup_file_caps_disable, !7, !"__setup_file_caps_disable", i1 false, i1 false}
!7 = !{!"../kernel/capability.c", i32 37, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/capability.c", i32 148, i32 1}
!10 = !{ptr @event_enter__capget, !9, !"event_enter__capget", i1 false, i1 false}
!11 = !{ptr @__event_enter__capget, !9, !"__event_enter__capget", i1 false, i1 false}
!12 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @event_exit__capget, !9, !"event_exit__capget", i1 false, i1 false}
!14 = !{ptr @__event_exit__capget, !9, !"__event_exit__capget", i1 false, i1 false}
!15 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__syscall_meta__capget, !9, !"__syscall_meta__capget", i1 false, i1 false}
!17 = !{ptr @__p_syscall_meta__capget, !9, !"__p_syscall_meta__capget", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/capability.c", i32 222, i32 1}
!20 = !{ptr @event_enter__capset, !19, !"event_enter__capset", i1 false, i1 false}
!21 = !{ptr @__event_enter__capset, !19, !"__event_enter__capset", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @event_exit__capset, !19, !"event_exit__capset", i1 false, i1 false}
!24 = !{ptr @__event_exit__capset, !19, !"__event_exit__capset", i1 false, i1 false}
!25 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__syscall_meta__capset, !19, !"__syscall_meta__capset", i1 false, i1 false}
!27 = !{ptr @__p_syscall_meta__capset, !19, !"__p_syscall_meta__capset", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../kernel/capability.c", i32 300, i32 25}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__ksymtab_has_capability, !33, !"__ksymtab_has_capability", i1 false, i1 false}
!33 = !{!"../kernel/capability.c", i32 320, i32 1}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../kernel/capability.c", i32 341, i32 25}
!36 = !{ptr @__ksymtab_ns_capable, !37, !"__ksymtab_ns_capable", i1 false, i1 false}
!37 = !{!"../kernel/capability.c", i32 398, i32 1}
!38 = !{ptr @__ksymtab_ns_capable_noaudit, !39, !"__ksymtab_ns_capable_noaudit", i1 false, i1 false}
!39 = !{!"../kernel/capability.c", i32 416, i32 1}
!40 = !{ptr @__ksymtab_ns_capable_setid, !41, !"__ksymtab_ns_capable_setid", i1 false, i1 false}
!41 = !{!"../kernel/capability.c", i32 435, i32 1}
!42 = !{ptr @__ksymtab_capable, !43, !"__ksymtab_capable", i1 false, i1 false}
!43 = !{!"../kernel/capability.c", i32 451, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../kernel/capability.c", i32 470, i32 6}
!46 = !{ptr @__ksymtab_file_ns_capable, !47, !"__ksymtab_file_ns_capable", i1 false, i1 false}
!47 = !{!"../kernel/capability.c", i32 478, i32 1}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../kernel/capability.c", i32 507, i32 30}
!50 = !{ptr @__ksymtab_capable_wrt_inode_uidgid, !51, !"__ksymtab_capable_wrt_inode_uidgid", i1 false, i1 false}
!51 = !{!"../kernel/capability.c", i32 512, i32 1}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../kernel/capability.c", i32 528, i32 9}
!54 = !{ptr @__setup_str_file_caps_disable, !7, !"__setup_str_file_caps_disable", i1 false, i1 false}
!55 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.9, !9, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @types__capget, !9, !"types__capget", i1 false, i1 false}
!58 = !{ptr @.str.10, !9, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.11, !9, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @args__capget, !9, !"args__capget", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../kernel/capability.c", i32 50, i32 2}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @warn_legacy_capability_use._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @warn_legacy_capability_use._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../kernel/capability.c", i32 74, i32 2}
!69 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @warn_deprecated_v2._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @warn_deprecated_v2._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!75 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!78 = !{ptr @.str.18, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!80 = !{ptr @.str.19, !19, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @types__capset, !19, !"types__capset", i1 false, i1 false}
!82 = !{ptr @.str.20, !19, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @args__capset, !19, !"args__capset", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../kernel/capability.c", i32 269, i32 29}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../kernel/capability.c", i32 274, i32 24}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!90 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!94 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/capability.c", i32 371, i32 3}
!97 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ns_capable_common._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ns_capable_common._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../kernel/capability.c", i32 375, i32 29}
!102 = !{!"sp"}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{i64 3096281}
!114 = !{i64 3096478}
!115 = !{i64 2150581711}
!116 = !{i64 2155051011, i64 2155051291, i64 2155051625, i64 2155051959}
!117 = !{i64 2149280495}
!118 = !{i64 2149280761}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{i64 2150601407, i64 2150601432}
!121 = !{i64 2155074741, i64 2155075021, i64 2155075355, i64 2155075689}
!122 = !{i64 2150600726, i64 2150600751}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2155092647, i64 2155097192, i64 2155092684, i64 2155092740, i64 2155092774, i64 2155092798, i64 2155092839, i64 2155092860, i64 2155092888, i64 2155092922}
!125 = !{i64 2155018364, i64 2155018644, i64 2155018978, i64 2155019312}
!126 = !{i64 2155028017, i64 2155028297, i64 2155028631, i64 2155028965}
