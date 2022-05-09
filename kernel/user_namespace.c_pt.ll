; ModuleID = '/llk/IR_all_yes/kernel/user_namespace.c_pt.bc'
source_filename = "../kernel/user_namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__put_user_ns\22, \22a\22\09"
module asm "\09.weak\09__crc___put_user_ns\09\09\09\09"
module asm "\09.long\09__crc___put_user_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_user_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_user_ns\22\09\09\09\09\09"
module asm "__kstrtabns___put_user_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+make_kuid\22, \22a\22\09"
module asm "\09.weak\09__crc_make_kuid\09\09\09\09"
module asm "\09.long\09__crc_make_kuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_make_kuid:\09\09\09\09\09"
module asm "\09.asciz \09\22make_kuid\22\09\09\09\09\09"
module asm "__kstrtabns_make_kuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kuid\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kuid\09\09\09\09"
module asm "\09.long\09__crc_from_kuid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kuid:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kuid\22\09\09\09\09\09"
module asm "__kstrtabns_from_kuid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kuid_munged\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kuid_munged\09\09\09\09"
module asm "\09.long\09__crc_from_kuid_munged\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kuid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kuid_munged\22\09\09\09\09\09"
module asm "__kstrtabns_from_kuid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+make_kgid\22, \22a\22\09"
module asm "\09.weak\09__crc_make_kgid\09\09\09\09"
module asm "\09.long\09__crc_make_kgid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_make_kgid:\09\09\09\09\09"
module asm "\09.asciz \09\22make_kgid\22\09\09\09\09\09"
module asm "__kstrtabns_make_kgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kgid\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kgid\09\09\09\09"
module asm "\09.long\09__crc_from_kgid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kgid:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kgid\22\09\09\09\09\09"
module asm "__kstrtabns_from_kgid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kgid_munged\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kgid_munged\09\09\09\09"
module asm "\09.long\09__crc_from_kgid_munged\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kgid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kgid_munged\22\09\09\09\09\09"
module asm "__kstrtabns_from_kgid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+make_kprojid\22, \22a\22\09"
module asm "\09.weak\09__crc_make_kprojid\09\09\09\09"
module asm "\09.long\09__crc_make_kprojid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_make_kprojid:\09\09\09\09\09"
module asm "\09.asciz \09\22make_kprojid\22\09\09\09\09\09"
module asm "__kstrtabns_make_kprojid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kprojid\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kprojid\09\09\09\09"
module asm "\09.long\09__crc_from_kprojid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kprojid:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kprojid\22\09\09\09\09\09"
module asm "__kstrtabns_from_kprojid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+from_kprojid_munged\22, \22a\22\09"
module asm "\09.weak\09__crc_from_kprojid_munged\09\09\09\09"
module asm "\09.long\09__crc_from_kprojid_munged\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_from_kprojid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22from_kprojid_munged\22\09\09\09\09\09"
module asm "__kstrtabns_from_kprojid_munged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+current_in_userns\22, \22a\22\09"
module asm "\09.weak\09__crc_current_in_userns\09\09\09\09"
module asm "\09.long\09__crc_current_in_userns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_in_userns:\09\09\09\09\09"
module asm "\09.asciz \09\22current_in_userns\22\09\09\09\09\09"
module asm "__kstrtabns_current_in_userns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.10 }
%union.anon.10 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.52, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.idmap_key = type { i8, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.69 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.38, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12 }
%struct.llist_node = type { ptr }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.38 = type { %struct.callback_head }
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
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.nsset = type { i32, ptr, ptr, ptr }

@user_ns_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@userns_operations = dso_local constant { %struct.proc_ns_operations, [32 x i8] } { %struct.proc_ns_operations { ptr @.str.6, ptr null, i32 268435456, ptr @userns_get, ptr @userns_put, ptr @userns_install, ptr @userns_owner, ptr @ns_get_owner }, [32 x i8] zeroinitializer }, align 32
@create_user_ns.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ns->work)\00", [35 x i8] zeroinitializer }, align 32
@userns_state_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @userns_state_mutex, i64 52), ptr getelementptr (i8, ptr @userns_state_mutex, i64 52) }, ptr @userns_state_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@create_user_ns.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ns->keyring_sem\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab___put_user_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_user_ns = external dso_local constant [0 x i8], align 1
@__ksymtab___put_user_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_user_ns to i32), ptr @__kstrtab___put_user_ns, ptr @__kstrtabns___put_user_ns }, section "___ksymtab+__put_user_ns", align 4
@__kstrtab_make_kuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_make_kuid = external dso_local constant [0 x i8], align 1
@__ksymtab_make_kuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @make_kuid to i32), ptr @__kstrtab_make_kuid, ptr @__kstrtabns_make_kuid }, section "___ksymtab+make_kuid", align 4
@__kstrtab_from_kuid = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kuid = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kuid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kuid to i32), ptr @__kstrtab_from_kuid, ptr @__kstrtabns_from_kuid }, section "___ksymtab+from_kuid", align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_from_kuid_munged = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kuid_munged = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kuid_munged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kuid_munged to i32), ptr @__kstrtab_from_kuid_munged, ptr @__kstrtabns_from_kuid_munged }, section "___ksymtab+from_kuid_munged", align 4
@__kstrtab_make_kgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_make_kgid = external dso_local constant [0 x i8], align 1
@__ksymtab_make_kgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @make_kgid to i32), ptr @__kstrtab_make_kgid, ptr @__kstrtabns_make_kgid }, section "___ksymtab+make_kgid", align 4
@__kstrtab_from_kgid = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kgid = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kgid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kgid to i32), ptr @__kstrtab_from_kgid, ptr @__kstrtabns_from_kgid }, section "___ksymtab+from_kgid", align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_from_kgid_munged = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kgid_munged = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kgid_munged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kgid_munged to i32), ptr @__kstrtab_from_kgid_munged, ptr @__kstrtabns_from_kgid_munged }, section "___ksymtab+from_kgid_munged", align 4
@__kstrtab_make_kprojid = external dso_local constant [0 x i8], align 1
@__kstrtabns_make_kprojid = external dso_local constant [0 x i8], align 1
@__ksymtab_make_kprojid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @make_kprojid to i32), ptr @__kstrtab_make_kprojid, ptr @__kstrtabns_make_kprojid }, section "___ksymtab+make_kprojid", align 4
@__kstrtab_from_kprojid = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kprojid = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kprojid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kprojid to i32), ptr @__kstrtab_from_kprojid, ptr @__kstrtabns_from_kprojid }, section "___ksymtab+from_kprojid", align 4
@__kstrtab_from_kprojid_munged = external dso_local constant [0 x i8], align 1
@__kstrtabns_from_kprojid_munged = external dso_local constant [0 x i8], align 1
@__ksymtab_from_kprojid_munged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @from_kprojid_munged to i32), ptr @__kstrtab_from_kprojid_munged, ptr @__kstrtabns_from_kprojid_munged }, section "___ksymtab+from_kprojid_munged", align 4
@proc_uid_seq_operations = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @uid_m_start, ptr @m_stop, ptr @m_next, ptr @uid_m_show }, [16 x i8] zeroinitializer }, align 32
@proc_gid_seq_operations = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @gid_m_start, ptr @m_stop, ptr @m_next, ptr @gid_m_show }, [16 x i8] zeroinitializer }, align 32
@proc_projid_seq_operations = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @projid_m_start, ptr @m_stop, ptr @m_next, ptr @projid_m_show }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"allow\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"deny\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_current_in_userns = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_in_userns = external dso_local constant [0 x i8], align 1
@__ksymtab_current_in_userns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_in_userns to i32), ptr @__kstrtab_current_in_userns, ptr @__kstrtabns_current_in_userns }, section "___ksymtab+current_in_userns", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_user_namespace__209_1403_user_namespaces_init4 = internal global ptr @user_namespaces_init, section ".initcall4.init", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"userns_state_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"userns_state_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%10u %10u %10u\0A\00", [16 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@userns_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/user_namespace.c\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"user_namespace\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"userns_operations\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1388, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 133, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"userns_state_mutex\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 150, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [24 x i8] c"proc_uid_seq_operations\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 705, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [24 x i8] c"proc_gid_seq_operations\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 712, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"proc_projid_seq_operations\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 719, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1202, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1204, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1204, i32 16 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1389, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 25, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 286, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 607, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 156, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1320, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [27 x i8] c"../kernel/user_namespace.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1400, i32 19 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__initcall__kmod_user_namespace__209_1403_user_namespaces_init4, ptr @__ksymtab___put_user_ns, ptr @__ksymtab_current_in_userns, ptr @__ksymtab_from_kgid, ptr @__ksymtab_from_kgid_munged, ptr @__ksymtab_from_kprojid, ptr @__ksymtab_from_kprojid_munged, ptr @__ksymtab_from_kuid, ptr @__ksymtab_from_kuid_munged, ptr @__ksymtab_make_kgid, ptr @__ksymtab_make_kprojid, ptr @__ksymtab_make_kuid, ptr @userns_operations, ptr @create_user_ns.__key, ptr @.str, ptr @userns_state_mutex, ptr @create_user_ns.__key.1, ptr @.str.2, ptr @proc_uid_seq_operations, ptr @proc_gid_seq_operations, ptr @proc_projid_seq_operations, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userns_operations to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_user_ns.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userns_state_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_user_ns.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_uid_seq_operations to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_gid_seq_operations to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_projid_seq_operations to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @create_user_ns(ptr nocapture noundef %new) local_unnamed_addr #0 align 64 {
entry:
  %key.i.i.i.i103 = alloca %struct.idmap_key, align 4
  %key.i.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %user_ns = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 25
  %0 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_ns, align 4
  %euid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 8
  %2 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %2)
  %owner.sroa.0.0.copyload = load i32, ptr %euid, align 4
  %egid = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 9
  %3 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %3)
  %group.sroa.0.0.copyload = load i32, ptr %egid, align 4
  %level = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %cmp = icmp sgt i32 %5, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %.fca.0.insert60 = insertvalue [1 x i32] poison, i32 %owner.sroa.0.0.copyload, 0
  %call.i = tail call ptr @inc_ucount(ptr noundef %1, [1 x i32] %.fca.0.insert60, i32 noundef 0) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call zeroext i1 @current_chrooted() #15
  br i1 %call3, label %if.end2.fail_dec_crit_edge, label %if.end5

if.end2.fail_dec_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

if.end5:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp.i.i.i = icmp ult i32 %7, 6
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end5
  %8 = getelementptr inbounds %struct.uid_gid_map, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp17.not.i.i.i.i, label %if.then.i.i.i.fail_dec_crit_edge, label %for.body.i.i.i.i

if.then.i.i.i.fail_dec_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %lower_first.i.i.i.i = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %lower_first.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lower_first.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %owner.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i = icmp ugt i32 %10, %owner.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i, label %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %count.i.i.i.i = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, -1
  %sub.i.i.i.i = add i32 %add.i.i.i.i, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i, i32 %owner.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i = icmp ult i32 %sub.i.i.i.i, %owner.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.cleanup.split.loop.exit15.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.cleanup.split.loop.exit15.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i

land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i.for.inc.i.i.i.i_crit_edge, %for.body.i.i.i.i.for.inc.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %exitcond.not.i.i.i.i = icmp eq i32 %7, 1
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.fail_dec_crit_edge, label %for.body.i.i.i.i.1

for.inc.i.i.i.i.fail_dec_crit_edge:               ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i.1:                               ; preds = %for.inc.i.i.i.i
  %lower_first.i.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %lower_first.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lower_first.i.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %owner.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i.1 = icmp ugt i32 %14, %owner.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i.1, label %for.body.i.i.i.i.1.for.inc.i.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.i.1

for.body.i.i.i.i.1.for.inc.i.i.i.i.1_crit_edge:   ; preds = %for.body.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i.1

land.lhs.true.i.i.i.i.1:                          ; preds = %for.body.i.i.i.i.1
  %count.i.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %count.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i.i.i.i.1, align 4
  %add.i.i.i.i.1 = add i32 %14, -1
  %sub.i.i.i.i.1 = add i32 %add.i.i.i.i.1, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.1, i32 %owner.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i.1 = icmp ult i32 %sub.i.i.i.i.1, %owner.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i.1, label %land.lhs.true.i.i.i.i.1.for.inc.i.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.i.1.cleanup.split.loop.exit15.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.1.cleanup.split.loop.exit15.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i

land.lhs.true.i.i.i.i.1.for.inc.i.i.i.i.1_crit_edge: ; preds = %land.lhs.true.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i.1

for.inc.i.i.i.i.1:                                ; preds = %land.lhs.true.i.i.i.i.1.for.inc.i.i.i.i.1_crit_edge, %for.body.i.i.i.i.1.for.inc.i.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %exitcond.not.i.i.i.i.1 = icmp eq i32 %7, 2
  br i1 %exitcond.not.i.i.i.i.1, label %for.inc.i.i.i.i.1.fail_dec_crit_edge, label %for.body.i.i.i.i.2

for.inc.i.i.i.i.1.fail_dec_crit_edge:             ; preds = %for.inc.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i.2:                               ; preds = %for.inc.i.i.i.i.1
  %lower_first.i.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %lower_first.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lower_first.i.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %owner.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i.2 = icmp ugt i32 %18, %owner.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i.2, label %for.body.i.i.i.i.2.for.inc.i.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.i.2

for.body.i.i.i.i.2.for.inc.i.i.i.i.2_crit_edge:   ; preds = %for.body.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i.2

land.lhs.true.i.i.i.i.2:                          ; preds = %for.body.i.i.i.i.2
  %count.i.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %count.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i.i.i.i.2, align 4
  %add.i.i.i.i.2 = add i32 %18, -1
  %sub.i.i.i.i.2 = add i32 %add.i.i.i.i.2, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.2, i32 %owner.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i.2 = icmp ult i32 %sub.i.i.i.i.2, %owner.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i.2, label %land.lhs.true.i.i.i.i.2.for.inc.i.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.i.2.cleanup.split.loop.exit15.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.2.cleanup.split.loop.exit15.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i

land.lhs.true.i.i.i.i.2.for.inc.i.i.i.i.2_crit_edge: ; preds = %land.lhs.true.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i.2

for.inc.i.i.i.i.2:                                ; preds = %land.lhs.true.i.i.i.i.2.for.inc.i.i.i.i.2_crit_edge, %for.body.i.i.i.i.2.for.inc.i.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %exitcond.not.i.i.i.i.2 = icmp eq i32 %7, 3
  br i1 %exitcond.not.i.i.i.i.2, label %for.inc.i.i.i.i.2.fail_dec_crit_edge, label %for.body.i.i.i.i.3

for.inc.i.i.i.i.2.fail_dec_crit_edge:             ; preds = %for.inc.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i.3:                               ; preds = %for.inc.i.i.i.i.2
  %lower_first.i.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %lower_first.i.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lower_first.i.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %owner.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i.3 = icmp ugt i32 %22, %owner.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i.3, label %for.body.i.i.i.i.3.for.inc.i.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.i.3

for.body.i.i.i.i.3.for.inc.i.i.i.i.3_crit_edge:   ; preds = %for.body.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i.3

land.lhs.true.i.i.i.i.3:                          ; preds = %for.body.i.i.i.i.3
  %count.i.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %count.i.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i.i.i.i.3, align 4
  %add.i.i.i.i.3 = add i32 %22, -1
  %sub.i.i.i.i.3 = add i32 %add.i.i.i.i.3, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.3, i32 %owner.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i.3 = icmp ult i32 %sub.i.i.i.i.3, %owner.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i.3, label %land.lhs.true.i.i.i.i.3.for.inc.i.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.i.3.cleanup.split.loop.exit15.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.3.cleanup.split.loop.exit15.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i

land.lhs.true.i.i.i.i.3.for.inc.i.i.i.i.3_crit_edge: ; preds = %land.lhs.true.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i.3

for.inc.i.i.i.i.3:                                ; preds = %land.lhs.true.i.i.i.i.3.for.inc.i.i.i.i.3_crit_edge, %for.body.i.i.i.i.3.for.inc.i.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %exitcond.not.i.i.i.i.3 = icmp eq i32 %7, 4
  br i1 %exitcond.not.i.i.i.i.3, label %for.inc.i.i.i.i.3.fail_dec_crit_edge, label %for.body.i.i.i.i.4

for.inc.i.i.i.i.3.fail_dec_crit_edge:             ; preds = %for.inc.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i.4:                               ; preds = %for.inc.i.i.i.i.3
  %lower_first.i.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %lower_first.i.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lower_first.i.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %owner.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i.4 = icmp ugt i32 %26, %owner.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i.4, label %for.body.i.i.i.i.4.fail_dec_crit_edge, label %land.lhs.true.i.i.i.i.4

for.body.i.i.i.i.4.fail_dec_crit_edge:            ; preds = %for.body.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

land.lhs.true.i.i.i.i.4:                          ; preds = %for.body.i.i.i.i.4
  %count.i.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 4, i32 2
  %27 = ptrtoint ptr %count.i.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i.i.i.4, align 4
  %add.i.i.i.i.4 = add i32 %26, -1
  %sub.i.i.i.i.4 = add i32 %add.i.i.i.i.4, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i.4, i32 %owner.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i.4 = icmp ult i32 %sub.i.i.i.i.4, %owner.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i.4, label %land.lhs.true.i.i.i.i.4.fail_dec_crit_edge, label %land.lhs.true.i.i.i.i.4.cleanup.split.loop.exit15.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.4.cleanup.split.loop.exit15.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i

land.lhs.true.i.i.i.i.4.fail_dec_crit_edge:       ; preds = %land.lhs.true.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

cleanup.split.loop.exit15.i.i.i.i:                ; preds = %land.lhs.true.i.i.i.i.4.cleanup.split.loop.exit15.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.3.cleanup.split.loop.exit15.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.2.cleanup.split.loop.exit15.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.1.cleanup.split.loop.exit15.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.cleanup.split.loop.exit15.i.i.i.i_crit_edge
  %idx.018.i.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.i.cleanup.split.loop.exit15.i.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.i.1.cleanup.split.loop.exit15.i.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.i.2.cleanup.split.loop.exit15.i.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.i.3.cleanup.split.loop.exit15.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.4.cleanup.split.loop.exit15.i.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %8, i32 0, i32 %idx.018.i.i.i.i.lcssa
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i.i) #15
  %29 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 33554431, ptr %key.i.i.i.i, align 4
  %count.i17.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %count.i17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %count.i17.i.i.i, align 4
  %id1.i.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %id1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %owner.sroa.0.0.copyload, ptr %id1.i.i.i.i, align 4
  %reverse.i.i.i.i = getelementptr inbounds %struct.uid_gid_map, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %reverse.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reverse.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i.i, ptr noundef %33, i32 noundef %7, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i.i) #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %cleanup.split.loop.exit15.i.i.i.i
  %extent.0.i.i.i = phi ptr [ %call.i.i.i.i, %if.else.i.i.i ], [ %arrayidx.le.i.i.i.i, %cleanup.split.loop.exit15.i.i.i.i ]
  %tobool.not.i.i.i = icmp eq ptr %extent.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.fail_dec_crit_edge, label %kuid_has_mapping.exit

if.end.i.i.i.fail_dec_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

kuid_has_mapping.exit:                            ; preds = %if.end.i.i.i
  %lower_first.i.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lower_first.i.i.i, align 4
  %sub.i.i.i = sub i32 %owner.sroa.0.0.copyload, %35
  %36 = ptrtoint ptr %extent.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %extent.0.i.i.i, align 4
  %add.i.i.i = add i32 %sub.i.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i.i)
  %phi.cmp.i.not = icmp eq i32 %add.i.i.i, -1
  br i1 %phi.cmp.i.not, label %kuid_has_mapping.exit.fail_dec_crit_edge, label %lor.lhs.false

kuid_has_mapping.exit.fail_dec_crit_edge:         ; preds = %kuid_has_mapping.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

lor.lhs.false:                                    ; preds = %kuid_has_mapping.exit
  %gid_map.i.i = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %gid_map.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %gid_map.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %39)
  %cmp.i.i.i104 = icmp ult i32 %39, 6
  br i1 %cmp.i.i.i104, label %if.then.i.i.i106, label %if.else.i.i.i125

if.then.i.i.i106:                                 ; preds = %lor.lhs.false
  %40 = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp17.not.i.i.i.i105 = icmp eq i32 %39, 0
  br i1 %cmp17.not.i.i.i.i105, label %if.then.i.i.i106.fail_dec_crit_edge, label %for.body.i.i.i.i110

if.then.i.i.i106.fail_dec_crit_edge:              ; preds = %if.then.i.i.i106
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i110:                              ; preds = %if.then.i.i.i106
  %lower_first.i.i.i.i108 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %lower_first.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lower_first.i.i.i.i108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %group.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i109 = icmp ugt i32 %42, %group.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i109, label %for.body.i.i.i.i110.for.inc.i.i.i.i118_crit_edge, label %land.lhs.true.i.i.i.i115

for.body.i.i.i.i110.for.inc.i.i.i.i118_crit_edge: ; preds = %for.body.i.i.i.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118

land.lhs.true.i.i.i.i115:                         ; preds = %for.body.i.i.i.i110
  %count.i.i.i.i111 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %43 = ptrtoint ptr %count.i.i.i.i111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.i.i.i.i111, align 4
  %add.i.i.i.i112 = add i32 %42, -1
  %sub.i.i.i.i113 = add i32 %add.i.i.i.i112, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i113, i32 %group.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i114 = icmp ult i32 %sub.i.i.i.i113, %group.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i114, label %land.lhs.true.i.i.i.i115.for.inc.i.i.i.i118_crit_edge, label %land.lhs.true.i.i.i.i115.cleanup.split.loop.exit15.i.i.i.i120_crit_edge

land.lhs.true.i.i.i.i115.cleanup.split.loop.exit15.i.i.i.i120_crit_edge: ; preds = %land.lhs.true.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i120

land.lhs.true.i.i.i.i115.for.inc.i.i.i.i118_crit_edge: ; preds = %land.lhs.true.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118

for.inc.i.i.i.i118:                               ; preds = %land.lhs.true.i.i.i.i115.for.inc.i.i.i.i118_crit_edge, %for.body.i.i.i.i110.for.inc.i.i.i.i118_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %exitcond.not.i.i.i.i117 = icmp eq i32 %39, 1
  br i1 %exitcond.not.i.i.i.i117, label %for.inc.i.i.i.i118.fail_dec_crit_edge, label %for.body.i.i.i.i110.1

for.inc.i.i.i.i118.fail_dec_crit_edge:            ; preds = %for.inc.i.i.i.i118
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i110.1:                            ; preds = %for.inc.i.i.i.i118
  %lower_first.i.i.i.i108.1 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %lower_first.i.i.i.i108.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lower_first.i.i.i.i108.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %group.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i109.1 = icmp ugt i32 %46, %group.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i109.1, label %for.body.i.i.i.i110.1.for.inc.i.i.i.i118.1_crit_edge, label %land.lhs.true.i.i.i.i115.1

for.body.i.i.i.i110.1.for.inc.i.i.i.i118.1_crit_edge: ; preds = %for.body.i.i.i.i110.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118.1

land.lhs.true.i.i.i.i115.1:                       ; preds = %for.body.i.i.i.i110.1
  %count.i.i.i.i111.1 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %count.i.i.i.i111.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i.i.i.i111.1, align 4
  %add.i.i.i.i112.1 = add i32 %46, -1
  %sub.i.i.i.i113.1 = add i32 %add.i.i.i.i112.1, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i113.1, i32 %group.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i114.1 = icmp ult i32 %sub.i.i.i.i113.1, %group.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i114.1, label %land.lhs.true.i.i.i.i115.1.for.inc.i.i.i.i118.1_crit_edge, label %land.lhs.true.i.i.i.i115.1.cleanup.split.loop.exit15.i.i.i.i120_crit_edge

land.lhs.true.i.i.i.i115.1.cleanup.split.loop.exit15.i.i.i.i120_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i120

land.lhs.true.i.i.i.i115.1.for.inc.i.i.i.i118.1_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118.1

for.inc.i.i.i.i118.1:                             ; preds = %land.lhs.true.i.i.i.i115.1.for.inc.i.i.i.i118.1_crit_edge, %for.body.i.i.i.i110.1.for.inc.i.i.i.i118.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %exitcond.not.i.i.i.i117.1 = icmp eq i32 %39, 2
  br i1 %exitcond.not.i.i.i.i117.1, label %for.inc.i.i.i.i118.1.fail_dec_crit_edge, label %for.body.i.i.i.i110.2

for.inc.i.i.i.i118.1.fail_dec_crit_edge:          ; preds = %for.inc.i.i.i.i118.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i110.2:                            ; preds = %for.inc.i.i.i.i118.1
  %lower_first.i.i.i.i108.2 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %lower_first.i.i.i.i108.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lower_first.i.i.i.i108.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %group.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i109.2 = icmp ugt i32 %50, %group.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i109.2, label %for.body.i.i.i.i110.2.for.inc.i.i.i.i118.2_crit_edge, label %land.lhs.true.i.i.i.i115.2

for.body.i.i.i.i110.2.for.inc.i.i.i.i118.2_crit_edge: ; preds = %for.body.i.i.i.i110.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118.2

land.lhs.true.i.i.i.i115.2:                       ; preds = %for.body.i.i.i.i110.2
  %count.i.i.i.i111.2 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %count.i.i.i.i111.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count.i.i.i.i111.2, align 4
  %add.i.i.i.i112.2 = add i32 %50, -1
  %sub.i.i.i.i113.2 = add i32 %add.i.i.i.i112.2, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i113.2, i32 %group.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i114.2 = icmp ult i32 %sub.i.i.i.i113.2, %group.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i114.2, label %land.lhs.true.i.i.i.i115.2.for.inc.i.i.i.i118.2_crit_edge, label %land.lhs.true.i.i.i.i115.2.cleanup.split.loop.exit15.i.i.i.i120_crit_edge

land.lhs.true.i.i.i.i115.2.cleanup.split.loop.exit15.i.i.i.i120_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i120

land.lhs.true.i.i.i.i115.2.for.inc.i.i.i.i118.2_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118.2

for.inc.i.i.i.i118.2:                             ; preds = %land.lhs.true.i.i.i.i115.2.for.inc.i.i.i.i118.2_crit_edge, %for.body.i.i.i.i110.2.for.inc.i.i.i.i118.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %exitcond.not.i.i.i.i117.2 = icmp eq i32 %39, 3
  br i1 %exitcond.not.i.i.i.i117.2, label %for.inc.i.i.i.i118.2.fail_dec_crit_edge, label %for.body.i.i.i.i110.3

for.inc.i.i.i.i118.2.fail_dec_crit_edge:          ; preds = %for.inc.i.i.i.i118.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i110.3:                            ; preds = %for.inc.i.i.i.i118.2
  %lower_first.i.i.i.i108.3 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %lower_first.i.i.i.i108.3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lower_first.i.i.i.i108.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %group.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i109.3 = icmp ugt i32 %54, %group.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i109.3, label %for.body.i.i.i.i110.3.for.inc.i.i.i.i118.3_crit_edge, label %land.lhs.true.i.i.i.i115.3

for.body.i.i.i.i110.3.for.inc.i.i.i.i118.3_crit_edge: ; preds = %for.body.i.i.i.i110.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118.3

