; ModuleID = '/llk/IR_all_yes/kernel/cred.c_pt.bc'
source_filename = "../kernel/cred.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__put_cred\22, \22a\22\09"
module asm "\09.weak\09__crc___put_cred\09\09\09\09"
module asm "\09.long\09__crc___put_cred\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_cred\22\09\09\09\09\09"
module asm "__kstrtabns___put_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_task_cred\22, \22a\22\09"
module asm "\09.weak\09__crc_get_task_cred\09\09\09\09"
module asm "\09.long\09__crc_get_task_cred\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_task_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22get_task_cred\22\09\09\09\09\09"
module asm "__kstrtabns_get_task_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_creds\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_creds\09\09\09\09"
module asm "\09.long\09__crc_prepare_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_creds\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+commit_creds\22, \22a\22\09"
module asm "\09.weak\09__crc_commit_creds\09\09\09\09"
module asm "\09.long\09__crc_commit_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_commit_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22commit_creds\22\09\09\09\09\09"
module asm "__kstrtabns_commit_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+abort_creds\22, \22a\22\09"
module asm "\09.weak\09__crc_abort_creds\09\09\09\09"
module asm "\09.long\09__crc_abort_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_abort_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22abort_creds\22\09\09\09\09\09"
module asm "__kstrtabns_abort_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+override_creds\22, \22a\22\09"
module asm "\09.weak\09__crc_override_creds\09\09\09\09"
module asm "\09.long\09__crc_override_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_override_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22override_creds\22\09\09\09\09\09"
module asm "__kstrtabns_override_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+revert_creds\22, \22a\22\09"
module asm "\09.weak\09__crc_revert_creds\09\09\09\09"
module asm "\09.long\09__crc_revert_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_revert_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22revert_creds\22\09\09\09\09\09"
module asm "__kstrtabns_revert_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cred_fscmp\22, \22a\22\09"
module asm "\09.weak\09__crc_cred_fscmp\09\09\09\09"
module asm "\09.long\09__crc_cred_fscmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cred_fscmp:\09\09\09\09\09"
module asm "\09.asciz \09\22cred_fscmp\22\09\09\09\09\09"
module asm "__kstrtabns_cred_fscmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_kernel_cred\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_kernel_cred\09\09\09\09"
module asm "\09.long\09__crc_prepare_kernel_cred\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_kernel_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_kernel_cred\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_kernel_cred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_security_override\22, \22a\22\09"
module asm "\09.weak\09__crc_set_security_override\09\09\09\09"
module asm "\09.long\09__crc_set_security_override\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_security_override:\09\09\09\09\09"
module asm "\09.asciz \09\22set_security_override\22\09\09\09\09\09"
module asm "__kstrtabns_set_security_override:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_security_override_from_ctx\22, \22a\22\09"
module asm "\09.weak\09__crc_set_security_override_from_ctx\09\09\09\09"
module asm "\09.long\09__crc_set_security_override_from_ctx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_security_override_from_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22set_security_override_from_ctx\22\09\09\09\09\09"
module asm "__kstrtabns_set_security_override_from_ctx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_create_files_as\22, \22a\22\09"
module asm "\09.weak\09__crc_set_create_files_as\09\09\09\09"
module asm "\09.long\09__crc_set_create_files_as\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_create_files_as:\09\09\09\09\09"
module asm "\09.asciz \09\22set_create_files_as\22\09\09\09\09\09"
module asm "__kstrtabns_set_create_files_as:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+creds_are_invalid\22, \22a\22\09"
module asm "\09.weak\09__crc_creds_are_invalid\09\09\09\09"
module asm "\09.long\09__crc_creds_are_invalid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_creds_are_invalid:\09\09\09\09\09"
module asm "\09.asciz \09\22creds_are_invalid\22\09\09\09\09\09"
module asm "__kstrtabns_creds_are_invalid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__invalid_creds\22, \22a\22\09"
module asm "\09.weak\09__crc___invalid_creds\09\09\09\09"
module asm "\09.long\09__crc___invalid_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___invalid_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22__invalid_creds\22\09\09\09\09\09"
module asm "__kstrtabns___invalid_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__validate_process_creds\22, \22a\22\09"
module asm "\09.weak\09__crc___validate_process_creds\09\09\09\09"
module asm "\09.long\09__crc___validate_process_creds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___validate_process_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22__validate_process_creds\22\09\09\09\09\09"
module asm "__kstrtabns___validate_process_creds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ucounts = type { %struct.hlist_node, ptr, %struct.kuid_t, %struct.atomic_t, [16 x %struct.atomic_t] }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.14 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.95, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%union.anon.95 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.102 = type { ptr }

@root_user = external dso_local global %struct.user_struct, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_ucounts = external dso_local global %struct.ucounts, align 4
@init_groups = internal global { %struct.group_info, [24 x i8] } { %struct.group_info { %struct.atomic_t { i32 2 }, i32 0, [0 x %struct.kgid_t] zeroinitializer }, [24 x i8] zeroinitializer }, align 32
@init_cred = dso_local global { %struct.cred, [52 x i8] } { %struct.cred { %struct.atomic_t { i32 4 }, %struct.atomic_t { i32 2 }, ptr null, i32 1131636068, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i32 0, %struct.kernel_cap_struct zeroinitializer, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct { [2 x i32] [i32 -1, i32 511] }, %struct.kernel_cap_struct zeroinitializer, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @root_user, ptr @init_user_ns, ptr @init_ucounts, ptr @init_groups, %union.anon.14 zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__kstrtab___put_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_cred = external dso_local constant [0 x i8], align 1
@__ksymtab___put_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_cred to i32), ptr @__kstrtab___put_cred, ptr @__kstrtabns___put_cred }, section "___ksymtab+__put_cred", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/cred.c\00", [18 x i8] zeroinitializer }, align 32
@get_task_cred.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_get_task_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_task_cred = external dso_local constant [0 x i8], align 1
@__ksymtab_get_task_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_task_cred to i32), ptr @__kstrtab_get_task_cred, ptr @__kstrtabns_get_task_cred }, section "___ksymtab+get_task_cred", align 4
@cred_jar = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_prepare_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_creds to i32), ptr @__kstrtab_prepare_creds, ptr @__kstrtabns_prepare_creds }, section "___ksymtab+prepare_creds", align 4
@copy_creds.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@copy_creds.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@suid_dumpable = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_commit_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_commit_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_commit_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @commit_creds to i32), ptr @__kstrtab_commit_creds, ptr @__kstrtabns_commit_creds }, section "___ksymtab+commit_creds", align 4
@__kstrtab_abort_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_abort_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_abort_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @abort_creds to i32), ptr @__kstrtab_abort_creds, ptr @__kstrtabns_abort_creds }, section "___ksymtab+abort_creds", align 4
@__kstrtab_override_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_override_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_override_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @override_creds to i32), ptr @__kstrtab_override_creds, ptr @__kstrtabns_override_creds }, section "___ksymtab+override_creds", align 4
@__kstrtab_revert_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns_revert_creds = external dso_local constant [0 x i8], align 1
@__ksymtab_revert_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @revert_creds to i32), ptr @__kstrtab_revert_creds, ptr @__kstrtabns_revert_creds }, section "___ksymtab+revert_creds", align 4
@__kstrtab_cred_fscmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_cred_fscmp = external dso_local constant [0 x i8], align 1
@__ksymtab_cred_fscmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cred_fscmp to i32), ptr @__kstrtab_cred_fscmp, ptr @__kstrtabns_cred_fscmp }, section "___ksymtab+cred_fscmp", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cred_jar\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_prepare_kernel_cred = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_kernel_cred = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_kernel_cred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_kernel_cred to i32), ptr @__kstrtab_prepare_kernel_cred, ptr @__kstrtabns_prepare_kernel_cred }, section "___ksymtab+prepare_kernel_cred", align 4
@__kstrtab_set_security_override = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_security_override = external dso_local constant [0 x i8], align 1
@__ksymtab_set_security_override = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_security_override to i32), ptr @__kstrtab_set_security_override, ptr @__kstrtabns_set_security_override }, section "___ksymtab+set_security_override", align 4
@__kstrtab_set_security_override_from_ctx = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_security_override_from_ctx = external dso_local constant [0 x i8], align 1
@__ksymtab_set_security_override_from_ctx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_security_override_from_ctx to i32), ptr @__kstrtab_set_security_override_from_ctx, ptr @__kstrtabns_set_security_override_from_ctx }, section "___ksymtab+set_security_override_from_ctx", align 4
@__kstrtab_set_create_files_as = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_create_files_as = external dso_local constant [0 x i8], align 1
@__ksymtab_set_create_files_as = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_create_files_as to i32), ptr @__kstrtab_set_create_files_as, ptr @__kstrtabns_set_create_files_as }, section "___ksymtab+set_create_files_as", align 4
@__kstrtab_creds_are_invalid = external dso_local constant [0 x i8], align 1
@__kstrtabns_creds_are_invalid = external dso_local constant [0 x i8], align 1
@__ksymtab_creds_are_invalid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @creds_are_invalid to i32), ptr @__kstrtab_creds_are_invalid, ptr @__kstrtabns_creds_are_invalid }, section "___ksymtab+creds_are_invalid", align 4
@__invalid_creds._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 875, ptr null, ptr null }, align 1
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013CRED: Invalid credentials\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__invalid_creds\00", [16 x i8] zeroinitializer }, align 32
@__invalid_creds._entry_ptr = internal global ptr @__invalid_creds._entry, section ".printk_index", align 4
@__invalid_creds._entry.6 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 876, ptr null, ptr null }, align 1
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013CRED: At %s:%u\0A\00", [46 x i8] zeroinitializer }, align 32
@__invalid_creds._entry_ptr.8 = internal global ptr @__invalid_creds._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Specified\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab___invalid_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns___invalid_creds = external dso_local constant [0 x i8], align 1
@__ksymtab___invalid_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__invalid_creds to i32), ptr @__kstrtab___invalid_creds, ptr @__kstrtabns___invalid_creds }, section "___ksymtab+__invalid_creds", align 4
@__validate_process_creds._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 902, ptr null, ptr null }, align 1
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CRED: Invalid process credentials\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__validate_process_creds\00", [39 x i8] zeroinitializer }, align 32
@__validate_process_creds._entry_ptr = internal global ptr @__validate_process_creds._entry, section ".printk_index", align 4
@__validate_process_creds._entry.12 = internal constant %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str, i32 903, ptr null, ptr null }, align 1
@__validate_process_creds._entry_ptr.13 = internal global ptr @__validate_process_creds._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Real\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Effective\00", [22 x i8] zeroinitializer }, align 32
@__validate_process_creds._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str, i32 909, ptr null, ptr null }, align 1
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013CRED: Effective creds == Real creds\0A\00", [57 x i8] zeroinitializer }, align 32
@__validate_process_creds._entry_ptr.18 = internal global ptr @__validate_process_creds._entry.16, section ".printk_index", align 4
@__kstrtab___validate_process_creds = external dso_local constant [0 x i8], align 1
@__kstrtabns___validate_process_creds = external dso_local constant [0 x i8], align 1
@__ksymtab___validate_process_creds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__validate_process_creds to i32), ptr @__kstrtab___validate_process_creds, ptr @__kstrtabns___validate_process_creds }, section "___ksymtab+__validate_process_creds", align 4
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"CRED: put_cred_rcu() sees %p with mag %x, put %p, usage %d, subscr %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CRED: %s credentials: %p %s%s%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dump_invalid_creds\00", [45 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr = internal global ptr @dump_invalid_creds._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[init]\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[real]\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[eff]\00", [26 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CRED: ->magic=%x, put_addr=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr.32 = internal global ptr @dump_invalid_creds._entry.30, section ".printk_index", align 4
@dump_invalid_creds._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013CRED: ->usage=%d, subscr=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr.35 = internal global ptr @dump_invalid_creds._entry.33, section ".printk_index", align 4
@dump_invalid_creds._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.25, ptr @.str, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CRED: ->*uid = { %d,%d,%d,%d }\0A\00", [62 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr.38 = internal global ptr @dump_invalid_creds._entry.36, section ".printk_index", align 4
@dump_invalid_creds._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.25, ptr @.str, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CRED: ->*gid = { %d,%d,%d,%d }\0A\00", [62 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr.41 = internal global ptr @dump_invalid_creds._entry.39, section ".printk_index", align 4
@dump_invalid_creds._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.25, ptr @.str, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013CRED: ->security is %p\0A\00", [38 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr.44 = internal global ptr @dump_invalid_creds._entry.42, section ".printk_index", align 4
@dump_invalid_creds._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.25, ptr @.str, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013CRED: ->security {%x, %x}\0A\00", [35 x i8] zeroinitializer }, align 32
@dump_invalid_creds._entry_ptr.47 = internal global ptr @dump_invalid_creds._entry.45, section ".printk_index", align 4
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"init_groups\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 36, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"init_cred\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 41, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 170, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 203, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"cred_jar\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 33, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 692, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 875, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 876, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 877, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 902, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 905, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 907, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 909, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 104, i32 9 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 286, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 695, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 723, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 839, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 844, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 846, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 849, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 854, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 860, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [17 x i8] c"../kernel/cred.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 864, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__invalid_creds._entry, ptr @__invalid_creds._entry.6, ptr @__invalid_creds._entry_ptr, ptr @__invalid_creds._entry_ptr.8, ptr @__ksymtab___invalid_creds, ptr @__ksymtab___put_cred, ptr @__ksymtab___validate_process_creds, ptr @__ksymtab_abort_creds, ptr @__ksymtab_commit_creds, ptr @__ksymtab_cred_fscmp, ptr @__ksymtab_creds_are_invalid, ptr @__ksymtab_get_task_cred, ptr @__ksymtab_override_creds, ptr @__ksymtab_prepare_creds, ptr @__ksymtab_prepare_kernel_cred, ptr @__ksymtab_revert_creds, ptr @__ksymtab_set_create_files_as, ptr @__ksymtab_set_security_override, ptr @__ksymtab_set_security_override_from_ctx, ptr @__validate_process_creds._entry, ptr @__validate_process_creds._entry.12, ptr @__validate_process_creds._entry.16, ptr @__validate_process_creds._entry_ptr, ptr @__validate_process_creds._entry_ptr.13, ptr @__validate_process_creds._entry_ptr.18, ptr @dump_invalid_creds._entry, ptr @dump_invalid_creds._entry.30, ptr @dump_invalid_creds._entry.33, ptr @dump_invalid_creds._entry.36, ptr @dump_invalid_creds._entry.39, ptr @dump_invalid_creds._entry.42, ptr @dump_invalid_creds._entry.45, ptr @dump_invalid_creds._entry_ptr, ptr @dump_invalid_creds._entry_ptr.32, ptr @dump_invalid_creds._entry_ptr.35, ptr @dump_invalid_creds._entry_ptr.38, ptr @dump_invalid_creds._entry_ptr.41, ptr @dump_invalid_creds._entry_ptr.44, ptr @dump_invalid_creds._entry_ptr.47, ptr @init_groups, ptr @init_cred, ptr @.str, ptr @.str.1, ptr @cred_jar, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cred to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cred_jar to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_invalid_creds._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__put_cred(ptr noundef %cred) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cred, i32 noundef 4) #14
  %0 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body8, label %do.body3, !prof !128

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #14, !srcloc !129
  unreachable