land.lhs.true.i.i.i.i115.3:                       ; preds = %for.body.i.i.i.i110.3
  %count.i.i.i.i111.3 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %count.i.i.i.i111.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count.i.i.i.i111.3, align 4
  %add.i.i.i.i112.3 = add i32 %54, -1
  %sub.i.i.i.i113.3 = add i32 %add.i.i.i.i112.3, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i113.3, i32 %group.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i114.3 = icmp ult i32 %sub.i.i.i.i113.3, %group.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i114.3, label %land.lhs.true.i.i.i.i115.3.for.inc.i.i.i.i118.3_crit_edge, label %land.lhs.true.i.i.i.i115.3.cleanup.split.loop.exit15.i.i.i.i120_crit_edge

land.lhs.true.i.i.i.i115.3.cleanup.split.loop.exit15.i.i.i.i120_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i120

land.lhs.true.i.i.i.i115.3.for.inc.i.i.i.i118.3_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.i118.3

for.inc.i.i.i.i118.3:                             ; preds = %land.lhs.true.i.i.i.i115.3.for.inc.i.i.i.i118.3_crit_edge, %for.body.i.i.i.i110.3.for.inc.i.i.i.i118.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %exitcond.not.i.i.i.i117.3 = icmp eq i32 %39, 4
  br i1 %exitcond.not.i.i.i.i117.3, label %for.inc.i.i.i.i118.3.fail_dec_crit_edge, label %for.body.i.i.i.i110.4

for.inc.i.i.i.i118.3.fail_dec_crit_edge:          ; preds = %for.inc.i.i.i.i118.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

for.body.i.i.i.i110.4:                            ; preds = %for.inc.i.i.i.i118.3
  %lower_first.i.i.i.i108.4 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %lower_first.i.i.i.i108.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lower_first.i.i.i.i108.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %group.sroa.0.0.copyload)
  %cmp2.not.i.i.i.i109.4 = icmp ugt i32 %58, %group.sroa.0.0.copyload
  br i1 %cmp2.not.i.i.i.i109.4, label %for.body.i.i.i.i110.4.fail_dec_crit_edge, label %land.lhs.true.i.i.i.i115.4

for.body.i.i.i.i110.4.fail_dec_crit_edge:         ; preds = %for.body.i.i.i.i110.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

land.lhs.true.i.i.i.i115.4:                       ; preds = %for.body.i.i.i.i110.4
  %count.i.i.i.i111.4 = getelementptr %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %count.i.i.i.i111.4 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count.i.i.i.i111.4, align 4
  %add.i.i.i.i112.4 = add i32 %58, -1
  %sub.i.i.i.i113.4 = add i32 %add.i.i.i.i112.4, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.i113.4, i32 %group.sroa.0.0.copyload)
  %cmp3.not.i.i.i.i114.4 = icmp ult i32 %sub.i.i.i.i113.4, %group.sroa.0.0.copyload
  br i1 %cmp3.not.i.i.i.i114.4, label %land.lhs.true.i.i.i.i115.4.fail_dec_crit_edge, label %land.lhs.true.i.i.i.i115.4.cleanup.split.loop.exit15.i.i.i.i120_crit_edge

land.lhs.true.i.i.i.i115.4.cleanup.split.loop.exit15.i.i.i.i120_crit_edge: ; preds = %land.lhs.true.i.i.i.i115.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i.i120

land.lhs.true.i.i.i.i115.4.fail_dec_crit_edge:    ; preds = %land.lhs.true.i.i.i.i115.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

cleanup.split.loop.exit15.i.i.i.i120:             ; preds = %land.lhs.true.i.i.i.i115.4.cleanup.split.loop.exit15.i.i.i.i120_crit_edge, %land.lhs.true.i.i.i.i115.3.cleanup.split.loop.exit15.i.i.i.i120_crit_edge, %land.lhs.true.i.i.i.i115.2.cleanup.split.loop.exit15.i.i.i.i120_crit_edge, %land.lhs.true.i.i.i.i115.1.cleanup.split.loop.exit15.i.i.i.i120_crit_edge, %land.lhs.true.i.i.i.i115.cleanup.split.loop.exit15.i.i.i.i120_crit_edge
  %idx.018.i.i.i.i107.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.i115.cleanup.split.loop.exit15.i.i.i.i120_crit_edge ], [ 1, %land.lhs.true.i.i.i.i115.1.cleanup.split.loop.exit15.i.i.i.i120_crit_edge ], [ 2, %land.lhs.true.i.i.i.i115.2.cleanup.split.loop.exit15.i.i.i.i120_crit_edge ], [ 3, %land.lhs.true.i.i.i.i115.3.cleanup.split.loop.exit15.i.i.i.i120_crit_edge ], [ 4, %land.lhs.true.i.i.i.i115.4.cleanup.split.loop.exit15.i.i.i.i120_crit_edge ]
  %arrayidx.le.i.i.i.i119 = getelementptr [5 x %struct.uid_gid_extent], ptr %40, i32 0, i32 %idx.018.i.i.i.i107.lcssa
  br label %if.end.i.i.i128

if.else.i.i.i125:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i.i103) #15
  %61 = ptrtoint ptr %key.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 33554431, ptr %key.i.i.i.i103, align 4
  %count.i17.i.i.i121 = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i103, i32 0, i32 2
  %62 = ptrtoint ptr %count.i17.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %count.i17.i.i.i121, align 4
  %id1.i.i.i.i122 = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i103, i32 0, i32 1
  %63 = ptrtoint ptr %id1.i.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %group.sroa.0.0.copyload, ptr %id1.i.i.i.i122, align 4
  %reverse.i.i.i.i123 = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %64 = ptrtoint ptr %reverse.i.i.i.i123 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reverse.i.i.i.i123, align 4
  %call.i.i.i.i124 = call ptr @bsearch(ptr noundef nonnull %key.i.i.i.i103, ptr noundef %65, i32 noundef %39, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i.i103) #15
  br label %if.end.i.i.i128

if.end.i.i.i128:                                  ; preds = %if.else.i.i.i125, %cleanup.split.loop.exit15.i.i.i.i120
  %extent.0.i.i.i126 = phi ptr [ %call.i.i.i.i124, %if.else.i.i.i125 ], [ %arrayidx.le.i.i.i.i119, %cleanup.split.loop.exit15.i.i.i.i120 ]
  %tobool.not.i.i.i127 = icmp eq ptr %extent.0.i.i.i126, null
  br i1 %tobool.not.i.i.i127, label %if.end.i.i.i128.fail_dec_crit_edge, label %kgid_has_mapping.exit

if.end.i.i.i128.fail_dec_crit_edge:               ; preds = %if.end.i.i.i128
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

kgid_has_mapping.exit:                            ; preds = %if.end.i.i.i128
  %lower_first.i.i.i129 = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i.i126, i32 0, i32 1
  %66 = ptrtoint ptr %lower_first.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %lower_first.i.i.i129, align 4
  %sub.i.i.i130 = sub i32 %group.sroa.0.0.copyload, %67
  %68 = ptrtoint ptr %extent.0.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %extent.0.i.i.i126, align 4
  %add.i.i.i131 = add i32 %sub.i.i.i130, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i.i131)
  %phi.cmp.i132.not = icmp eq i32 %add.i.i.i131, -1
  br i1 %phi.cmp.i132.not, label %kgid_has_mapping.exit.fail_dec_crit_edge, label %if.end11

kgid_has_mapping.exit.fail_dec_crit_edge:         ; preds = %kgid_has_mapping.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

if.end11:                                         ; preds = %kgid_has_mapping.exit
  %70 = load ptr, ptr @user_ns_cachep, align 4
  %call.i135 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %70, i32 noundef 3520) #15
  %tobool13.not = icmp eq ptr %call.i135, null
  br i1 %tobool13.not, label %if.end11.fail_dec_crit_edge, label %if.end15

if.end11.fail_dec_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_dec

if.end15:                                         ; preds = %if.end11
  %cap_effective = getelementptr inbounds %struct.cred, ptr %new, i32 0, i32 15
  %71 = ptrtoint ptr %cap_effective to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cap_effective, align 4
  %parent_could_setfcap = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 9
  %.lobit = lshr i32 %72, 31
  %73 = trunc i32 %.lobit to i8
  %74 = ptrtoint ptr %parent_could_setfcap to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %parent_could_setfcap, align 4
  %ns17 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 7
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ns17, i32 noundef 4) #15
  %75 = ptrtoint ptr %ns17 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %ns17, align 8
  %inum.i = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 7, i32 2
  %call.i136 = call i32 @proc_alloc_inum(ptr noundef %inum.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool19.not = icmp eq i32 %call.i136, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.fail_free_crit_edge

if.end15.fail_free_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %fail_free

if.end21:                                         ; preds = %if.end15
  %ops = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @userns_operations, ptr %ops, align 4
  %count = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 7, i32 3
  %call.i.i.i137 = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  %77 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 1, ptr %count, align 4
  %parent = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 3
  %78 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %1, ptr %parent, align 8
  %79 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %level, align 4
  %add = add i32 %80, 1
  %level25 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 4
  %81 = ptrtoint ptr %level25 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add, ptr %level25, align 4
  %owner26 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 5
  %82 = ptrtoint ptr %owner26 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %owner.sroa.0.0.copyload, ptr %owner26, align 8
  %group27 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 6
  %83 = ptrtoint ptr %group27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %group.sroa.0.0.copyload, ptr %group27, align 4
  %work = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 14
  call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %84 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 14, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @create_user_ns.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry31 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 14, i32 1
  %85 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 14, i32 1, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %entry31, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 14, i32 2
  %87 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @free_user_ns, ptr %func, align 4
  %arrayidx34 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 0
  %88 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2147483647, ptr %arrayidx34, align 8
  %arrayidx34.1 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 1
  %89 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2147483647, ptr %arrayidx34.1, align 4
  %arrayidx34.2 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 2
  %90 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2147483647, ptr %arrayidx34.2, align 8
  %arrayidx34.3 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 3
  %91 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2147483647, ptr %arrayidx34.3, align 4
  %arrayidx34.4 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 4
  %92 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2147483647, ptr %arrayidx34.4, align 8
  %arrayidx34.5 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 5
  %93 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2147483647, ptr %arrayidx34.5, align 4
  %arrayidx34.6 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 6
  %94 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2147483647, ptr %arrayidx34.6, align 8
  %arrayidx34.7 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 7
  %95 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2147483647, ptr %arrayidx34.7, align 4
  %arrayidx34.8 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 8
  %96 = ptrtoint ptr %arrayidx34.8 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2147483647, ptr %arrayidx34.8, align 8
  %arrayidx34.9 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 9
  %97 = ptrtoint ptr %arrayidx34.9 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2147483647, ptr %arrayidx34.9, align 4
  %arrayidx34.10 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 10
  %98 = ptrtoint ptr %arrayidx34.10 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2147483647, ptr %arrayidx34.10, align 8
  %arrayidx34.11 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 11
  %99 = ptrtoint ptr %arrayidx34.11 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2147483647, ptr %arrayidx34.11, align 4
  %100 = call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 99
  %104 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cred.i, align 16
  %uid.i = getelementptr inbounds %struct.cred, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agg.tmp.sroa.0.0.copyload.i)
  %cmp.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i, 0
  br i1 %cmp.i.i, label %do.end6.i, label %if.end21.enforced_nproc_rlimit.exit_crit_edge

if.end21.enforced_nproc_rlimit.exit_crit_edge:    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %enforced_nproc_rlimit.exit

do.end6.i:                                        ; preds = %if.end21
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %105, i32 0, i32 25
  %107 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %user_ns.i, align 4
  %cmp.not.i = icmp eq ptr %108, @init_user_ns
  br i1 %cmp.not.i, label %do.end6.i.enforced_nproc_rlimit.exit.thread_crit_edge, label %do.end6.i.enforced_nproc_rlimit.exit_crit_edge

do.end6.i.enforced_nproc_rlimit.exit_crit_edge:   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enforced_nproc_rlimit.exit

do.end6.i.enforced_nproc_rlimit.exit.thread_crit_edge: ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enforced_nproc_rlimit.exit.thread

enforced_nproc_rlimit.exit:                       ; preds = %do.end6.i.enforced_nproc_rlimit.exit_crit_edge, %if.end21.enforced_nproc_rlimit.exit_crit_edge
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 111
  %109 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %110, i32 0, i32 51, i32 6
  %111 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp.i = icmp sgt i32 %112, -1
  %spec.select = select i1 %cmp.i, i32 %112, i32 2147483647
  br label %enforced_nproc_rlimit.exit.thread

enforced_nproc_rlimit.exit.thread:                ; preds = %enforced_nproc_rlimit.exit, %do.end6.i.enforced_nproc_rlimit.exit.thread_crit_edge
  %113 = phi i32 [ 2147483647, %do.end6.i.enforced_nproc_rlimit.exit.thread_crit_edge ], [ %spec.select, %enforced_nproc_rlimit.exit ]
  %arrayidx.i = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 12
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx.i, align 8
  %115 = call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i138 = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i138 to ptr
  %task.i139 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %task.i139 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %task.i139, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 111
  %119 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %120, i32 0, i32 51, i32 12
  %121 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %cmp.i140 = icmp sgt i32 %122, -1
  %spec.select.i141 = select i1 %cmp.i140, i32 %122, i32 2147483647
  %arrayidx.i142 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 13
  %123 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %spec.select.i141, ptr %arrayidx.i142, align 4
  %124 = call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i143 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i143 to ptr
  %task.i144 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %task.i144 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %task.i144, align 8
  %signal.i.i145 = getelementptr inbounds %struct.task_struct, ptr %127, i32 0, i32 111
  %128 = ptrtoint ptr %signal.i.i145 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %signal.i.i145, align 16
  %arrayidx.i.i146 = getelementptr %struct.signal_struct, ptr %129, i32 0, i32 51, i32 11
  %130 = ptrtoint ptr %arrayidx.i.i146 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %arrayidx.i.i146, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp.i147 = icmp sgt i32 %131, -1
  %spec.select.i148 = select i1 %cmp.i147, i32 %131, i32 2147483647
  %arrayidx.i149 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 14
  %132 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %spec.select.i148, ptr %arrayidx.i149, align 8
  %133 = call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i150 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i.i150 to ptr
  %task.i151 = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %task.i151 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %task.i151, align 8
  %signal.i.i152 = getelementptr inbounds %struct.task_struct, ptr %136, i32 0, i32 111
  %137 = ptrtoint ptr %signal.i.i152 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %signal.i.i152, align 16
  %arrayidx.i.i153 = getelementptr %struct.signal_struct, ptr %138, i32 0, i32 51, i32 8
  %139 = ptrtoint ptr %arrayidx.i.i153 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %arrayidx.i.i153, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %140)
  %cmp.i154 = icmp sgt i32 %140, -1
  %spec.select.i155 = select i1 %cmp.i154, i32 %140, i32 2147483647
  %arrayidx.i156 = getelementptr %struct.user_namespace, ptr %call.i135, i32 0, i32 18, i32 15
  %141 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %spec.select.i155, ptr %arrayidx.i156, align 4
  %ucounts39 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 17
  %142 = ptrtoint ptr %ucounts39 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call.i, ptr %ucounts39, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @userns_state_mutex, i32 noundef 0) #15
  %flags = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 8
  %143 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flags, align 4
  %flags40 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 8
  %145 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %flags40, align 8
  call void @mutex_unlock(ptr noundef nonnull @userns_state_mutex) #15
  %keyring_name_list = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 10
  %146 = ptrtoint ptr %keyring_name_list to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %keyring_name_list, ptr %keyring_name_list, align 8
  %prev.i157 = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 10, i32 1
  %147 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %keyring_name_list, ptr %prev.i157, align 4
  %keyring_sem = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 12
  call void @__init_rwsem(ptr noundef %keyring_sem, ptr noundef nonnull @.str.2, ptr noundef nonnull @create_user_ns.__key.1) #15
  %call44 = call zeroext i1 @setup_userns_sysctls(ptr noundef nonnull %call.i135) #15
  br i1 %call44, label %if.end46, label %fail_keyring

if.end46:                                         ; preds = %enforced_nproc_rlimit.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @set_cred_user_ns(ptr noundef %new, ptr noundef nonnull %call.i135)
  br label %cleanup

fail_keyring:                                     ; preds = %enforced_nproc_rlimit.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  %persistent_keyring_register = getelementptr inbounds %struct.user_namespace, ptr %call.i135, i32 0, i32 13
  %148 = ptrtoint ptr %persistent_keyring_register to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %persistent_keyring_register, align 4
  call void @key_put(ptr noundef %149) #15
  %150 = ptrtoint ptr %inum.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %inum.i, align 8
  call void @proc_free_inum(i32 noundef %151) #15
  br label %fail_free

fail_free:                                        ; preds = %fail_keyring, %if.end15.fail_free_crit_edge
  %ret.0 = phi i32 [ %call.i136, %if.end15.fail_free_crit_edge ], [ -12, %fail_keyring ]
  %152 = load ptr, ptr @user_ns_cachep, align 4
  call void @kmem_cache_free(ptr noundef %152, ptr noundef nonnull %call.i135) #15
  br label %fail_dec

fail_dec:                                         ; preds = %fail_free, %if.end11.fail_dec_crit_edge, %kgid_has_mapping.exit.fail_dec_crit_edge, %if.end.i.i.i128.fail_dec_crit_edge, %land.lhs.true.i.i.i.i115.4.fail_dec_crit_edge, %for.body.i.i.i.i110.4.fail_dec_crit_edge, %for.inc.i.i.i.i118.3.fail_dec_crit_edge, %for.inc.i.i.i.i118.2.fail_dec_crit_edge, %for.inc.i.i.i.i118.1.fail_dec_crit_edge, %for.inc.i.i.i.i118.fail_dec_crit_edge, %if.then.i.i.i106.fail_dec_crit_edge, %kuid_has_mapping.exit.fail_dec_crit_edge, %if.end.i.i.i.fail_dec_crit_edge, %land.lhs.true.i.i.i.i.4.fail_dec_crit_edge, %for.body.i.i.i.i.4.fail_dec_crit_edge, %for.inc.i.i.i.i.3.fail_dec_crit_edge, %for.inc.i.i.i.i.2.fail_dec_crit_edge, %for.inc.i.i.i.i.1.fail_dec_crit_edge, %for.inc.i.i.i.i.fail_dec_crit_edge, %if.then.i.i.i.fail_dec_crit_edge, %if.end2.fail_dec_crit_edge
  %ret.1 = phi i32 [ -1, %if.end2.fail_dec_crit_edge ], [ %ret.0, %fail_free ], [ -12, %if.end11.fail_dec_crit_edge ], [ -1, %kgid_has_mapping.exit.fail_dec_crit_edge ], [ -1, %kuid_has_mapping.exit.fail_dec_crit_edge ], [ -1, %if.end.i.i.i.fail_dec_crit_edge ], [ -1, %if.then.i.i.i.fail_dec_crit_edge ], [ -1, %if.end.i.i.i128.fail_dec_crit_edge ], [ -1, %if.then.i.i.i106.fail_dec_crit_edge ], [ -1, %for.body.i.i.i.i110.4.fail_dec_crit_edge ], [ -1, %land.lhs.true.i.i.i.i115.4.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i118.3.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i118.2.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i118.1.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i118.fail_dec_crit_edge ], [ -1, %for.body.i.i.i.i.4.fail_dec_crit_edge ], [ -1, %land.lhs.true.i.i.i.i.4.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i.3.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i.2.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i.1.fail_dec_crit_edge ], [ -1, %for.inc.i.i.i.i.fail_dec_crit_edge ]
  call void @dec_ucount(ptr noundef nonnull %call.i, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %fail_dec, %if.end46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -28, %entry.cleanup_crit_edge ], [ %ret.1, %fail_dec ], [ -28, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_chrooted() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_user_ns(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -344
  br label %do.body

do.body:                                          ; preds = %refcount_dec_and_test.exit, %entry
  %ns.0 = phi ptr [ %add.ptr, %entry ], [ %3, %refcount_dec_and_test.exit ]
  %ucounts1 = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 17
  %0 = ptrtoint ptr %ucounts1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucounts1, align 4
  %parent2 = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 3
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 4
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 1
  %4 = ptrtoint ptr %gid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gid_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp ugt i32 %5, 5
  br i1 %cmp, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %6 = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %8) #15
  %reverse = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %reverse to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reverse, align 4
  tail call void @kfree(ptr noundef %10) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %11 = ptrtoint ptr %ns.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ns.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp6 = icmp ugt i32 %12, 5
  br i1 %cmp6, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %13 = getelementptr inbounds %struct.uid_gid_map, ptr %ns.0, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %15) #15
  %reverse11 = getelementptr inbounds %struct.uid_gid_map, ptr %ns.0, i32 0, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %reverse11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reverse11, align 4
  tail call void @kfree(ptr noundef %17) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %projid_map = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 2
  %18 = ptrtoint ptr %projid_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %projid_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp14 = icmp ugt i32 %19, 5
  br i1 %cmp14, label %if.then15, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %20 = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %22) #15
  %reverse19 = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %reverse19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reverse19, align 4
  tail call void @kfree(ptr noundef %24) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end12.if.end20_crit_edge
  tail call void @retire_userns_sysctls(ptr noundef %ns.0) #15
  tail call void @key_free_user_ns(ptr noundef %ns.0) #15
  %inum = getelementptr inbounds %struct.user_namespace, ptr %ns.0, i32 0, i32 7, i32 2
  %25 = ptrtoint ptr %inum to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %inum, align 4
  tail call void @proc_free_inum(i32 noundef %26) #15
  %27 = load ptr, ptr @user_ns_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef %ns.0) #15
  tail call void @dec_ucount(ptr noundef %1, i32 noundef 0) #15
  %count = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 7, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #15, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end20
  %asmresult.i.i.i.i.i.i.le = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.le)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.le, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.do.end_crit_edge, label %if.then10.i.i.i, !prof !99

if.end5.i.i.i.do.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #15
  br label %do.end

refcount_dec_and_test.exit:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !100
  br label %do.body

do.end:                                           ; preds = %if.then10.i.i.i, %if.end5.i.i.i.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @setup_userns_sysctls(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_cred_user_ns(ptr nocapture noundef %cred, ptr noundef %user_ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %securebits = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 12
  %0 = ptrtoint ptr %securebits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %securebits, align 4
  %cap_inheritable = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 13
  %1 = ptrtoint ptr %cap_inheritable to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %cap_inheritable, align 4
  %.compoundliteral.sroa.2.0.cap_inheritable.sroa_idx = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 13, i32 0, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0.cap_inheritable.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %.compoundliteral.sroa.2.0.cap_inheritable.sroa_idx, align 4
  %cap_permitted = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 14
  %3 = ptrtoint ptr %cap_permitted to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cap_permitted, align 4
  %.compoundliteral1.sroa.2.0.cap_permitted.sroa_idx = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 14, i32 0, i32 1
  %4 = ptrtoint ptr %.compoundliteral1.sroa.2.0.cap_permitted.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 511, ptr %.compoundliteral1.sroa.2.0.cap_permitted.sroa_idx, align 4
  %cap_effective = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 15
  %5 = ptrtoint ptr %cap_effective to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cap_effective, align 4
  %.compoundliteral5.sroa.2.0.cap_effective.sroa_idx = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 15, i32 0, i32 1
  %6 = ptrtoint ptr %.compoundliteral5.sroa.2.0.cap_effective.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 511, ptr %.compoundliteral5.sroa.2.0.cap_effective.sroa_idx, align 4
  %cap_ambient = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 17
  %7 = ptrtoint ptr %cap_ambient to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cap_ambient, align 4
  %.compoundliteral9.sroa.2.0.cap_ambient.sroa_idx = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 17, i32 0, i32 1
  %8 = ptrtoint ptr %.compoundliteral9.sroa.2.0.cap_ambient.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %.compoundliteral9.sroa.2.0.cap_ambient.sroa_idx, align 4
  %cap_bset = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 16
  %9 = ptrtoint ptr %cap_bset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %cap_bset, align 4
  %.compoundliteral13.sroa.2.0.cap_bset.sroa_idx = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 16, i32 0, i32 1
  %10 = ptrtoint ptr %.compoundliteral13.sroa.2.0.cap_bset.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 511, ptr %.compoundliteral13.sroa.2.0.cap_bset.sroa_idx, align 4
  %request_key_auth = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 22
  %11 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %request_key_auth, align 4
  tail call void @key_put(ptr noundef %12) #15
  %13 = ptrtoint ptr %request_key_auth to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %request_key_auth, align 4
  %user_ns18 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 25
  %14 = ptrtoint ptr %user_ns18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %user_ns, ptr %user_ns18, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_free_inum(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unshare_userns(i32 noundef %unshare_flags, ptr nocapture noundef writeonly %new_cred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %unshare_flags, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @prepare_creds() #15
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @create_user_ns(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else, label %do.body.i

do.body.i:                                        ; preds = %if.then2
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call) #15
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !101

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__invalid_creds(ptr noundef nonnull %call, ptr noundef nonnull @.str.10, i32 noundef 286) #15
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #15, !srcloc !103
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.cleanup_crit_edge

__validate_creds.exit.i.cleanup_crit_edge:        ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_cred(ptr noundef nonnull %call) #15
  br label %cleanup

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %new_cred to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %new_cred, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1.i, %__validate_creds.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ -12, %if.end.cleanup_crit_edge ], [ %call3, %__validate_creds.exit.i.cleanup_crit_edge ], [ %call3, %if.then1.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__put_user_ns(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @make_kuid(ptr noundef readonly %ns, i32 noundef %uid) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not.i.i.i = icmp eq i32 %1, 0
  br i1 %cmp30.not.i.i.i, label %if.then.i.i.map_id_down.exit_crit_edge, label %for.body.i.i.i

if.then.i.i.map_id_down.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.map_id_down.exit_crit_edge, label %for.body.i.i.i.1

for.cond.i.i.i.map_id_down.exit_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.1:                                 ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i.1, align 4
  %count3.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %count3.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count3.i.i.i.1, align 4
  %add4.i.i.i.1 = add i32 %3, -1
  %sub5.i.i.i.1 = add i32 %add4.i.i.i.1, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %uid)
  %cmp6.not.i.i.i.1 = icmp ugt i32 %3, %uid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.1, i32 %uid)
  %cmp7.not.i.i.i.1 = icmp ult i32 %sub5.i.i.i.1, %uid
  %or.cond29.i.i.i.1 = select i1 %cmp6.not.i.i.i.1, i1 true, i1 %cmp7.not.i.i.i.1
  br i1 %or.cond29.i.i.i.1, label %for.cond.i.i.i.1, label %for.body.i.i.i.1.if.end.i.i_crit_edge

for.body.i.i.i.1.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.1:                                 ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %for.cond.i.i.i.1.map_id_down.exit_crit_edge, label %for.body.i.i.i.2

for.cond.i.i.i.1.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.2:                                 ; preds = %for.cond.i.i.i.1
  %arrayidx.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i.2, align 4
  %count3.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %count3.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count3.i.i.i.2, align 4
  %add4.i.i.i.2 = add i32 %7, -1
  %sub5.i.i.i.2 = add i32 %add4.i.i.i.2, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %uid)
  %cmp6.not.i.i.i.2 = icmp ugt i32 %7, %uid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.2, i32 %uid)
  %cmp7.not.i.i.i.2 = icmp ult i32 %sub5.i.i.i.2, %uid
  %or.cond29.i.i.i.2 = select i1 %cmp6.not.i.i.i.2, i1 true, i1 %cmp7.not.i.i.i.2
  br i1 %or.cond29.i.i.i.2, label %for.cond.i.i.i.2, label %for.body.i.i.i.2.if.end.i.i_crit_edge

for.body.i.i.i.2.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.2:                                 ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.i.2, label %for.cond.i.i.i.2.map_id_down.exit_crit_edge, label %for.body.i.i.i.3

for.cond.i.i.i.2.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.3:                                 ; preds = %for.cond.i.i.i.2
  %arrayidx.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i.3, align 4
  %count3.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %count3.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count3.i.i.i.3, align 4
  %add4.i.i.i.3 = add i32 %11, -1
  %sub5.i.i.i.3 = add i32 %add4.i.i.i.3, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %uid)
  %cmp6.not.i.i.i.3 = icmp ugt i32 %11, %uid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.3, i32 %uid)
  %cmp7.not.i.i.i.3 = icmp ult i32 %sub5.i.i.i.3, %uid
  %or.cond29.i.i.i.3 = select i1 %cmp6.not.i.i.i.3, i1 true, i1 %cmp7.not.i.i.i.3
  br i1 %or.cond29.i.i.i.3, label %for.cond.i.i.i.3, label %for.body.i.i.i.3.if.end.i.i_crit_edge

for.body.i.i.i.3.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.3:                                 ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.i.3, label %for.cond.i.i.i.3.map_id_down.exit_crit_edge, label %for.body.i.i.i.4

for.cond.i.i.i.3.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.4:                                 ; preds = %for.cond.i.i.i.3
  %arrayidx.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i.4, align 4
  %count3.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %count3.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count3.i.i.i.4, align 4
  %add4.i.i.i.4 = add i32 %15, -1
  %sub5.i.i.i.4 = add i32 %add4.i.i.i.4, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %uid)
  %cmp6.not.i.i.i.4 = icmp ugt i32 %15, %uid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.4, i32 %uid)
  %cmp7.not.i.i.i.4 = icmp ult i32 %sub5.i.i.i.4, %uid
  %or.cond29.i.i.i.4 = select i1 %cmp6.not.i.i.i.4, i1 true, i1 %cmp7.not.i.i.i.4
  br i1 %or.cond29.i.i.i.4, label %for.body.i.i.i.4.map_id_down.exit_crit_edge, label %for.body.i.i.i.4.if.end.i.i_crit_edge

for.body.i.i.i.4.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.body.i.i.i.4.map_id_down.exit_crit_edge:      ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %18 = getelementptr inbounds %struct.uid_gid_map, ptr %ns, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %count3.i.i.i = getelementptr %struct.uid_gid_map, ptr %ns, i32 0, i32 1, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %count3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count3.i.i.i, align 4
  %add4.i.i.i = add i32 %20, -1
  %sub5.i.i.i = add i32 %add4.i.i.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %uid)
  %cmp6.not.i.i.i = icmp ugt i32 %20, %uid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i, i32 %uid)
  %cmp7.not.i.i.i = icmp ult i32 %sub5.i.i.i, %uid
  %or.cond29.i.i.i = select i1 %cmp6.not.i.i.i, i1 true, i1 %cmp7.not.i.i.i
  br i1 %or.cond29.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.if.end.i.i_crit_edge

for.body.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777215, ptr %key.i.i.i, align 4
  %count1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count1.i.i.i, align 4
  %id2.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %uid, ptr %id2.i.i.i, align 4
  %26 = getelementptr inbounds %struct.uid_gid_map, ptr %ns, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %28, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.body.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.i.4.if.end.i.i_crit_edge, %for.body.i.i.i.3.if.end.i.i_crit_edge, %for.body.i.i.i.2.if.end.i.i_crit_edge, %for.body.i.i.i.1.if.end.i.i_crit_edge
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %18, %for.body.i.i.i.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.1, %for.body.i.i.i.1.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.2, %for.body.i.i.i.2.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.3, %for.body.i.i.i.3.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.4, %for.body.i.i.i.4.if.end.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.map_id_down.exit_crit_edge, label %if.then5.i.i

if.end.i.i.map_id_down.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extent.0.i.i, align 4
  %sub.i.i = sub i32 %uid, %30
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_first.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %32
  br label %map_id_down.exit

map_id_down.exit:                                 ; preds = %if.then5.i.i, %if.end.i.i.map_id_down.exit_crit_edge, %for.body.i.i.i.4.map_id_down.exit_crit_edge, %for.cond.i.i.i.3.map_id_down.exit_crit_edge, %for.cond.i.i.i.2.map_id_down.exit_crit_edge, %for.cond.i.i.i.1.map_id_down.exit_crit_edge, %for.cond.i.i.i.map_id_down.exit_crit_edge, %if.then.i.i.map_id_down.exit_crit_edge
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.map_id_down.exit_crit_edge ], [ -1, %if.then.i.i.map_id_down.exit_crit_edge ], [ -1, %for.body.i.i.i.4.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.3.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.2.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.1.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.map_id_down.exit_crit_edge ]
  ret i32 %id.addr.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kuid(ptr noundef readonly %targ, [1 x i32] %kuid.coerce) #0 align 64 {
entry:
  %key.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract.i = extractvalue [1 x i32] %kuid.coerce, 0
  %0 = ptrtoint ptr %targ to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %targ, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i = icmp ult i32 %1, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.uid_gid_map, ptr %targ, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i, label %if.then.i.map_id_up.exit_crit_edge, label %for.body.i.i

if.then.i.map_id_up.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i:                                     ; preds = %if.then.i
  %lower_first.i.i = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lower_first.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %uid.coerce.fca.0.extract.i)
  %cmp2.not.i.i = icmp ugt i32 %4, %uid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %count.i.i = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 4
  %add.i.i = add i32 %4, -1
  %sub.i.i = add i32 %add.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %uid.coerce.fca.0.extract.i)
  %cmp3.not.i.i = icmp ult i32 %sub.i.i, %uid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.map_id_up.exit_crit_edge, label %for.body.i.i.1

for.inc.i.i.map_id_up.exit_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %lower_first.i.i.1 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %lower_first.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lower_first.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %uid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.1 = icmp ugt i32 %8, %uid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.1, label %for.body.i.i.1.for.inc.i.i.1_crit_edge, label %land.lhs.true.i.i.1

for.body.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.1

land.lhs.true.i.i.1:                              ; preds = %for.body.i.i.1
  %count.i.i.1 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.1, align 4
  %add.i.i.1 = add i32 %8, -1
  %sub.i.i.1 = add i32 %add.i.i.1, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.1, i32 %uid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.1 = icmp ult i32 %sub.i.i.1, %uid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.1, label %land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge, label %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge:      ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge, %for.body.i.i.1.for.inc.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.map_id_up.exit_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %lower_first.i.i.2 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %lower_first.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_first.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %uid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.2 = icmp ugt i32 %12, %uid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.2, label %for.body.i.i.2.for.inc.i.i.2_crit_edge, label %land.lhs.true.i.i.2

for.body.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.2

land.lhs.true.i.i.2:                              ; preds = %for.body.i.i.2
  %count.i.i.2 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %count.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i.2, align 4
  %add.i.i.2 = add i32 %12, -1
  %sub.i.i.2 = add i32 %add.i.i.2, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.2, i32 %uid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.2 = icmp ult i32 %sub.i.i.2, %uid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.2, label %land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge, label %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge:      ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge, %for.body.i.i.2.for.inc.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.map_id_up.exit_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %lower_first.i.i.3 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %uid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.3 = icmp ugt i32 %16, %uid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.3, label %for.body.i.i.3.for.inc.i.i.3_crit_edge, label %land.lhs.true.i.i.3

for.body.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.3

land.lhs.true.i.i.3:                              ; preds = %for.body.i.i.3
  %count.i.i.3 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %count.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.3, align 4
  %add.i.i.3 = add i32 %16, -1
  %sub.i.i.3 = add i32 %add.i.i.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.3, i32 %uid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.3 = icmp ult i32 %sub.i.i.3, %uid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.3, label %land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge, label %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge:      ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge, %for.body.i.i.3.for.inc.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.3, label %for.inc.i.i.3.map_id_up.exit_crit_edge, label %for.body.i.i.4

for.inc.i.i.3.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.4:                                   ; preds = %for.inc.i.i.3
  %lower_first.i.i.4 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %uid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.4 = icmp ugt i32 %20, %uid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.4, label %for.body.i.i.4.map_id_up.exit_crit_edge, label %land.lhs.true.i.i.4

for.body.i.i.4.map_id_up.exit_crit_edge:          ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

land.lhs.true.i.i.4:                              ; preds = %for.body.i.i.4
  %count.i.i.4 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %count.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.4, align 4
  %add.i.i.4 = add i32 %20, -1
  %sub.i.i.4 = add i32 %add.i.i.4, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.4, i32 %uid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.4 = icmp ult i32 %sub.i.i.4, %uid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.4, label %land.lhs.true.i.i.4.map_id_up.exit_crit_edge, label %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.4.map_id_up.exit_crit_edge:     ; preds = %land.lhs.true.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

cleanup.split.loop.exit15.i.i:                    ; preds = %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge
  %idx.018.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge ]
  %arrayidx.le.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %2, i32 0, i32 %idx.018.i.i.lcssa
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i) #15
  %23 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33554431, ptr %key.i.i, align 4
  %count.i17.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count.i17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count.i17.i, align 4
  %id1.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %uid.coerce.fca.0.extract.i, ptr %id1.i.i, align 4
  %reverse.i.i = getelementptr inbounds %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %reverse.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reverse.i.i, align 4
  %call.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i, ptr noundef %27, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cleanup.split.loop.exit15.i.i
  %extent.0.i = phi ptr [ %call.i.i, %if.else.i ], [ %arrayidx.le.i.i, %cleanup.split.loop.exit15.i.i ]
  %tobool.not.i = icmp eq ptr %extent.0.i, null
  br i1 %tobool.not.i, label %if.end.i.map_id_up.exit_crit_edge, label %if.then5.i

if.end.i.map_id_up.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower_first.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %lower_first.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_first.i, align 4
  %sub.i = sub i32 %uid.coerce.fca.0.extract.i, %29
  %30 = ptrtoint ptr %extent.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extent.0.i, align 4
  %add.i = add i32 %sub.i, %31
  br label %map_id_up.exit

map_id_up.exit:                                   ; preds = %if.then5.i, %if.end.i.map_id_up.exit_crit_edge, %land.lhs.true.i.i.4.map_id_up.exit_crit_edge, %for.body.i.i.4.map_id_up.exit_crit_edge, %for.inc.i.i.3.map_id_up.exit_crit_edge, %for.inc.i.i.2.map_id_up.exit_crit_edge, %for.inc.i.i.1.map_id_up.exit_crit_edge, %for.inc.i.i.map_id_up.exit_crit_edge, %if.then.i.map_id_up.exit_crit_edge
  %id.addr.0.i = phi i32 [ %add.i, %if.then5.i ], [ -1, %if.end.i.map_id_up.exit_crit_edge ], [ -1, %if.then.i.map_id_up.exit_crit_edge ], [ -1, %for.body.i.i.4.map_id_up.exit_crit_edge ], [ -1, %land.lhs.true.i.i.4.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.3.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.2.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.1.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.map_id_up.exit_crit_edge ]
  ret i32 %id.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kuid_munged(ptr noundef readonly %targ, [1 x i32] %kuid.coerce) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %uid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %kuid.coerce, 0
  %0 = ptrtoint ptr %targ to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %targ, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.uid_gid_map, ptr %targ, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i.i, label %if.then.i.i.if.then_crit_edge, label %for.body.i.i.i

if.then.i.i.if.then_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %lower_first.i.i.i = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lower_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i = icmp ugt i32 %4, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %count.i.i.i = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i.i, align 4
  %add.i.i.i = add i32 %4, -1
  %sub.i.i.i = add i32 %add.i.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i = icmp ult i32 %sub.i.i.i, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.then_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.if.then_crit_edge:                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %lower_first.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %lower_first.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lower_first.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %8, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1

for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge:       ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %count.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.i.1, align 4
  %add.i.i.i.1 = add i32 %8, -1
  %sub.i.i.i.1 = add i32 %add.i.i.i.1, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.1, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.1 = icmp ult i32 %sub.i.i.i.1, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.1, label %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge:  ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.if.then_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.if.then_crit_edge:                ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %lower_first.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %lower_first.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_first.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.2 = icmp ugt i32 %12, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.2, label %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2

for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge:       ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %count.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %count.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i.i.2, align 4
  %add.i.i.i.2 = add i32 %12, -1
  %sub.i.i.i.2 = add i32 %add.i.i.i.2, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.2, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.2 = icmp ult i32 %sub.i.i.i.2, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.2, label %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge:  ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.if.then_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.if.then_crit_edge:                ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %lower_first.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.3 = icmp ugt i32 %16, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.3, label %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3

for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge:       ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %count.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %count.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.i.3, align 4
  %add.i.i.i.3 = add i32 %16, -1
  %sub.i.i.i.3 = add i32 %add.i.i.i.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.3, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.3 = icmp ult i32 %sub.i.i.i.3, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.3, label %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge:  ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

for.inc.i.i.i.3:                                  ; preds = %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.if.then_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.if.then_crit_edge:                ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %lower_first.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.4 = icmp ugt i32 %20, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.4, label %for.body.i.i.i.4.if.then_crit_edge, label %land.lhs.true.i.i.i.4

for.body.i.i.i.4.if.then_crit_edge:               ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %count.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %count.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.i.4, align 4
  %add.i.i.i.4 = add i32 %20, -1
  %sub.i.i.i.4 = add i32 %add.i.i.i.4, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.4, i32 %uid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.4 = icmp ult i32 %sub.i.i.i.4, %uid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.4, label %land.lhs.true.i.i.i.4.if.then_crit_edge, label %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.4.if.then_crit_edge:          ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

cleanup.split.loop.exit15.i.i.i:                  ; preds = %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge
  %idx.018.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %2, i32 0, i32 %idx.018.i.i.i.lcssa
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33554431, ptr %key.i.i.i, align 4
  %count.i17.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count.i17.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %uid.coerce.fca.0.extract.i.i, ptr %id1.i.i.i, align 4
  %reverse.i.i.i = getelementptr inbounds %struct.uid_gid_map, ptr %targ, i32 0, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reverse.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %27, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %cleanup.split.loop.exit15.i.i.i
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %arrayidx.le.i.i.i, %cleanup.split.loop.exit15.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then_crit_edge, label %from_kuid.exit

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

from_kuid.exit:                                   ; preds = %if.end.i.i
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_first.i.i, align 4
  %sub.i.i = sub i32 %uid.coerce.fca.0.extract.i.i, %29
  %30 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extent.0.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp = icmp eq i32 %add.i.i, -1
  br i1 %cmp, label %from_kuid.exit.if.then_crit_edge, label %from_kuid.exit.if.end_crit_edge

from_kuid.exit.if.end_crit_edge:                  ; preds = %from_kuid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

from_kuid.exit.if.then_crit_edge:                 ; preds = %from_kuid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %from_kuid.exit.if.then_crit_edge, %if.end.i.i.if.then_crit_edge, %land.lhs.true.i.i.i.4.if.then_crit_edge, %for.body.i.i.i.4.if.then_crit_edge, %for.inc.i.i.i.3.if.then_crit_edge, %for.inc.i.i.i.2.if.then_crit_edge, %for.inc.i.i.i.1.if.then_crit_edge, %for.inc.i.i.i.if.then_crit_edge, %if.then.i.i.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowuid to i32))
  %32 = load i32, ptr @overflowuid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %from_kuid.exit.if.end_crit_edge
  %uid.0 = phi i32 [ %32, %if.then ], [ %add.i.i, %from_kuid.exit.if.end_crit_edge ]
  ret i32 %uid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @make_kgid(ptr noundef readonly %ns, i32 noundef %gid) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %gid_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gid_map, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not.i.i.i = icmp eq i32 %1, 0
  br i1 %cmp30.not.i.i.i, label %if.then.i.i.map_id_down.exit_crit_edge, label %for.body.i.i.i

if.then.i.i.map_id_down.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.map_id_down.exit_crit_edge, label %for.body.i.i.i.1

for.cond.i.i.i.map_id_down.exit_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.1:                                 ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i.1 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i.1, align 4
  %count3.i.i.i.1 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %count3.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count3.i.i.i.1, align 4
  %add4.i.i.i.1 = add i32 %3, -1
  %sub5.i.i.i.1 = add i32 %add4.i.i.i.1, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %gid)
  %cmp6.not.i.i.i.1 = icmp ugt i32 %3, %gid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.1, i32 %gid)
  %cmp7.not.i.i.i.1 = icmp ult i32 %sub5.i.i.i.1, %gid
  %or.cond29.i.i.i.1 = select i1 %cmp6.not.i.i.i.1, i1 true, i1 %cmp7.not.i.i.i.1
  br i1 %or.cond29.i.i.i.1, label %for.cond.i.i.i.1, label %for.body.i.i.i.1.if.end.i.i_crit_edge

for.body.i.i.i.1.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.1:                                 ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %for.cond.i.i.i.1.map_id_down.exit_crit_edge, label %for.body.i.i.i.2

for.cond.i.i.i.1.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.2:                                 ; preds = %for.cond.i.i.i.1
  %arrayidx.i.i.i.2 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i.2, align 4
  %count3.i.i.i.2 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %count3.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count3.i.i.i.2, align 4
  %add4.i.i.i.2 = add i32 %7, -1
  %sub5.i.i.i.2 = add i32 %add4.i.i.i.2, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %gid)
  %cmp6.not.i.i.i.2 = icmp ugt i32 %7, %gid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.2, i32 %gid)
  %cmp7.not.i.i.i.2 = icmp ult i32 %sub5.i.i.i.2, %gid
  %or.cond29.i.i.i.2 = select i1 %cmp6.not.i.i.i.2, i1 true, i1 %cmp7.not.i.i.i.2
  br i1 %or.cond29.i.i.i.2, label %for.cond.i.i.i.2, label %for.body.i.i.i.2.if.end.i.i_crit_edge

for.body.i.i.i.2.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.2:                                 ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.i.2, label %for.cond.i.i.i.2.map_id_down.exit_crit_edge, label %for.body.i.i.i.3

for.cond.i.i.i.2.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.3:                                 ; preds = %for.cond.i.i.i.2
  %arrayidx.i.i.i.3 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i.3, align 4
  %count3.i.i.i.3 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %count3.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count3.i.i.i.3, align 4
  %add4.i.i.i.3 = add i32 %11, -1
  %sub5.i.i.i.3 = add i32 %add4.i.i.i.3, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %gid)
  %cmp6.not.i.i.i.3 = icmp ugt i32 %11, %gid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.3, i32 %gid)
  %cmp7.not.i.i.i.3 = icmp ult i32 %sub5.i.i.i.3, %gid
  %or.cond29.i.i.i.3 = select i1 %cmp6.not.i.i.i.3, i1 true, i1 %cmp7.not.i.i.i.3
  br i1 %or.cond29.i.i.i.3, label %for.cond.i.i.i.3, label %for.body.i.i.i.3.if.end.i.i_crit_edge

for.body.i.i.i.3.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.3:                                 ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.i.3, label %for.cond.i.i.i.3.map_id_down.exit_crit_edge, label %for.body.i.i.i.4

for.cond.i.i.i.3.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.4:                                 ; preds = %for.cond.i.i.i.3
  %arrayidx.i.i.i.4 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i.4, align 4
  %count3.i.i.i.4 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %count3.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count3.i.i.i.4, align 4
  %add4.i.i.i.4 = add i32 %15, -1
  %sub5.i.i.i.4 = add i32 %add4.i.i.i.4, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %gid)
  %cmp6.not.i.i.i.4 = icmp ugt i32 %15, %gid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.4, i32 %gid)
  %cmp7.not.i.i.i.4 = icmp ult i32 %sub5.i.i.i.4, %gid
  %or.cond29.i.i.i.4 = select i1 %cmp6.not.i.i.i.4, i1 true, i1 %cmp7.not.i.i.i.4
  br i1 %or.cond29.i.i.i.4, label %for.body.i.i.i.4.map_id_down.exit_crit_edge, label %for.body.i.i.i.4.if.end.i.i_crit_edge

for.body.i.i.i.4.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.body.i.i.i.4.map_id_down.exit_crit_edge:      ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %18 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %count3.i.i.i = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %count3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count3.i.i.i, align 4
  %add4.i.i.i = add i32 %20, -1
  %sub5.i.i.i = add i32 %add4.i.i.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %gid)
  %cmp6.not.i.i.i = icmp ugt i32 %20, %gid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i, i32 %gid)
  %cmp7.not.i.i.i = icmp ult i32 %sub5.i.i.i, %gid
  %or.cond29.i.i.i = select i1 %cmp6.not.i.i.i, i1 true, i1 %cmp7.not.i.i.i
  br i1 %or.cond29.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.if.end.i.i_crit_edge

for.body.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777215, ptr %key.i.i.i, align 4
  %count1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count1.i.i.i, align 4
  %id2.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %gid, ptr %id2.i.i.i, align 4
  %26 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %28, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.body.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.i.4.if.end.i.i_crit_edge, %for.body.i.i.i.3.if.end.i.i_crit_edge, %for.body.i.i.i.2.if.end.i.i_crit_edge, %for.body.i.i.i.1.if.end.i.i_crit_edge
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %18, %for.body.i.i.i.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.1, %for.body.i.i.i.1.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.2, %for.body.i.i.i.2.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.3, %for.body.i.i.i.3.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.4, %for.body.i.i.i.4.if.end.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.map_id_down.exit_crit_edge, label %if.then5.i.i

if.end.i.i.map_id_down.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extent.0.i.i, align 4
  %sub.i.i = sub i32 %gid, %30
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_first.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %32
  br label %map_id_down.exit

map_id_down.exit:                                 ; preds = %if.then5.i.i, %if.end.i.i.map_id_down.exit_crit_edge, %for.body.i.i.i.4.map_id_down.exit_crit_edge, %for.cond.i.i.i.3.map_id_down.exit_crit_edge, %for.cond.i.i.i.2.map_id_down.exit_crit_edge, %for.cond.i.i.i.1.map_id_down.exit_crit_edge, %for.cond.i.i.i.map_id_down.exit_crit_edge, %if.then.i.i.map_id_down.exit_crit_edge
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.map_id_down.exit_crit_edge ], [ -1, %if.then.i.i.map_id_down.exit_crit_edge ], [ -1, %for.body.i.i.i.4.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.3.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.2.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.1.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.map_id_down.exit_crit_edge ]
  ret i32 %id.addr.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kgid(ptr noundef readonly %targ, [1 x i32] %kgid.coerce) #0 align 64 {
entry:
  %key.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 1
  %gid.coerce.fca.0.extract.i = extractvalue [1 x i32] %kgid.coerce, 0
  %0 = ptrtoint ptr %gid_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gid_map, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i = icmp ult i32 %1, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i, label %if.then.i.map_id_up.exit_crit_edge, label %for.body.i.i

if.then.i.map_id_up.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i:                                     ; preds = %if.then.i
  %lower_first.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lower_first.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %gid.coerce.fca.0.extract.i)
  %cmp2.not.i.i = icmp ugt i32 %4, %gid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %count.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 4
  %add.i.i = add i32 %4, -1
  %sub.i.i = add i32 %add.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %gid.coerce.fca.0.extract.i)
  %cmp3.not.i.i = icmp ult i32 %sub.i.i, %gid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.map_id_up.exit_crit_edge, label %for.body.i.i.1

for.inc.i.i.map_id_up.exit_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %lower_first.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %lower_first.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lower_first.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %gid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.1 = icmp ugt i32 %8, %gid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.1, label %for.body.i.i.1.for.inc.i.i.1_crit_edge, label %land.lhs.true.i.i.1

for.body.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.1

land.lhs.true.i.i.1:                              ; preds = %for.body.i.i.1
  %count.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.1, align 4
  %add.i.i.1 = add i32 %8, -1
  %sub.i.i.1 = add i32 %add.i.i.1, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.1, i32 %gid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.1 = icmp ult i32 %sub.i.i.1, %gid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.1, label %land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge, label %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge:      ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge, %for.body.i.i.1.for.inc.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.map_id_up.exit_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %lower_first.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %lower_first.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_first.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %gid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.2 = icmp ugt i32 %12, %gid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.2, label %for.body.i.i.2.for.inc.i.i.2_crit_edge, label %land.lhs.true.i.i.2

for.body.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.2

land.lhs.true.i.i.2:                              ; preds = %for.body.i.i.2
  %count.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %count.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i.2, align 4
  %add.i.i.2 = add i32 %12, -1
  %sub.i.i.2 = add i32 %add.i.i.2, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.2, i32 %gid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.2 = icmp ult i32 %sub.i.i.2, %gid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.2, label %land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge, label %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge:      ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge, %for.body.i.i.2.for.inc.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.map_id_up.exit_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %lower_first.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %gid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.3 = icmp ugt i32 %16, %gid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.3, label %for.body.i.i.3.for.inc.i.i.3_crit_edge, label %land.lhs.true.i.i.3

for.body.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.3

land.lhs.true.i.i.3:                              ; preds = %for.body.i.i.3
  %count.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %count.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.3, align 4
  %add.i.i.3 = add i32 %16, -1
  %sub.i.i.3 = add i32 %add.i.i.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.3, i32 %gid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.3 = icmp ult i32 %sub.i.i.3, %gid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.3, label %land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge, label %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge:      ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge, %for.body.i.i.3.for.inc.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.3, label %for.inc.i.i.3.map_id_up.exit_crit_edge, label %for.body.i.i.4

for.inc.i.i.3.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.4:                                   ; preds = %for.inc.i.i.3
  %lower_first.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %gid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.4 = icmp ugt i32 %20, %gid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.4, label %for.body.i.i.4.map_id_up.exit_crit_edge, label %land.lhs.true.i.i.4

for.body.i.i.4.map_id_up.exit_crit_edge:          ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

land.lhs.true.i.i.4:                              ; preds = %for.body.i.i.4
  %count.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %count.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.4, align 4
  %add.i.i.4 = add i32 %20, -1
  %sub.i.i.4 = add i32 %add.i.i.4, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.4, i32 %gid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.4 = icmp ult i32 %sub.i.i.4, %gid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.4, label %land.lhs.true.i.i.4.map_id_up.exit_crit_edge, label %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.4.map_id_up.exit_crit_edge:     ; preds = %land.lhs.true.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

cleanup.split.loop.exit15.i.i:                    ; preds = %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge
  %idx.018.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge ]
  %arrayidx.le.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %2, i32 0, i32 %idx.018.i.i.lcssa
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i) #15
  %23 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33554431, ptr %key.i.i, align 4
  %count.i17.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count.i17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count.i17.i, align 4
  %id1.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %gid.coerce.fca.0.extract.i, ptr %id1.i.i, align 4
  %reverse.i.i = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %reverse.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reverse.i.i, align 4
  %call.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i, ptr noundef %27, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cleanup.split.loop.exit15.i.i
  %extent.0.i = phi ptr [ %call.i.i, %if.else.i ], [ %arrayidx.le.i.i, %cleanup.split.loop.exit15.i.i ]
  %tobool.not.i = icmp eq ptr %extent.0.i, null
  br i1 %tobool.not.i, label %if.end.i.map_id_up.exit_crit_edge, label %if.then5.i