do.body8:                                         ; preds = %entry
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i, i32 noundef 4) #14
  %2 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %subscribers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %do.end23, label %do.body18, !prof !128

do.body18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #14, !srcloc !130
  unreachable

do.end23:                                         ; preds = %do.body8
  %magic = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 3
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1147494724, ptr %magic, align 4
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %put_addr = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 2
  %6 = ptrtoint ptr %put_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %put_addr, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %cred26 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 99
  %11 = ptrtoint ptr %cred26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred26, align 16
  %cmp27 = icmp eq ptr %12, %cred
  br i1 %cmp27, label %do.body35, label %do.body41, !prof !131

do.body35:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #14, !srcloc !132
  unreachable

do.body41:                                        ; preds = %do.end23
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 98
  %13 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %real_cred, align 4
  %cmp44 = icmp eq ptr %14, %cred
  br i1 %cmp44, label %do.body52, label %do.end57, !prof !131

do.body52:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 148, 0\0A.popsection", ""() #14, !srcloc !133
  unreachable

do.end57:                                         ; preds = %do.body41
  %15 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool58.not = icmp eq i32 %17, 0
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_cred_rcu(ptr noundef %15)
  br label %if.end60

if.else:                                          ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @call_rcu(ptr noundef %15, ptr noundef nonnull @put_cred_rcu) #14
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then59
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_cred_subscribers(ptr noundef %cred) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %subscribers = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers, i32 noundef 4) #14
  %0 = ptrtoint ptr %subscribers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %subscribers, align 4
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @put_cred_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -132
  %magic = getelementptr i8, ptr %rcu, i32 -120
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147494724, i32 %1)
  %cmp.not = icmp eq i32 %1, 1147494724
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #14
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %subscribers.i = getelementptr i8, ptr %rcu, i32 -128
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %subscribers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic, align 4
  %put_addr = getelementptr i8, ptr %rcu, i32 -124
  %8 = ptrtoint ptr %put_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %put_addr, align 4
  %call.i.i45 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #14
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %add.ptr, align 4
  %call8 = tail call fastcc i32 @read_cred_subscribers(ptr noundef %add.ptr)
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.19, ptr noundef %add.ptr, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %call8) #17
  unreachable

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @security_cred_free(ptr noundef %add.ptr) #14
  %session_keyring = getelementptr i8, ptr %rcu, i32 -36
  %12 = ptrtoint ptr %session_keyring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %session_keyring, align 4
  tail call void @key_put(ptr noundef %13) #14
  %process_keyring = getelementptr i8, ptr %rcu, i32 -32
  %14 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %process_keyring, align 4
  tail call void @key_put(ptr noundef %15) #14
  %thread_keyring = getelementptr i8, ptr %rcu, i32 -28
  %16 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %thread_keyring, align 4
  tail call void @key_put(ptr noundef %17) #14
  %request_key_auth = getelementptr i8, ptr %rcu, i32 -24
  %18 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %request_key_auth, align 4
  tail call void @key_put(ptr noundef %19) #14
  %group_info = getelementptr i8, ptr %rcu, i32 -4
  %20 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %group_info, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end.if.end19_crit_edge, label %do.body10

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

do.body10:                                        ; preds = %if.end
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #14, !srcloc !135
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then14, label %do.body10.if.end19_crit_edge

do.body10.if.end19_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %group_info, align 4
  tail call void @groups_free(ptr noundef %24) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %do.body10.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %user = getelementptr i8, ptr %rcu, i32 -16
  %25 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %user, align 4
  tail call void @free_uid(ptr noundef %26) #14
  %ucounts = getelementptr i8, ptr %rcu, i32 -8
  %27 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ucounts, align 4
  %tobool20.not = icmp eq ptr %28, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_ucounts(ptr noundef nonnull %28) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %user_ns = getelementptr i8, ptr %rcu, i32 -12
  %29 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end23.put_user_ns.exit_crit_edge, label %land.lhs.true.i

if.end23.put_user_ns.exit_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %30, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !137
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #14, !srcloc !138
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !128

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #14
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !139
  tail call void @__put_user_ns(ptr noundef nonnull %30) #14
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %if.end23.put_user_ns.exit_crit_edge
  %32 = load ptr, ptr @cred_jar, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_creds(ptr nocapture noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 98
  %0 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_cred, align 4
  store ptr null, ptr %real_cred, align 4
  %magic.i.i = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %3)
  %cmp.not.i.not.i = icmp eq i32 %3, 1131636068
  br i1 %cmp.not.i.not.i, label %__validate_creds.exit, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 170) #14
  unreachable

__validate_creds.exit:                            ; preds = %entry
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i, ptr %subscribers.i, i32 -1, ptr elementtype(i32) %subscribers.i) #14, !srcloc !140
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %__validate_creds.exit.put_cred.exit_crit_edge, label %do.body.i

__validate_creds.exit.put_cred.exit_crit_edge:    ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

do.body.i:                                        ; preds = %__validate_creds.exit
  %5 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %6)
  %cmp.not.i.not.i.i = icmp eq i32 %6, 1131636068
  br i1 %cmp.not.i.not.i.i, label %__validate_creds.exit.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i:                          ; preds = %do.body.i
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %1) #14
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %__validate_creds.exit.put_cred.exit_crit_edge
  %cred5 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 99
  %8 = ptrtoint ptr %cred5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cred5, align 16
  store ptr null, ptr %cred5, align 16
  %magic.i.i22 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %magic.i.i22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %magic.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %11)
  %cmp.not.i.not.i23 = icmp eq i32 %11, 1131636068
  br i1 %cmp.not.i.not.i23, label %__validate_creds.exit25, label %if.then.i24, !prof !128

if.then.i24:                                      ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 176) #14
  unreachable

__validate_creds.exit25:                          ; preds = %put_cred.exit
  %subscribers.i26 = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 1
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i26, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i26, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i26, ptr %subscribers.i26, i32 -1, ptr elementtype(i32) %subscribers.i26) #14, !srcloc !140
  %tobool.not.i28 = icmp eq ptr %9, null
  br i1 %tobool.not.i28, label %__validate_creds.exit25.put_cred.exit38_crit_edge, label %do.body.i31

__validate_creds.exit25.put_cred.exit38_crit_edge: ; preds = %__validate_creds.exit25
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit38

do.body.i31:                                      ; preds = %__validate_creds.exit25
  %13 = ptrtoint ptr %magic.i.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %magic.i.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %14)
  %cmp.not.i.not.i.i30 = icmp eq i32 %14, 1131636068
  br i1 %cmp.not.i.not.i.i30, label %__validate_creds.exit.i36, label %if.then.i.i32, !prof !128

if.then.i.i32:                                    ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %9, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i36:                        ; preds = %do.body.i31
  %call.i.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %9, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %9, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i34 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i34)
  %cmp.i.i.i35 = icmp eq i32 %asmresult.i.i.i.i.i.i34, 0
  br i1 %cmp.i.i.i35, label %if.then1.i37, label %__validate_creds.exit.i36.put_cred.exit38_crit_edge

__validate_creds.exit.i36.put_cred.exit38_crit_edge: ; preds = %__validate_creds.exit.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit38

if.then1.i37:                                     ; preds = %__validate_creds.exit.i36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %9) #14
  br label %put_cred.exit38

put_cred.exit38:                                  ; preds = %if.then1.i37, %__validate_creds.exit.i36.put_cred.exit38_crit_edge, %__validate_creds.exit25.put_cred.exit38_crit_edge
  %cached_requested_key = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 100
  %16 = ptrtoint ptr %cached_requested_key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cached_requested_key, align 4
  tail call void @key_put(ptr noundef %17) #14
  %18 = ptrtoint ptr %cached_requested_key to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cached_requested_key, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_task_cred(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  br label %do.body

do.body:                                          ; preds = %if.end.i.do.body_crit_edge, %rcu_read_lock.exit
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @get_task_cred.__warned, align 1
  br i1 %.b33, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @get_task_cred.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 203, ptr noundef nonnull @.str.1) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %do.body.do.end8_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.body16, label %if.end.i, !prof !131

do.body16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #14, !srcloc !142
  unreachable

if.end.i:                                         ; preds = %do.end8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !143
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 0, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !144
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.do.body_crit_edge, label %do.body.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !145
  %magic.i.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %magic.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %8)
  %cmp.not.i.not.i.i = icmp eq i32 %8, 1131636068
  br i1 %cmp.not.i.not.i.i, label %do.end30, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 265) #14
  unreachable

do.end30:                                         ; preds = %do.body.i
  %9 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i35, label %do.end30.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

do.end30.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %do.end30
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %do.end30.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !146
  %11 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i42 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cred_alloc_blank() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cred_jar, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #14
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call.i, align 8
  %magic = getelementptr inbounds %struct.cred, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1131636068, ptr %magic, align 4
  %call1 = tail call i32 @security_cred_alloc_blank(ptr noundef nonnull %call.i, i32 noundef 4197568) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %error, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

error:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @abort_creds(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_cred_alloc_blank(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @abort_creds(ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i, i32 noundef 4) #14
  %0 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %subscribers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %do.body8, label %do.body3, !prof !128

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 540, 0\0A.popsection", ""() #14, !srcloc !147
  unreachable

do.body8:                                         ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %new, i32 noundef 4) #14
  %2 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp10 = icmp slt i32 %3, 1
  br i1 %cmp10, label %do.body18, label %do.end23, !prof !131

do.body18:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 542, 0\0A.popsection", ""() #14, !srcloc !148
  unreachable

do.end23:                                         ; preds = %do.body8
  %tobool.not.i = icmp eq ptr %new, null
  br i1 %tobool.not.i, label %do.end23.put_cred.exit_crit_edge, label %do.body.i

do.end23.put_cred.exit_crit_edge:                 ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

do.body.i:                                        ; preds = %do.end23
  %magic.i.i.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 3
  %4 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %5)
  %cmp.not.i.not.i.i = icmp eq i32 %5, 1131636068
  br i1 %cmp.not.i.not.i.i, label %__validate_creds.exit.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %new, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i:                          ; preds = %do.body.i
  %call.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %new, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new, ptr nonnull %new, i32 1, ptr nonnull elementtype(i32) %new) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %new) #14
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %do.end23.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prepare_creds() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  tail call void @__validate_process_creds(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 258)
  %4 = load ptr, ptr @cred_jar, align 4
  %call4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end7:                                          ; preds = %entry
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %5 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cred, align 16
  %7 = call ptr @memcpy(ptr %call4, ptr %6, i32 140)
  %8 = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 28
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call4, i32 noundef 4) #14
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %call4, align 8
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  %11 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %subscribers.i, align 4
  %group_info = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 27
  %12 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group_info, align 8
  %call.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #14, !srcloc !140
  %user = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 24
  %15 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %user, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %16, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %16, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end7.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !131

do.end7.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end7
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_uid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !128

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_uid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_uid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end7.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end7.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef %.sink.i.i.i.i) #14
  br label %get_uid.exit

get_uid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_uid.exit_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 25
  %19 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %user_ns, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %get_uid.exit.get_user_ns.exit_crit_edge, label %if.then.i

get_uid.exit.get_user_ns.exit_crit_edge:          ; preds = %get_uid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %get_uid.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %20, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i51)
  %tobool1.not.i.i.i.i52 = icmp eq i32 %asmresult.i.i.i.i.i.i51, 0
  br i1 %tobool1.not.i.i.i.i52, label %if.then.i.if.end15.sink.split.i.i.i.i57_crit_edge, label %if.else.i.i.i.i55, !prof !131

if.then.i.if.end15.sink.split.i.i.i.i57_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i57

if.else.i.i.i.i55:                                ; preds = %if.then.i
  %add.i.i.i.i53 = add i32 %asmresult.i.i.i.i.i.i51, 1
  %22 = or i32 %add.i.i.i.i53, %asmresult.i.i.i.i.i.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i54 = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i54, label %if.else.i.i.i.i55.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i55.if.end15.sink.split.i.i.i.i57_crit_edge, !prof !128

if.else.i.i.i.i55.if.end15.sink.split.i.i.i.i57_crit_edge: ; preds = %if.else.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i57

if.else.i.i.i.i55.get_user_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i57:                    ; preds = %if.else.i.i.i.i55.if.end15.sink.split.i.i.i.i57_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i57_crit_edge
  %.sink.i.i.i.i56 = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i57_crit_edge ], [ 1, %if.else.i.i.i.i55.if.end15.sink.split.i.i.i.i57_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i56) #14
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i57, %if.else.i.i.i.i55.get_user_ns.exit_crit_edge, %get_uid.exit.get_user_ns.exit_crit_edge
  %session_keyring = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 19
  %23 = ptrtoint ptr %session_keyring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %session_keyring, align 8
  %tobool.not.i58 = icmp eq ptr %24, null
  br i1 %tobool.not.i58, label %get_user_ns.exit.key_get.exit_crit_edge, label %cond.true.i

get_user_ns.exit.key_get.exit_crit_edge:          ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit

cond.true.i:                                      ; preds = %get_user_ns.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %24, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %24, i32 1, i32 3, i32 1) #14
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %24, ptr nonnull %24, i32 1, ptr nonnull elementtype(i32) %24) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !131

cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %cond.true.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.key_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !128

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.key_get.exit_crit_edge:         ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %cond.true.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %24, i32 noundef %.sink.i.i.i.i.i) #14
  br label %key_get.exit

key_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.key_get.exit_crit_edge, %get_user_ns.exit.key_get.exit_crit_edge
  %process_keyring = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 20
  %27 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %process_keyring, align 4
  %tobool.not.i59 = icmp eq ptr %28, null
  br i1 %tobool.not.i59, label %key_get.exit.key_get.exit69_crit_edge, label %cond.true.i63

key_get.exit.key_get.exit69_crit_edge:            ; preds = %key_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit69

cond.true.i63:                                    ; preds = %key_get.exit
  %call.i.i.i.i.i.i.i60 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #14
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i.i61 = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i61)
  %tobool1.not.i.i.i.i.i62 = icmp eq i32 %asmresult.i.i.i.i.i.i.i61, 0
  br i1 %tobool1.not.i.i.i.i.i62, label %cond.true.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge, label %if.else.i.i.i.i.i66, !prof !131

cond.true.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge: ; preds = %cond.true.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i68

if.else.i.i.i.i.i66:                              ; preds = %cond.true.i63
  %add.i.i.i.i.i64 = add i32 %asmresult.i.i.i.i.i.i.i61, 1
  %30 = or i32 %add.i.i.i.i.i64, %asmresult.i.i.i.i.i.i.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i65 = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i65, label %if.else.i.i.i.i.i66.key_get.exit69_crit_edge, label %if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge, !prof !128

if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge: ; preds = %if.else.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i68

if.else.i.i.i.i.i66.key_get.exit69_crit_edge:     ; preds = %if.else.i.i.i.i.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit69

if.end15.sink.split.i.i.i.i.i68:                  ; preds = %if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge, %cond.true.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge
  %.sink.i.i.i.i.i67 = phi i32 [ 2, %cond.true.i63.if.end15.sink.split.i.i.i.i.i68_crit_edge ], [ 1, %if.else.i.i.i.i.i66.if.end15.sink.split.i.i.i.i.i68_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %28, i32 noundef %.sink.i.i.i.i.i67) #14
  br label %key_get.exit69

key_get.exit69:                                   ; preds = %if.end15.sink.split.i.i.i.i.i68, %if.else.i.i.i.i.i66.key_get.exit69_crit_edge, %key_get.exit.key_get.exit69_crit_edge
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 21
  %31 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %thread_keyring, align 8
  %tobool.not.i70 = icmp eq ptr %32, null
  br i1 %tobool.not.i70, label %key_get.exit69.key_get.exit80_crit_edge, label %cond.true.i74

key_get.exit69.key_get.exit80_crit_edge:          ; preds = %key_get.exit69
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit80

cond.true.i74:                                    ; preds = %key_get.exit69
  %call.i.i.i.i.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %32, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %32, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i.i72 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i72)
  %tobool1.not.i.i.i.i.i73 = icmp eq i32 %asmresult.i.i.i.i.i.i.i72, 0
  br i1 %tobool1.not.i.i.i.i.i73, label %cond.true.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge, label %if.else.i.i.i.i.i77, !prof !131

cond.true.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge: ; preds = %cond.true.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i79

if.else.i.i.i.i.i77:                              ; preds = %cond.true.i74
  %add.i.i.i.i.i75 = add i32 %asmresult.i.i.i.i.i.i.i72, 1
  %34 = or i32 %add.i.i.i.i.i75, %asmresult.i.i.i.i.i.i.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i76 = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i76, label %if.else.i.i.i.i.i77.key_get.exit80_crit_edge, label %if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge, !prof !128

if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge: ; preds = %if.else.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i79

if.else.i.i.i.i.i77.key_get.exit80_crit_edge:     ; preds = %if.else.i.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit80

if.end15.sink.split.i.i.i.i.i79:                  ; preds = %if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge, %cond.true.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge
  %.sink.i.i.i.i.i78 = phi i32 [ 2, %cond.true.i74.if.end15.sink.split.i.i.i.i.i79_crit_edge ], [ 1, %if.else.i.i.i.i.i77.if.end15.sink.split.i.i.i.i.i79_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %32, i32 noundef %.sink.i.i.i.i.i78) #14
  br label %key_get.exit80

key_get.exit80:                                   ; preds = %if.end15.sink.split.i.i.i.i.i79, %if.else.i.i.i.i.i77.key_get.exit80_crit_edge, %key_get.exit69.key_get.exit80_crit_edge
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 22
  %35 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %request_key_auth, align 4
  %tobool.not.i81 = icmp eq ptr %36, null
  br i1 %tobool.not.i81, label %key_get.exit80.key_get.exit91_crit_edge, label %cond.true.i85

key_get.exit80.key_get.exit91_crit_edge:          ; preds = %key_get.exit80
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit91

cond.true.i85:                                    ; preds = %key_get.exit80
  %call.i.i.i.i.i.i.i82 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %36, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %36, i32 1, i32 3, i32 1) #14
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i.i83 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i83)
  %tobool1.not.i.i.i.i.i84 = icmp eq i32 %asmresult.i.i.i.i.i.i.i83, 0
  br i1 %tobool1.not.i.i.i.i.i84, label %cond.true.i85.if.end15.sink.split.i.i.i.i.i90_crit_edge, label %if.else.i.i.i.i.i88, !prof !131

cond.true.i85.if.end15.sink.split.i.i.i.i.i90_crit_edge: ; preds = %cond.true.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i90

if.else.i.i.i.i.i88:                              ; preds = %cond.true.i85
  %add.i.i.i.i.i86 = add i32 %asmresult.i.i.i.i.i.i.i83, 1
  %38 = or i32 %add.i.i.i.i.i86, %asmresult.i.i.i.i.i.i.i83
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i87 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i87, label %if.else.i.i.i.i.i88.key_get.exit91_crit_edge, label %if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge, !prof !128

if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge: ; preds = %if.else.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i.i90

if.else.i.i.i.i.i88.key_get.exit91_crit_edge:     ; preds = %if.else.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %key_get.exit91

if.end15.sink.split.i.i.i.i.i90:                  ; preds = %if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge, %cond.true.i85.if.end15.sink.split.i.i.i.i.i90_crit_edge
  %.sink.i.i.i.i.i89 = phi i32 [ 2, %cond.true.i85.if.end15.sink.split.i.i.i.i.i90_crit_edge ], [ 1, %if.else.i.i.i.i.i88.if.end15.sink.split.i.i.i.i.i90_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %36, i32 noundef %.sink.i.i.i.i.i89) #14
  br label %key_get.exit91

key_get.exit91:                                   ; preds = %if.end15.sink.split.i.i.i.i.i90, %if.else.i.i.i.i.i88.key_get.exit91_crit_edge, %key_get.exit80.key_get.exit91_crit_edge
  %security = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 23
  %39 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %security, align 8
  %ucounts = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 26
  %40 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ucounts, align 4
  %call15 = tail call ptr @get_ucounts(ptr noundef %41) #14
  %42 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call15, ptr %ucounts, align 4
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %key_get.exit91.error_crit_edge, label %if.end20

key_get.exit91.error_crit_edge:                   ; preds = %key_get.exit91
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end20:                                         ; preds = %key_get.exit91
  %call21 = tail call i32 @security_prepare_creds(ptr noundef nonnull %call4, ptr noundef %6, i32 noundef 4197568) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.error_crit_edge, label %do.body24

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

do.body24:                                        ; preds = %if.end20
  %magic.i.i = getelementptr inbounds %struct.cred, ptr %call4, i32 0, i32 3
  %43 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %44)
  %cmp.not.i.not.i = icmp eq i32 %44, 1131636068
  br i1 %cmp.not.i.not.i, label %do.body24.cleanup_crit_edge, label %if.then.i92, !prof !128

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i92:                                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %call4, ptr noundef nonnull @.str, i32 noundef 294) #14
  unreachable

error:                                            ; preds = %if.end20.error_crit_edge, %key_get.exit91.error_crit_edge
  tail call void @abort_creds(ptr noundef nonnull %call4)
  br label %cleanup

cleanup:                                          ; preds = %error, %do.body24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ null, %entry.cleanup_crit_edge ], [ %call4, %do.body24.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__validate_process_creds(ptr nocapture noundef readonly %tsk, ptr noundef %file, i32 noundef %line) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 99
  %0 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cred, align 16
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 98
  %2 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %real_cred, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i, i32 noundef 4) #14
  %4 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %subscribers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2 = icmp slt i32 %5, 2
  br i1 %cmp2, label %if.then.do.end_crit_edge, label %lor.rhs, !prof !131

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.rhs:                                          ; preds = %if.then
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %magic.i = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %9)
  %cmp.not.i.not = icmp eq i32 %9, 1131636068
  br i1 %cmp.not.i.not, label %lor.rhs.do.end49_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !128

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.rhs.do.end49_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49

if.else:                                          ; preds = %entry
  %subscribers.i68 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 1
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i68, i32 noundef 4) #14
  %10 = ptrtoint ptr %subscribers.i68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %subscribers.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp9 = icmp slt i32 %11, 1
  br i1 %cmp9, label %if.else.do.end_crit_edge, label %lor.lhs.false, !prof !131

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false:                                    ; preds = %if.else
  %12 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cred, align 16
  %subscribers.i70 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 1
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i70, i32 noundef 4) #14
  %14 = ptrtoint ptr %subscribers.i70 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %subscribers.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp12 = icmp slt i32 %15, 1
  br i1 %cmp12, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false13, !prof !131

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %real_cred, align 4
  %magic.i72 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %magic.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %magic.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %19)
  %cmp.not.i73.not = icmp eq i32 %19, 1131636068
  br i1 %cmp.not.i73.not, label %lor.rhs16, label %lor.lhs.false13.do.end_crit_edge, !prof !128

lor.lhs.false13.do.end_crit_edge:                 ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.rhs16:                                        ; preds = %lor.lhs.false13
  %20 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cred, align 16
  %magic.i74 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %magic.i74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %magic.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %23)
  %cmp.not.i75.not = icmp eq i32 %23, 1131636068
  br i1 %cmp.not.i75.not, label %lor.rhs16.do.end49_crit_edge, label %lor.rhs16.do.end_crit_edge, !prof !128

lor.rhs16.do.end_crit_edge:                       ; preds = %lor.rhs16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lor.rhs16.do.end49_crit_edge:                     ; preds = %lor.rhs16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end49

do.end:                                           ; preds = %lor.rhs16.do.end_crit_edge, %lor.lhs.false13.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.else.do.end_crit_edge, %lor.rhs.do.end_crit_edge, %if.then.do.end_crit_edge
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #18
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %file, i32 noundef %line) #18
  %24 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %real_cred, align 4
  tail call fastcc void @dump_invalid_creds(ptr noundef %25, ptr noundef nonnull @.str.14, ptr noundef %tsk)
  %26 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cred, align 16
  %28 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %real_cred, align 4
  %cmp37.not = icmp eq ptr %27, %29
  br i1 %cmp37.not, label %do.end42, label %if.then38

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @dump_invalid_creds(ptr noundef %27, ptr noundef nonnull @.str.15, ptr noundef %tsk)
  br label %do.body46

do.end42:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %do.body46

do.body46:                                        ; preds = %do.end42, %if.then38
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 910, 0\0A.popsection", ""() #14, !srcloc !150
  unreachable

do.end49:                                         ; preds = %lor.rhs16.do.end49_crit_edge, %lor.rhs.do.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_ucounts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_prepare_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prepare_exec_creds() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @prepare_creds()
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread_keyring, align 4
  tail call void @key_put(ptr noundef %1) #14
  %2 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %thread_keyring, align 4
  %process_keyring = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 20
  %3 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %process_keyring, align 4
  tail call void @key_put(ptr noundef %4) #14
  %5 = ptrtoint ptr %process_keyring to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %process_keyring, align 4
  %suid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 6
  %fsuid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 10
  %euid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %euid, align 4
  %8 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fsuid, align 4
  %9 = ptrtoint ptr %suid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %suid, align 4
  %sgid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 7
  %fsgid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 11
  %egid = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 9
  %10 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %egid, align 4
  %12 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fsgid, align 4
  %13 = ptrtoint ptr %sgid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %sgid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @copy_creds(ptr noundef %p, i32 noundef %clone_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cached_requested_key = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 100
  %0 = ptrtoint ptr %cached_requested_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cached_requested_key, align 4
  %cred = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 99
  %1 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cred, align 16
  %thread_keyring = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %thread_keyring to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %thread_keyring, align 4
  %tobool.not = icmp ne ptr %4, null
  %and = and i32 %clone_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %tobool.not.i125 = icmp eq ptr %2, null
  br i1 %tobool.not.i125, label %if.then.get_cred.exit_crit_edge, label %do.body.i

if.then.get_cred.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.then
  %magic.i.i.i = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %magic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %magic.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %6)
  %cmp.not.i.not.i.i = icmp eq i32 %6, 1131636068
  br i1 %cmp.not.i.not.i.i, label %__validate_creds.exit.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %2, ptr noundef nonnull @.str.20, i32 noundef 253) #14
  unreachable