if.end.i.map_id_up.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower_first.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %lower_first.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_first.i, align 4
  %sub.i = sub i32 %gid.coerce.fca.0.extract.i, %29
  %30 = ptrtoint ptr %extent.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extent.0.i, align 4
  %add.i = add i32 %sub.i, %31
  br label %map_id_up.exit

map_id_up.exit:                                   ; preds = %if.then5.i, %if.end.i.map_id_up.exit_crit_edge, %land.lhs.true.i.i.4.map_id_up.exit_crit_edge, %for.body.i.i.4.map_id_up.exit_crit_edge, %for.inc.i.i.3.map_id_up.exit_crit_edge, %for.inc.i.i.2.map_id_up.exit_crit_edge, %for.inc.i.i.1.map_id_up.exit_crit_edge, %for.inc.i.i.map_id_up.exit_crit_edge, %if.then.i.map_id_up.exit_crit_edge
  %id.addr.0.i = phi i32 [ %add.i, %if.then5.i ], [ -1, %if.end.i.map_id_up.exit_crit_edge ], [ -1, %if.then.i.map_id_up.exit_crit_edge ], [ -1, %for.body.i.i.4.map_id_up.exit_crit_edge ], [ -1, %land.lhs.true.i.i.4.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.3.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.2.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.1.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.map_id_up.exit_crit_edge ]
  ret i32 %id.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kgid_munged(ptr noundef readonly %targ, [1 x i32] %kgid.coerce) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %gid_map.i = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 1
  %gid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %kgid.coerce, 0
  %0 = ptrtoint ptr %gid_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gid_map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i.i, label %if.then.i.i.if.then_crit_edge, label %for.body.i.i.i

if.then.i.i.if.then_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %lower_first.i.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lower_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i = icmp ugt i32 %4, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %count.i.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i.i, align 4
  %add.i.i.i = add i32 %4, -1
  %sub.i.i.i = add i32 %add.i.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i = icmp ult i32 %sub.i.i.i, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.then_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.if.then_crit_edge:                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %lower_first.i.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %lower_first.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lower_first.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %8, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1

for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge:       ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %count.i.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.i.1, align 4
  %add.i.i.i.1 = add i32 %8, -1
  %sub.i.i.i.1 = add i32 %add.i.i.i.1, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.1, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.1 = icmp ult i32 %sub.i.i.i.1, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.1, label %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge:  ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.if.then_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.if.then_crit_edge:                ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %lower_first.i.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %lower_first.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_first.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.2 = icmp ugt i32 %12, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.2, label %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2

for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge:       ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %count.i.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %count.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i.i.2, align 4
  %add.i.i.i.2 = add i32 %12, -1
  %sub.i.i.i.2 = add i32 %add.i.i.i.2, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.2, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.2 = icmp ult i32 %sub.i.i.i.2, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.2, label %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge:  ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.if.then_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.if.then_crit_edge:                ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %lower_first.i.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.3 = icmp ugt i32 %16, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.3, label %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3

for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge:       ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %count.i.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %count.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.i.3, align 4
  %add.i.i.i.3 = add i32 %16, -1
  %sub.i.i.i.3 = add i32 %add.i.i.i.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.3, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.3 = icmp ult i32 %sub.i.i.i.3, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.3, label %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge:  ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

for.inc.i.i.i.3:                                  ; preds = %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.if.then_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.if.then_crit_edge:                ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %lower_first.i.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.4 = icmp ugt i32 %20, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.4, label %for.body.i.i.i.4.if.then_crit_edge, label %land.lhs.true.i.i.i.4

for.body.i.i.i.4.if.then_crit_edge:               ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %count.i.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %count.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.i.4, align 4
  %add.i.i.i.4 = add i32 %20, -1
  %sub.i.i.i.4 = add i32 %add.i.i.i.4, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.4, i32 %gid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.4 = icmp ult i32 %sub.i.i.i.4, %gid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.4, label %land.lhs.true.i.i.i.4.if.then_crit_edge, label %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.4.if.then_crit_edge:          ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

cleanup.split.loop.exit15.i.i.i:                  ; preds = %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge
  %idx.018.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %2, i32 0, i32 %idx.018.i.i.i.lcssa
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33554431, ptr %key.i.i.i, align 4
  %count.i17.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count.i17.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %gid.coerce.fca.0.extract.i.i, ptr %id1.i.i.i, align 4
  %reverse.i.i.i = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reverse.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %27, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %cleanup.split.loop.exit15.i.i.i
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %arrayidx.le.i.i.i, %cleanup.split.loop.exit15.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then_crit_edge, label %from_kgid.exit

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

from_kgid.exit:                                   ; preds = %if.end.i.i
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_first.i.i, align 4
  %sub.i.i = sub i32 %gid.coerce.fca.0.extract.i.i, %29
  %30 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extent.0.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp = icmp eq i32 %add.i.i, -1
  br i1 %cmp, label %from_kgid.exit.if.then_crit_edge, label %from_kgid.exit.if.end_crit_edge

from_kgid.exit.if.end_crit_edge:                  ; preds = %from_kgid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

from_kgid.exit.if.then_crit_edge:                 ; preds = %from_kgid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %from_kgid.exit.if.then_crit_edge, %if.end.i.i.if.then_crit_edge, %land.lhs.true.i.i.i.4.if.then_crit_edge, %for.body.i.i.i.4.if.then_crit_edge, %for.inc.i.i.i.3.if.then_crit_edge, %for.inc.i.i.i.2.if.then_crit_edge, %for.inc.i.i.i.1.if.then_crit_edge, %for.inc.i.i.i.if.then_crit_edge, %if.then.i.i.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @overflowgid to i32))
  %32 = load i32, ptr @overflowgid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %from_kgid.exit.if.end_crit_edge
  %gid.0 = phi i32 [ %32, %if.then ], [ %add.i.i, %from_kgid.exit.if.end_crit_edge ]
  ret i32 %gid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @make_kprojid(ptr noundef readonly %ns, i32 noundef %projid) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %projid_map = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %projid_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %projid_map, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not.i.i.i = icmp eq i32 %1, 0
  br i1 %cmp30.not.i.i.i, label %if.then.i.i.map_id_down.exit_crit_edge, label %for.body.i.i.i

if.then.i.i.map_id_down.exit_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.map_id_down.exit_crit_edge, label %for.body.i.i.i.1

for.cond.i.i.i.map_id_down.exit_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.1:                                 ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i.1 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i.1, align 4
  %count3.i.i.i.1 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %count3.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count3.i.i.i.1, align 4
  %add4.i.i.i.1 = add i32 %3, -1
  %sub5.i.i.i.1 = add i32 %add4.i.i.i.1, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %projid)
  %cmp6.not.i.i.i.1 = icmp ugt i32 %3, %projid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.1, i32 %projid)
  %cmp7.not.i.i.i.1 = icmp ult i32 %sub5.i.i.i.1, %projid
  %or.cond29.i.i.i.1 = select i1 %cmp6.not.i.i.i.1, i1 true, i1 %cmp7.not.i.i.i.1
  br i1 %or.cond29.i.i.i.1, label %for.cond.i.i.i.1, label %for.body.i.i.i.1.if.end.i.i_crit_edge

for.body.i.i.i.1.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.1:                                 ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %for.cond.i.i.i.1.map_id_down.exit_crit_edge, label %for.body.i.i.i.2

for.cond.i.i.i.1.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.2:                                 ; preds = %for.cond.i.i.i.1
  %arrayidx.i.i.i.2 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i.2, align 4
  %count3.i.i.i.2 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %count3.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count3.i.i.i.2, align 4
  %add4.i.i.i.2 = add i32 %7, -1
  %sub5.i.i.i.2 = add i32 %add4.i.i.i.2, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %projid)
  %cmp6.not.i.i.i.2 = icmp ugt i32 %7, %projid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.2, i32 %projid)
  %cmp7.not.i.i.i.2 = icmp ult i32 %sub5.i.i.i.2, %projid
  %or.cond29.i.i.i.2 = select i1 %cmp6.not.i.i.i.2, i1 true, i1 %cmp7.not.i.i.i.2
  br i1 %or.cond29.i.i.i.2, label %for.cond.i.i.i.2, label %for.body.i.i.i.2.if.end.i.i_crit_edge

for.body.i.i.i.2.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.2:                                 ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.i.2, label %for.cond.i.i.i.2.map_id_down.exit_crit_edge, label %for.body.i.i.i.3

for.cond.i.i.i.2.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.3:                                 ; preds = %for.cond.i.i.i.2
  %arrayidx.i.i.i.3 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i.3, align 4
  %count3.i.i.i.3 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %count3.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count3.i.i.i.3, align 4
  %add4.i.i.i.3 = add i32 %11, -1
  %sub5.i.i.i.3 = add i32 %add4.i.i.i.3, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %projid)
  %cmp6.not.i.i.i.3 = icmp ugt i32 %11, %projid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.3, i32 %projid)
  %cmp7.not.i.i.i.3 = icmp ult i32 %sub5.i.i.i.3, %projid
  %or.cond29.i.i.i.3 = select i1 %cmp6.not.i.i.i.3, i1 true, i1 %cmp7.not.i.i.i.3
  br i1 %or.cond29.i.i.i.3, label %for.cond.i.i.i.3, label %for.body.i.i.i.3.if.end.i.i_crit_edge

for.body.i.i.i.3.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.cond.i.i.i.3:                                 ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.i.3, label %for.cond.i.i.i.3.map_id_down.exit_crit_edge, label %for.body.i.i.i.4

for.cond.i.i.i.3.map_id_down.exit_crit_edge:      ; preds = %for.cond.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i.4:                                 ; preds = %for.cond.i.i.i.3
  %arrayidx.i.i.i.4 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i.4, align 4
  %count3.i.i.i.4 = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %count3.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count3.i.i.i.4, align 4
  %add4.i.i.i.4 = add i32 %15, -1
  %sub5.i.i.i.4 = add i32 %add4.i.i.i.4, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %projid)
  %cmp6.not.i.i.i.4 = icmp ugt i32 %15, %projid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.4, i32 %projid)
  %cmp7.not.i.i.i.4 = icmp ult i32 %sub5.i.i.i.4, %projid
  %or.cond29.i.i.i.4 = select i1 %cmp6.not.i.i.i.4, i1 true, i1 %cmp7.not.i.i.i.4
  br i1 %or.cond29.i.i.i.4, label %for.body.i.i.i.4.map_id_down.exit_crit_edge, label %for.body.i.i.i.4.if.end.i.i_crit_edge

for.body.i.i.i.4.if.end.i.i_crit_edge:            ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

for.body.i.i.i.4.map_id_down.exit_crit_edge:      ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %18 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %count3.i.i.i = getelementptr %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %count3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count3.i.i.i, align 4
  %add4.i.i.i = add i32 %20, -1
  %sub5.i.i.i = add i32 %add4.i.i.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %projid)
  %cmp6.not.i.i.i = icmp ugt i32 %20, %projid
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i, i32 %projid)
  %cmp7.not.i.i.i = icmp ult i32 %sub5.i.i.i, %projid
  %or.cond29.i.i.i = select i1 %cmp6.not.i.i.i, i1 true, i1 %cmp7.not.i.i.i
  br i1 %or.cond29.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.if.end.i.i_crit_edge

for.body.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777215, ptr %key.i.i.i, align 4
  %count1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count1.i.i.i, align 4
  %id2.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %projid, ptr %id2.i.i.i, align 4
  %26 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %28, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %for.body.i.i.i.if.end.i.i_crit_edge, %for.body.i.i.i.4.if.end.i.i_crit_edge, %for.body.i.i.i.3.if.end.i.i_crit_edge, %for.body.i.i.i.2.if.end.i.i_crit_edge, %for.body.i.i.i.1.if.end.i.i_crit_edge
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %18, %for.body.i.i.i.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.1, %for.body.i.i.i.1.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.2, %for.body.i.i.i.2.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.3, %for.body.i.i.i.3.if.end.i.i_crit_edge ], [ %arrayidx.i.i.i.4, %for.body.i.i.i.4.if.end.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.map_id_down.exit_crit_edge, label %if.then5.i.i

if.end.i.i.map_id_down.exit_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_down.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extent.0.i.i, align 4
  %sub.i.i = sub i32 %projid, %30
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_first.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %32
  br label %map_id_down.exit

map_id_down.exit:                                 ; preds = %if.then5.i.i, %if.end.i.i.map_id_down.exit_crit_edge, %for.body.i.i.i.4.map_id_down.exit_crit_edge, %for.cond.i.i.i.3.map_id_down.exit_crit_edge, %for.cond.i.i.i.2.map_id_down.exit_crit_edge, %for.cond.i.i.i.1.map_id_down.exit_crit_edge, %for.cond.i.i.i.map_id_down.exit_crit_edge, %if.then.i.i.map_id_down.exit_crit_edge
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.map_id_down.exit_crit_edge ], [ -1, %if.then.i.i.map_id_down.exit_crit_edge ], [ -1, %for.body.i.i.i.4.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.3.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.2.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.1.map_id_down.exit_crit_edge ], [ -1, %for.cond.i.i.i.map_id_down.exit_crit_edge ]
  ret i32 %id.addr.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kprojid(ptr noundef readonly %targ, [1 x i32] %kprojid.coerce) #0 align 64 {
entry:
  %key.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %projid_map = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 2
  %projid.coerce.fca.0.extract.i = extractvalue [1 x i32] %kprojid.coerce, 0
  %0 = ptrtoint ptr %projid_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %projid_map, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i = icmp ult i32 %1, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i, label %if.then.i.map_id_up.exit_crit_edge, label %for.body.i.i

if.then.i.map_id_up.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i:                                     ; preds = %if.then.i
  %lower_first.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lower_first.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %projid.coerce.fca.0.extract.i)
  %cmp2.not.i.i = icmp ugt i32 %4, %projid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %count.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 4
  %add.i.i = add i32 %4, -1
  %sub.i.i = add i32 %add.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %projid.coerce.fca.0.extract.i)
  %cmp3.not.i.i = icmp ult i32 %sub.i.i, %projid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.map_id_up.exit_crit_edge, label %for.body.i.i.1

for.inc.i.i.map_id_up.exit_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %lower_first.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %lower_first.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lower_first.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %projid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.1 = icmp ugt i32 %8, %projid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.1, label %for.body.i.i.1.for.inc.i.i.1_crit_edge, label %land.lhs.true.i.i.1

for.body.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.1

land.lhs.true.i.i.1:                              ; preds = %for.body.i.i.1
  %count.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.1, align 4
  %add.i.i.1 = add i32 %8, -1
  %sub.i.i.1 = add i32 %add.i.i.1, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.1, i32 %projid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.1 = icmp ult i32 %sub.i.i.1, %projid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.1, label %land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge, label %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge:      ; preds = %land.lhs.true.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %land.lhs.true.i.i.1.for.inc.i.i.1_crit_edge, %for.body.i.i.1.for.inc.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.map_id_up.exit_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %lower_first.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %lower_first.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_first.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %projid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.2 = icmp ugt i32 %12, %projid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.2, label %for.body.i.i.2.for.inc.i.i.2_crit_edge, label %land.lhs.true.i.i.2

for.body.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.2

land.lhs.true.i.i.2:                              ; preds = %for.body.i.i.2
  %count.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %count.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i.2, align 4
  %add.i.i.2 = add i32 %12, -1
  %sub.i.i.2 = add i32 %add.i.i.2, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.2, i32 %projid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.2 = icmp ult i32 %sub.i.i.2, %projid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.2, label %land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge, label %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge:      ; preds = %land.lhs.true.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %land.lhs.true.i.i.2.for.inc.i.i.2_crit_edge, %for.body.i.i.2.for.inc.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.map_id_up.exit_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %lower_first.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %projid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.3 = icmp ugt i32 %16, %projid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.3, label %for.body.i.i.3.for.inc.i.i.3_crit_edge, label %land.lhs.true.i.i.3

for.body.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.3

land.lhs.true.i.i.3:                              ; preds = %for.body.i.i.3
  %count.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %count.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.3, align 4
  %add.i.i.3 = add i32 %16, -1
  %sub.i.i.3 = add i32 %add.i.i.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.3, i32 %projid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.3 = icmp ult i32 %sub.i.i.3, %projid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.3, label %land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge, label %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge:      ; preds = %land.lhs.true.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %land.lhs.true.i.i.3.for.inc.i.i.3_crit_edge, %for.body.i.i.3.for.inc.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.3, label %for.inc.i.i.3.map_id_up.exit_crit_edge, label %for.body.i.i.4

for.inc.i.i.3.map_id_up.exit_crit_edge:           ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

for.body.i.i.4:                                   ; preds = %for.inc.i.i.3
  %lower_first.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %projid.coerce.fca.0.extract.i)
  %cmp2.not.i.i.4 = icmp ugt i32 %20, %projid.coerce.fca.0.extract.i
  br i1 %cmp2.not.i.i.4, label %for.body.i.i.4.map_id_up.exit_crit_edge, label %land.lhs.true.i.i.4

for.body.i.i.4.map_id_up.exit_crit_edge:          ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

land.lhs.true.i.i.4:                              ; preds = %for.body.i.i.4
  %count.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %count.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.4, align 4
  %add.i.i.4 = add i32 %20, -1
  %sub.i.i.4 = add i32 %add.i.i.4, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.4, i32 %projid.coerce.fca.0.extract.i)
  %cmp3.not.i.i.4 = icmp ult i32 %sub.i.i.4, %projid.coerce.fca.0.extract.i
  br i1 %cmp3.not.i.i.4, label %land.lhs.true.i.i.4.map_id_up.exit_crit_edge, label %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge

land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge: ; preds = %land.lhs.true.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i

land.lhs.true.i.i.4.map_id_up.exit_crit_edge:     ; preds = %land.lhs.true.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

cleanup.split.loop.exit15.i.i:                    ; preds = %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge, %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge
  %idx.018.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.cleanup.split.loop.exit15.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.1.cleanup.split.loop.exit15.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.2.cleanup.split.loop.exit15.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.3.cleanup.split.loop.exit15.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.4.cleanup.split.loop.exit15.i.i_crit_edge ]
  %arrayidx.le.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %2, i32 0, i32 %idx.018.i.i.lcssa
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i) #15
  %23 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33554431, ptr %key.i.i, align 4
  %count.i17.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count.i17.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count.i17.i, align 4
  %id1.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %projid.coerce.fca.0.extract.i, ptr %id1.i.i, align 4
  %reverse.i.i = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %reverse.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reverse.i.i, align 4
  %call.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i, ptr noundef %27, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %cleanup.split.loop.exit15.i.i
  %extent.0.i = phi ptr [ %call.i.i, %if.else.i ], [ %arrayidx.le.i.i, %cleanup.split.loop.exit15.i.i ]
  %tobool.not.i = icmp eq ptr %extent.0.i, null
  br i1 %tobool.not.i, label %if.end.i.map_id_up.exit_crit_edge, label %if.then5.i

if.end.i.map_id_up.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %map_id_up.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower_first.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %lower_first.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_first.i, align 4
  %sub.i = sub i32 %projid.coerce.fca.0.extract.i, %29
  %30 = ptrtoint ptr %extent.0.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extent.0.i, align 4
  %add.i = add i32 %sub.i, %31
  br label %map_id_up.exit

map_id_up.exit:                                   ; preds = %if.then5.i, %if.end.i.map_id_up.exit_crit_edge, %land.lhs.true.i.i.4.map_id_up.exit_crit_edge, %for.body.i.i.4.map_id_up.exit_crit_edge, %for.inc.i.i.3.map_id_up.exit_crit_edge, %for.inc.i.i.2.map_id_up.exit_crit_edge, %for.inc.i.i.1.map_id_up.exit_crit_edge, %for.inc.i.i.map_id_up.exit_crit_edge, %if.then.i.map_id_up.exit_crit_edge
  %id.addr.0.i = phi i32 [ %add.i, %if.then5.i ], [ -1, %if.end.i.map_id_up.exit_crit_edge ], [ -1, %if.then.i.map_id_up.exit_crit_edge ], [ -1, %for.body.i.i.4.map_id_up.exit_crit_edge ], [ -1, %land.lhs.true.i.i.4.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.3.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.2.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.1.map_id_up.exit_crit_edge ], [ -1, %for.inc.i.i.map_id_up.exit_crit_edge ]
  ret i32 %id.addr.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @from_kprojid_munged(ptr noundef readonly %targ, [1 x i32] %kprojid.coerce) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %projid_map.i = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 2
  %projid.coerce.fca.0.extract.i.i = extractvalue [1 x i32] %kprojid.coerce, 0
  %0 = ptrtoint ptr %projid_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %projid_map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not.i.i.i = icmp eq i32 %1, 0
  br i1 %cmp17.not.i.i.i, label %if.then.i.i.from_kprojid.exit.thread_crit_edge, label %for.body.i.i.i

if.then.i.i.from_kprojid.exit.thread_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %lower_first.i.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lower_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i = icmp ugt i32 %4, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %count.i.i.i = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i.i, align 4
  %add.i.i.i = add i32 %4, -1
  %sub.i.i.i = add i32 %add.i.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i = icmp ult i32 %sub.i.i.i, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.from_kprojid.exit.thread_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.from_kprojid.exit.thread_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %lower_first.i.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %lower_first.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lower_first.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %8, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1

for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge:       ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %count.i.i.i.1 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %count.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i.i.1, align 4
  %add.i.i.i.1 = add i32 %8, -1
  %sub.i.i.i.1 = add i32 %add.i.i.i.1, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.1, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.1 = icmp ult i32 %sub.i.i.i.1, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.1, label %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge:  ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.from_kprojid.exit.thread_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.from_kprojid.exit.thread_crit_edge: ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %lower_first.i.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %lower_first.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lower_first.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.2 = icmp ugt i32 %12, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.2, label %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2

for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge:       ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %count.i.i.i.2 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %count.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i.i.i.2, align 4
  %add.i.i.i.2 = add i32 %12, -1
  %sub.i.i.i.2 = add i32 %add.i.i.i.2, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.2, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.2 = icmp ult i32 %sub.i.i.i.2, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.2, label %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge:  ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %exitcond.not.i.i.i.2 = icmp eq i32 %1, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.from_kprojid.exit.thread_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.from_kprojid.exit.thread_crit_edge: ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %lower_first.i.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.3 = icmp ugt i32 %16, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.3, label %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3

for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge:       ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %count.i.i.i.3 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %count.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.i.3, align 4
  %add.i.i.i.3 = add i32 %16, -1
  %sub.i.i.i.3 = add i32 %add.i.i.i.3, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.3, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.3 = icmp ult i32 %sub.i.i.i.3, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.3, label %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge:  ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

for.inc.i.i.i.3:                                  ; preds = %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %exitcond.not.i.i.i.3 = icmp eq i32 %1, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.from_kprojid.exit.thread_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.from_kprojid.exit.thread_crit_edge: ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %lower_first.i.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp2.not.i.i.i.4 = icmp ugt i32 %20, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp2.not.i.i.i.4, label %for.body.i.i.i.4.from_kprojid.exit.thread_crit_edge, label %land.lhs.true.i.i.i.4

for.body.i.i.i.4.from_kprojid.exit.thread_crit_edge: ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %count.i.i.i.4 = getelementptr %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %count.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.i.4, align 4
  %add.i.i.i.4 = add i32 %20, -1
  %sub.i.i.i.4 = add i32 %add.i.i.i.4, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.4, i32 %projid.coerce.fca.0.extract.i.i)
  %cmp3.not.i.i.i.4 = icmp ult i32 %sub.i.i.i.4, %projid.coerce.fca.0.extract.i.i
  br i1 %cmp3.not.i.i.i.4, label %land.lhs.true.i.i.i.4.from_kprojid.exit.thread_crit_edge, label %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.4.from_kprojid.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

cleanup.split.loop.exit15.i.i.i:                  ; preds = %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge
  %idx.018.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %2, i32 0, i32 %idx.018.i.i.i.lcssa
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %23 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 33554431, ptr %key.i.i.i, align 4
  %count.i17.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %count.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %count.i17.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %projid.coerce.fca.0.extract.i.i, ptr %id1.i.i.i, align 4
  %reverse.i.i.i = getelementptr inbounds %struct.user_namespace, ptr %targ, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reverse.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %27, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %cleanup.split.loop.exit15.i.i.i
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %arrayidx.le.i.i.i, %cleanup.split.loop.exit15.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.from_kprojid.exit.thread_crit_edge, label %from_kprojid.exit

if.end.i.i.from_kprojid.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

from_kprojid.exit:                                ; preds = %if.end.i.i
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lower_first.i.i, align 4
  %sub.i.i = sub i32 %projid.coerce.fca.0.extract.i.i, %29
  %30 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %extent.0.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i.i)
  %cmp = icmp eq i32 %add.i.i, -1
  br i1 %cmp, label %from_kprojid.exit.from_kprojid.exit.thread_crit_edge, label %from_kprojid.exit._crit_edge

from_kprojid.exit._crit_edge:                     ; preds = %from_kprojid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %32

from_kprojid.exit.from_kprojid.exit.thread_crit_edge: ; preds = %from_kprojid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit.thread

from_kprojid.exit.thread:                         ; preds = %from_kprojid.exit.from_kprojid.exit.thread_crit_edge, %if.end.i.i.from_kprojid.exit.thread_crit_edge, %land.lhs.true.i.i.i.4.from_kprojid.exit.thread_crit_edge, %for.body.i.i.i.4.from_kprojid.exit.thread_crit_edge, %for.inc.i.i.i.3.from_kprojid.exit.thread_crit_edge, %for.inc.i.i.i.2.from_kprojid.exit.thread_crit_edge, %for.inc.i.i.i.1.from_kprojid.exit.thread_crit_edge, %for.inc.i.i.i.from_kprojid.exit.thread_crit_edge, %if.then.i.i.from_kprojid.exit.thread_crit_edge
  br label %32

32:                                               ; preds = %from_kprojid.exit.thread, %from_kprojid.exit._crit_edge
  %33 = phi i32 [ 65534, %from_kprojid.exit.thread ], [ %add.i.i, %from_kprojid.exit._crit_edge ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uid_m_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !106
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv.i)
  %cmp.not.i = icmp slt i64 %3, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.m_start.exit_crit_edge

entry.m_start.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %m_start.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp5.i = icmp ult i32 %5, 6
  %6 = getelementptr inbounds %struct.uid_gid_map, ptr %1, i32 0, i32 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom.i = trunc i64 %3 to i32
  %arrayidx.i = getelementptr [5 x %struct.uid_gid_extent], ptr %6, i32 0, i32 %idxprom.i
  br label %m_start.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %idxprom9.i = trunc i64 %3 to i32
  %arrayidx10.i = getelementptr %struct.uid_gid_extent, ptr %8, i32 %idxprom9.i
  br label %m_start.exit