__validate_creds.exit.i:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 28
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #14, !srcloc !140
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.then.get_cred.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %real_cred, align 4
  %11 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cred, align 16
  %tobool.not.i126 = icmp eq ptr %12, null
  br i1 %tobool.not.i126, label %get_cred.exit.get_cred.exit133_crit_edge, label %do.body.i129

get_cred.exit.get_cred.exit133_crit_edge:         ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_cred.exit133

do.body.i129:                                     ; preds = %get_cred.exit
  %magic.i.i.i127 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %magic.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %magic.i.i.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %14)
  %cmp.not.i.not.i.i128 = icmp eq i32 %14, 1131636068
  br i1 %cmp.not.i.not.i.i128, label %__validate_creds.exit.i132, label %if.then.i.i130, !prof !128

if.then.i.i130:                                   ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %12, ptr noundef nonnull @.str.20, i32 noundef 253) #14
  unreachable

__validate_creds.exit.i132:                       ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #16
  %15 = getelementptr inbounds %struct.cred, ptr %12, i32 0, i32 28
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %call.i.i.i.i131 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %12, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %12, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %12, ptr nonnull %12, i32 1, ptr nonnull elementtype(i32) %12) #14, !srcloc !140
  br label %get_cred.exit133

get_cred.exit133:                                 ; preds = %__validate_creds.exit.i132, %get_cred.exit.get_cred.exit133_crit_edge
  %18 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cred, align 16
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i, ptr %subscribers.i, i32 2, ptr elementtype(i32) %subscribers.i) #14, !srcloc !140
  %21 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %get_cred.exit133.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

get_cred.exit133.rcu_read_lock.exit_crit_edge:    ; preds = %get_cred.exit133
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %get_cred.exit133
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %get_cred.exit133.rcu_read_lock.exit_crit_edge
  %25 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %real_cred, align 4
  %call11 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %rcu_read_lock.exit.do.end20_crit_edge

rcu_read_lock.exit.do.end20_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

land.lhs.true13:                                  ; preds = %rcu_read_lock.exit
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end20_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b113 = load i1, ptr @copy_creds.__warned, align 1
  br i1 %.b113, label %land.lhs.true16.do.end20_crit_edge, label %if.then18

land.lhs.true16.do.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end20

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @copy_creds.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 361, ptr noundef nonnull @.str.1) #14
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %land.lhs.true16.do.end20_crit_edge, %land.lhs.true13.do.end20_crit_edge, %rcu_read_lock.exit.do.end20_crit_edge
  %ucounts = getelementptr inbounds %struct.cred, ptr %26, i32 0, i32 26
  %27 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ucounts, align 4
  %call.i134 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i134, label %do.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i137

do.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i137:                               ; preds = %do.end20
  %call1.i135 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i139

land.lhs.true.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i139:                              ; preds = %land.lhs.true.i137
  %.b4.i138 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i138, label %land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge, label %if.then.i140

land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i140:                                     ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i140, %land.lhs.true2.i139.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i137.rcu_read_unlock.exit_crit_edge, %do.end20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !146
  %29 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i141 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i142, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i142, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call23 = tail call i32 @inc_rlimit_ucounts(ptr noundef %28, i32 noundef 12, i32 noundef 1) #14
  br label %cleanup

if.end24:                                         ; preds = %entry
  %call25 = tail call ptr @prepare_creds()
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %and29 = and i32 %clone_flags, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  %call32 = tail call i32 @create_user_ns(ptr noundef nonnull %call25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %if.then31.do.body.i171_crit_edge, label %if.end34

if.then31.do.body.i171_crit_edge:                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i171

if.end34:                                         ; preds = %if.then31
  %ucounts.i = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 26
  %33 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ucounts.i, align 4
  %ns.i = getelementptr inbounds %struct.ucounts, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ns.i, align 4
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 25
  %37 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user_ns.i, align 4
  %cmp.i = icmp eq ptr %36, %38
  br i1 %cmp.i, label %land.lhs.true.i143, label %if.end34.if.end.i_crit_edge

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i143:                               ; preds = %if.end34
  %uid.i = getelementptr inbounds %struct.ucounts, ptr %34, i32 0, i32 2
  %uid1.i = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 4
  %39 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack18.i = load i32, ptr %uid.i, align 4
  %40 = ptrtoint ptr %uid1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack19.i = load i32, ptr %uid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack18.i, i32 %.unpack19.i)
  %cmp.i.i = icmp eq i32 %.unpack18.i, %.unpack19.i
  br i1 %cmp.i.i, label %land.lhs.true.i143.if.end39_crit_edge, label %land.lhs.true.i143.if.end.i_crit_edge

land.lhs.true.i143.if.end.i_crit_edge:            ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i143.if.end39_crit_edge:            ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.end.i:                                         ; preds = %land.lhs.true.i143.if.end.i_crit_edge, %if.end34.if.end.i_crit_edge
  %uid4.i = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 4
  %41 = ptrtoint ptr %uid4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack.i = load i32, ptr %uid4.i, align 4
  %42 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call6.i = tail call ptr @alloc_ucounts(ptr noundef %38, [1 x i32] %42) #14
  %tobool.not.i144 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i144, label %if.end.i.do.body.i171_crit_edge, label %if.end8.i

if.end.i.do.body.i171_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i171

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %ucounts.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call6.i, ptr %ucounts.i, align 4
  tail call void @put_ucounts(ptr noundef %34) #14
  br label %if.end39

if.end39:                                         ; preds = %if.end8.i, %land.lhs.true.i143.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %thread_keyring40 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 21
  %44 = ptrtoint ptr %thread_keyring40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %thread_keyring40, align 4
  %tobool41.not = icmp eq ptr %45, null
  br i1 %tobool41.not, label %if.end50, label %if.then42

if.then42:                                        ; preds = %if.end39
  tail call void @key_put(ptr noundef nonnull %45) #14
  %46 = ptrtoint ptr %thread_keyring40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %thread_keyring40, align 4
  br i1 %tobool1.not, label %if.then42.if.then53_crit_edge, label %if.end50.thread177

if.then42.if.then53_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

if.end50.thread177:                               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = tail call i32 @install_thread_keyring_to_cred(ptr noundef nonnull %call25) #14
  br label %do.body.i148

if.end50:                                         ; preds = %if.end39
  br i1 %tobool1.not, label %if.end50.if.then53_crit_edge, label %if.end50.do.body.i148_crit_edge

if.end50.do.body.i148_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i148

if.end50.if.then53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

if.then53:                                        ; preds = %if.end50.if.then53_crit_edge, %if.then42.if.then53_crit_edge
  %process_keyring = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 20
  %47 = ptrtoint ptr %process_keyring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %process_keyring, align 4
  tail call void @key_put(ptr noundef %48) #14
  %49 = ptrtoint ptr %process_keyring to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %process_keyring, align 4
  br label %do.body.i148

do.body.i148:                                     ; preds = %if.then53, %if.end50.do.body.i148_crit_edge, %if.end50.thread177
  %magic.i.i.i146 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 3
  %50 = ptrtoint ptr %magic.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %magic.i.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %51)
  %cmp.not.i.not.i.i147 = icmp eq i32 %51, 1131636068
  br i1 %cmp.not.i.not.i.i147, label %get_cred.exit152, label %if.then.i.i149, !prof !128

if.then.i.i149:                                   ; preds = %do.body.i148
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %call25, ptr noundef nonnull @.str.20, i32 noundef 253) #14
  unreachable

get_cred.exit152:                                 ; preds = %do.body.i148
  %52 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 28
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %52, align 4
  %call.i.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call25, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %call25, i32 1, i32 3, i32 1) #14
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call25, ptr nonnull %call25, i32 1, ptr nonnull elementtype(i32) %call25) #14, !srcloc !140
  %real_cred57 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 98
  %55 = ptrtoint ptr %real_cred57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call25, ptr %real_cred57, align 4
  %56 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call25, ptr %cred, align 16
  %57 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i114 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i114 to ptr
  %preempt_count.i.i.i.i115 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i115, align 4
  %add.i.i.i116 = add i32 %60, 1
  store volatile i32 %add.i.i.i116, ptr %preempt_count.i.i.i.i115, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !141
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i117 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i117, label %get_cred.exit152.rcu_read_lock.exit124_crit_edge, label %land.lhs.true.i120

get_cred.exit152.rcu_read_lock.exit124_crit_edge: ; preds = %get_cred.exit152
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit124

land.lhs.true.i120:                               ; preds = %get_cred.exit152
  %call1.i118 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %land.lhs.true.i120.rcu_read_lock.exit124_crit_edge, label %land.lhs.true2.i122

land.lhs.true.i120.rcu_read_lock.exit124_crit_edge: ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit124

land.lhs.true2.i122:                              ; preds = %land.lhs.true.i120
  %.b4.i121 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i121, label %land.lhs.true2.i122.rcu_read_lock.exit124_crit_edge, label %if.then.i123

land.lhs.true2.i122.rcu_read_lock.exit124_crit_edge: ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit124

if.then.i123:                                     ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #14
  br label %rcu_read_lock.exit124

rcu_read_lock.exit124:                            ; preds = %if.then.i123, %land.lhs.true2.i122.rcu_read_lock.exit124_crit_edge, %land.lhs.true.i120.rcu_read_lock.exit124_crit_edge, %get_cred.exit152.rcu_read_lock.exit124_crit_edge
  %61 = ptrtoint ptr %real_cred57 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %real_cred57, align 4
  %call66 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %land.lhs.true68, label %rcu_read_lock.exit124.do.end76_crit_edge

rcu_read_lock.exit124.do.end76_crit_edge:         ; preds = %rcu_read_lock.exit124
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true68:                                  ; preds = %rcu_read_lock.exit124
  %call69 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true68.do.end76_crit_edge, label %land.lhs.true71

land.lhs.true68.do.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %.b111112 = load i1, ptr @copy_creds.__warned.2, align 1
  br i1 %.b111112, label %land.lhs.true71.do.end76_crit_edge, label %if.then73

land.lhs.true71.do.end76_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end76

if.then73:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @copy_creds.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 398, ptr noundef nonnull @.str.1) #14
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %land.lhs.true71.do.end76_crit_edge, %land.lhs.true68.do.end76_crit_edge, %rcu_read_lock.exit124.do.end76_crit_edge
  %ucounts78 = getelementptr inbounds %struct.cred, ptr %62, i32 0, i32 26
  %63 = ptrtoint ptr %ucounts78 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ucounts78, align 4
  %call.i153 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i153, label %do.end76.rcu_read_unlock.exit163_crit_edge, label %land.lhs.true.i156

do.end76.rcu_read_unlock.exit163_crit_edge:       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit163

land.lhs.true.i156:                               ; preds = %do.end76
  %call1.i154 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool.not.i155, label %land.lhs.true.i156.rcu_read_unlock.exit163_crit_edge, label %land.lhs.true2.i158

land.lhs.true.i156.rcu_read_unlock.exit163_crit_edge: ; preds = %land.lhs.true.i156
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit163

land.lhs.true2.i158:                              ; preds = %land.lhs.true.i156
  %.b4.i157 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i157, label %land.lhs.true2.i158.rcu_read_unlock.exit163_crit_edge, label %if.then.i159

land.lhs.true2.i158.rcu_read_unlock.exit163_crit_edge: ; preds = %land.lhs.true2.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit163

if.then.i159:                                     ; preds = %land.lhs.true2.i158
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #14
  br label %rcu_read_unlock.exit163

rcu_read_unlock.exit163:                          ; preds = %if.then.i159, %land.lhs.true2.i158.rcu_read_unlock.exit163_crit_edge, %land.lhs.true.i156.rcu_read_unlock.exit163_crit_edge, %do.end76.rcu_read_unlock.exit163_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !146
  %65 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i.i.i.i.i160 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i160 to ptr
  %preempt_count.i.i.i.i161 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i161, align 4
  %sub.i.i.i162 = add i32 %68, -1
  store volatile i32 %sub.i.i.i162, ptr %preempt_count.i.i.i.i161, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call80 = tail call i32 @inc_rlimit_ucounts(ptr noundef %64, i32 noundef 12, i32 noundef 1) #14
  %subscribers.i164 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 1
  %call.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i164, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i164, i32 1, i32 3, i32 1) #14
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i164, ptr %subscribers.i164, i32 2, ptr elementtype(i32) %subscribers.i164) #14, !srcloc !140
  %70 = ptrtoint ptr %magic.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %magic.i.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %71)
  %cmp.not.i.not.i = icmp eq i32 %71, 1131636068
  br i1 %cmp.not.i.not.i, label %rcu_read_unlock.exit163.cleanup_crit_edge, label %if.then.i166, !prof !128

rcu_read_unlock.exit163.cleanup_crit_edge:        ; preds = %rcu_read_unlock.exit163
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i166:                                     ; preds = %rcu_read_unlock.exit163
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %call25, ptr noundef nonnull @.str, i32 noundef 400) #14
  unreachable