m_start.exit:                                     ; preds = %if.end8.i, %if.then7.i, %entry.m_start.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then7.i ], [ %arrayidx10.i, %if.end8.i ], [ null, %entry.m_start.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @m_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @m_next(ptr noundef %seq, ptr nocapture noundef readnone %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %op = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 8
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %op, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr %5(ptr noundef %seq, ptr noundef %pos) #15
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uid_m_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %cmp = icmp eq ptr %7, %1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parent = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not, ptr %1, ptr %9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %lower_ns.0 = phi ptr [ %7, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %lower_first = getelementptr inbounds %struct.uid_gid_extent, ptr %v, i32 0, i32 1
  %10 = ptrtoint ptr %lower_first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lower_first, align 4
  %12 = ptrtoint ptr %lower_ns.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lower_ns.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  %14 = getelementptr inbounds %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17.not.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp17.not.i.i.i, label %if.then.i.i.from_kuid.exit_crit_edge, label %for.body.i.i.i

if.then.i.i.from_kuid.exit_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %lower_first.i.i.i = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp2.not.i.i.i = icmp ugt i32 %16, %11
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %count.i.i.i = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.i, align 4
  %add.i.i.i = add i32 %16, -1
  %sub.i.i.i = add i32 %add.i.i.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %11)
  %cmp3.not.i.i.i = icmp ult i32 %sub.i.i.i, %11
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %exitcond.not.i.i.i = icmp eq i32 %13, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.from_kuid.exit_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.from_kuid.exit_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %lower_first.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %11)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %20, %11
  br i1 %cmp2.not.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1

for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge:       ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %count.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %count.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.i.1, align 4
  %add.i.i.i.1 = add i32 %20, -1
  %sub.i.i.i.1 = add i32 %add.i.i.i.1, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.1, i32 %11)
  %cmp3.not.i.i.i.1 = icmp ult i32 %sub.i.i.i.1, %11
  br i1 %cmp3.not.i.i.i.1, label %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge:  ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %exitcond.not.i.i.i.1 = icmp eq i32 %13, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.from_kuid.exit_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.from_kuid.exit_crit_edge:         ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %lower_first.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %lower_first.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lower_first.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %11)
  %cmp2.not.i.i.i.2 = icmp ugt i32 %24, %11
  br i1 %cmp2.not.i.i.i.2, label %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2

for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge:       ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %count.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %count.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i.i.2, align 4
  %add.i.i.i.2 = add i32 %24, -1
  %sub.i.i.i.2 = add i32 %add.i.i.i.2, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.2, i32 %11)
  %cmp3.not.i.i.i.2 = icmp ult i32 %sub.i.i.i.2, %11
  br i1 %cmp3.not.i.i.i.2, label %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge:  ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %exitcond.not.i.i.i.2 = icmp eq i32 %13, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.from_kuid.exit_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.from_kuid.exit_crit_edge:         ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %lower_first.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %lower_first.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lower_first.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %11)
  %cmp2.not.i.i.i.3 = icmp ugt i32 %28, %11
  br i1 %cmp2.not.i.i.i.3, label %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3

for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge:       ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %count.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %count.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i.i.i.3, align 4
  %add.i.i.i.3 = add i32 %28, -1
  %sub.i.i.i.3 = add i32 %add.i.i.i.3, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.3, i32 %11)
  %cmp3.not.i.i.i.3 = icmp ult i32 %sub.i.i.i.3, %11
  br i1 %cmp3.not.i.i.i.3, label %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge:  ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

for.inc.i.i.i.3:                                  ; preds = %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %exitcond.not.i.i.i.3 = icmp eq i32 %13, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.from_kuid.exit_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.from_kuid.exit_crit_edge:         ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %lower_first.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %lower_first.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_first.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %11)
  %cmp2.not.i.i.i.4 = icmp ugt i32 %32, %11
  br i1 %cmp2.not.i.i.i.4, label %for.body.i.i.i.4.from_kuid.exit_crit_edge, label %land.lhs.true.i.i.i.4

for.body.i.i.i.4.from_kuid.exit_crit_edge:        ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %count.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %count.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i.i.i.4, align 4
  %add.i.i.i.4 = add i32 %32, -1
  %sub.i.i.i.4 = add i32 %add.i.i.i.4, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.4, i32 %11)
  %cmp3.not.i.i.i.4 = icmp ult i32 %sub.i.i.i.4, %11
  br i1 %cmp3.not.i.i.i.4, label %land.lhs.true.i.i.i.4.from_kuid.exit_crit_edge, label %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.4.from_kuid.exit_crit_edge:   ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

cleanup.split.loop.exit15.i.i.i:                  ; preds = %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge
  %idx.018.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %14, i32 0, i32 %idx.018.i.i.i.lcssa
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %35 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 33554431, ptr %key.i.i.i, align 4
  %count.i17.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %count.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %count.i17.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %11, ptr %id1.i.i.i, align 4
  %reverse.i.i.i = getelementptr inbounds %struct.uid_gid_map, ptr %lower_ns.0, i32 0, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reverse.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %39, i32 noundef %13, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %cleanup.split.loop.exit15.i.i.i
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %arrayidx.le.i.i.i, %cleanup.split.loop.exit15.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.from_kuid.exit_crit_edge, label %if.then5.i.i

if.end.i.i.from_kuid.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kuid.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lower_first.i.i, align 4
  %sub.i.i = sub i32 %11, %41
  %42 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %extent.0.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %43
  br label %from_kuid.exit

from_kuid.exit:                                   ; preds = %if.then5.i.i, %if.end.i.i.from_kuid.exit_crit_edge, %land.lhs.true.i.i.i.4.from_kuid.exit_crit_edge, %for.body.i.i.i.4.from_kuid.exit_crit_edge, %for.inc.i.i.i.3.from_kuid.exit_crit_edge, %for.inc.i.i.i.2.from_kuid.exit_crit_edge, %for.inc.i.i.i.1.from_kuid.exit_crit_edge, %for.inc.i.i.i.from_kuid.exit_crit_edge, %if.then.i.i.from_kuid.exit_crit_edge
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.from_kuid.exit_crit_edge ], [ -1, %if.then.i.i.from_kuid.exit_crit_edge ], [ -1, %for.body.i.i.i.4.from_kuid.exit_crit_edge ], [ -1, %land.lhs.true.i.i.i.4.from_kuid.exit_crit_edge ], [ -1, %for.inc.i.i.i.3.from_kuid.exit_crit_edge ], [ -1, %for.inc.i.i.i.2.from_kuid.exit_crit_edge ], [ -1, %for.inc.i.i.i.1.from_kuid.exit_crit_edge ], [ -1, %for.inc.i.i.i.from_kuid.exit_crit_edge ]
  %44 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v, align 4
  %count = getelementptr inbounds %struct.uid_gid_extent, ptr %v, i32 0, i32 2
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %45, i32 noundef %id.addr.0.i.i, i32 noundef %47) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gid_m_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %4 = ptrtoint ptr %gid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gid_map, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !106
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv.i)
  %cmp.not.i = icmp slt i64 %3, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.m_start.exit_crit_edge

entry.m_start.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %m_start.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp5.i = icmp ult i32 %5, 6
  %6 = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 1, i32 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom.i = trunc i64 %3 to i32
  %arrayidx.i = getelementptr [5 x %struct.uid_gid_extent], ptr %6, i32 0, i32 %idxprom.i
  br label %m_start.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %idxprom9.i = trunc i64 %3 to i32
  %arrayidx10.i = getelementptr %struct.uid_gid_extent, ptr %8, i32 %idxprom9.i
  br label %m_start.exit

m_start.exit:                                     ; preds = %if.end8.i, %if.then7.i, %entry.m_start.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then7.i ], [ %arrayidx10.i, %if.end8.i ], [ null, %entry.m_start.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gid_m_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %cmp = icmp eq ptr %7, %1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parent = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not, ptr %1, ptr %9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %lower_ns.0 = phi ptr [ %7, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %lower_first = getelementptr inbounds %struct.uid_gid_extent, ptr %v, i32 0, i32 1
  %10 = ptrtoint ptr %lower_first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lower_first, align 4
  %gid_map.i = getelementptr inbounds %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1
  %12 = ptrtoint ptr %gid_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gid_map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  %14 = getelementptr inbounds %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17.not.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp17.not.i.i.i, label %if.then.i.i.from_kgid.exit_crit_edge, label %for.body.i.i.i

if.then.i.i.from_kgid.exit_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %lower_first.i.i.i = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp2.not.i.i.i = icmp ugt i32 %16, %11
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %count.i.i.i = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.i, align 4
  %add.i.i.i = add i32 %16, -1
  %sub.i.i.i = add i32 %add.i.i.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %11)
  %cmp3.not.i.i.i = icmp ult i32 %sub.i.i.i, %11
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %exitcond.not.i.i.i = icmp eq i32 %13, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.from_kgid.exit_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.from_kgid.exit_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %lower_first.i.i.i.1 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %11)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %20, %11
  br i1 %cmp2.not.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1

for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge:       ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %count.i.i.i.1 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %count.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.i.1, align 4
  %add.i.i.i.1 = add i32 %20, -1
  %sub.i.i.i.1 = add i32 %add.i.i.i.1, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.1, i32 %11)
  %cmp3.not.i.i.i.1 = icmp ult i32 %sub.i.i.i.1, %11
  br i1 %cmp3.not.i.i.i.1, label %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge:  ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %exitcond.not.i.i.i.1 = icmp eq i32 %13, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.from_kgid.exit_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.from_kgid.exit_crit_edge:         ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %lower_first.i.i.i.2 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %lower_first.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lower_first.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %11)
  %cmp2.not.i.i.i.2 = icmp ugt i32 %24, %11
  br i1 %cmp2.not.i.i.i.2, label %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2

for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge:       ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %count.i.i.i.2 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %count.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i.i.2, align 4
  %add.i.i.i.2 = add i32 %24, -1
  %sub.i.i.i.2 = add i32 %add.i.i.i.2, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.2, i32 %11)
  %cmp3.not.i.i.i.2 = icmp ult i32 %sub.i.i.i.2, %11
  br i1 %cmp3.not.i.i.i.2, label %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge:  ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %exitcond.not.i.i.i.2 = icmp eq i32 %13, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.from_kgid.exit_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.from_kgid.exit_crit_edge:         ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %lower_first.i.i.i.3 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %lower_first.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lower_first.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %11)
  %cmp2.not.i.i.i.3 = icmp ugt i32 %28, %11
  br i1 %cmp2.not.i.i.i.3, label %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3

for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge:       ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %count.i.i.i.3 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %count.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i.i.i.3, align 4
  %add.i.i.i.3 = add i32 %28, -1
  %sub.i.i.i.3 = add i32 %add.i.i.i.3, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.3, i32 %11)
  %cmp3.not.i.i.i.3 = icmp ult i32 %sub.i.i.i.3, %11
  br i1 %cmp3.not.i.i.i.3, label %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge:  ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

for.inc.i.i.i.3:                                  ; preds = %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %exitcond.not.i.i.i.3 = icmp eq i32 %13, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.from_kgid.exit_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.from_kgid.exit_crit_edge:         ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %lower_first.i.i.i.4 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %lower_first.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_first.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %11)
  %cmp2.not.i.i.i.4 = icmp ugt i32 %32, %11
  br i1 %cmp2.not.i.i.i.4, label %for.body.i.i.i.4.from_kgid.exit_crit_edge, label %land.lhs.true.i.i.i.4

for.body.i.i.i.4.from_kgid.exit_crit_edge:        ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %count.i.i.i.4 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %count.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i.i.i.4, align 4
  %add.i.i.i.4 = add i32 %32, -1
  %sub.i.i.i.4 = add i32 %add.i.i.i.4, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.4, i32 %11)
  %cmp3.not.i.i.i.4 = icmp ult i32 %sub.i.i.i.4, %11
  br i1 %cmp3.not.i.i.i.4, label %land.lhs.true.i.i.i.4.from_kgid.exit_crit_edge, label %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.4.from_kgid.exit_crit_edge:   ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

cleanup.split.loop.exit15.i.i.i:                  ; preds = %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge
  %idx.018.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %14, i32 0, i32 %idx.018.i.i.i.lcssa
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %35 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 33554431, ptr %key.i.i.i, align 4
  %count.i17.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %count.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %count.i17.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %11, ptr %id1.i.i.i, align 4
  %reverse.i.i.i = getelementptr inbounds %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reverse.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %39, i32 noundef %13, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %cleanup.split.loop.exit15.i.i.i
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %arrayidx.le.i.i.i, %cleanup.split.loop.exit15.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.from_kgid.exit_crit_edge, label %if.then5.i.i

if.end.i.i.from_kgid.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kgid.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lower_first.i.i, align 4
  %sub.i.i = sub i32 %11, %41
  %42 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %extent.0.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %43
  br label %from_kgid.exit

from_kgid.exit:                                   ; preds = %if.then5.i.i, %if.end.i.i.from_kgid.exit_crit_edge, %land.lhs.true.i.i.i.4.from_kgid.exit_crit_edge, %for.body.i.i.i.4.from_kgid.exit_crit_edge, %for.inc.i.i.i.3.from_kgid.exit_crit_edge, %for.inc.i.i.i.2.from_kgid.exit_crit_edge, %for.inc.i.i.i.1.from_kgid.exit_crit_edge, %for.inc.i.i.i.from_kgid.exit_crit_edge, %if.then.i.i.from_kgid.exit_crit_edge
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.from_kgid.exit_crit_edge ], [ -1, %if.then.i.i.from_kgid.exit_crit_edge ], [ -1, %for.body.i.i.i.4.from_kgid.exit_crit_edge ], [ -1, %land.lhs.true.i.i.i.4.from_kgid.exit_crit_edge ], [ -1, %for.inc.i.i.i.3.from_kgid.exit_crit_edge ], [ -1, %for.inc.i.i.i.2.from_kgid.exit_crit_edge ], [ -1, %for.inc.i.i.i.1.from_kgid.exit_crit_edge ], [ -1, %for.inc.i.i.i.from_kgid.exit_crit_edge ]
  %44 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v, align 4
  %count = getelementptr inbounds %struct.uid_gid_extent, ptr %v, i32 0, i32 2
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %45, i32 noundef %id.addr.0.i.i, i32 noundef %47) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @projid_m_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %projid_map = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %4 = ptrtoint ptr %projid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %projid_map, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !106
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv.i)
  %cmp.not.i = icmp slt i64 %3, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.m_start.exit_crit_edge

entry.m_start.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %m_start.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp5.i = icmp ult i32 %5, 6
  %6 = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 2, i32 1
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %idxprom.i = trunc i64 %3 to i32
  %arrayidx.i = getelementptr [5 x %struct.uid_gid_extent], ptr %6, i32 0, i32 %idxprom.i
  br label %m_start.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %idxprom9.i = trunc i64 %3 to i32
  %arrayidx10.i = getelementptr %struct.uid_gid_extent, ptr %8, i32 %idxprom9.i
  br label %m_start.exit

m_start.exit:                                     ; preds = %if.end8.i, %if.then7.i, %entry.m_start.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then7.i ], [ %arrayidx10.i, %if.end8.i ], [ null, %entry.m_start.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @projid_m_show(ptr noundef %seq, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  %key.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns.i, align 4
  %cmp = icmp eq ptr %7, %1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %parent = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not, ptr %1, ptr %9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %lower_ns.0 = phi ptr [ %7, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %lower_first = getelementptr inbounds %struct.uid_gid_extent, ptr %v, i32 0, i32 1
  %10 = ptrtoint ptr %lower_first to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lower_first, align 4
  %projid_map.i = getelementptr inbounds %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2
  %12 = ptrtoint ptr %projid_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %projid_map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !96
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end
  %14 = getelementptr inbounds %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp17.not.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp17.not.i.i.i, label %if.then.i.i.from_kprojid.exit_crit_edge, label %for.body.i.i.i

if.then.i.i.from_kprojid.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

for.body.i.i.i:                                   ; preds = %if.then.i.i
  %lower_first.i.i.i = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lower_first.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %11)
  %cmp2.not.i.i.i = icmp ugt i32 %16, %11
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %count.i.i.i = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i.i, align 4
  %add.i.i.i = add i32 %16, -1
  %sub.i.i.i = add i32 %add.i.i.i, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %11)
  %cmp3.not.i.i.i = icmp ult i32 %sub.i.i.i, %11
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %exitcond.not.i.i.i = icmp eq i32 %13, 1
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.from_kprojid.exit_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.from_kprojid.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %lower_first.i.i.i.1 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %lower_first.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lower_first.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %11)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %20, %11
  br i1 %cmp2.not.i.i.i.1, label %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1

for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge:       ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

land.lhs.true.i.i.i.1:                            ; preds = %for.body.i.i.i.1
  %count.i.i.i.1 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %count.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.i.i.i.1, align 4
  %add.i.i.i.1 = add i32 %20, -1
  %sub.i.i.i.1 = add i32 %add.i.i.i.1, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.1, i32 %11)
  %cmp3.not.i.i.i.1 = icmp ult i32 %sub.i.i.i.1, %11
  br i1 %cmp3.not.i.i.i.1, label %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge:  ; preds = %land.lhs.true.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %land.lhs.true.i.i.i.1.for.inc.i.i.i.1_crit_edge, %for.body.i.i.i.1.for.inc.i.i.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %exitcond.not.i.i.i.1 = icmp eq i32 %13, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.from_kprojid.exit_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.from_kprojid.exit_crit_edge:      ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %lower_first.i.i.i.2 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %lower_first.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lower_first.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %11)
  %cmp2.not.i.i.i.2 = icmp ugt i32 %24, %11
  br i1 %cmp2.not.i.i.i.2, label %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2

for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge:       ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

land.lhs.true.i.i.i.2:                            ; preds = %for.body.i.i.i.2
  %count.i.i.i.2 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %count.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i.i.2, align 4
  %add.i.i.i.2 = add i32 %24, -1
  %sub.i.i.i.2 = add i32 %add.i.i.i.2, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.2, i32 %11)
  %cmp3.not.i.i.i.2 = icmp ult i32 %sub.i.i.i.2, %11
  br i1 %cmp3.not.i.i.i.2, label %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, label %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge:  ; preds = %land.lhs.true.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %land.lhs.true.i.i.i.2.for.inc.i.i.i.2_crit_edge, %for.body.i.i.i.2.for.inc.i.i.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %exitcond.not.i.i.i.2 = icmp eq i32 %13, 3
  br i1 %exitcond.not.i.i.i.2, label %for.inc.i.i.i.2.from_kprojid.exit_crit_edge, label %for.body.i.i.i.3

for.inc.i.i.i.2.from_kprojid.exit_crit_edge:      ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

for.body.i.i.i.3:                                 ; preds = %for.inc.i.i.i.2
  %lower_first.i.i.i.3 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %lower_first.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lower_first.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %11)
  %cmp2.not.i.i.i.3 = icmp ugt i32 %28, %11
  br i1 %cmp2.not.i.i.i.3, label %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3

for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge:       ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

land.lhs.true.i.i.i.3:                            ; preds = %for.body.i.i.i.3
  %count.i.i.i.3 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %count.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i.i.i.3, align 4
  %add.i.i.i.3 = add i32 %28, -1
  %sub.i.i.i.3 = add i32 %add.i.i.i.3, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.3, i32 %11)
  %cmp3.not.i.i.i.3 = icmp ult i32 %sub.i.i.i.3, %11
  br i1 %cmp3.not.i.i.i.3, label %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, label %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge:  ; preds = %land.lhs.true.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i.i.3

for.inc.i.i.i.3:                                  ; preds = %land.lhs.true.i.i.i.3.for.inc.i.i.i.3_crit_edge, %for.body.i.i.i.3.for.inc.i.i.i.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %exitcond.not.i.i.i.3 = icmp eq i32 %13, 4
  br i1 %exitcond.not.i.i.i.3, label %for.inc.i.i.i.3.from_kprojid.exit_crit_edge, label %for.body.i.i.i.4

for.inc.i.i.i.3.from_kprojid.exit_crit_edge:      ; preds = %for.inc.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

for.body.i.i.i.4:                                 ; preds = %for.inc.i.i.i.3
  %lower_first.i.i.i.4 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %lower_first.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lower_first.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %11)
  %cmp2.not.i.i.i.4 = icmp ugt i32 %32, %11
  br i1 %cmp2.not.i.i.i.4, label %for.body.i.i.i.4.from_kprojid.exit_crit_edge, label %land.lhs.true.i.i.i.4

for.body.i.i.i.4.from_kprojid.exit_crit_edge:     ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

land.lhs.true.i.i.i.4:                            ; preds = %for.body.i.i.i.4
  %count.i.i.i.4 = getelementptr %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %count.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i.i.i.4, align 4
  %add.i.i.i.4 = add i32 %32, -1
  %sub.i.i.i.4 = add i32 %add.i.i.i.4, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i.4, i32 %11)
  %cmp3.not.i.i.i.4 = icmp ult i32 %sub.i.i.i.4, %11
  br i1 %cmp3.not.i.i.i.4, label %land.lhs.true.i.i.i.4.from_kprojid.exit_crit_edge, label %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge

land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.split.loop.exit15.i.i.i

land.lhs.true.i.i.i.4.from_kprojid.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

cleanup.split.loop.exit15.i.i.i:                  ; preds = %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge
  %idx.018.i.i.i.lcssa = phi i32 [ 0, %land.lhs.true.i.i.i.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 1, %land.lhs.true.i.i.i.1.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.i.2.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 3, %land.lhs.true.i.i.i.3.cleanup.split.loop.exit15.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.4.cleanup.split.loop.exit15.i.i.i_crit_edge ]
  %arrayidx.le.i.i.i = getelementptr [5 x %struct.uid_gid_extent], ptr %14, i32 0, i32 %idx.018.i.i.i.lcssa
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i) #15
  %35 = ptrtoint ptr %key.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 33554431, ptr %key.i.i.i, align 4
  %count.i17.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %count.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %count.i17.i.i, align 4
  %id1.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %11, ptr %id1.i.i.i, align 4
  %reverse.i.i.i = getelementptr inbounds %struct.user_namespace, ptr %lower_ns.0, i32 0, i32 2, i32 1, i32 0, i32 0, i32 1
  %38 = ptrtoint ptr %reverse.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reverse.i.i.i, align 4
  %call.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i, ptr noundef %39, i32 noundef %13, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %cleanup.split.loop.exit15.i.i.i
  %extent.0.i.i = phi ptr [ %call.i.i.i, %if.else.i.i ], [ %arrayidx.le.i.i.i, %cleanup.split.loop.exit15.i.i.i ]
  %tobool.not.i.i = icmp eq ptr %extent.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.from_kprojid.exit_crit_edge, label %if.then5.i.i

if.end.i.i.from_kprojid.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %from_kprojid.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %lower_first.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %lower_first.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lower_first.i.i, align 4
  %sub.i.i = sub i32 %11, %41
  %42 = ptrtoint ptr %extent.0.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %extent.0.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %43
  br label %from_kprojid.exit

from_kprojid.exit:                                ; preds = %if.then5.i.i, %if.end.i.i.from_kprojid.exit_crit_edge, %land.lhs.true.i.i.i.4.from_kprojid.exit_crit_edge, %for.body.i.i.i.4.from_kprojid.exit_crit_edge, %for.inc.i.i.i.3.from_kprojid.exit_crit_edge, %for.inc.i.i.i.2.from_kprojid.exit_crit_edge, %for.inc.i.i.i.1.from_kprojid.exit_crit_edge, %for.inc.i.i.i.from_kprojid.exit_crit_edge, %if.then.i.i.from_kprojid.exit_crit_edge
  %id.addr.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ -1, %if.end.i.i.from_kprojid.exit_crit_edge ], [ -1, %if.then.i.i.from_kprojid.exit_crit_edge ], [ -1, %for.body.i.i.i.4.from_kprojid.exit_crit_edge ], [ -1, %land.lhs.true.i.i.i.4.from_kprojid.exit_crit_edge ], [ -1, %for.inc.i.i.i.3.from_kprojid.exit_crit_edge ], [ -1, %for.inc.i.i.i.2.from_kprojid.exit_crit_edge ], [ -1, %for.inc.i.i.i.1.from_kprojid.exit_crit_edge ], [ -1, %for.inc.i.i.i.from_kprojid.exit_crit_edge ]
  %44 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %v, align 4
  %count = getelementptr inbounds %struct.uid_gid_extent, ptr %v, i32 0, i32 2
  %46 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %count, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %45, i32 noundef %id.addr.0.i.i, i32 noundef %47) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_uid_map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %parent = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %file.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %cmp.not = icmp eq ptr %11, %3
  %cmp2.not = icmp eq ptr %11, %5
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call fastcc i32 @map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %ppos, i32 noundef 7, ptr noundef %3, ptr noundef nonnull %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos, i32 noundef %cap_setid, ptr nocapture noundef %map, ptr noundef readonly %parent_map) unnamed_addr #0 align 64 {
entry:
  %key.i.i = alloca %struct.idmap_key, align 4
  %new_map = alloca %struct.uid_gid_map, align 4
  %pos = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %new_map) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #15
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %pos, align 4, !annotation !107
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp.not = icmp ne i64 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %count)
  %cmp1 = icmp ugt i32 %count, 4095
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup169_crit_edge, label %if.end

entry.cleanup169_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup169

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user_nul(ptr noundef %buf, i32 noundef %count) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %call to i32
  br label %cleanup169

if.end5:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @userns_state_mutex, i32 noundef 0) #15
  %8 = call ptr @memset(ptr %new_map, i32 0, i32 64)
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.not = icmp eq i32 %10, 0
  br i1 %cmp6.not, label %if.end8, label %if.end5.out.thread_crit_edge

if.end5.out.thread_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cap_setid)
  %cmp9 = icmp sgt i32 %cap_setid, -1
  br i1 %cmp9, label %land.lhs.true11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true11:                                  ; preds = %if.end8
  %call12 = tail call zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef %3, i32 noundef 21) #15
  br i1 %call12, label %land.lhs.true11.if.end14_crit_edge, label %land.lhs.true11.out.thread_crit_edge

land.lhs.true11.out.thread_crit_edge:             ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %pos, align 4
  %tobool.not257 = icmp eq ptr %call, null
  br i1 %tobool.not257, label %for.endthread-pre-split, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end14
  %12 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1
  %reverse.i = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1, i32 0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %insert_extent.exit.for.body_crit_edge, %for.body.lr.ph
  %storemerge258 = phi ptr [ %call, %for.body.lr.ph ], [ %next_line.0, %insert_extent.exit.for.body_crit_edge ]
  %call15 = call ptr @strchr(ptr noundef nonnull %storemerge258, i32 noundef 10)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %for.body.if.end22_crit_edge, label %if.then17

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call15, align 1
  %incdec.ptr = getelementptr i8, ptr %call15, i32 1
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp18 = icmp eq i8 %15, 0
  %spec.store.select = select i1 %cmp18, ptr null, ptr %incdec.ptr
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %for.body.if.end22_crit_edge
  %next_line.0 = phi ptr [ %spec.store.select, %if.then17 ], [ null, %for.body.if.end22_crit_edge ]
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pos, align 4
  %call23 = call ptr @skip_spaces(ptr noundef %17) #15
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23, ptr %pos, align 4
  %call24 = call i32 @simple_strtoul(ptr noundef %call23, ptr noundef nonnull %pos, i32 noundef 10) #15
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pos, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv25 = zext i8 %22 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv25
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp27.not = icmp eq i8 %25, 0
  br i1 %cmp27.not, label %if.end22.out.thread_crit_edge, label %if.end30

if.end22.out.thread_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end30:                                         ; preds = %if.end22
  %call31 = call ptr @skip_spaces(ptr noundef %20) #15
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %pos, align 4
  %call32 = call i32 @simple_strtoul(ptr noundef %call31, ptr noundef nonnull %pos, i32 noundef 10) #15
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pos, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv33 = zext i8 %30 to i32
  %arrayidx34 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv33
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx34, align 1
  %33 = and i8 %32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp37.not = icmp eq i8 %33, 0
  br i1 %cmp37.not, label %if.end30.out.thread_crit_edge, label %if.end40

if.end30.out.thread_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end40:                                         ; preds = %if.end30
  %call41 = call ptr @skip_spaces(ptr noundef %28) #15
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call41, ptr %pos, align 4
  %call42 = call i32 @simple_strtoul(ptr noundef %call41, ptr noundef nonnull %pos, i32 noundef 10) #15
  %35 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pos, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool45.not = icmp eq i8 %38, 0
  br i1 %tobool45.not, label %if.end40.if.end54_crit_edge, label %land.lhs.true46

if.end40.if.end54_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

land.lhs.true46:                                  ; preds = %if.end40
  %conv44 = zext i8 %38 to i32
  %arrayidx48 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv44
  %39 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx48, align 1
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp51.not = icmp eq i8 %41, 0
  br i1 %cmp51.not, label %land.lhs.true46.out.thread_crit_edge, label %land.lhs.true46.if.end54_crit_edge

land.lhs.true46.if.end54_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

land.lhs.true46.out.thread_crit_edge:             ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end54:                                         ; preds = %land.lhs.true46.if.end54_crit_edge, %if.end40.if.end54_crit_edge
  %call55 = call ptr @skip_spaces(ptr noundef %36) #15
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call55, ptr %pos, align 4
  %43 = ptrtoint ptr %call55 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call55, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp57.not = icmp ne i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call24)
  %cmp62 = icmp eq i32 %call24, -1
  %or.cond252 = select i1 %cmp57.not, i1 true, i1 %cmp62
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32)
  %cmp66 = icmp eq i32 %call32, -1
  %or.cond253 = select i1 %or.cond252, i1 true, i1 %cmp66
  br i1 %or.cond253, label %if.end54.out.thread_crit_edge, label %if.end69

if.end54.out.thread_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end69:                                         ; preds = %if.end54
  %add = add i32 %call42, %call24
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call24)
  %cmp73.not = icmp ugt i32 %add, %call24
  %add79 = add i32 %call42, %call32
  call void @__sanitizer_cov_trace_cmp4(i32 %add79, i32 %call32)
  %cmp81.not = icmp ugt i32 %add79, %call32
  %or.cond215 = select i1 %cmp73.not, i1 %cmp81.not, i1 false
  br i1 %or.cond215, label %if.end84, label %if.end69.out.thread_crit_edge

if.end69.out.thread_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end84:                                         ; preds = %if.end69
  %add.i = add i32 %call42, -1
  %sub.i = add i32 %add.i, %call24
  %sub4.i = add i32 %add.i, %call32
  %45 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %new_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp50.not.i = icmp eq i32 %46, 0
  br i1 %cmp50.not.i, label %if.end84.if.then7.i_crit_edge, label %for.body.lr.ph.i

if.end84.if.then7.i_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7.i

for.body.lr.ph.i:                                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp6.i = icmp ult i32 %46, 6
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end19.i
  %inc.i = add nuw i32 %idx.051.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %46)
  %cmp.i218 = icmp ult i32 %inc.i, %46
  %exitcond.not.i = icmp eq i32 %inc.i, %46
  br i1 %exitcond.not.i, label %for.cond.i.mappings_overlap.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.i.mappings_overlap.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mappings_overlap.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmp53.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i218, %for.cond.i.for.body.i_crit_edge ]
  %idx.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr [5 x %struct.uid_gid_extent], ptr %12, i32 0, i32 %idx.051.i
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %12, align 4
  %arrayidx7.i = getelementptr %struct.uid_gid_extent, ptr %48, i32 %idx.051.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %prev.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx7.i, %if.else.i ]
  %49 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prev.0.i, align 4
  %count10.i = getelementptr inbounds %struct.uid_gid_extent, ptr %prev.0.i, i32 0, i32 2
  %51 = ptrtoint ptr %count10.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count10.i, align 4
  %add14.i = add i32 %52, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %sub.i)
  %cmp16.not.i = icmp ugt i32 %50, %sub.i
  %sub12.i = add i32 %add14.i, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i, i32 %call24)
  %cmp17.not.i = icmp ult i32 %sub12.i, %call24
  %or.cond56.i = select i1 %cmp16.not.i, i1 true, i1 %cmp17.not.i
  br i1 %or.cond56.i, label %if.end19.i, label %if.end.i.mappings_overlap.exit_crit_edge

if.end.i.mappings_overlap.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mappings_overlap.exit

if.end19.i:                                       ; preds = %if.end.i
  %lower_first9.i = getelementptr inbounds %struct.uid_gid_extent, ptr %prev.0.i, i32 0, i32 1
  %53 = ptrtoint ptr %lower_first9.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lower_first9.i, align 4
  %sub15.i = add i32 %54, %add14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub4.i)
  %cmp20.not.i = icmp ugt i32 %54, %sub4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i, i32 %call32)
  %cmp22.not.i = icmp ult i32 %sub15.i, %call32
  %or.cond.i = select i1 %cmp20.not.i, i1 true, i1 %cmp22.not.i
  br i1 %or.cond.i, label %for.cond.i, label %if.end19.i.mappings_overlap.exit_crit_edge

if.end19.i.mappings_overlap.exit_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mappings_overlap.exit

mappings_overlap.exit:                            ; preds = %if.end19.i.mappings_overlap.exit_crit_edge, %if.end.i.mappings_overlap.exit_crit_edge, %for.cond.i.mappings_overlap.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i218, %for.cond.i.mappings_overlap.exit_crit_edge ], [ %cmp53.i, %if.end19.i.mappings_overlap.exit_crit_edge ], [ %cmp53.i, %if.end.i.mappings_overlap.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %mappings_overlap.exit.out.thread_crit_edge, label %if.end87

mappings_overlap.exit.out.thread_crit_edge:       ; preds = %mappings_overlap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end87:                                         ; preds = %mappings_overlap.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 339, i32 %46)
  %cmp90 = icmp ne i32 %46, 339
  %cmp93.not = icmp eq ptr %next_line.0, null
  %or.cond216 = select i1 %cmp90, i1 true, i1 %cmp93.not
  br i1 %or.cond216, label %if.end96, label %if.end87.out.thread_crit_edge

if.end87.out.thread_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end96:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp.i219 = icmp eq i32 %46, 5
  br i1 %cmp.i219, label %if.then.i220, label %if.end96.if.end4.i_crit_edge

if.end96.if.end4.i_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then.i220:                                     ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 4080) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i220.out.thread_crit_edge, label %if.end.i221

if.then.i220.out.thread_crit_edge:                ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end.i221:                                      ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #17
  %56 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %new_map, align 4
  %mul.i = mul i32 %57, 12
  %58 = call ptr @memcpy(ptr %call7.i.i.i, ptr %12, i32 %mul.i)
  %59 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %12, align 4
  %60 = ptrtoint ptr %reverse.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %reverse.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i221, %if.end96.if.end4.i_crit_edge
  %61 = phi i32 [ %57, %if.end.i221 ], [ %46, %if.end96.if.end4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp6.i222 = icmp ult i32 %61, 5
  br i1 %cmp6.i222, label %if.end4.i.if.then7.i_crit_edge, label %if.else.i224

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i.if.then7.i_crit_edge, %if.end84.if.then7.i_crit_edge
  %62 = phi i32 [ %61, %if.end4.i.if.then7.i_crit_edge ], [ 0, %if.end84.if.then7.i_crit_edge ]
  %arrayidx.i223 = getelementptr [5 x %struct.uid_gid_extent], ptr %12, i32 0, i32 %62
  br label %insert_extent.exit

if.else.i224:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %12, align 4
  %arrayidx11.i = getelementptr %struct.uid_gid_extent, ptr %64, i32 %61
  br label %insert_extent.exit

insert_extent.exit:                               ; preds = %if.else.i224, %if.then7.i
  %dest.0.i = phi ptr [ %arrayidx.i223, %if.then7.i ], [ %arrayidx11.i, %if.else.i224 ]
  %65 = ptrtoint ptr %dest.0.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call24, ptr %dest.0.i, align 4
  %extent.sroa.7.0.dest.0.i.sroa_idx = getelementptr inbounds i8, ptr %dest.0.i, i32 4
  %66 = ptrtoint ptr %extent.sroa.7.0.dest.0.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call32, ptr %extent.sroa.7.0.dest.0.i.sroa_idx, align 4
  %extent.sroa.11.0.dest.0.i.sroa_idx = getelementptr inbounds i8, ptr %dest.0.i, i32 8
  %67 = ptrtoint ptr %extent.sroa.11.0.dest.0.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call42, ptr %extent.sroa.11.0.dest.0.i.sroa_idx, align 4
  %68 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %new_map, align 4
  %inc.i225 = add i32 %69, 1
  store i32 %inc.i225, ptr %new_map, align 4
  %70 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %next_line.0, ptr %pos, align 4
  %tobool.not = icmp eq ptr %next_line.0, null
  br i1 %tobool.not, label %insert_extent.exit.for.end_crit_edge, label %insert_extent.exit.for.body_crit_edge

insert_extent.exit.for.body_crit_edge:            ; preds = %insert_extent.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

insert_extent.exit.for.end_crit_edge:             ; preds = %insert_extent.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.endthread-pre-split:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr265 = load i32, ptr %new_map, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %insert_extent.exit.for.end_crit_edge
  %72 = phi i32 [ %.pr265, %for.endthread-pre-split ], [ %inc.i225, %insert_extent.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp103 = icmp eq i32 %72, 0
  br i1 %cmp103, label %for.end.out.thread_crit_edge, label %if.end106

for.end.out.thread_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end106:                                        ; preds = %for.end
  %call107 = call fastcc zeroext i1 @new_idmap_permitted(ptr noundef %file, ptr noundef %3, i32 noundef %cap_setid, ptr noundef nonnull %new_map)
  br i1 %call107, label %for.cond110.preheader, label %if.end106.out.thread_crit_edge

if.end106.out.thread_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.cond110.preheader:                            ; preds = %if.end106
  %73 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %new_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp112259.not = icmp eq i32 %74, 0
  br i1 %cmp112259.not, label %for.cond110.preheader.for.end133_crit_edge, label %for.body114.lr.ph

for.cond110.preheader.for.end133_crit_edge:       ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end133

for.body114.lr.ph:                                ; preds = %for.cond110.preheader
  %75 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1
  %count1.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 2
  %id2.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i, i32 0, i32 1
  %76 = getelementptr inbounds %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1
  %count3.i.i = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 0, i32 2
  %arrayidx.i.i.1 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 1
  %count3.i.i.1 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 1, i32 2
  %arrayidx.i.i.2 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 2
  %count3.i.i.2 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 2, i32 2
  %arrayidx.i.i.3 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 3
  %count3.i.i.3 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 3, i32 2
  %arrayidx.i.i.4 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 4
  %count3.i.i.4 = getelementptr %struct.uid_gid_map, ptr %parent_map, i32 0, i32 1, i32 0, i32 4, i32 2
  br label %for.body114

for.body114:                                      ; preds = %for.inc132.for.body114_crit_edge, %for.body114.lr.ph
  %77 = phi i32 [ %74, %for.body114.lr.ph ], [ %117, %for.inc132.for.body114_crit_edge ]
  %idx.0260 = phi i32 [ 0, %for.body114.lr.ph ], [ %inc, %for.inc132.for.body114_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %77)
  %cmp117 = icmp ult i32 %77, 6
  br i1 %cmp117, label %if.then119, label %if.else

if.then119:                                       ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx120 = getelementptr [5 x %struct.uid_gid_extent], ptr %75, i32 0, i32 %idx.0260
  br label %if.end122

if.else:                                          ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %arrayidx121 = getelementptr %struct.uid_gid_extent, ptr %79, i32 %idx.0260
  br label %if.end122

if.end122:                                        ; preds = %if.else, %if.then119
  %e.0 = phi ptr [ %arrayidx120, %if.then119 ], [ %arrayidx121, %if.else ]
  %lower_first123 = getelementptr inbounds %struct.uid_gid_extent, ptr %e.0, i32 0, i32 1
  %80 = ptrtoint ptr %lower_first123 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %lower_first123, align 4
  %count124 = getelementptr inbounds %struct.uid_gid_extent, ptr %e.0, i32 0, i32 2
  %82 = ptrtoint ptr %count124 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count124, align 4
  %84 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %parent_map, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %85)
  %cmp.i226 = icmp ult i32 %85, 6
  br i1 %cmp.i226, label %if.then.i227, label %if.else.i228

if.then.i227:                                     ; preds = %if.end122
  %add.i.i = add i32 %81, -1
  %sub.i.i = add i32 %add.i.i, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp30.not.i.i = icmp eq i32 %85, 0
  br i1 %cmp30.not.i.i, label %if.then.i227.out.thread_crit_edge, label %for.body.i.i

if.then.i227.out.thread_crit_edge:                ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.cond.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %exitcond.not.i.i = icmp eq i32 %85, 1
  br i1 %exitcond.not.i.i, label %for.cond.i.i.out.thread_crit_edge, label %for.body.i.i.1

for.cond.i.i.out.thread_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.body.i.i.1:                                   ; preds = %for.cond.i.i
  %86 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i.1, align 4
  %88 = ptrtoint ptr %count3.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count3.i.i.1, align 4
  %add4.i.i.1 = add i32 %87, -1
  %sub5.i.i.1 = add i32 %add4.i.i.1, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %81)
  %cmp6.not.i.i.1 = icmp ugt i32 %87, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.1, i32 %81)
  %cmp7.not.i.i.1 = icmp ult i32 %sub5.i.i.1, %81
  %or.cond.i.i.1 = select i1 %cmp6.not.i.i.1, i1 true, i1 %cmp7.not.i.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %87)
  %cmp9.not.i.i.1 = icmp ult i32 %sub.i.i, %87
  %or.cond28.i.i.1 = or i1 %cmp9.not.i.i.1, %or.cond.i.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub5.i.i.1)
  %cmp11.not.i.i.1 = icmp ugt i32 %sub.i.i, %sub5.i.i.1
  %or.cond29.i.i.1 = select i1 %or.cond28.i.i.1, i1 true, i1 %cmp11.not.i.i.1
  br i1 %or.cond29.i.i.1, label %for.cond.i.i.1, label %for.body.i.i.1.if.end.i230_crit_edge

for.body.i.i.1.if.end.i230_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i230

for.cond.i.i.1:                                   ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %exitcond.not.i.i.1 = icmp eq i32 %85, 2
  br i1 %exitcond.not.i.i.1, label %for.cond.i.i.1.out.thread_crit_edge, label %for.body.i.i.2

for.cond.i.i.1.out.thread_crit_edge:              ; preds = %for.cond.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.body.i.i.2:                                   ; preds = %for.cond.i.i.1
  %90 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.i.2, align 4
  %92 = ptrtoint ptr %count3.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %count3.i.i.2, align 4
  %add4.i.i.2 = add i32 %91, -1
  %sub5.i.i.2 = add i32 %add4.i.i.2, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %81)
  %cmp6.not.i.i.2 = icmp ugt i32 %91, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.2, i32 %81)
  %cmp7.not.i.i.2 = icmp ult i32 %sub5.i.i.2, %81
  %or.cond.i.i.2 = select i1 %cmp6.not.i.i.2, i1 true, i1 %cmp7.not.i.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %91)
  %cmp9.not.i.i.2 = icmp ult i32 %sub.i.i, %91
  %or.cond28.i.i.2 = or i1 %cmp9.not.i.i.2, %or.cond.i.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub5.i.i.2)
  %cmp11.not.i.i.2 = icmp ugt i32 %sub.i.i, %sub5.i.i.2
  %or.cond29.i.i.2 = select i1 %or.cond28.i.i.2, i1 true, i1 %cmp11.not.i.i.2
  br i1 %or.cond29.i.i.2, label %for.cond.i.i.2, label %for.body.i.i.2.if.end.i230_crit_edge

for.body.i.i.2.if.end.i230_crit_edge:             ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i230

for.cond.i.i.2:                                   ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %85)
  %exitcond.not.i.i.2 = icmp eq i32 %85, 3
  br i1 %exitcond.not.i.i.2, label %for.cond.i.i.2.out.thread_crit_edge, label %for.body.i.i.3

for.cond.i.i.2.out.thread_crit_edge:              ; preds = %for.cond.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.body.i.i.3:                                   ; preds = %for.cond.i.i.2
  %94 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i.3, align 4
  %96 = ptrtoint ptr %count3.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %count3.i.i.3, align 4
  %add4.i.i.3 = add i32 %95, -1
  %sub5.i.i.3 = add i32 %add4.i.i.3, %97
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %81)
  %cmp6.not.i.i.3 = icmp ugt i32 %95, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.3, i32 %81)
  %cmp7.not.i.i.3 = icmp ult i32 %sub5.i.i.3, %81
  %or.cond.i.i.3 = select i1 %cmp6.not.i.i.3, i1 true, i1 %cmp7.not.i.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %95)
  %cmp9.not.i.i.3 = icmp ult i32 %sub.i.i, %95
  %or.cond28.i.i.3 = or i1 %cmp9.not.i.i.3, %or.cond.i.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub5.i.i.3)
  %cmp11.not.i.i.3 = icmp ugt i32 %sub.i.i, %sub5.i.i.3
  %or.cond29.i.i.3 = select i1 %or.cond28.i.i.3, i1 true, i1 %cmp11.not.i.i.3
  br i1 %or.cond29.i.i.3, label %for.cond.i.i.3, label %for.body.i.i.3.if.end.i230_crit_edge

for.body.i.i.3.if.end.i230_crit_edge:             ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i230

for.cond.i.i.3:                                   ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %exitcond.not.i.i.3 = icmp eq i32 %85, 4
  br i1 %exitcond.not.i.i.3, label %for.cond.i.i.3.out.thread_crit_edge, label %for.body.i.i.4

for.cond.i.i.3.out.thread_crit_edge:              ; preds = %for.cond.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.body.i.i.4:                                   ; preds = %for.cond.i.i.3
  %98 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i.i.4, align 4
  %100 = ptrtoint ptr %count3.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count3.i.i.4, align 4
  %add4.i.i.4 = add i32 %99, -1
  %sub5.i.i.4 = add i32 %add4.i.i.4, %101
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %81)
  %cmp6.not.i.i.4 = icmp ugt i32 %99, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.4, i32 %81)
  %cmp7.not.i.i.4 = icmp ult i32 %sub5.i.i.4, %81
  %or.cond.i.i.4 = select i1 %cmp6.not.i.i.4, i1 true, i1 %cmp7.not.i.i.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %99)
  %cmp9.not.i.i.4 = icmp ult i32 %sub.i.i, %99
  %or.cond28.i.i.4 = or i1 %cmp9.not.i.i.4, %or.cond.i.i.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub5.i.i.4)
  %cmp11.not.i.i.4 = icmp ugt i32 %sub.i.i, %sub5.i.i.4
  %or.cond29.i.i.4 = select i1 %or.cond28.i.i.4, i1 true, i1 %cmp11.not.i.i.4
  br i1 %or.cond29.i.i.4, label %for.body.i.i.4.out.thread_crit_edge, label %for.body.i.i.4.if.end.i230_crit_edge

for.body.i.i.4.if.end.i230_crit_edge:             ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i230

for.body.i.i.4.out.thread_crit_edge:              ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.body.i.i:                                     ; preds = %if.then.i227
  %102 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %76, align 4
  %104 = ptrtoint ptr %count3.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %count3.i.i, align 4
  %add4.i.i = add i32 %103, -1
  %sub5.i.i = add i32 %add4.i.i, %105
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %81)
  %cmp6.not.i.i = icmp ugt i32 %103, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i, i32 %81)
  %cmp7.not.i.i = icmp ult i32 %sub5.i.i, %81
  %or.cond.i.i = select i1 %cmp6.not.i.i, i1 true, i1 %cmp7.not.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %103)
  %cmp9.not.i.i = icmp ult i32 %sub.i.i, %103
  %or.cond28.i.i = or i1 %cmp9.not.i.i, %or.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %sub5.i.i)
  %cmp11.not.i.i = icmp ugt i32 %sub.i.i, %sub5.i.i
  %or.cond29.i.i = select i1 %or.cond28.i.i, i1 true, i1 %cmp11.not.i.i
  br i1 %or.cond29.i.i, label %for.cond.i.i, label %for.body.i.i.if.end.i230_crit_edge

for.body.i.i.if.end.i230_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i230

if.else.i228:                                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i) #15
  %106 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 16777215, ptr %key.i.i, align 4
  %107 = ptrtoint ptr %count1.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %83, ptr %count1.i.i, align 4
  %108 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %81, ptr %id2.i.i, align 4
  %109 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %76, align 4
  %call.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i, ptr noundef %110, i32 noundef %85, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i) #15
  br label %if.end.i230

if.end.i230:                                      ; preds = %if.else.i228, %for.body.i.i.if.end.i230_crit_edge, %for.body.i.i.4.if.end.i230_crit_edge, %for.body.i.i.3.if.end.i230_crit_edge, %for.body.i.i.2.if.end.i230_crit_edge, %for.body.i.i.1.if.end.i230_crit_edge
  %extent.0.i = phi ptr [ %call.i.i, %if.else.i228 ], [ %76, %for.body.i.i.if.end.i230_crit_edge ], [ %arrayidx.i.i.1, %for.body.i.i.1.if.end.i230_crit_edge ], [ %arrayidx.i.i.2, %for.body.i.i.2.if.end.i230_crit_edge ], [ %arrayidx.i.i.3, %for.body.i.i.3.if.end.i230_crit_edge ], [ %arrayidx.i.i.4, %for.body.i.i.4.if.end.i230_crit_edge ]
  %tobool.not.i229 = icmp eq ptr %extent.0.i, null
  br i1 %tobool.not.i229, label %if.end.i230.out.thread_crit_edge, label %map_id_range_down.exit

if.end.i230.out.thread_crit_edge:                 ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

map_id_range_down.exit:                           ; preds = %if.end.i230
  %111 = ptrtoint ptr %extent.0.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %extent.0.i, align 4
  %sub.i231 = sub i32 %81, %112
  %lower_first.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i, i32 0, i32 1
  %113 = ptrtoint ptr %lower_first.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %lower_first.i, align 4
  %add.i232 = add i32 %sub.i231, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.i232)
  %cmp126 = icmp eq i32 %add.i232, -1
  br i1 %cmp126, label %map_id_range_down.exit.out.thread_crit_edge, label %for.inc132

map_id_range_down.exit.out.thread_crit_edge:      ; preds = %map_id_range_down.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

for.inc132:                                       ; preds = %map_id_range_down.exit
  %115 = ptrtoint ptr %lower_first123 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add.i232, ptr %lower_first123, align 4
  %inc = add nuw i32 %idx.0260, 1
  %116 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %new_map, align 4
  %cmp112 = icmp ult i32 %inc, %117
  br i1 %cmp112, label %for.inc132.for.body114_crit_edge, label %for.inc132.for.end133_crit_edge

for.inc132.for.end133_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end133

for.inc132.for.body114_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body114

for.end133:                                       ; preds = %for.inc132.for.end133_crit_edge, %for.cond110.preheader.for.end133_crit_edge
  %call134 = call fastcc i32 @sort_idmaps(ptr noundef nonnull %new_map)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %for.end133.out.thread_crit_edge, label %if.end138

for.end133.out.thread_crit_edge:                  ; preds = %for.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.thread

if.end138:                                        ; preds = %for.end133
  %118 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %new_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %119)
  %cmp140 = icmp ult i32 %119, 6
  br i1 %cmp140, label %if.then142, label %if.else145

if.then142:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  %120 = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1
  %121 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1
  %mul = mul nuw nsw i32 %119, 12
  %122 = call ptr @memcpy(ptr %120, ptr %121, i32 %mul)
  br label %out

if.else145:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #17
  %123 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %126 = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %125, ptr %126, align 4
  %reverse = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1, i32 0, i32 0, i32 1
  %128 = ptrtoint ptr %reverse to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %reverse, align 4
  %reverse148 = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1, i32 0, i32 0, i32 1
  %130 = ptrtoint ptr %reverse148 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %reverse148, align 4
  br label %out

out.thread:                                       ; preds = %for.end133.out.thread_crit_edge, %map_id_range_down.exit.out.thread_crit_edge, %if.end.i230.out.thread_crit_edge, %for.body.i.i.4.out.thread_crit_edge, %for.cond.i.i.3.out.thread_crit_edge, %for.cond.i.i.2.out.thread_crit_edge, %for.cond.i.i.1.out.thread_crit_edge, %for.cond.i.i.out.thread_crit_edge, %if.then.i227.out.thread_crit_edge, %if.end106.out.thread_crit_edge, %for.end.out.thread_crit_edge, %if.then.i220.out.thread_crit_edge, %if.end87.out.thread_crit_edge, %mappings_overlap.exit.out.thread_crit_edge, %if.end69.out.thread_crit_edge, %if.end54.out.thread_crit_edge, %land.lhs.true46.out.thread_crit_edge, %if.end30.out.thread_crit_edge, %if.end22.out.thread_crit_edge, %land.lhs.true11.out.thread_crit_edge, %if.end5.out.thread_crit_edge
  %ret.1.ph = phi i32 [ -1, %land.lhs.true11.out.thread_crit_edge ], [ -1, %if.end106.out.thread_crit_edge ], [ %call134, %for.end133.out.thread_crit_edge ], [ -22, %for.end.out.thread_crit_edge ], [ -1, %if.end5.out.thread_crit_edge ], [ -1, %for.cond.i.i.3.out.thread_crit_edge ], [ -1, %for.cond.i.i.2.out.thread_crit_edge ], [ -1, %for.cond.i.i.1.out.thread_crit_edge ], [ -1, %for.cond.i.i.out.thread_crit_edge ], [ -1, %for.body.i.i.4.out.thread_crit_edge ], [ -1, %if.then.i227.out.thread_crit_edge ], [ -1, %if.end.i230.out.thread_crit_edge ], [ -1, %map_id_range_down.exit.out.thread_crit_edge ], [ -12, %if.then.i220.out.thread_crit_edge ], [ -22, %if.end54.out.thread_crit_edge ], [ -22, %if.end69.out.thread_crit_edge ], [ -22, %mappings_overlap.exit.out.thread_crit_edge ], [ -22, %land.lhs.true46.out.thread_crit_edge ], [ -22, %if.end30.out.thread_crit_edge ], [ -22, %if.end22.out.thread_crit_edge ], [ -22, %if.end87.out.thread_crit_edge ]
  %131 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr = load i32, ptr %new_map, align 4
  br label %land.lhs.true158

out:                                              ; preds = %if.else145, %if.then142
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !108
  %132 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %new_map, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %map, align 4
  %conv155 = zext i32 %count to i64
  %135 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %conv155, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp156 = icmp slt i32 %count, 0
  br i1 %cmp156, label %out.land.lhs.true158_crit_edge, label %out.if.end168_crit_edge

out.if.end168_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end168

out.land.lhs.true158_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true158

land.lhs.true158:                                 ; preds = %out.land.lhs.true158_crit_edge, %out.thread
  %136 = phi i32 [ %.pr, %out.thread ], [ %133, %out.land.lhs.true158_crit_edge ]
  %ret.1251 = phi i32 [ %ret.1.ph, %out.thread ], [ %count, %out.land.lhs.true158_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %136)
  %cmp160 = icmp ugt i32 %136, 5
  br i1 %cmp160, label %if.then162, label %land.lhs.true158.if.end168_crit_edge