do.body.i171:                                     ; preds = %if.end.i.do.body.i171_crit_edge, %if.then31.do.body.i171_crit_edge
  %ret.0 = phi i32 [ %call32, %if.then31.do.body.i171_crit_edge ], [ -11, %if.end.i.do.body.i171_crit_edge ]
  %magic.i.i.i169 = getelementptr inbounds %struct.cred, ptr %call25, i32 0, i32 3
  %72 = ptrtoint ptr %magic.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %magic.i.i.i169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %73)
  %cmp.not.i.not.i.i170 = icmp eq i32 %73, 1131636068
  br i1 %cmp.not.i.not.i.i170, label %__validate_creds.exit.i174, label %if.then.i.i172, !prof !128

if.then.i.i172:                                   ; preds = %do.body.i171
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %call25, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i174:                       ; preds = %do.body.i171
  %call.i.i.i173 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call25, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %call25, i32 1, i32 3, i32 1) #14
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call25, ptr nonnull %call25, i32 1, ptr nonnull elementtype(i32) %call25) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %74, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i174.cleanup_crit_edge

__validate_creds.exit.i174.cleanup_crit_edge:     ; preds = %__validate_creds.exit.i174
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i174
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %call25) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i, %__validate_creds.exit.i174.cleanup_crit_edge, %rcu_read_unlock.exit163.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -12, %if.end24.cleanup_crit_edge ], [ 0, %rcu_read_unlock.exit163.cleanup_crit_edge ], [ %ret.0, %__validate_creds.exit.i174.cleanup_crit_edge ], [ %ret.0, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inc_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_user_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_cred_ucounts(ptr nocapture noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ucounts = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 26
  %0 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucounts, align 4
  %ns = getelementptr inbounds %struct.ucounts, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %user_ns = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 25
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %uid = getelementptr inbounds %struct.ucounts, ptr %1, i32 0, i32 2
  %uid1 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %6 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack18 = load i32, ptr %uid, align 4
  %7 = ptrtoint ptr %uid1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack19 = load i32, ptr %uid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack18, i32 %.unpack19)
  %cmp.i = icmp eq i32 %.unpack18, %.unpack19
  br i1 %cmp.i, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %uid4 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %8 = ptrtoint ptr %uid4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %uid4, align 4
  %9 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call6 = tail call ptr @alloc_ucounts(ptr noundef %5, [1 x i32] %9) #14
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %ucounts, align 4
  tail call void @put_ucounts(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @install_thread_keyring_to_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @commit_creds(ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %real_cred, align 4
  %cred = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %cmp.not = icmp eq ptr %7, %5
  br i1 %cmp.not, label %do.body12, label %do.body4, !prof !128

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 456, 0\0A.popsection", ""() #14, !srcloc !151
  unreachable

do.body12:                                        ; preds = %entry
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i, i32 noundef 4) #14
  %8 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %subscribers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp14 = icmp slt i32 %9, 2
  br i1 %cmp14, label %do.body22, label %do.body31, !prof !131

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 458, 0\0A.popsection", ""() #14, !srcloc !152
  unreachable

do.body31:                                        ; preds = %do.body12
  %magic.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %11)
  %cmp.not.i.not.i = icmp eq i32 %11, 1131636068
  br i1 %cmp.not.i.not.i, label %__validate_creds.exit, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 459) #14
  unreachable

__validate_creds.exit:                            ; preds = %do.body31
  %magic.i.i334 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 3
  %12 = ptrtoint ptr %magic.i.i334 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %magic.i.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %13)
  %cmp.not.i.not.i335 = icmp eq i32 %13, 1131636068
  br i1 %cmp.not.i.not.i335, label %__validate_creds.exit337, label %if.then.i336, !prof !128

if.then.i336:                                     ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %new, ptr noundef nonnull @.str, i32 noundef 460) #14
  unreachable

__validate_creds.exit337:                         ; preds = %__validate_creds.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %new, i32 noundef 4) #14
  %14 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp39 = icmp slt i32 %15, 1
  br i1 %cmp39, label %do.body47, label %do.end55, !prof !131

do.body47:                                        ; preds = %__validate_creds.exit337
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 462, 0\0A.popsection", ""() #14, !srcloc !153
  unreachable

do.end55:                                         ; preds = %__validate_creds.exit337
  %tobool.not.i = icmp eq ptr %new, null
  br i1 %tobool.not.i, label %do.end55.get_cred.exit_crit_edge, label %do.body.i

do.end55.get_cred.exit_crit_edge:                 ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_cred.exit

do.body.i:                                        ; preds = %do.end55
  %16 = ptrtoint ptr %magic.i.i334 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %magic.i.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %17)
  %cmp.not.i.not.i.i = icmp eq i32 %17, 1131636068
  br i1 %cmp.not.i.not.i.i, label %__validate_creds.exit.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %new, ptr noundef nonnull @.str.20, i32 noundef 253) #14
  unreachable

__validate_creds.exit.i:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 28
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull %new, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %new, ptr nonnull %new, i32 1, ptr nonnull elementtype(i32) %new) #14, !srcloc !140
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %do.end55.get_cred.exit_crit_edge
  %euid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 8
  %euid57 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 8
  %21 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %euid, align 4
  %22 = ptrtoint ptr %euid57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack307 = load i32, ptr %euid57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack307)
  %cmp.i = icmp eq i32 %.unpack, %.unpack307
  br i1 %cmp.i, label %lor.lhs.false, label %get_cred.exit.if.then76_crit_edge

get_cred.exit.if.then76_crit_edge:                ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

lor.lhs.false:                                    ; preds = %get_cred.exit
  %egid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %egid60 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 9
  %23 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack328 = load i32, ptr %egid, align 4
  %24 = ptrtoint ptr %egid60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack329 = load i32, ptr %egid60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack328, i32 %.unpack329)
  %cmp.i338 = icmp eq i32 %.unpack328, %.unpack329
  br i1 %cmp.i338, label %lor.lhs.false64, label %lor.lhs.false.if.then76_crit_edge

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %fsuid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %fsuid65 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 10
  %25 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack330 = load i32, ptr %fsuid, align 4
  %26 = ptrtoint ptr %fsuid65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack331 = load i32, ptr %fsuid65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack330, i32 %.unpack331)
  %cmp.i339 = icmp eq i32 %.unpack330, %.unpack331
  br i1 %cmp.i339, label %lor.lhs.false69, label %lor.lhs.false64.if.then76_crit_edge

lor.lhs.false64.if.then76_crit_edge:              ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

lor.lhs.false69:                                  ; preds = %lor.lhs.false64
  %fsgid = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %fsgid70 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 11
  %27 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack332 = load i32, ptr %fsgid, align 4
  %28 = ptrtoint ptr %fsgid70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack333 = load i32, ptr %fsgid70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack332, i32 %.unpack333)
  %cmp.i340 = icmp eq i32 %.unpack332, %.unpack333
  br i1 %cmp.i340, label %lor.lhs.false74, label %lor.lhs.false69.if.then76_crit_edge

lor.lhs.false69.if.then76_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

lor.lhs.false74:                                  ; preds = %lor.lhs.false69
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %29 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %user_ns.i, align 4
  %user_ns1.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 25
  %31 = ptrtoint ptr %user_ns1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user_ns1.i, align 4
  %cmp.i341 = icmp eq ptr %30, %32
  br i1 %cmp.i341, label %cred_cap_issubset.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false74
  %cmp4.not28.i = icmp eq ptr %32, @init_user_ns
  br i1 %cmp4.not28.i, label %for.cond.preheader.i.if.then76_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then76_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %subset_ns.029.i = phi ptr [ %34, %for.inc.i.for.body.i_crit_edge ], [ %32, %for.cond.preheader.i.for.body.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %subset_ns.029.i, i32 0, i32 3
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i, align 4
  %cmp5.i = icmp eq ptr %30, %34
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %owner.i = getelementptr inbounds %struct.user_namespace, ptr %subset_ns.029.i, i32 0, i32 5
  %35 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i = load i32, ptr %owner.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack)
  %cmp.i.i = icmp eq i32 %.unpack.i, %.unpack
  br i1 %cmp.i.i, label %land.lhs.true.i.if.end87_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.if.end87_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp4.not.i = icmp eq ptr %34, @init_user_ns
  br i1 %cmp4.not.i, label %for.inc.i.if.then76_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.if.then76_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

cred_cap_issubset.exit:                           ; preds = %lor.lhs.false74
  %cap_permitted.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14
  %cap_permitted2.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack22.i = load i32, ptr %cap_permitted.i, align 4
  %.elt23.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 14, i32 0, i32 1
  %37 = ptrtoint ptr %.elt23.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.unpack24.i = load i32, ptr %.elt23.i, align 4
  %38 = ptrtoint ptr %cap_permitted2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.unpack25.i = load i32, ptr %cap_permitted2.i, align 4
  %.elt26.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 14, i32 0, i32 1
  %39 = ptrtoint ptr %.elt26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.unpack27.i = load i32, ptr %.elt26.i, align 4
  %neg.i.i.i = xor i32 %.unpack25.i, -1
  %and.i.i.i = and i32 %.unpack22.i, %neg.i.i.i
  %neg.1.i.i.i = xor i32 %.unpack27.i, -1
  %and.1.i.i.i = and i32 %.unpack24.i, %neg.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %cmp1.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  %or.cond.i.i.i = select i1 %cmp1.not.i.i.i, i1 %cmp1.not.1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %cred_cap_issubset.exit.if.end87_crit_edge, label %cred_cap_issubset.exit.if.then76_crit_edge

cred_cap_issubset.exit.if.then76_crit_edge:       ; preds = %cred_cap_issubset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then76

cred_cap_issubset.exit.if.end87_crit_edge:        ; preds = %cred_cap_issubset.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then76:                                        ; preds = %cred_cap_issubset.exit.if.then76_crit_edge, %for.inc.i.if.then76_crit_edge, %for.cond.preheader.i.if.then76_crit_edge, %lor.lhs.false69.if.then76_crit_edge, %lor.lhs.false64.if.then76_crit_edge, %lor.lhs.false.if.then76_crit_edge, %get_cred.exit.if.then76_crit_edge
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %40 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mm, align 8
  %tobool77.not = icmp eq ptr %41, null
  br i1 %tobool77.not, label %if.then76.if.end80_crit_edge, label %if.then78

if.then76.if.end80_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @suid_dumpable to i32))
  %42 = load i32, ptr @suid_dumpable, align 4
  tail call void @set_dumpable(ptr noundef nonnull %41, i32 noundef %42) #14
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then76.if.end80_crit_edge
  %pdeath_signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 60
  %43 = ptrtoint ptr %pdeath_signal to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pdeath_signal, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !154
  br label %if.end87

if.end87:                                         ; preds = %if.end80, %cred_cap_issubset.exit.if.end87_crit_edge, %land.lhs.true.i.if.end87_crit_edge
  %fsuid88 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 10
  %fsuid89 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 10
  %44 = ptrtoint ptr %fsuid88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.unpack308 = load i32, ptr %fsuid88, align 4
  %45 = ptrtoint ptr %fsuid89 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.unpack309 = load i32, ptr %fsuid89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack308, i32 %.unpack309)
  %cmp.i343 = icmp eq i32 %.unpack308, %.unpack309
  br i1 %cmp.i343, label %if.end87.if.end94_crit_edge, label %if.then93

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.then93:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @key_fsuid_changed(ptr noundef %new) #14
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end87.if.end94_crit_edge
  %fsgid95 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 11
  %fsgid96 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 11
  %46 = ptrtoint ptr %fsgid95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack310 = load i32, ptr %fsgid95, align 4
  %47 = ptrtoint ptr %fsgid96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.unpack311 = load i32, ptr %fsgid96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack310, i32 %.unpack311)
  %cmp.i344 = icmp eq i32 %.unpack310, %.unpack311
  br i1 %cmp.i344, label %if.end94.if.end101_crit_edge, label %if.then100

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then100:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @key_fsgid_changed(ptr noundef %new) #14
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end94.if.end101_crit_edge
  %subscribers.i345 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 1
  %call.i.i.i346 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i345, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i345, i32 1, i32 3, i32 1) #14
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i345, ptr %subscribers.i345, i32 2, ptr elementtype(i32) %subscribers.i345) #14, !srcloc !140
  %user = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 24
  %49 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %user, align 4
  %user102 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 24
  %51 = ptrtoint ptr %user102 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user102, align 4
  %cmp103.not = icmp eq ptr %50, %52
  br i1 %cmp103.not, label %lor.lhs.false104, label %if.end101.if.then107_crit_edge

if.end101.if.then107_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107

lor.lhs.false104:                                 ; preds = %if.end101
  %user_ns = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 25
  %53 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %user_ns, align 4
  %user_ns105 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %55 = ptrtoint ptr %user_ns105 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_ns105, align 4
  %cmp106.not = icmp eq ptr %54, %56
  br i1 %cmp106.not, label %lor.lhs.false104.do.body110_crit_edge, label %lor.lhs.false104.if.then107_crit_edge

lor.lhs.false104.if.then107_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then107

lor.lhs.false104.do.body110_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body110

if.then107:                                       ; preds = %lor.lhs.false104.if.then107_crit_edge, %if.end101.if.then107_crit_edge
  %ucounts = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 26
  %57 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ucounts, align 4
  %call108 = tail call i32 @inc_rlimit_ucounts(ptr noundef %58, i32 noundef 12, i32 noundef 1) #14
  br label %do.body110

do.body110:                                       ; preds = %if.then107, %lor.lhs.false104.do.body110_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !155
  %59 = ptrtoint ptr %real_cred to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %new, ptr %real_cred, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !156
  %60 = ptrtoint ptr %cred to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %new, ptr %cred, align 16
  %61 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %user, align 4
  %63 = ptrtoint ptr %user102 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %user102, align 4
  %cmp191.not = icmp eq ptr %62, %64
  br i1 %cmp191.not, label %lor.lhs.false192, label %do.body110.if.then196_crit_edge

do.body110.if.then196_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then196

lor.lhs.false192:                                 ; preds = %do.body110
  %user_ns193 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 25
  %65 = ptrtoint ptr %user_ns193 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %user_ns193, align 4
  %user_ns194 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %67 = ptrtoint ptr %user_ns194 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_ns194, align 4
  %cmp195.not = icmp eq ptr %66, %68
  br i1 %cmp195.not, label %lor.lhs.false192.if.end199_crit_edge, label %lor.lhs.false192.if.then196_crit_edge

lor.lhs.false192.if.then196_crit_edge:            ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then196

lor.lhs.false192.if.end199_crit_edge:             ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.then196:                                       ; preds = %lor.lhs.false192.if.then196_crit_edge, %do.body110.if.then196_crit_edge
  %ucounts197 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 26
  %69 = ptrtoint ptr %ucounts197 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ucounts197, align 4
  %call198 = tail call zeroext i1 @dec_rlimit_ucounts(ptr noundef %70, i32 noundef 12, i32 noundef 1) #14
  br label %if.end199

if.end199:                                        ; preds = %if.then196, %lor.lhs.false192.if.end199_crit_edge
  %call.i.i.i348 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i, i32 1, i32 3, i32 1) #14
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i, ptr %subscribers.i, i32 -2, ptr elementtype(i32) %subscribers.i) #14, !srcloc !140
  %uid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 4
  %uid200 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 4
  %72 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack312 = load i32, ptr %uid, align 4
  %73 = ptrtoint ptr %uid200 to i32
  call void @__asan_load4_noabort(i32 %73)
  %.unpack313 = load i32, ptr %uid200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack312, i32 %.unpack313)
  %cmp.i349 = icmp eq i32 %.unpack312, %.unpack313
  br i1 %cmp.i349, label %lor.lhs.false204, label %if.end199.if.then221_crit_edge

if.end199.if.then221_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then221

lor.lhs.false204:                                 ; preds = %if.end199
  %74 = ptrtoint ptr %euid57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack322 = load i32, ptr %euid57, align 4
  %75 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %75)
  %.unpack323 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack322, i32 %.unpack323)
  %cmp.i350 = icmp eq i32 %.unpack322, %.unpack323
  br i1 %cmp.i350, label %lor.lhs.false210, label %lor.lhs.false204.if.then221_crit_edge

lor.lhs.false204.if.then221_crit_edge:            ; preds = %lor.lhs.false204
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then221

lor.lhs.false210:                                 ; preds = %lor.lhs.false204
  %suid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 6
  %suid211 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 6
  %76 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack324 = load i32, ptr %suid, align 4
  %77 = ptrtoint ptr %suid211 to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack325 = load i32, ptr %suid211, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack324, i32 %.unpack325)
  %cmp.i351 = icmp eq i32 %.unpack324, %.unpack325
  br i1 %cmp.i351, label %lor.lhs.false215, label %lor.lhs.false210.if.then221_crit_edge

lor.lhs.false210.if.then221_crit_edge:            ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then221

lor.lhs.false215:                                 ; preds = %lor.lhs.false210
  %78 = ptrtoint ptr %fsuid88 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.unpack326 = load i32, ptr %fsuid88, align 4
  %79 = ptrtoint ptr %fsuid89 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack327 = load i32, ptr %fsuid89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack326, i32 %.unpack327)
  %cmp.i352 = icmp eq i32 %.unpack326, %.unpack327
  br i1 %cmp.i352, label %lor.lhs.false215.if.end222_crit_edge, label %lor.lhs.false215.if.then221_crit_edge

lor.lhs.false215.if.then221_crit_edge:            ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then221

lor.lhs.false215.if.end222_crit_edge:             ; preds = %lor.lhs.false215
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end222

if.then221:                                       ; preds = %lor.lhs.false215.if.then221_crit_edge, %lor.lhs.false210.if.then221_crit_edge, %lor.lhs.false204.if.then221_crit_edge, %if.end199.if.then221_crit_edge
  tail call void @proc_id_connector(ptr noundef %3, i32 noundef 4) #14
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %lor.lhs.false215.if.end222_crit_edge
  %gid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 5
  %gid223 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 5
  %80 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %80)
  %.unpack314 = load i32, ptr %gid, align 4
  %81 = ptrtoint ptr %gid223 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack315 = load i32, ptr %gid223, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack314, i32 %.unpack315)
  %cmp.i353 = icmp eq i32 %.unpack314, %.unpack315
  br i1 %cmp.i353, label %lor.lhs.false227, label %if.end222.if.then244_crit_edge

if.end222.if.then244_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then244

lor.lhs.false227:                                 ; preds = %if.end222
  %egid228 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 9
  %egid229 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 9
  %82 = ptrtoint ptr %egid228 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.unpack316 = load i32, ptr %egid228, align 4
  %83 = ptrtoint ptr %egid229 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack317 = load i32, ptr %egid229, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack316, i32 %.unpack317)
  %cmp.i354 = icmp eq i32 %.unpack316, %.unpack317
  br i1 %cmp.i354, label %lor.lhs.false233, label %lor.lhs.false227.if.then244_crit_edge

lor.lhs.false227.if.then244_crit_edge:            ; preds = %lor.lhs.false227
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then244

lor.lhs.false233:                                 ; preds = %lor.lhs.false227
  %sgid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 7
  %sgid234 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 7
  %84 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %84)
  %.unpack318 = load i32, ptr %sgid, align 4
  %85 = ptrtoint ptr %sgid234 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.unpack319 = load i32, ptr %sgid234, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack318, i32 %.unpack319)
  %cmp.i355 = icmp eq i32 %.unpack318, %.unpack319
  br i1 %cmp.i355, label %lor.lhs.false238, label %lor.lhs.false233.if.then244_crit_edge

lor.lhs.false233.if.then244_crit_edge:            ; preds = %lor.lhs.false233
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then244

lor.lhs.false238:                                 ; preds = %lor.lhs.false233
  %86 = ptrtoint ptr %fsgid95 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack320 = load i32, ptr %fsgid95, align 4
  %87 = ptrtoint ptr %fsgid96 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack321 = load i32, ptr %fsgid96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack320, i32 %.unpack321)
  %cmp.i356 = icmp eq i32 %.unpack320, %.unpack321
  br i1 %cmp.i356, label %lor.lhs.false238.if.end245_crit_edge, label %lor.lhs.false238.if.then244_crit_edge

lor.lhs.false238.if.then244_crit_edge:            ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then244

lor.lhs.false238.if.end245_crit_edge:             ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end245

if.then244:                                       ; preds = %lor.lhs.false238.if.then244_crit_edge, %lor.lhs.false233.if.then244_crit_edge, %lor.lhs.false227.if.then244_crit_edge, %if.end222.if.then244_crit_edge
  tail call void @proc_id_connector(ptr noundef %3, i32 noundef 64) #14
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %lor.lhs.false238.if.end245_crit_edge
  %tobool.not.i357 = icmp eq ptr %5, null
  br i1 %tobool.not.i357, label %if.end245.put_cred.exit374_crit_edge, label %do.body.i360

if.end245.put_cred.exit374_crit_edge:             ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit374

do.body.i360:                                     ; preds = %if.end245
  %88 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %89)
  %cmp.not.i.not.i.i359 = icmp eq i32 %89, 1131636068
  br i1 %cmp.not.i.not.i.i359, label %__validate_creds.exit.i363, label %if.then.i.i361, !prof !128

if.then.i.i361:                                   ; preds = %do.body.i360
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i363:                       ; preds = %do.body.i360
  %call.i.i.i362 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %90, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i363.do.body.i367_crit_edge

__validate_creds.exit.i363.do.body.i367_crit_edge: ; preds = %__validate_creds.exit.i363
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i367

if.then1.i:                                       ; preds = %__validate_creds.exit.i363
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %5) #14
  br label %do.body.i367

do.body.i367:                                     ; preds = %if.then1.i, %__validate_creds.exit.i363.do.body.i367_crit_edge
  %91 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %92)
  %cmp.not.i.not.i.i366 = icmp eq i32 %92, 1131636068
  br i1 %cmp.not.i.not.i.i366, label %__validate_creds.exit.i372, label %if.then.i.i368, !prof !128

if.then.i.i368:                                   ; preds = %do.body.i367
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i372:                       ; preds = %do.body.i367
  %call.i.i.i369 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i370 = extractvalue { i32, i32 } %93, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i370)
  %cmp.i.i.i371 = icmp eq i32 %asmresult.i.i.i.i.i.i370, 0
  br i1 %cmp.i.i.i371, label %if.then1.i373, label %__validate_creds.exit.i372.put_cred.exit374_crit_edge

__validate_creds.exit.i372.put_cred.exit374_crit_edge: ; preds = %__validate_creds.exit.i372
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit374

if.then1.i373:                                    ; preds = %__validate_creds.exit.i372
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %5) #14
  br label %put_cred.exit374

put_cred.exit374:                                 ; preds = %if.then1.i373, %__validate_creds.exit.i372.put_cred.exit374_crit_edge, %if.end245.put_cred.exit374_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_dumpable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_fsuid_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_fsgid_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_id_connector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @override_creds(ptr noundef %new) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %magic.i.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %7)
  %cmp.not.i.not.i = icmp eq i32 %7, 1131636068
  br i1 %cmp.not.i.not.i, label %__validate_creds.exit, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 562) #14
  unreachable

__validate_creds.exit:                            ; preds = %entry
  %magic.i.i55 = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 3
  %8 = ptrtoint ptr %magic.i.i55 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic.i.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %9)
  %cmp.not.i.not.i56 = icmp eq i32 %9, 1131636068
  br i1 %cmp.not.i.not.i56, label %__validate_creds.exit58, label %if.then.i57, !prof !128

if.then.i57:                                      ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %new, ptr noundef nonnull @.str, i32 noundef 563) #14
  unreachable

__validate_creds.exit58:                          ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %new, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %new, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %new, ptr %new, i32 1, ptr elementtype(i32) %new) #14, !srcloc !140
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 1
  %call.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i, i32 1, i32 3, i32 1) #14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i, ptr %subscribers.i, i32 1, ptr elementtype(i32) %subscribers.i) #14, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !157
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %cred36 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 99
  %14 = ptrtoint ptr %cred36 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %new, ptr %cred36, align 16
  %subscribers.i60 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %call.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i60, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i60, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i60, ptr %subscribers.i60, i32 -1, ptr elementtype(i32) %subscribers.i60) #14, !srcloc !140
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @revert_creds(ptr noundef %old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
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
  %magic.i.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 3
  %6 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %7)
  %cmp.not.i.not.i = icmp eq i32 %7, 1131636068
  br i1 %cmp.not.i.not.i, label %__validate_creds.exit, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %old, ptr noundef nonnull @.str, i32 noundef 603) #14
  unreachable

__validate_creds.exit:                            ; preds = %entry
  %magic.i.i50 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %magic.i.i50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %magic.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %9)
  %cmp.not.i.not.i51 = icmp eq i32 %9, 1131636068
  br i1 %cmp.not.i.not.i51, label %__validate_creds.exit53, label %if.then.i52, !prof !128

if.then.i52:                                      ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 604) #14
  unreachable

__validate_creds.exit53:                          ; preds = %__validate_creds.exit
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %old, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i, ptr %subscribers.i, i32 1, ptr elementtype(i32) %subscribers.i) #14, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !158
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cred35 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 99
  %13 = ptrtoint ptr %cred35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %old, ptr %cred35, align 16
  %subscribers.i54 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 1
  %call.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i54, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %subscribers.i54, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %subscribers.i54, ptr %subscribers.i54, i32 -1, ptr elementtype(i32) %subscribers.i54) #14, !srcloc !140
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %__validate_creds.exit53.put_cred.exit_crit_edge, label %do.body.i

__validate_creds.exit53.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit53
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