land.lhs.true158.if.end168_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end168

if.then162:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #17
  %137 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  call void @kfree(ptr noundef %139) #15
  %reverse164 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1, i32 0, i32 0, i32 1
  %140 = ptrtoint ptr %reverse164 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reverse164, align 4
  call void @kfree(ptr noundef %141) #15
  %142 = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %142, align 4
  %reverse166 = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1, i32 0, i32 0, i32 1
  %144 = ptrtoint ptr %reverse166 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %reverse166, align 4
  %145 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %map, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then162, %land.lhs.true158.if.end168_crit_edge, %out.if.end168_crit_edge
  %ret.1250 = phi i32 [ %ret.1251, %if.then162 ], [ %ret.1251, %land.lhs.true158.if.end168_crit_edge ], [ %count, %out.if.end168_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @userns_state_mutex) #15
  call void @kfree(ptr noundef %call) #15
  br label %cleanup169

cleanup169:                                       ; preds = %if.end168, %if.then3, %entry.cleanup169_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ %ret.1250, %if.end168 ], [ -22, %entry.cleanup169_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %new_map) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_gid_map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %parent = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %file.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %cmp.not = icmp eq ptr %11, %3
  %cmp2.not = icmp eq ptr %11, %5
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 1
  %gid_map6 = getelementptr inbounds %struct.user_namespace, ptr %5, i32 0, i32 1
  %call7 = tail call fastcc i32 @map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %ppos, i32 noundef 6, ptr noundef %gid_map, ptr noundef %gid_map6)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_projid_map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %parent = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %file.i = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i, align 4
  %f_cred.i = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %f_cred.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_cred.i, align 8
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_ns.i, align 4
  %cmp.not = icmp eq ptr %11, %3
  %cmp2.not = icmp eq ptr %11, %5
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %projid_map = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 2
  %projid_map6 = getelementptr inbounds %struct.user_namespace, ptr %5, i32 0, i32 2
  %call7 = tail call fastcc i32 @map_write(ptr noundef %file, ptr noundef %buf, i32 noundef %size, ptr noundef %ppos, i32 noundef -1, ptr noundef %projid_map, ptr noundef %projid_map6)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_setgroups_show(ptr noundef %seq, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flags = getelementptr inbounds %struct.user_namespace, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_setgroups_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %kbuf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kbuf) #15
  %4 = getelementptr inbounds [8 x i8], ptr %kbuf, i32 0, i32 4
  %5 = getelementptr inbounds [8 x i8], ptr %kbuf, i32 0, i32 5
  %6 = ptrtoint ptr %kbuf to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %kbuf, align 8
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp.not = icmp ne i64 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %count)
  %cmp1 = icmp ugt i32 %count, 7
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.then.i.i.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %kbuf, i32 noundef %count, i1 noundef zeroext false) #15
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #15
  %call.i.i = call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #19, !srcloc !109
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kbuf, i32 noundef %count) #15
  %10 = call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !110
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !112
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kbuf, ptr noundef %buf, i32 noundef %count) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #15, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !112
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !99

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %kbuf, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

if.end3:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [8 x i8], ptr %kbuf, i32 0, i32 %count
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %kbuf, ptr noundef nonnull dereferenceable(5) @.str.4, i32 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %if.end3.if.end14_crit_edge, label %if.else

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.else:                                          ; preds = %if.end3
  %15 = ptrtoint ptr %kbuf to i32
  call void @__asan_load4_noabort(i32 %15)
  %lhsv = load i32, ptr %kbuf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1684369017, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 1684369017
  br i1 %.not, label %if.else.if.end14_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %pos.0 = phi ptr [ %5, %if.end3.if.end14_crit_edge ], [ %4, %if.else.if.end14_crit_edge ]
  %call15 = call ptr @skip_spaces(ptr noundef %pos.0) #15
  %16 = ptrtoint ptr %call15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp16.not = icmp eq i8 %17, 0
  br i1 %cmp16.not, label %if.end19, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end19:                                         ; preds = %if.end14
  call void @mutex_lock_nested(ptr noundef nonnull @userns_state_mutex, i32 noundef 0) #15
  br i1 %cmp6, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.end19
  %flags = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.then21.out_unlock_crit_edge, label %if.then21.if.end32_crit_edge

if.then21.if.end32_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then21.out_unlock_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.else25:                                        ; preds = %if.end19
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %gid_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gid_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp26.not = icmp eq i32 %21, 0
  br i1 %cmp26.not, label %if.end29, label %if.else25.out_unlock_crit_edge

if.else25.out_unlock_crit_edge:                   ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_unlock

if.end29:                                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #17
  %flags30 = getelementptr inbounds %struct.user_namespace, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags30, align 4
  %and31 = and i32 %23, -2
  store i32 %and31, ptr %flags30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.then21.if.end32_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @userns_state_mutex) #15
  %conv33 = zext i32 %count to i64
  %24 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv33, ptr %ppos, align 8
  br label %out

out:                                              ; preds = %out_unlock, %if.end32, %if.end14.out_crit_edge, %if.else.out_crit_edge, %if.then11.i.i, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %if.end14.out_crit_edge ], [ %count, %if.end32 ], [ -1, %out_unlock ], [ -22, %if.else.out_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kbuf) #15
  ret i32 %ret.0

out_unlock:                                       ; preds = %if.else25.out_unlock_crit_edge, %if.then21.out_unlock_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @userns_state_mutex) #15
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @userns_may_setgroups(ptr nocapture noundef readonly %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @userns_state_mutex, i32 noundef 0) #15
  %gid_map = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 1
  %0 = ptrtoint ptr %gid_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gid_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  tail call void @mutex_unlock(ptr noundef nonnull @userns_state_mutex) #15
  ret i1 %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @in_userns(ptr noundef readonly %ancestor, ptr noundef readonly %child) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %level1 = getelementptr inbounds %struct.user_namespace, ptr %ancestor, i32 0, i32 4
  %0 = ptrtoint ptr %level1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %level1, align 4
  %level6 = getelementptr inbounds %struct.user_namespace, ptr %child, i32 0, i32 4
  %2 = ptrtoint ptr %level6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %level6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp7 = icmp sgt i32 %3, %1
  br i1 %cmp7, label %entry.for.inc_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.inc_crit_edge:                          ; preds = %entry
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %entry.for.inc_crit_edge
  %ns.08 = phi ptr [ %5, %for.inc.for.inc_crit_edge ], [ %child, %entry.for.inc_crit_edge ]
  %parent = getelementptr inbounds %struct.user_namespace, ptr %ns.08, i32 0, i32 3
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %level = getelementptr inbounds %struct.user_namespace, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %level, align 4
  %cmp = icmp sgt i32 %7, %1
  br i1 %cmp, label %for.inc.for.inc_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ns.0.lcssa = phi ptr [ %child, %entry.for.end_crit_edge ], [ %5, %for.inc.for.end_crit_edge ]
  %cmp2 = icmp eq ptr %ns.0.lcssa, %ancestor
  ret i1 %cmp2
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @current_in_userns(ptr noundef readonly %target_ns) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #15
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
  %level1.i = getelementptr inbounds %struct.user_namespace, ptr %target_ns, i32 0, i32 4
  %8 = ptrtoint ptr %level1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %level1.i, align 4
  %level6.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %level6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp7.i = icmp sgt i32 %11, %9
  br i1 %cmp7.i, label %entry.for.inc.i_crit_edge, label %entry.in_userns.exit_crit_edge

entry.in_userns.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %in_userns.exit

entry.for.inc.i_crit_edge:                        ; preds = %entry
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %ns.08.i = phi ptr [ %13, %for.inc.i.for.inc.i_crit_edge ], [ %7, %entry.for.inc.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %ns.08.i, i32 0, i32 3
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  %level.i = getelementptr inbounds %struct.user_namespace, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level.i, align 4
  %cmp.i = icmp sgt i32 %15, %9
  br i1 %cmp.i, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.in_userns.exit_crit_edge

for.inc.i.in_userns.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %in_userns.exit

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

in_userns.exit:                                   ; preds = %for.inc.i.in_userns.exit_crit_edge, %entry.in_userns.exit_crit_edge
  %ns.0.lcssa.i = phi ptr [ %7, %entry.in_userns.exit_crit_edge ], [ %13, %for.inc.i.in_userns.exit_crit_edge ]
  %cmp2.i = icmp eq ptr %ns.0.lcssa.i, %target_ns
  ret i1 %cmp2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ns_get_owner(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #15
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
  %ops = getelementptr inbounds %struct.ns_common, ptr %ns, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %owner2 = getelementptr inbounds %struct.proc_ns_operations, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %owner2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner2, align 4
  %call3 = tail call ptr %11(ptr noundef %ns) #15
  %tobool.not14 = icmp eq ptr %call3, null
  br i1 %tobool.not14, label %entry.cleanup_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end6.if.end_crit_edge, %entry.if.end_crit_edge
  %p.015 = phi ptr [ %13, %if.end6.if.end_crit_edge ], [ %call3, %entry.if.end_crit_edge ]
  %cmp = icmp eq ptr %p.015, %7
  br i1 %cmp, label %if.then.i, label %if.end6

if.end6:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.user_namespace, ptr %p.015, i32 0, i32 3
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end6.if.end_crit_edge

if.end6.if.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %call3, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !101

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge
  %ns8 = getelementptr inbounds %struct.user_namespace, ptr %call3, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %get_user_ns.exit, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ns8, %get_user_ns.exit ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @userns_get(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !114
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 98
  %4 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %real_cred, align 4
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @userns_get.__warned, align 1
  br i1 %.b13, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @userns_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 1320, ptr noundef nonnull @.str.16) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %user_ns9 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns9, align 4
  %tobool.not.i14 = icmp eq ptr %7, null
  br i1 %tobool.not.i14, label %do.end7.get_user_ns.exit_crit_edge, label %if.then.i15

do.end7.get_user_ns.exit_crit_edge:               ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.then.i15:                                      ; preds = %do.end7
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i15.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !101

if.then.i15.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i15
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i15.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i15.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %do.end7.get_user_ns.exit_crit_edge
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i16, label %get_user_ns.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

get_user_ns.exit.rcu_read_unlock.exit_crit_edge:  ; preds = %get_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %get_user_ns.exit
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %get_user_ns.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !115
  %10 = tail call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i.i.i.i.i23 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %ns = getelementptr inbounds %struct.user_namespace, ptr %7, i32 0, i32 7
  %spec.select = select i1 %tobool.not.i14, ptr null, ptr %ns
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @userns_put(ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ns, i32 -208
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.put_user_ns.exit_crit_edge, label %land.lhs.true.i

entry.put_user_ns.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %entry
  %count.i = getelementptr i8, ptr %ns, i32 12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_user_ns.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !100
  %work.i.i = getelementptr i8, ptr %ns, i32 136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work.i.i) #15
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %entry.put_user_ns.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userns_install(ptr nocapture noundef readonly %nsset, ptr noundef %ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ns, i32 -208
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred3 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred3, align 16
  %user_ns4 = getelementptr inbounds %struct.cred, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %user_ns4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns4, align 4
  %cmp = icmp eq ptr %add.ptr.i, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %thread_group.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 80
  %8 = ptrtoint ptr %thread_group.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %thread_group.i, align 4
  %cmp.i.i.not = icmp eq ptr %9, %thread_group.i
  br i1 %cmp.i.i.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fs = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  %10 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fs, align 128
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12.not = icmp eq i32 %13, 1
  br i1 %cmp12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call zeroext i1 @ns_capable(ptr noundef %add.ptr.i, i32 noundef 21) #15
  br i1 %call15, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %nsset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nsset, align 4
  %and.i34 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i, label %if.end17.cleanup_crit_edge, label %nsset_cred.exit

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

nsset_cred.exit:                                  ; preds = %if.end17
  %cred.i = getelementptr inbounds %struct.nsset, ptr %nsset, i32 0, i32 3
  %16 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %nsset_cred.exit.cleanup_crit_edge, label %if.end21

nsset_cred.exit.cleanup_crit_edge:                ; preds = %nsset_cred.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %nsset_cred.exit
  %user_ns22 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 25
  %18 = ptrtoint ptr %user_ns22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns22, align 4
  %tobool.not.i35 = icmp eq ptr %19, null
  br i1 %tobool.not.i35, label %if.end21.put_user_ns.exit_crit_edge, label %land.lhs.true.i

if.end21.put_user_ns.exit_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %if.end21
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %19, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i36, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !99

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_user_ns.exit

if.then.i36:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !100
  %work.i.i = getelementptr inbounds %struct.user_namespace, ptr %19, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work.i.i) #15
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i36, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %if.end21.put_user_ns.exit_crit_edge
  %tobool.not.i37 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i37, label %put_user_ns.exit.get_user_ns.exit_crit_edge, label %if.then.i40

put_user_ns.exit.get_user_ns.exit_crit_edge:      ; preds = %put_user_ns.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.then.i40:                                      ; preds = %put_user_ns.exit
  %count.i38 = getelementptr i8, ptr %ns, i32 12
  %call.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i38, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i38, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i38, ptr %count.i38, i32 1, ptr elementtype(i32) %count.i38) #15, !srcloc !113
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i40.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !101

if.then.i40.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i40
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i41 = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i41, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !99

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i40.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i40.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i38, i32 noundef %.sink.i.i.i.i) #15
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %put_user_ns.exit.get_user_ns.exit_crit_edge
  %securebits.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 12
  %24 = ptrtoint ptr %securebits.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %securebits.i, align 4
  %cap_inheritable.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %cap_inheritable.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cap_inheritable.i, align 4
  %.compoundliteral.sroa.2.0.cap_inheritable.sroa_idx.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 13, i32 0, i32 1
  %26 = ptrtoint ptr %.compoundliteral.sroa.2.0.cap_inheritable.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %.compoundliteral.sroa.2.0.cap_inheritable.sroa_idx.i, align 4
  %cap_permitted.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 14
  %27 = ptrtoint ptr %cap_permitted.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %cap_permitted.i, align 4
  %.compoundliteral1.sroa.2.0.cap_permitted.sroa_idx.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 14, i32 0, i32 1
  %28 = ptrtoint ptr %.compoundliteral1.sroa.2.0.cap_permitted.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 511, ptr %.compoundliteral1.sroa.2.0.cap_permitted.sroa_idx.i, align 4
  %cap_effective.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 15
  %29 = ptrtoint ptr %cap_effective.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %cap_effective.i, align 4
  %.compoundliteral5.sroa.2.0.cap_effective.sroa_idx.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 15, i32 0, i32 1
  %30 = ptrtoint ptr %.compoundliteral5.sroa.2.0.cap_effective.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 511, ptr %.compoundliteral5.sroa.2.0.cap_effective.sroa_idx.i, align 4
  %cap_ambient.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 17
  %31 = ptrtoint ptr %cap_ambient.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cap_ambient.i, align 4
  %.compoundliteral9.sroa.2.0.cap_ambient.sroa_idx.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 17, i32 0, i32 1
  %32 = ptrtoint ptr %.compoundliteral9.sroa.2.0.cap_ambient.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %.compoundliteral9.sroa.2.0.cap_ambient.sroa_idx.i, align 4
  %cap_bset.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 16
  %33 = ptrtoint ptr %cap_bset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %cap_bset.i, align 4
  %.compoundliteral13.sroa.2.0.cap_bset.sroa_idx.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 16, i32 0, i32 1
  %34 = ptrtoint ptr %.compoundliteral13.sroa.2.0.cap_bset.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 511, ptr %.compoundliteral13.sroa.2.0.cap_bset.sroa_idx.i, align 4
  %request_key_auth.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 22
  %35 = ptrtoint ptr %request_key_auth.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %request_key_auth.i, align 4
  tail call void @key_put(ptr noundef %36) #15
  %37 = ptrtoint ptr %request_key_auth.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %request_key_auth.i, align 4
  %38 = ptrtoint ptr %user_ns22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %user_ns22, align 4
  %call24 = tail call i32 @set_cred_ucounts(ptr noundef nonnull %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  %. = select i1 %cmp25, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %get_user_ns.exit, %nsset_cred.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -1, %if.end14.cleanup_crit_edge ], [ -22, %nsset_cred.exit.cleanup_crit_edge ], [ %., %get_user_ns.exit ], [ -22, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @userns_owner(ptr nocapture noundef readonly %ns) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %ns, i32 -16
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @user_namespaces_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.20, i32 noundef 512, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #15
  store ptr %call, ptr @user_ns_cachep, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inc_ucount(ptr noundef, [1 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_ucount(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @retire_userns_sysctls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_free_user_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_map_id(ptr nocapture noundef readonly %k, ptr nocapture noundef readonly %e) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.idmap_key, ptr %k, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %count = getelementptr inbounds %struct.idmap_key, ptr %k, i32 0, i32 2
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %3
  %4 = ptrtoint ptr %k to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %k, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %lower_first = getelementptr inbounds %struct.uid_gid_extent, ptr %e, i32 0, i32 1
  %first.0.in = select i1 %tobool.not, ptr %e, ptr %lower_first
  %6 = ptrtoint ptr %first.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %first.0 = load i32, ptr %first.0.in, align 4
  %count2 = getelementptr inbounds %struct.uid_gid_extent, ptr %e, i32 0, i32 2
  %7 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count2, align 4
  %add3 = add i32 %first.0, -1
  %sub4 = add i32 %add3, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %first.0)
  %cmp.not = icmp ult i32 %1, %first.0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub4)
  %cmp7.not = icmp ugt i32 %1, %sub4
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp7.not
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %first.0)
  %cmp9.not = icmp ult i32 %sub, %first.0
  %or.cond37 = select i1 %or.cond, i1 true, i1 %cmp9.not
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub4)
  %cmp11.not = icmp ugt i32 %sub, %sub4
  %or.cond38 = select i1 %or.cond37, i1 true, i1 %cmp11.not
  %or.cond39 = select i1 %cmp.not, i1 true, i1 %cmp9.not
  %spec.select = select i1 %or.cond39, i32 -1, i32 1
  %retval.0 = select i1 %or.cond38, i32 %spec.select, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @new_idmap_permitted(ptr noundef %file, ptr noundef readonly %ns, i32 noundef %cap_setid, ptr noundef readonly %new_map) unnamed_addr #0 align 64 {
entry:
  %key.i.i.i.i82 = alloca %struct.idmap_key, align 4
  %key.i.i.i.i = alloca %struct.idmap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %f_cred = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 12
  %0 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_cred, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cap_setid)
  %cmp = icmp eq i32 %cap_setid, 7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns.i, align 4
  %4 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.not.i = icmp eq i32 %5, 0
  br i1 %cmp33.not.i, label %land.lhs.true.if.end43_crit_edge, label %for.body.lr.ph.i

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp2.i = icmp ult i32 %5, 6
  %6 = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw i32 %idx.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr [5 x %struct.uid_gid_extent], ptr %6, i32 0, i32 %idx.034.i
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %arrayidx3.i = getelementptr %struct.uid_gid_extent, ptr %8, i32 %idx.034.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %extent0.1.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %arrayidx3.i, %if.else.i ]
  %lower_first.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent0.1.i, i32 0, i32 1
  %9 = ptrtoint ptr %lower_first.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lower_first.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.i = icmp eq i32 %10, 0
  br i1 %cmp4.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %if.end.i
  %tobool.not.i = icmp eq ptr %extent0.1.i, null
  br i1 %tobool.not.i, label %for.end.i.if.end_crit_edge, label %if.end8.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end8.i:                                        ; preds = %for.end.i
  %cmp9.i = icmp eq ptr %3, %ns
  br i1 %cmp9.i, label %if.then10.i, label %if.else14.i

if.then10.i:                                      ; preds = %if.end8.i
  %parent_could_setfcap.i = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 9
  %11 = ptrtoint ptr %parent_could_setfcap.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %parent_could_setfcap.i, align 4, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not.i = icmp eq i8 %12, 0
  br i1 %tobool11.not.i, label %if.then10.i.cleanup51_crit_edge, label %if.then10.i.if.end_crit_edge

if.then10.i.if.end_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.cleanup51_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.else14.i:                                      ; preds = %if.end8.i
  %parent.i = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 3
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 4
  %call.i = tail call zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef %14, i32 noundef 31) #15
  br i1 %call.i, label %if.else14.i.if.end_crit_edge, label %if.else14.i.cleanup51_crit_edge

if.else14.i.cleanup51_crit_edge:                  ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.else14.i.if.end_crit_edge:                     ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %if.else14.i.if.end_crit_edge, %if.then10.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %new_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %new_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp1 = icmp eq i32 %.pr, 1
  br i1 %cmp1, label %land.lhs.true2, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true2:                                   ; preds = %if.end
  %count = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp3 = icmp eq i32 %17, 1
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true2.if.end38_crit_edge

land.lhs.true2.if.end38_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %owner = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 5
  %euid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack = load i32, ptr %owner, align 4
  %19 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack77 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack77)
  %cmp.i = icmp eq i32 %.unpack, %.unpack77
  br i1 %cmp.i, label %if.then7, label %land.lhs.true4.if.end38_crit_edge

land.lhs.true4.if.end38_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then7:                                         ; preds = %land.lhs.true4
  %lower_first = getelementptr inbounds %struct.uid_gid_map, ptr %new_map, i32 0, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %lower_first to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %lower_first, align 4
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %parent = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 3
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i.i.i = icmp ult i32 %25, 6
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp30.not.i.i.i.i, label %if.then.i.i.i.make_kuid.exit_crit_edge, label %for.body.i.i.i.i

if.then.i.i.i.make_kuid.exit_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %exitcond.not.i.i.i.i = icmp eq i32 %25, 1
  br i1 %exitcond.not.i.i.i.i, label %for.cond.i.i.i.i.make_kuid.exit_crit_edge, label %for.body.i.i.i.i.1

for.cond.i.i.i.i.make_kuid.exit_crit_edge:        ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

for.body.i.i.i.i.1:                               ; preds = %for.cond.i.i.i.i
  %arrayidx.i.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i.1, align 4
  %count3.i.i.i.i.1 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %count3.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count3.i.i.i.i.1, align 4
  %add4.i.i.i.i.1 = add i32 %27, -1
  %sub5.i.i.i.i.1 = add i32 %add4.i.i.i.i.1, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %21)
  %cmp6.not.i.i.i.i.1 = icmp ugt i32 %27, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i.1, i32 %21)
  %cmp7.not.i.i.i.i.1 = icmp ult i32 %sub5.i.i.i.i.1, %21
  %or.cond29.i.i.i.i.1 = select i1 %cmp6.not.i.i.i.i.1, i1 true, i1 %cmp7.not.i.i.i.i.1
  br i1 %or.cond29.i.i.i.i.1, label %for.cond.i.i.i.i.1, label %for.body.i.i.i.i.1.if.end.i.i.i_crit_edge

for.body.i.i.i.i.1.if.end.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

for.cond.i.i.i.i.1:                               ; preds = %for.body.i.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %exitcond.not.i.i.i.i.1 = icmp eq i32 %25, 2
  br i1 %exitcond.not.i.i.i.i.1, label %for.cond.i.i.i.i.1.make_kuid.exit_crit_edge, label %for.body.i.i.i.i.2

for.cond.i.i.i.i.1.make_kuid.exit_crit_edge:      ; preds = %for.cond.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

for.body.i.i.i.i.2:                               ; preds = %for.cond.i.i.i.i.1
  %arrayidx.i.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.i.2, align 4
  %count3.i.i.i.i.2 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %count3.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count3.i.i.i.i.2, align 4
  %add4.i.i.i.i.2 = add i32 %31, -1
  %sub5.i.i.i.i.2 = add i32 %add4.i.i.i.i.2, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %21)
  %cmp6.not.i.i.i.i.2 = icmp ugt i32 %31, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i.2, i32 %21)
  %cmp7.not.i.i.i.i.2 = icmp ult i32 %sub5.i.i.i.i.2, %21
  %or.cond29.i.i.i.i.2 = select i1 %cmp6.not.i.i.i.i.2, i1 true, i1 %cmp7.not.i.i.i.i.2
  br i1 %or.cond29.i.i.i.i.2, label %for.cond.i.i.i.i.2, label %for.body.i.i.i.i.2.if.end.i.i.i_crit_edge

for.body.i.i.i.i.2.if.end.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

for.cond.i.i.i.i.2:                               ; preds = %for.body.i.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %exitcond.not.i.i.i.i.2 = icmp eq i32 %25, 3
  br i1 %exitcond.not.i.i.i.i.2, label %for.cond.i.i.i.i.2.make_kuid.exit_crit_edge, label %for.body.i.i.i.i.3

for.cond.i.i.i.i.2.make_kuid.exit_crit_edge:      ; preds = %for.cond.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

for.body.i.i.i.i.3:                               ; preds = %for.cond.i.i.i.i.2
  %arrayidx.i.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i.3, align 4
  %count3.i.i.i.i.3 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %count3.i.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count3.i.i.i.i.3, align 4
  %add4.i.i.i.i.3 = add i32 %35, -1
  %sub5.i.i.i.i.3 = add i32 %add4.i.i.i.i.3, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %21)
  %cmp6.not.i.i.i.i.3 = icmp ugt i32 %35, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i.3, i32 %21)
  %cmp7.not.i.i.i.i.3 = icmp ult i32 %sub5.i.i.i.i.3, %21
  %or.cond29.i.i.i.i.3 = select i1 %cmp6.not.i.i.i.i.3, i1 true, i1 %cmp7.not.i.i.i.i.3
  br i1 %or.cond29.i.i.i.i.3, label %for.cond.i.i.i.i.3, label %for.body.i.i.i.i.3.if.end.i.i.i_crit_edge

for.body.i.i.i.i.3.if.end.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

for.cond.i.i.i.i.3:                               ; preds = %for.body.i.i.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %exitcond.not.i.i.i.i.3 = icmp eq i32 %25, 4
  br i1 %exitcond.not.i.i.i.i.3, label %for.cond.i.i.i.i.3.make_kuid.exit_crit_edge, label %for.body.i.i.i.i.4

for.cond.i.i.i.i.3.make_kuid.exit_crit_edge:      ; preds = %for.cond.i.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

for.body.i.i.i.i.4:                               ; preds = %for.cond.i.i.i.i.3
  %arrayidx.i.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx.i.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i.i.i.4, align 4
  %count3.i.i.i.i.4 = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %count3.i.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count3.i.i.i.i.4, align 4
  %add4.i.i.i.i.4 = add i32 %39, -1
  %sub5.i.i.i.i.4 = add i32 %add4.i.i.i.i.4, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %21)
  %cmp6.not.i.i.i.i.4 = icmp ugt i32 %39, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i.4, i32 %21)
  %cmp7.not.i.i.i.i.4 = icmp ult i32 %sub5.i.i.i.i.4, %21
  %or.cond29.i.i.i.i.4 = select i1 %cmp6.not.i.i.i.i.4, i1 true, i1 %cmp7.not.i.i.i.i.4
  br i1 %or.cond29.i.i.i.i.4, label %for.body.i.i.i.i.4.make_kuid.exit_crit_edge, label %for.body.i.i.i.i.4.if.end.i.i.i_crit_edge

for.body.i.i.i.i.4.if.end.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

for.body.i.i.i.i.4.make_kuid.exit_crit_edge:      ; preds = %for.body.i.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