do.body.i:                                        ; preds = %__validate_creds.exit53
  %15 = ptrtoint ptr %magic.i.i50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %magic.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %16)
  %cmp.not.i.not.i.i = icmp eq i32 %16, 1131636068
  br i1 %cmp.not.i.not.i.i, label %__validate_creds.exit.i, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %5, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i:                          ; preds = %do.body.i
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %5) #14
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %__validate_creds.exit53.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cred_fscmp(ptr noundef readonly %a, ptr noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, %b
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsuid = getelementptr inbounds %struct.cred, ptr %a, i32 0, i32 10
  %fsuid1 = getelementptr inbounds %struct.cred, ptr %b, i32 0, i32 10
  %0 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %fsuid, align 4
  %1 = ptrtoint ptr %fsuid1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack93 = load i32, ptr %fsuid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack93)
  %cmp.i = icmp ult i32 %.unpack, %.unpack93
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack93)
  %cmp.i104 = icmp ugt i32 %.unpack, %.unpack93
  br i1 %cmp.i104, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %fsgid = getelementptr inbounds %struct.cred, ptr %a, i32 0, i32 11
  %fsgid12 = getelementptr inbounds %struct.cred, ptr %b, i32 0, i32 11
  %2 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %2)
  %.unpack96 = load i32, ptr %fsgid, align 4
  %3 = ptrtoint ptr %fsgid12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack97 = load i32, ptr %fsgid12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack96, i32 %.unpack97)
  %cmp.i105 = icmp ult i32 %.unpack96, %.unpack97
  br i1 %cmp.i105, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack96, i32 %.unpack97)
  %cmp.i106 = icmp ugt i32 %.unpack96, %.unpack97
  br i1 %cmp.i106, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %group_info = getelementptr inbounds %struct.cred, ptr %a, i32 0, i32 27
  %4 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_info, align 4
  %group_info25 = getelementptr inbounds %struct.cred, ptr %b, i32 0, i32 27
  %6 = ptrtoint ptr %group_info25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group_info25, align 4
  %cmp26 = icmp eq ptr %5, %7
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %cmp29 = icmp eq ptr %5, null
  br i1 %cmp29, label %if.end28.cleanup_crit_edge, label %if.end31

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  %cmp32 = icmp eq ptr %7, null
  br i1 %cmp32, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %ngroups = getelementptr inbounds %struct.group_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ngroups, align 4
  %ngroups35 = getelementptr inbounds %struct.group_info, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %ngroups35 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp36 = icmp slt i32 %9, %11
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp41 = icmp sgt i32 %9, %11
  br i1 %cmp41, label %if.end38.cleanup_crit_edge, label %for.cond.preheader

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp45109 = icmp sgt i32 %9, 0
  br i1 %cmp45109, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %if.end52
  %inc = add nuw nsw i32 %g.0110, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %g.0110 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.group_info, ptr %5, i32 0, i32 2, i32 %g.0110
  %arrayidx47 = getelementptr %struct.group_info, ptr %7, i32 0, i32 2, i32 %g.0110
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack100 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack101 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack100, i32 %.unpack101)
  %cmp.i107 = icmp ult i32 %.unpack100, %.unpack101
  br i1 %cmp.i107, label %for.body.cleanup_crit_edge, label %if.end52

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end52:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack100, i32 %.unpack101)
  %cmp.i108 = icmp ugt i32 %.unpack100, %.unpack101
  br i1 %cmp.i108, label %if.end52.cleanup_crit_edge, label %for.cond

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end52.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ -1, %if.end11.cleanup_crit_edge ], [ 1, %if.end17.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ -1, %if.end28.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ], [ -1, %if.end34.cleanup_crit_edge ], [ 1, %if.end38.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -1, %for.body.cleanup_crit_edge ], [ 1, %if.end52.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ucounts(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_ucounts(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cred_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 0, i32 noundef 67379200, ptr noundef null) #14
  store ptr %call, ptr @cred_jar, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @prepare_kernel_cred(ptr noundef %daemon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cred_jar, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %daemon, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call ptr @get_task_cred(ptr noundef nonnull %daemon)
  br label %do.body6

if.else:                                          ; preds = %do.end
  %1 = load i32, ptr getelementptr inbounds (%struct.cred, ptr @init_cred, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %1)
  %cmp.not.i.not.i.i = icmp eq i32 %1, 1131636068
  br i1 %cmp.not.i.not.i.i, label %get_cred.exit, label %if.then.i.i, !prof !128

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull @init_cred, ptr noundef nonnull @.str.20, i32 noundef 253) #14
  unreachable

get_cred.exit:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  store i32 0, ptr getelementptr inbounds (%struct.cred, ptr @init_cred, i32 0, i32 28), align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @init_cred, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr nonnull @init_cred, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @init_cred, ptr nonnull @init_cred, i32 1, ptr nonnull elementtype(i32) @init_cred) #14, !srcloc !140
  br label %do.body6

do.body6:                                         ; preds = %get_cred.exit, %if.then2
  %old.0 = phi ptr [ %call3, %if.then2 ], [ @init_cred, %get_cred.exit ]
  %magic.i.i = getelementptr inbounds %struct.cred, ptr %old.0, i32 0, i32 3
  %3 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %4)
  %cmp.not.i.not.i = icmp eq i32 %4, 1131636068
  br i1 %cmp.not.i.not.i, label %__validate_creds.exit, label %if.then.i, !prof !128

if.then.i:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef %old.0, ptr noundef nonnull @.str, i32 noundef 728) #14
  unreachable

__validate_creds.exit:                            ; preds = %do.body6
  %5 = call ptr @memcpy(ptr %call, ptr %old.0, i32 140)
  %6 = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 28
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #14
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %call, align 8
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %subscribers.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %subscribers.i, align 4
  %user = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 24
  %10 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %__validate_creds.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !131

__validate_creds.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %__validate_creds.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_uid.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !128

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_uid.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_uid.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %__validate_creds.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %__validate_creds.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %11, i32 noundef %.sink.i.i.i.i) #14
  br label %get_uid.exit

get_uid.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_uid.exit_crit_edge
  %user_ns = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %get_uid.exit.get_user_ns.exit_crit_edge, label %if.then.i53

get_uid.exit.get_user_ns.exit_crit_edge:          ; preds = %get_uid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_user_ns.exit

if.then.i53:                                      ; preds = %get_uid.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %15, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #14, !srcloc !149
  %asmresult.i.i.i.i.i.i51 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i51)
  %tobool1.not.i.i.i.i52 = icmp eq i32 %asmresult.i.i.i.i.i.i51, 0
  br i1 %tobool1.not.i.i.i.i52, label %if.then.i53.if.end15.sink.split.i.i.i.i58_crit_edge, label %if.else.i.i.i.i56, !prof !131

if.then.i53.if.end15.sink.split.i.i.i.i58_crit_edge: ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i58

if.else.i.i.i.i56:                                ; preds = %if.then.i53
  %add.i.i.i.i54 = add i32 %asmresult.i.i.i.i.i.i51, 1
  %17 = or i32 %add.i.i.i.i54, %asmresult.i.i.i.i.i.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i55 = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i55, label %if.else.i.i.i.i56.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i56.if.end15.sink.split.i.i.i.i58_crit_edge, !prof !128

if.else.i.i.i.i56.if.end15.sink.split.i.i.i.i58_crit_edge: ; preds = %if.else.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i58

if.else.i.i.i.i56.get_user_ns.exit_crit_edge:     ; preds = %if.else.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i58:                    ; preds = %if.else.i.i.i.i56.if.end15.sink.split.i.i.i.i58_crit_edge, %if.then.i53.if.end15.sink.split.i.i.i.i58_crit_edge
  %.sink.i.i.i.i57 = phi i32 [ 2, %if.then.i53.if.end15.sink.split.i.i.i.i58_crit_edge ], [ 1, %if.else.i.i.i.i56.if.end15.sink.split.i.i.i.i58_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i57) #14
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i58, %if.else.i.i.i.i56.get_user_ns.exit_crit_edge, %get_uid.exit.get_user_ns.exit_crit_edge
  %group_info = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 27
  %18 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group_info, align 8
  %call.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #14
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #14, !srcloc !140
  %session_keyring = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 19
  %jit_keyring = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 18
  %21 = call ptr @memset(ptr %session_keyring, i32 0, i32 16)
  %22 = ptrtoint ptr %jit_keyring to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %jit_keyring, align 4
  %security = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 23
  %23 = ptrtoint ptr %security to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %security, align 8
  %ucounts = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 26
  %24 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ucounts, align 4
  %call12 = tail call ptr @get_ucounts(ptr noundef %25) #14
  %26 = ptrtoint ptr %ucounts to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call12, ptr %ucounts, align 4
  %tobool15.not = icmp eq ptr %call12, null
  br i1 %tobool15.not, label %get_user_ns.exit.do.body.i72_crit_edge, label %if.end17

get_user_ns.exit.do.body.i72_crit_edge:           ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i72

if.end17:                                         ; preds = %get_user_ns.exit
  %call18 = tail call i32 @security_prepare_creds(ptr noundef nonnull %call, ptr noundef %old.0, i32 noundef 4197568) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end17.do.body.i72_crit_edge, label %if.end20

if.end17.do.body.i72_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i72

if.end20:                                         ; preds = %if.end17
  %tobool.not.i60 = icmp eq ptr %old.0, null
  br i1 %tobool.not.i60, label %if.end20.put_cred.exit_crit_edge, label %do.body.i

if.end20.put_cred.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

do.body.i:                                        ; preds = %if.end20
  %27 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %28)
  %cmp.not.i.not.i.i61 = icmp eq i32 %28, 1131636068
  br i1 %cmp.not.i.not.i.i61, label %__validate_creds.exit.i, label %if.then.i.i62, !prof !128

if.then.i.i62:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %old.0, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i:                          ; preds = %do.body.i
  %call.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %old.0, i32 1, i32 3, i32 1) #14
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %old.0, ptr nonnull %old.0, i32 1, ptr nonnull elementtype(i32) %old.0) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i64 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i64)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i64, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %old.0) #14
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %if.end20.put_cred.exit_crit_edge
  %magic.i.i65 = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %magic.i.i65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %magic.i.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %31)
  %cmp.not.i.not.i66 = icmp eq i32 %31, 1131636068
  br i1 %cmp.not.i.not.i66, label %put_cred.exit.cleanup_crit_edge, label %if.then.i67, !prof !128

put_cred.exit.cleanup_crit_edge:                  ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i67:                                      ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str, i32 noundef 757) #14
  unreachable

do.body.i72:                                      ; preds = %if.end17.do.body.i72_crit_edge, %get_user_ns.exit.do.body.i72_crit_edge
  %magic.i.i.i70 = getelementptr inbounds %struct.cred, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %magic.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %magic.i.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %33)
  %cmp.not.i.not.i.i71 = icmp eq i32 %33, 1131636068
  br i1 %cmp.not.i.not.i.i71, label %__validate_creds.exit.i77, label %if.then.i.i73, !prof !128

if.then.i.i73:                                    ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i77:                        ; preds = %do.body.i72
  %call.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i75 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i75)
  %cmp.i.i.i76 = icmp eq i32 %asmresult.i.i.i.i.i.i75, 0
  br i1 %cmp.i.i.i76, label %if.then1.i78, label %__validate_creds.exit.i77.put_cred.exit79_crit_edge

__validate_creds.exit.i77.put_cred.exit79_crit_edge: ; preds = %__validate_creds.exit.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_cred.exit79

if.then1.i78:                                     ; preds = %__validate_creds.exit.i77
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %call) #14
  br label %put_cred.exit79

put_cred.exit79:                                  ; preds = %if.then1.i78, %__validate_creds.exit.i77.put_cred.exit79_crit_edge
  %tobool.not.i80 = icmp eq ptr %old.0, null
  br i1 %tobool.not.i80, label %put_cred.exit79.cleanup_crit_edge, label %do.body.i83

put_cred.exit79.cleanup_crit_edge:                ; preds = %put_cred.exit79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i83:                                      ; preds = %put_cred.exit79
  %35 = ptrtoint ptr %magic.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %magic.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %36)
  %cmp.not.i.not.i.i82 = icmp eq i32 %36, 1131636068
  br i1 %cmp.not.i.not.i.i82, label %__validate_creds.exit.i88, label %if.then.i.i84, !prof !128

if.then.i.i84:                                    ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_handle_no_return()
  tail call void @__invalid_creds(ptr noundef nonnull %old.0, ptr noundef nonnull @.str.20, i32 noundef 286) #14
  unreachable

__validate_creds.exit.i88:                        ; preds = %do.body.i83
  %call.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.0, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull %old.0, i32 1, i32 3, i32 1) #14
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %old.0, ptr nonnull %old.0, i32 1, ptr nonnull elementtype(i32) %old.0) #14, !srcloc !135
  %asmresult.i.i.i.i.i.i86 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i86)
  %cmp.i.i.i87 = icmp eq i32 %asmresult.i.i.i.i.i.i86, 0
  br i1 %cmp.i.i.i87, label %if.then1.i89, label %__validate_creds.exit.i88.cleanup_crit_edge

__validate_creds.exit.i88.cleanup_crit_edge:      ; preds = %__validate_creds.exit.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then1.i89:                                     ; preds = %__validate_creds.exit.i88
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_cred(ptr noundef nonnull %old.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i89, %__validate_creds.exit.i88.cleanup_crit_edge, %put_cred.exit79.cleanup_crit_edge, %put_cred.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %put_cred.exit.cleanup_crit_edge ], [ null, %put_cred.exit79.cleanup_crit_edge ], [ null, %__validate_creds.exit.i88.cleanup_crit_edge ], [ null, %if.then1.i89 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_security_override(ptr noundef %new, i32 noundef %secid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_kernel_act_as(ptr noundef %new, i32 noundef %secid) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_act_as(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_security_override_from_ctx(ptr noundef %new, ptr noundef %secctx) #0 align 64 {
entry:
  %secid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secid) #14
  %0 = ptrtoint ptr %secid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secid, align 4, !annotation !159
  %call = tail call i32 @strlen(ptr noundef %secctx) #19
  %call1 = call i32 @security_secctx_to_secid(ptr noundef %secctx, i32 noundef %call, ptr noundef nonnull %secid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %secid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %secid, align 4
  %call.i = call i32 @security_kernel_act_as(ptr noundef %new, i32 noundef %2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secid) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secctx_to_secid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_create_files_as(ptr noundef %new, ptr noundef %inode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %0 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %0)
  %.unpack = load i32, ptr %i_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack)
  %cmp.i.not = icmp eq i32 %.unpack, -1
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %1 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %1)
  %.unpack12 = load i32, ptr %i_gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.unpack12)
  %cmp.i13.not = icmp eq i32 %.unpack12, -1
  br i1 %cmp.i13.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %fsuid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 10
  %2 = ptrtoint ptr %fsuid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.unpack, ptr %fsuid, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 11
  %3 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_gid, align 8
  %5 = ptrtoint ptr %fsgid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fsgid, align 4
  %call5 = tail call i32 @security_kernel_create_files_as(ptr noundef %new, ptr noundef %inode) #14
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_kernel_create_files_as(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @creds_are_invalid(ptr nocapture noundef readonly %cred) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %magic = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 3
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1131636068, i32 %1)
  %cmp.not = icmp ne i32 %1, 1131636068
  ret i1 %cmp.not
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__invalid_creds(ptr noundef %cred, ptr noundef %file, i32 noundef %line) #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %file, i32 noundef %line) #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call fastcc void @dump_invalid_creds(ptr noundef %cred, ptr noundef nonnull @.str.9, ptr noundef %3)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/cred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 878, 0\0A.popsection", ""() #14, !srcloc !160
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_invalid_creds(ptr noundef %cred, ptr noundef %label, ptr nocapture noundef readonly %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cred, @init_cred
  %cond = select i1 %cmp, ptr @.str.26, ptr @.str.27
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 98
  %0 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_cred, align 4
  %cmp1 = icmp eq ptr %1, %cred
  %cond2 = select i1 %cmp1, ptr @.str.28, ptr @.str.27
  %cred3 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 99
  %2 = ptrtoint ptr %cred3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred3, align 16
  %cmp4 = icmp eq ptr %3, %cred
  %cond5 = select i1 %cmp4, ptr @.str.29, ptr @.str.27
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %label, ptr noundef %cred, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, ptr noundef nonnull %cond5) #18
  %magic = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 3
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %magic, align 4
  %put_addr = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 2
  %6 = ptrtoint ptr %put_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %put_addr, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %5, ptr noundef %7) #18
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cred, i32 noundef 4) #14
  %8 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %cred, align 4
  %subscribers.i = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %subscribers.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %subscribers.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %subscribers.i, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %9, i32 noundef %11) #18
  %uid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 4
  %12 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack = load i32, ptr %uid, align 4
  %13 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call19 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %13) #14
  %euid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 8
  %14 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack75 = load i32, ptr %euid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack75, 0
  %call21 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %15) #14
  %suid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 6
  %16 = ptrtoint ptr %suid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack76 = load i32, ptr %suid, align 4
  %17 = insertvalue [1 x i32] undef, i32 %.unpack76, 0
  %call23 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %17) #14
  %fsuid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 10
  %18 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack77 = load i32, ptr %fsuid, align 4
  %19 = insertvalue [1 x i32] undef, i32 %.unpack77, 0
  %call25 = tail call i32 @from_kuid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %19) #14
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %call19, i32 noundef %call21, i32 noundef %call23, i32 noundef %call25) #18
  %gid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 5
  %20 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack78 = load i32, ptr %gid, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack78, 0
  %call31 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %21) #14
  %egid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 9
  %22 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack79 = load i32, ptr %egid, align 4
  %23 = insertvalue [1 x i32] undef, i32 %.unpack79, 0
  %call33 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %23) #14
  %sgid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 7
  %24 = ptrtoint ptr %sgid to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack80 = load i32, ptr %sgid, align 4
  %25 = insertvalue [1 x i32] undef, i32 %.unpack80, 0
  %call35 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %25) #14
  %fsgid = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 11
  %26 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack81 = load i32, ptr %fsgid, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack81, 0
  %call37 = tail call i32 @from_kgid_munged(ptr noundef nonnull @init_user_ns, [1 x i32] %27) #14
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %call31, i32 noundef %call33, i32 noundef %call35, i32 noundef %call37) #18
  %security = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 23
  %28 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %security, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %29) #18
  %30 = ptrtoint ptr %security to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %security, align 4
  %cmp44 = icmp ule ptr %31, inttoptr (i32 4095 to ptr)
  %32 = ptrtoint ptr %31 to i32
  %and = and i32 %32, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 1802201856, i32 %and)
  %cmp46.not = icmp eq i32 %and, 1802201856
  %or.cond = select i1 %cmp44, i1 true, i1 %cmp46.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %do.end48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end48:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %31, align 4
  %arrayidx52 = getelementptr i32, ptr %31, i32 1
  %35 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx52, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %34, i32 noundef %36) #18
  br label %if.end

if.end:                                           ; preds = %do.end48, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @validate_creds_for_do_exit(ptr nocapture noundef readonly %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__validate_process_creds(ptr noundef %tsk, ptr noundef nonnull @.str, i32 noundef 924)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_cred_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @groups_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @init_cred, !1, !"init_cred", i1 false, i1 false}
!1 = !{!"../kernel/cred.c", i32 41, i32 13}
!2 = !{ptr @__ksymtab___put_cred, !3, !"__ksymtab___put_cred", i1 false, i1 false}
!3 = !{!"../kernel/cred.c", i32 155, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/cred.c", i32 170, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/cred.c", i32 203, i32 10}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__ksymtab_get_task_cred, !10, !"__ksymtab_get_task_cred", i1 false, i1 false}
!10 = !{!"../kernel/cred.c", i32 210, i32 1}
!11 = !{ptr @__ksymtab_prepare_creds, !12, !"__ksymtab_prepare_creds", i1 false, i1 false}
!12 = !{!"../kernel/cred.c", i32 301, i32 1}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../kernel/cred.c", i32 361, i32 22}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../kernel/cred.c", i32 398, i32 21}
!17 = !{ptr @__ksymtab_commit_creds, !18, !"__ksymtab_commit_creds", i1 false, i1 false}
!18 = !{!"../kernel/cred.c", i32 524, i32 1}
!19 = !{ptr @__ksymtab_abort_creds, !20, !"__ksymtab_abort_creds", i1 false, i1 false}
!20 = !{!"../kernel/cred.c", i32 545, i32 1}
!21 = !{ptr @__ksymtab_override_creds, !22, !"__ksymtab_override_creds", i1 false, i1 false}
!22 = !{!"../kernel/cred.c", i32 586, i32 1}
!23 = !{ptr @__ksymtab_revert_creds, !24, !"__ksymtab_revert_creds", i1 false, i1 false}
!24 = !{!"../kernel/cred.c", i32 610, i32 1}
!25 = !{ptr @__ksymtab_cred_fscmp, !26, !"__ksymtab_cred_fscmp", i1 false, i1 false}
!26 = !{!"../kernel/cred.c", i32 664, i32 1}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../kernel/cred.c", i32 692, i32 31}
!29 = !{ptr @__ksymtab_prepare_kernel_cred, !30, !"__ksymtab_prepare_kernel_cred", i1 false, i1 false}
!30 = !{!"../kernel/cred.c", i32 765, i32 1}
!31 = !{ptr @__ksymtab_set_security_override, !32, !"__ksymtab_set_security_override", i1 false, i1 false}
!32 = !{!"../kernel/cred.c", i32 779, i32 1}
!33 = !{ptr @__ksymtab_set_security_override_from_ctx, !34, !"__ksymtab_set_security_override_from_ctx", i1 false, i1 false}
!34 = !{!"../kernel/cred.c", i32 802, i32 1}
!35 = !{ptr @__ksymtab_set_create_files_as, !36, !"__ksymtab_set_create_files_as", i1 false, i1 false}
!36 = !{!"../kernel/cred.c", i32 821, i32 1}
!37 = !{ptr @__ksymtab_creds_are_invalid, !38, !"__ksymtab_creds_are_invalid", i1 false, i1 false}
!38 = !{!"../kernel/cred.c", i32 831, i32 1}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/cred.c", i32 875, i32 2}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__invalid_creds._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @__invalid_creds._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/cred.c", i32 876, i32 2}
!46 = !{ptr @__invalid_creds._entry.6, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @__invalid_creds._entry_ptr.8, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/cred.c", i32 877, i32 27}
!50 = !{ptr @__ksymtab___invalid_creds, !51, !"__ksymtab___invalid_creds", i1 false, i1 false}
!51 = !{!"../kernel/cred.c", i32 880, i32 1}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/cred.c", i32 902, i32 2}
!54 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @__validate_process_creds._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @__validate_process_creds._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @__validate_process_creds._entry.12, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../kernel/cred.c", i32 903, i32 2}
!59 = !{ptr @__validate_process_creds._entry_ptr.13, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/cred.c", i32 905, i32 37}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/cred.c", i32 907, i32 33}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/cred.c", i32 909, i32 3}
!66 = !{ptr @__validate_process_creds._entry.16, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @__validate_process_creds._entry_ptr.18, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__ksymtab___validate_process_creds, !69, !"__ksymtab___validate_process_creds", i1 false, i1 false}
!69 = !{!"../kernel/cred.c", i32 912, i32 1}
!70 = !{ptr @cred_jar, !71, !"cred_jar", i1 false, i1 false}
!71 = !{!"../kernel/cred.c", i32 33, i32 27}
!72 = !{ptr @init_groups, !73, !"init_groups", i1 false, i1 false}
!73 = !{!"../kernel/cred.c", i32 36, i32 26}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/cred.c", i32 104, i32 9}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/cred.h", i32 286, i32 3}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/cred.c", i32 839, i32 2}
!87 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @dump_invalid_creds._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @dump_invalid_creds._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/cred.c", i32 844, i32 2}
!96 = !{ptr @dump_invalid_creds._entry.30, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dump_invalid_creds._entry_ptr.32, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/cred.c", i32 846, i32 2}
!100 = !{ptr @dump_invalid_creds._entry.33, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dump_invalid_creds._entry_ptr.35, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/cred.c", i32 849, i32 2}
!104 = !{ptr @dump_invalid_creds._entry.36, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dump_invalid_creds._entry_ptr.38, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/cred.c", i32 854, i32 2}
!108 = !{ptr @dump_invalid_creds._entry.39, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @dump_invalid_creds._entry_ptr.41, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/cred.c", i32 860, i32 2}
!112 = !{ptr @dump_invalid_creds._entry.42, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dump_invalid_creds._entry_ptr.44, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/cred.c", i32 864, i32 3}
!116 = !{ptr @dump_invalid_creds._entry.45, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @dump_invalid_creds._entry_ptr.47, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{i64 2155249542, i64 2155250020, i64 2155249579, i64 2155249635, i64 2155249669, i64 2155249693, i64 2155249734, i64 2155249755, i64 2155249783, i64 2155249817}
!130 = !{i64 2155251144, i64 2155251622, i64 2155251181, i64 2155251237, i64 2155251271, i64 2155251295, i64 2155251336, i64 2155251357, i64 2155251385, i64 2155251419}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2155252825, i64 2155253303, i64 2155252862, i64 2155252918, i64 2155252952, i64 2155252976, i64 2155253017, i64 2155253038, i64 2155253066, i64 2155253100}
!133 = !{i64 2155254505, i64 2155254983, i64 2155254542, i64 2155254598, i64 2155254632, i64 2155254656, i64 2155254697, i64 2155254718, i64 2155254746, i64 2155254780}
!134 = !{i64 2148504711}
!135 = !{i64 2148419420, i64 2148419452, i64 2148419481, i64 2148419515, i64 2148419546, i64 2148419569}
!136 = !{i64 2148504940}
!137 = !{i64 2148505790}
!138 = !{i64 2148420230, i64 2148420262, i64 2148420291, i64 2148420325, i64 2148420356, i64 2148420379}
!139 = !{i64 2149463002}
!140 = !{i64 2148416235, i64 2148416261, i64 2148416290, i64 2148416324, i64 2148416355, i64 2148416378}
!141 = !{i64 2149234819}
!142 = !{i64 2155264399, i64 2155264877, i64 2155264436, i64 2155264492, i64 2155264526, i64 2155264550, i64 2155264591, i64 2155264612, i64 2155264640, i64 2155264674}
!143 = !{i64 2148415654}
!144 = !{i64 900477, i64 900502, i64 900524, i64 900540, i64 900552, i64 900572, i64 900596, i64 900612, i64 900624}
!145 = !{i64 2148415842}
!146 = !{i64 2149235085}
!147 = !{i64 2155313764, i64 2155314242, i64 2155313801, i64 2155313857, i64 2155313891, i64 2155313915, i64 2155313956, i64 2155313977, i64 2155314005, i64 2155314039}
!148 = !{i64 2155315358, i64 2155315836, i64 2155315395, i64 2155315451, i64 2155315485, i64 2155315509, i64 2155315550, i64 2155315571, i64 2155315599, i64 2155315633}
!149 = !{i64 2148417765, i64 2148417797, i64 2148417826, i64 2148417860, i64 2148417891, i64 2148417914}
!150 = !{i64 2155385221, i64 2155385699, i64 2155385258, i64 2155385314, i64 2155385348, i64 2155385372, i64 2155385413, i64 2155385434, i64 2155385462, i64 2155385496}
!151 = !{i64 2155290058, i64 2155290536, i64 2155290095, i64 2155290151, i64 2155290185, i64 2155290209, i64 2155290250, i64 2155290271, i64 2155290299, i64 2155290333}
!152 = !{i64 2155291656, i64 2155292134, i64 2155291693, i64 2155291749, i64 2155291783, i64 2155291807, i64 2155291848, i64 2155291869, i64 2155291897, i64 2155291931}
!153 = !{i64 2155293448, i64 2155293926, i64 2155293485, i64 2155293541, i64 2155293575, i64 2155293599, i64 2155293640, i64 2155293661, i64 2155293689, i64 2155293723}
!154 = !{i64 2155294842}
!155 = !{i64 2155300106}
!156 = !{i64 2155307555}
!157 = !{i64 2155326880}
!158 = !{i64 2155342535}
!159 = !{!"auto-init"}
!160 = !{i64 2155377726, i64 2155378204, i64 2155377763, i64 2155377819, i64 2155377853, i64 2155377877, i64 2155377918, i64 2155377939, i64 2155377967, i64 2155378001}