for.body.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %42 = getelementptr inbounds %struct.uid_gid_map, ptr %23, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %count3.i.i.i.i = getelementptr %struct.uid_gid_map, ptr %23, i32 0, i32 1, i32 0, i32 0, i32 2
  %45 = ptrtoint ptr %count3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count3.i.i.i.i, align 4
  %add4.i.i.i.i = add i32 %44, -1
  %sub5.i.i.i.i = add i32 %add4.i.i.i.i, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %21)
  %cmp6.not.i.i.i.i = icmp ugt i32 %44, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i, i32 %21)
  %cmp7.not.i.i.i.i = icmp ult i32 %sub5.i.i.i.i, %21
  %or.cond29.i.i.i.i = select i1 %cmp6.not.i.i.i.i, i1 true, i1 %cmp7.not.i.i.i.i
  br i1 %or.cond29.i.i.i.i, label %for.cond.i.i.i.i, label %for.body.i.i.i.i.if.end.i.i.i_crit_edge

for.body.i.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i.i) #15
  %47 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16777215, ptr %key.i.i.i.i, align 4
  %count1.i.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %count1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %count1.i.i.i.i, align 4
  %id2.i.i.i.i = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %id2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %21, ptr %id2.i.i.i.i, align 4
  %50 = getelementptr inbounds %struct.uid_gid_map, ptr %23, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call.i.i.i.i = call ptr @bsearch(ptr noundef nonnull %key.i.i.i.i, ptr noundef %52, i32 noundef %25, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i.i) #15
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %for.body.i.i.i.i.if.end.i.i.i_crit_edge, %for.body.i.i.i.i.4.if.end.i.i.i_crit_edge, %for.body.i.i.i.i.3.if.end.i.i.i_crit_edge, %for.body.i.i.i.i.2.if.end.i.i.i_crit_edge, %for.body.i.i.i.i.1.if.end.i.i.i_crit_edge
  %extent.0.i.i.i = phi ptr [ %call.i.i.i.i, %if.else.i.i.i ], [ %42, %for.body.i.i.i.i.if.end.i.i.i_crit_edge ], [ %arrayidx.i.i.i.i.1, %for.body.i.i.i.i.1.if.end.i.i.i_crit_edge ], [ %arrayidx.i.i.i.i.2, %for.body.i.i.i.i.2.if.end.i.i.i_crit_edge ], [ %arrayidx.i.i.i.i.3, %for.body.i.i.i.i.3.if.end.i.i.i_crit_edge ], [ %arrayidx.i.i.i.i.4, %for.body.i.i.i.i.4.if.end.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %extent.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.make_kuid.exit_crit_edge, label %if.then5.i.i.i

if.end.i.i.i.make_kuid.exit_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kuid.exit

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %extent.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %extent.0.i.i.i, align 4
  %sub.i.i.i = sub i32 %21, %54
  %lower_first.i.i.i = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %lower_first.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lower_first.i.i.i, align 4
  %add.i.i.i = add i32 %sub.i.i.i, %56
  br label %make_kuid.exit

make_kuid.exit:                                   ; preds = %if.then5.i.i.i, %if.end.i.i.i.make_kuid.exit_crit_edge, %for.body.i.i.i.i.4.make_kuid.exit_crit_edge, %for.cond.i.i.i.i.3.make_kuid.exit_crit_edge, %for.cond.i.i.i.i.2.make_kuid.exit_crit_edge, %for.cond.i.i.i.i.1.make_kuid.exit_crit_edge, %for.cond.i.i.i.i.make_kuid.exit_crit_edge, %if.then.i.i.i.make_kuid.exit_crit_edge
  %id.addr.0.i.i.i = phi i32 [ %add.i.i.i, %if.then5.i.i.i ], [ -1, %if.end.i.i.i.make_kuid.exit_crit_edge ], [ -1, %if.then.i.i.i.make_kuid.exit_crit_edge ], [ -1, %for.body.i.i.i.i.4.make_kuid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i.3.make_kuid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i.2.make_kuid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i.1.make_kuid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i.make_kuid.exit_crit_edge ]
  %57 = ptrtoint ptr %euid to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack79 = load i32, ptr %euid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %id.addr.0.i.i.i, i32 %.unpack79)
  %cmp.i81.not = icmp eq i32 %id.addr.0.i.i.i, %.unpack79
  br i1 %cmp.i81.not, label %make_kuid.exit.cleanup51_crit_edge, label %make_kuid.exit.if.end43_crit_edge

make_kuid.exit.if.end43_crit_edge:                ; preds = %make_kuid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

make_kuid.exit.cleanup51_crit_edge:               ; preds = %make_kuid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cap_setid)
  %cmp19 = icmp eq i32 %cap_setid, 6
  br i1 %cmp19, label %if.then20, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then20:                                        ; preds = %if.else
  %parent21 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 3
  %58 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent21, align 4
  %gid_map.i = getelementptr inbounds %struct.user_namespace, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %gid_map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gid_map.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %61)
  %cmp.i.i.i83 = icmp ult i32 %61, 6
  br i1 %cmp.i.i.i83, label %if.then.i.i.i85, label %if.else.i.i.i102

if.then.i.i.i85:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp30.not.i.i.i.i84 = icmp eq i32 %61, 0
  br i1 %cmp30.not.i.i.i.i84, label %if.then.i.i.i85.make_kgid.exit_crit_edge, label %for.body.i.i.i.i98

if.then.i.i.i85.make_kgid.exit_crit_edge:         ; preds = %if.then.i.i.i85
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

for.cond.i.i.i.i89:                               ; preds = %for.body.i.i.i.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %exitcond.not.i.i.i.i88 = icmp eq i32 %61, 1
  br i1 %exitcond.not.i.i.i.i88, label %for.cond.i.i.i.i89.make_kgid.exit_crit_edge, label %for.body.i.i.i.i98.1

for.cond.i.i.i.i89.make_kgid.exit_crit_edge:      ; preds = %for.cond.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

for.body.i.i.i.i98.1:                             ; preds = %for.cond.i.i.i.i89
  %arrayidx.i.i.i.i91.1 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %arrayidx.i.i.i.i91.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i.i91.1, align 4
  %count3.i.i.i.i92.1 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %count3.i.i.i.i92.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count3.i.i.i.i92.1, align 4
  %add4.i.i.i.i93.1 = add i32 %63, -1
  %sub5.i.i.i.i94.1 = add i32 %add4.i.i.i.i93.1, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %21)
  %cmp6.not.i.i.i.i95.1 = icmp ugt i32 %63, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i94.1, i32 %21)
  %cmp7.not.i.i.i.i96.1 = icmp ult i32 %sub5.i.i.i.i94.1, %21
  %or.cond29.i.i.i.i97.1 = select i1 %cmp6.not.i.i.i.i95.1, i1 true, i1 %cmp7.not.i.i.i.i96.1
  br i1 %or.cond29.i.i.i.i97.1, label %for.cond.i.i.i.i89.1, label %for.body.i.i.i.i98.1.if.end.i.i.i105_crit_edge

for.body.i.i.i.i98.1.if.end.i.i.i105_crit_edge:   ; preds = %for.body.i.i.i.i98.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i105

for.cond.i.i.i.i89.1:                             ; preds = %for.body.i.i.i.i98.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %exitcond.not.i.i.i.i88.1 = icmp eq i32 %61, 2
  br i1 %exitcond.not.i.i.i.i88.1, label %for.cond.i.i.i.i89.1.make_kgid.exit_crit_edge, label %for.body.i.i.i.i98.2

for.cond.i.i.i.i89.1.make_kgid.exit_crit_edge:    ; preds = %for.cond.i.i.i.i89.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

for.body.i.i.i.i98.2:                             ; preds = %for.cond.i.i.i.i89.1
  %arrayidx.i.i.i.i91.2 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx.i.i.i.i91.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i.i91.2, align 4
  %count3.i.i.i.i92.2 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 2, i32 2
  %68 = ptrtoint ptr %count3.i.i.i.i92.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count3.i.i.i.i92.2, align 4
  %add4.i.i.i.i93.2 = add i32 %67, -1
  %sub5.i.i.i.i94.2 = add i32 %add4.i.i.i.i93.2, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %21)
  %cmp6.not.i.i.i.i95.2 = icmp ugt i32 %67, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i94.2, i32 %21)
  %cmp7.not.i.i.i.i96.2 = icmp ult i32 %sub5.i.i.i.i94.2, %21
  %or.cond29.i.i.i.i97.2 = select i1 %cmp6.not.i.i.i.i95.2, i1 true, i1 %cmp7.not.i.i.i.i96.2
  br i1 %or.cond29.i.i.i.i97.2, label %for.cond.i.i.i.i89.2, label %for.body.i.i.i.i98.2.if.end.i.i.i105_crit_edge

for.body.i.i.i.i98.2.if.end.i.i.i105_crit_edge:   ; preds = %for.body.i.i.i.i98.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i105

for.cond.i.i.i.i89.2:                             ; preds = %for.body.i.i.i.i98.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %exitcond.not.i.i.i.i88.2 = icmp eq i32 %61, 3
  br i1 %exitcond.not.i.i.i.i88.2, label %for.cond.i.i.i.i89.2.make_kgid.exit_crit_edge, label %for.body.i.i.i.i98.3

for.cond.i.i.i.i89.2.make_kgid.exit_crit_edge:    ; preds = %for.cond.i.i.i.i89.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

for.body.i.i.i.i98.3:                             ; preds = %for.cond.i.i.i.i89.2
  %arrayidx.i.i.i.i91.3 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx.i.i.i.i91.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i.i91.3, align 4
  %count3.i.i.i.i92.3 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 3, i32 2
  %72 = ptrtoint ptr %count3.i.i.i.i92.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count3.i.i.i.i92.3, align 4
  %add4.i.i.i.i93.3 = add i32 %71, -1
  %sub5.i.i.i.i94.3 = add i32 %add4.i.i.i.i93.3, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %21)
  %cmp6.not.i.i.i.i95.3 = icmp ugt i32 %71, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i94.3, i32 %21)
  %cmp7.not.i.i.i.i96.3 = icmp ult i32 %sub5.i.i.i.i94.3, %21
  %or.cond29.i.i.i.i97.3 = select i1 %cmp6.not.i.i.i.i95.3, i1 true, i1 %cmp7.not.i.i.i.i96.3
  br i1 %or.cond29.i.i.i.i97.3, label %for.cond.i.i.i.i89.3, label %for.body.i.i.i.i98.3.if.end.i.i.i105_crit_edge

for.body.i.i.i.i98.3.if.end.i.i.i105_crit_edge:   ; preds = %for.body.i.i.i.i98.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i105

for.cond.i.i.i.i89.3:                             ; preds = %for.body.i.i.i.i98.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %exitcond.not.i.i.i.i88.3 = icmp eq i32 %61, 4
  br i1 %exitcond.not.i.i.i.i88.3, label %for.cond.i.i.i.i89.3.make_kgid.exit_crit_edge, label %for.body.i.i.i.i98.4

for.cond.i.i.i.i89.3.make_kgid.exit_crit_edge:    ; preds = %for.cond.i.i.i.i89.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

for.body.i.i.i.i98.4:                             ; preds = %for.cond.i.i.i.i89.3
  %arrayidx.i.i.i.i91.4 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 4
  %74 = ptrtoint ptr %arrayidx.i.i.i.i91.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i.i.i91.4, align 4
  %count3.i.i.i.i92.4 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %count3.i.i.i.i92.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count3.i.i.i.i92.4, align 4
  %add4.i.i.i.i93.4 = add i32 %75, -1
  %sub5.i.i.i.i94.4 = add i32 %add4.i.i.i.i93.4, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %21)
  %cmp6.not.i.i.i.i95.4 = icmp ugt i32 %75, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i94.4, i32 %21)
  %cmp7.not.i.i.i.i96.4 = icmp ult i32 %sub5.i.i.i.i94.4, %21
  %or.cond29.i.i.i.i97.4 = select i1 %cmp6.not.i.i.i.i95.4, i1 true, i1 %cmp7.not.i.i.i.i96.4
  br i1 %or.cond29.i.i.i.i97.4, label %for.body.i.i.i.i98.4.make_kgid.exit_crit_edge, label %for.body.i.i.i.i98.4.if.end.i.i.i105_crit_edge

for.body.i.i.i.i98.4.if.end.i.i.i105_crit_edge:   ; preds = %for.body.i.i.i.i98.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i105

for.body.i.i.i.i98.4.make_kgid.exit_crit_edge:    ; preds = %for.body.i.i.i.i98.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

for.body.i.i.i.i98:                               ; preds = %if.then.i.i.i85
  %78 = getelementptr inbounds %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %count3.i.i.i.i92 = getelementptr %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1, i32 0, i32 0, i32 2
  %81 = ptrtoint ptr %count3.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count3.i.i.i.i92, align 4
  %add4.i.i.i.i93 = add i32 %80, -1
  %sub5.i.i.i.i94 = add i32 %add4.i.i.i.i93, %82
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %21)
  %cmp6.not.i.i.i.i95 = icmp ugt i32 %80, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5.i.i.i.i94, i32 %21)
  %cmp7.not.i.i.i.i96 = icmp ult i32 %sub5.i.i.i.i94, %21
  %or.cond29.i.i.i.i97 = select i1 %cmp6.not.i.i.i.i95, i1 true, i1 %cmp7.not.i.i.i.i96
  br i1 %or.cond29.i.i.i.i97, label %for.cond.i.i.i.i89, label %for.body.i.i.i.i98.if.end.i.i.i105_crit_edge

for.body.i.i.i.i98.if.end.i.i.i105_crit_edge:     ; preds = %for.body.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i105

if.else.i.i.i102:                                 ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i.i.i.i82) #15
  %83 = ptrtoint ptr %key.i.i.i.i82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16777215, ptr %key.i.i.i.i82, align 4
  %count1.i.i.i.i99 = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i82, i32 0, i32 2
  %84 = ptrtoint ptr %count1.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %count1.i.i.i.i99, align 4
  %id2.i.i.i.i100 = getelementptr inbounds %struct.idmap_key, ptr %key.i.i.i.i82, i32 0, i32 1
  %85 = ptrtoint ptr %id2.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %21, ptr %id2.i.i.i.i100, align 4
  %86 = getelementptr inbounds %struct.user_namespace, ptr %59, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %call.i.i.i.i101 = call ptr @bsearch(ptr noundef nonnull %key.i.i.i.i82, ptr noundef %88, i32 noundef %61, i32 noundef 12, ptr noundef nonnull @cmp_map_id) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i.i.i.i82) #15
  br label %if.end.i.i.i105

if.end.i.i.i105:                                  ; preds = %if.else.i.i.i102, %for.body.i.i.i.i98.if.end.i.i.i105_crit_edge, %for.body.i.i.i.i98.4.if.end.i.i.i105_crit_edge, %for.body.i.i.i.i98.3.if.end.i.i.i105_crit_edge, %for.body.i.i.i.i98.2.if.end.i.i.i105_crit_edge, %for.body.i.i.i.i98.1.if.end.i.i.i105_crit_edge
  %extent.0.i.i.i103 = phi ptr [ %call.i.i.i.i101, %if.else.i.i.i102 ], [ %78, %for.body.i.i.i.i98.if.end.i.i.i105_crit_edge ], [ %arrayidx.i.i.i.i91.1, %for.body.i.i.i.i98.1.if.end.i.i.i105_crit_edge ], [ %arrayidx.i.i.i.i91.2, %for.body.i.i.i.i98.2.if.end.i.i.i105_crit_edge ], [ %arrayidx.i.i.i.i91.3, %for.body.i.i.i.i98.3.if.end.i.i.i105_crit_edge ], [ %arrayidx.i.i.i.i91.4, %for.body.i.i.i.i98.4.if.end.i.i.i105_crit_edge ]
  %tobool.not.i.i.i104 = icmp eq ptr %extent.0.i.i.i103, null
  br i1 %tobool.not.i.i.i104, label %if.end.i.i.i105.make_kgid.exit_crit_edge, label %if.then5.i.i.i109

if.end.i.i.i105.make_kgid.exit_crit_edge:         ; preds = %if.end.i.i.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %make_kgid.exit

if.then5.i.i.i109:                                ; preds = %if.end.i.i.i105
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %extent.0.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %extent.0.i.i.i103, align 4
  %sub.i.i.i106 = sub i32 %21, %90
  %lower_first.i.i.i107 = getelementptr inbounds %struct.uid_gid_extent, ptr %extent.0.i.i.i103, i32 0, i32 1
  %91 = ptrtoint ptr %lower_first.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %lower_first.i.i.i107, align 4
  %add.i.i.i108 = add i32 %sub.i.i.i106, %92
  br label %make_kgid.exit

make_kgid.exit:                                   ; preds = %if.then5.i.i.i109, %if.end.i.i.i105.make_kgid.exit_crit_edge, %for.body.i.i.i.i98.4.make_kgid.exit_crit_edge, %for.cond.i.i.i.i89.3.make_kgid.exit_crit_edge, %for.cond.i.i.i.i89.2.make_kgid.exit_crit_edge, %for.cond.i.i.i.i89.1.make_kgid.exit_crit_edge, %for.cond.i.i.i.i89.make_kgid.exit_crit_edge, %if.then.i.i.i85.make_kgid.exit_crit_edge
  %id.addr.0.i.i.i110 = phi i32 [ %add.i.i.i108, %if.then5.i.i.i109 ], [ -1, %if.end.i.i.i105.make_kgid.exit_crit_edge ], [ -1, %if.then.i.i.i85.make_kgid.exit_crit_edge ], [ -1, %for.body.i.i.i.i98.4.make_kgid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i89.3.make_kgid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i89.2.make_kgid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i89.1.make_kgid.exit_crit_edge ], [ -1, %for.cond.i.i.i.i89.make_kgid.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 8
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %and = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true24, label %make_kgid.exit.if.end38_crit_edge

make_kgid.exit.if.end38_crit_edge:                ; preds = %make_kgid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

land.lhs.true24:                                  ; preds = %make_kgid.exit
  %egid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 9
  %95 = ptrtoint ptr %egid to i32
  call void @__asan_load4_noabort(i32 %95)
  %.unpack78 = load i32, ptr %egid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %id.addr.0.i.i.i110, i32 %.unpack78)
  %cmp.i111.not = icmp eq i32 %id.addr.0.i.i.i110, %.unpack78
  br i1 %cmp.i111.not, label %land.lhs.true24.cleanup51_crit_edge, label %land.lhs.true24.if.end43_crit_edge

land.lhs.true24.if.end43_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

land.lhs.true24.cleanup51_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.end38:                                         ; preds = %make_kgid.exit.if.end38_crit_edge, %if.else.if.end38_crit_edge, %land.lhs.true4.if.end38_crit_edge, %land.lhs.true2.if.end38_crit_edge, %if.end.if.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cap_setid)
  %cmp39.old.old = icmp sgt i32 %cap_setid, -1
  br i1 %cmp39.old.old, label %if.end38.if.end43_crit_edge, label %if.end38.cleanup51_crit_edge

if.end38.cleanup51_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.end43:                                         ; preds = %if.end38.if.end43_crit_edge, %land.lhs.true24.if.end43_crit_edge, %make_kuid.exit.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge
  %parent44 = getelementptr inbounds %struct.user_namespace, ptr %ns, i32 0, i32 3
  %96 = ptrtoint ptr %parent44 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent44, align 4
  %call45 = call zeroext i1 @ns_capable(ptr noundef %97, i32 noundef %cap_setid) #15
  br i1 %call45, label %land.lhs.true46, label %if.end43.if.end50_crit_edge

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

land.lhs.true46:                                  ; preds = %if.end43
  %98 = ptrtoint ptr %parent44 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent44, align 4
  %call48 = call zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef %99, i32 noundef %cap_setid) #15
  br i1 %call48, label %land.lhs.true46.cleanup51_crit_edge, label %land.lhs.true46.if.end50_crit_edge

land.lhs.true46.if.end50_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

land.lhs.true46.cleanup51_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup51

if.end50:                                         ; preds = %land.lhs.true46.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  br label %cleanup51

cleanup51:                                        ; preds = %if.end50, %land.lhs.true46.cleanup51_crit_edge, %if.end38.cleanup51_crit_edge, %land.lhs.true24.cleanup51_crit_edge, %make_kuid.exit.cleanup51_crit_edge, %if.else14.i.cleanup51_crit_edge, %if.then10.i.cleanup51_crit_edge
  %retval.4 = phi i1 [ false, %if.end50 ], [ true, %land.lhs.true24.cleanup51_crit_edge ], [ true, %if.end38.cleanup51_crit_edge ], [ true, %land.lhs.true46.cleanup51_crit_edge ], [ true, %make_kuid.exit.cleanup51_crit_edge ], [ false, %if.then10.i.cleanup51_crit_edge ], [ false, %if.else14.i.cleanup51_crit_edge ]
  ret i1 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sort_idmaps(ptr nocapture noundef %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  tail call void @sort(ptr noundef %4, i32 noundef %1, i32 noundef 12, ptr noundef nonnull @cmp_extents_forward, ptr noundef null) #15
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %map, align 4
  %mul = mul i32 %8, 12
  %call = tail call ptr @kmemdup(ptr noundef %6, i32 noundef %mul, i32 noundef 3264) #15
  %reverse = getelementptr inbounds %struct.uid_gid_map, ptr %map, i32 0, i32 1, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %reverse to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %reverse, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end6

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map, align 4
  tail call void @sort(ptr noundef nonnull %call, i32 noundef %11, i32 noundef 12, ptr noundef nonnull @cmp_extents_reverse, ptr noundef null) #15
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_extents_forward(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_extents_reverse(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lower_first = getelementptr inbounds %struct.uid_gid_extent, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %lower_first to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lower_first, align 4
  %lower_first1 = getelementptr inbounds %struct.uid_gid_extent, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %lower_first1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lower_first1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !67, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @create_user_ns.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/user_namespace.c", i32 133, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @create_user_ns.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../kernel/user_namespace.c", i32 150, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab___put_user_ns, !7, !"__ksymtab___put_user_ns", i1 false, i1 false}
!7 = !{!"../kernel/user_namespace.c", i32 224, i32 1}
!8 = !{ptr @__ksymtab_make_kuid, !9, !"__ksymtab_make_kuid", i1 false, i1 false}
!9 = !{!"../kernel/user_namespace.c", i32 408, i32 1}
!10 = !{ptr @__ksymtab_from_kuid, !11, !"__ksymtab_from_kuid", i1 false, i1 false}
!11 = !{!"../kernel/user_namespace.c", i32 427, i32 1}
!12 = !{ptr @__ksymtab_from_kuid_munged, !13, !"__ksymtab_from_kuid_munged", i1 false, i1 false}
!13 = !{!"../kernel/user_namespace.c", i32 456, i32 1}
!14 = !{ptr @__ksymtab_make_kgid, !15, !"__ksymtab_make_kgid", i1 false, i1 false}
!15 = !{!"../kernel/user_namespace.c", i32 476, i32 1}
!16 = !{ptr @__ksymtab_from_kgid, !17, !"__ksymtab_from_kgid", i1 false, i1 false}
!17 = !{!"../kernel/user_namespace.c", i32 495, i32 1}
!18 = !{ptr @__ksymtab_from_kgid_munged, !19, !"__ksymtab_from_kgid_munged", i1 false, i1 false}
!19 = !{!"../kernel/user_namespace.c", i32 523, i32 1}
!20 = !{ptr @__ksymtab_make_kprojid, !21, !"__ksymtab_make_kprojid", i1 false, i1 false}
!21 = !{!"../kernel/user_namespace.c", i32 543, i32 1}
!22 = !{ptr @__ksymtab_from_kprojid, !23, !"__ksymtab_from_kprojid", i1 false, i1 false}
!23 = !{!"../kernel/user_namespace.c", i32 562, i32 1}
!24 = !{ptr @__ksymtab_from_kprojid_munged, !25, !"__ksymtab_from_kprojid_munged", i1 false, i1 false}
!25 = !{!"../kernel/user_namespace.c", i32 591, i32 1}
!26 = !{ptr @proc_uid_seq_operations, !27, !"proc_uid_seq_operations", i1 false, i1 false}
!27 = !{!"../kernel/user_namespace.c", i32 705, i32 29}
!28 = !{ptr @proc_gid_seq_operations, !29, !"proc_gid_seq_operations", i1 false, i1 false}
!29 = !{!"../kernel/user_namespace.c", i32 712, i32 29}
!30 = !{ptr @proc_projid_seq_operations, !31, !"proc_projid_seq_operations", i1 false, i1 false}
!31 = !{!"../kernel/user_namespace.c", i32 719, i32 29}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/user_namespace.c", i32 1202, i32 18}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/user_namespace.c", i32 1204, i32 6}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/user_namespace.c", i32 1204, i32 16}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../kernel/user_namespace.c", i32 1306, i32 30}
!40 = !{ptr @__ksymtab_current_in_userns, !41, !"__ksymtab_current_in_userns", i1 false, i1 false}
!41 = !{!"../kernel/user_namespace.c", i32 1308, i32 1}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../kernel/user_namespace.c", i32 1367, i32 38}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/user_namespace.c", i32 1389, i32 11}
!46 = !{ptr @userns_operations, !47, !"userns_operations", i1 false, i1 false}
!47 = !{!"../kernel/user_namespace.c", i32 1388, i32 33}
!48 = !{ptr @__initcall__kmod_user_namespace__209_1403_user_namespaces_init4, !49, !"__initcall__kmod_user_namespace__209_1403_user_namespaces_init4", i1 false, i1 false}
!49 = !{!"../kernel/user_namespace.c", i32 1403, i32 1}
!50 = !{ptr @user_ns_cachep, !51, !"user_ns_cachep", i1 false, i1 false}
!51 = !{!"../kernel/user_namespace.c", i32 24, i32 27}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../kernel/user_namespace.c", i32 66, i32 14}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../kernel/user_namespace.c", i32 67, i32 7}
!56 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/user_namespace.c", i32 25, i32 8}
!58 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @userns_state_mutex, !57, !"userns_state_mutex", i1 false, i1 false}
!60 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/cred.h", i32 286, i32 3}
!62 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/user_namespace.c", i32 607, i32 18}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!66 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../kernel/user_namespace.c", i32 1320, i32 24}
!73 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!77 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!81 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../kernel/user_namespace.c", i32 1339, i32 17}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/user_namespace.c", i32 1400, i32 19}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2153050008}
!97 = !{i64 2148604573}
!98 = !{i64 2148519013, i64 2148519045, i64 2148519074, i64 2148519108, i64 2148519139, i64 2148519162}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2149592426}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2148603494}
!103 = !{i64 2148518203, i64 2148518235, i64 2148518264, i64 2148518298, i64 2148518329, i64 2148518352}
!104 = !{i64 2148603723}
!105 = !{i64 2153049829}
!106 = !{i64 2153066668}
!107 = !{!"auto-init"}
!108 = !{i64 2153067757}
!109 = !{i64 2152181127, i64 2152181152}
!110 = !{i64 4676682}
!111 = !{i64 4676879}
!112 = !{i64 2152162112}
!113 = !{i64 2148516548, i64 2148516580, i64 2148516609, i64 2148516643, i64 2148516674, i64 2148516697}
!114 = !{i64 2149374676}
!115 = !{i64 2149374942}
!116 = !{i8 0, i8 2}
