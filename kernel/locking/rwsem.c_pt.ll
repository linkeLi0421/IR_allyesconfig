; ModuleID = '/llk/IR_all_yes/kernel/locking/rwsem.c_pt.bc'
source_filename = "../kernel/locking/rwsem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__init_rwsem\22, \22a\22\09"
module asm "\09.weak\09__crc___init_rwsem\09\09\09\09"
module asm "\09.long\09__crc___init_rwsem\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_rwsem\22\09\09\09\09\09"
module asm "__kstrtabns___init_rwsem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read\09\09\09\09"
module asm "\09.long\09__crc_down_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read\22\09\09\09\09\09"
module asm "__kstrtabns_down_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read_interruptible\09\09\09\09"
module asm "\09.long\09__crc_down_read_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read_killable\09\09\09\09"
module asm "\09.long\09__crc_down_read_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_killable\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read_trylock\09\09\09\09"
module asm "\09.long\09__crc_down_read_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_write\22, \22a\22\09"
module asm "\09.weak\09__crc_down_write\09\09\09\09"
module asm "\09.long\09__crc_down_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write\22\09\09\09\09\09"
module asm "__kstrtabns_down_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_write_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_down_write_killable\09\09\09\09"
module asm "\09.long\09__crc_down_write_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write_killable\22\09\09\09\09\09"
module asm "__kstrtabns_down_write_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_write_trylock\22, \22a\22\09"
module asm "\09.weak\09__crc_down_write_trylock\09\09\09\09"
module asm "\09.long\09__crc_down_write_trylock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_down_write_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+up_read\22, \22a\22\09"
module asm "\09.weak\09__crc_up_read\09\09\09\09"
module asm "\09.long\09__crc_up_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up_read:\09\09\09\09\09"
module asm "\09.asciz \09\22up_read\22\09\09\09\09\09"
module asm "__kstrtabns_up_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+up_write\22, \22a\22\09"
module asm "\09.weak\09__crc_up_write\09\09\09\09"
module asm "\09.long\09__crc_up_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22up_write\22\09\09\09\09\09"
module asm "__kstrtabns_up_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+downgrade_write\22, \22a\22\09"
module asm "\09.weak\09__crc_downgrade_write\09\09\09\09"
module asm "\09.long\09__crc_downgrade_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_downgrade_write:\09\09\09\09\09"
module asm "\09.asciz \09\22downgrade_write\22\09\09\09\09\09"
module asm "__kstrtabns_downgrade_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read_nested\09\09\09\09"
module asm "\09.long\09__crc_down_read_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_nested\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read_killable_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read_killable_nested\09\09\09\09"
module asm "\09.long\09__crc_down_read_killable_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_killable_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_killable_nested\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_killable_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+_down_write_nest_lock\22, \22a\22\09"
module asm "\09.weak\09__crc__down_write_nest_lock\09\09\09\09"
module asm "\09.long\09__crc__down_write_nest_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__down_write_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22_down_write_nest_lock\22\09\09\09\09\09"
module asm "__kstrtabns__down_write_nest_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_read_non_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_down_read_non_owner\09\09\09\09"
module asm "\09.long\09__crc_down_read_non_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_read_non_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22down_read_non_owner\22\09\09\09\09\09"
module asm "__kstrtabns_down_read_non_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_write_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_down_write_nested\09\09\09\09"
module asm "\09.long\09__crc_down_write_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write_nested\22\09\09\09\09\09"
module asm "__kstrtabns_down_write_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+down_write_killable_nested\22, \22a\22\09"
module asm "\09.weak\09__crc_down_write_killable_nested\09\09\09\09"
module asm "\09.long\09__crc_down_write_killable_nested\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_down_write_killable_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22down_write_killable_nested\22\09\09\09\09\09"
module asm "__kstrtabns_down_write_killable_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+up_read_non_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_up_read_non_owner\09\09\09\09"
module asm "\09.long\09__crc_up_read_non_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_up_read_non_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22up_read_non_owner\22\09\09\09\09\09"
module asm "__kstrtabns_up_read_non_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wake_q_head = type { ptr, ptr }
%struct.rwsem_waiter = type { %struct.list_head, ptr, i32, i32, i8 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.35, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.35 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__init_rwsem.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sem->wait_lock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab___init_rwsem = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_rwsem = external dso_local constant [0 x i8], align 1
@__ksymtab___init_rwsem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_rwsem to i32), ptr @__kstrtab___init_rwsem, ptr @__kstrtabns___init_rwsem }, section "___ksymtab+__init_rwsem", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/locking/rwsem.c\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_down_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read to i32), ptr @__kstrtab_down_read, ptr @__kstrtabns_down_read }, section "___ksymtab+down_read", align 4
@__kstrtab_down_read_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_interruptible to i32), ptr @__kstrtab_down_read_interruptible, ptr @__kstrtabns_down_read_interruptible }, section "___ksymtab+down_read_interruptible", align 4
@__kstrtab_down_read_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_killable to i32), ptr @__kstrtab_down_read_killable, ptr @__kstrtabns_down_read_killable }, section "___ksymtab+down_read_killable", align 4
@__kstrtab_down_read_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_trylock to i32), ptr @__kstrtab_down_read_trylock, ptr @__kstrtabns_down_read_trylock }, section "___ksymtab+down_read_trylock", align 4
@__kstrtab_down_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write to i32), ptr @__kstrtab_down_write, ptr @__kstrtabns_down_write }, section "___ksymtab+down_write", align 4
@__kstrtab_down_write_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write_killable to i32), ptr @__kstrtab_down_write_killable, ptr @__kstrtabns_down_write_killable }, section "___ksymtab+down_write_killable", align 4
@__kstrtab_down_write_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write_trylock to i32), ptr @__kstrtab_down_write_trylock, ptr @__kstrtabns_down_write_trylock }, section "___ksymtab+down_write_trylock", align 4
@__kstrtab_up_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_up_read = external dso_local constant [0 x i8], align 1
@__ksymtab_up_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up_read to i32), ptr @__kstrtab_up_read, ptr @__kstrtabns_up_read }, section "___ksymtab+up_read", align 4
@__kstrtab_up_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_up_write = external dso_local constant [0 x i8], align 1
@__ksymtab_up_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up_write to i32), ptr @__kstrtab_up_write, ptr @__kstrtabns_up_write }, section "___ksymtab+up_write", align 4
@__kstrtab_downgrade_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_downgrade_write = external dso_local constant [0 x i8], align 1
@__ksymtab_downgrade_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @downgrade_write to i32), ptr @__kstrtab_downgrade_write, ptr @__kstrtabns_downgrade_write }, section "___ksymtab+downgrade_write", align 4
@__kstrtab_down_read_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_nested to i32), ptr @__kstrtab_down_read_nested, ptr @__kstrtabns_down_read_nested }, section "___ksymtab+down_read_nested", align 4
@__kstrtab_down_read_killable_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_killable_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_killable_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_killable_nested to i32), ptr @__kstrtab_down_read_killable_nested, ptr @__kstrtabns_down_read_killable_nested }, section "___ksymtab+down_read_killable_nested", align 4
@__kstrtab__down_write_nest_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns__down_write_nest_lock = external dso_local constant [0 x i8], align 1
@__ksymtab__down_write_nest_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_down_write_nest_lock to i32), ptr @__kstrtab__down_write_nest_lock, ptr @__kstrtabns__down_write_nest_lock }, section "___ksymtab+_down_write_nest_lock", align 4
@__kstrtab_down_read_non_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_read_non_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_down_read_non_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_read_non_owner to i32), ptr @__kstrtab_down_read_non_owner, ptr @__kstrtabns_down_read_non_owner }, section "___ksymtab+down_read_non_owner", align 4
@__kstrtab_down_write_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write_nested to i32), ptr @__kstrtab_down_write_nested, ptr @__kstrtabns_down_write_nested }, section "___ksymtab+down_write_nested", align 4
@__kstrtab_down_write_killable_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_down_write_killable_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_down_write_killable_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @down_write_killable_nested to i32), ptr @__kstrtab_down_write_killable_nested, ptr @__kstrtabns_down_write_killable_nested }, section "___ksymtab+down_write_killable_nested", align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@up_read_non_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"DEBUG_RWSEMS_WARN_ON(%s): count = 0x%lx, magic = 0x%lx, owner = 0x%lx, curr 0x%lx, list %sempty\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"!is_rwsem_reader_owned(sem)\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_up_read_non_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_up_read_non_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_up_read_non_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @up_read_non_owner to i32), ptr @__kstrtab_up_read_non_owner, ptr @__kstrtabns_up_read_non_owner }, section "___ksymtab+up_read_non_owner", align 4
@__down_read_trylock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sem->magic != sem\00", [46 x i8] zeroinitializer }, align 32
@__down_read_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rwsem_read_trylock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rwsem_down_read_slowpath.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockevents = external dso_local global [15 x i32], section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__down_write_trylock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rwsem_down_write_slowpath.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rwsem_down_write_slowpath.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rwsem_spin_on_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@__up_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__up_read.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__up_read.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmp < 0\00", [24 x i8] zeroinitializer }, align 32
@__up_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__up_write.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"(rwsem_owner(sem) != current) && !rwsem_test_oflags(sem, RWSEM_NONSPINNABLE)\00", [51 x i8] zeroinitializer }, align 32
@__downgrade_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rwsem_owner(sem) != current\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 318, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1460, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1646, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1240, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1294, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1314, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [26 x i8] c"../kernel/locking/rwsem.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1337, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab___init_rwsem, ptr @__ksymtab__down_write_nest_lock, ptr @__ksymtab_down_read, ptr @__ksymtab_down_read_interruptible, ptr @__ksymtab_down_read_killable, ptr @__ksymtab_down_read_killable_nested, ptr @__ksymtab_down_read_nested, ptr @__ksymtab_down_read_non_owner, ptr @__ksymtab_down_read_trylock, ptr @__ksymtab_down_write, ptr @__ksymtab_down_write_killable, ptr @__ksymtab_down_write_killable_nested, ptr @__ksymtab_down_write_nested, ptr @__ksymtab_down_write_trylock, ptr @__ksymtab_downgrade_write, ptr @__ksymtab_up_read, ptr @__ksymtab_up_read_non_owner, ptr @__ksymtab_up_write, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__init_rwsem(ptr noundef %sem, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_check_no_locks_freed(ptr noundef %sem, i32 noundef 96) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %magic = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %0 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %sem, ptr %magic, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %1 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %sem, align 4
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %wait_lock, ptr noundef nonnull @.str, ptr noundef nonnull @__init_rwsem.__key, i16 noundef signext 2) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %2 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %wait_list, ptr %wait_list, align 4
  %prev.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wait_list, ptr %prev.i, align 4
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i9 = tail call zeroext i1 @__kasan_check_write(ptr noundef %owner, i32 noundef 4) #9
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %owner, align 4
  %osq = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %osq, i32 noundef 4) #9
  %5 = ptrtoint ptr %osq to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %osq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @down_read(ptr noundef %sem) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1460) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_read_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  %call.i = tail call fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_read_trylock(ptr noundef %sem) unnamed_addr #3 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %0 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end48

land.lhs.true:                                    ; preds = %entry
  %magic = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %2, %sem
  br i1 %cmp.not, label %do.end48, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %.b68 = load i1, ptr @__down_read_trylock.__already_done, align 1
  br i1 %.b68, label %if.then44, label %if.then, !prof !97

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__down_read_trylock.__already_done, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %3 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sem, align 4
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %magic, align 4
  %7 = ptrtoint ptr %6 to i32
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %owner, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %15 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %16, %wait_list
  %cond = select i1 %cmp.i.not, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1240, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %14, ptr noundef nonnull %cond) #9
  br label %if.then44

if.then44:                                        ; preds = %if.then, %land.rhs
  %call45 = tail call i32 @debug_locks_off() #9
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %land.lhs.true, %entry
  %call.i.i71 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %17 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sem, align 4
  br label %while.cond

while.cond:                                       ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i, %do.end48
  %storemerge = phi i32 [ %18, %do.end48 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg_acquire.exit.i.i.i ]
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %tmp, align 4
  %and = and i32 %storemerge, -2147483641
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %while.body, label %cleanup

while.body:                                       ; preds = %while.cond
  %add = add nuw i32 %storemerge, 256
  %call.i.i72 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 4) #9
  %20 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i, %while.body
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %21, i32 %add, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i, label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i:           ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i, label %if.then56, label %while.cond, !prof !97

if.then56:                                        ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i
  %23 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %27 = ptrtoint ptr %26 to i32
  %owner1.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %owner1.i.i, align 4
  %and.i1.i = and i32 %29, 2
  %or.i.i = or i32 %and.i1.i, %27
  %or2.i.i = or i32 %or.i.i, 1
  %call.i.i5.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %or2.i.i, ptr %owner1.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %while.cond
  %retval.0 = phi i32 [ 1, %if.then56 ], [ 0, %while.cond ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_contended(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquired(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_read_interruptible(ptr noundef %sem) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1469) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_read_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.then6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  %call.i = tail call fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef 1) #9
  %phi.cmp = icmp eq i32 %call.i, 0
  br i1 %phi.cmp, label %if.then6, label %if.then10.critedge

if.then6:                                         ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

if.then10.critedge:                               ; preds = %if.then
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

return:                                           ; preds = %if.then10.critedge, %if.then6
  %retval.0 = phi i32 [ -4, %if.then10.critedge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_read_killable(ptr noundef %sem) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1483) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_read_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.then6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  %call.i = tail call fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef 258) #9
  %phi.cmp = icmp eq i32 %call.i, 0
  br i1 %phi.cmp, label %if.then6, label %if.then10.critedge

if.then6:                                         ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

if.then10.critedge:                               ; preds = %if.then
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

return:                                           ; preds = %if.then10.critedge, %if.then6
  %retval.0 = phi i32 [ -4, %if.then10.critedge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_read_trylock(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__down_read_trylock(ptr noundef %sem)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @down_write(ptr noundef %sem) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.i.i.i = alloca i32, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1513) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_write_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %2 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i, %if.then
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %4, i32 1, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i.i.i.i, label %rwsem_write_trylock.exit.thread.i.i, label %if.then.i.i, !prof !97

rwsem_write_trylock.exit.thread.i.i:              ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  %owner.i.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %6 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %owner.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  br label %if.end

if.then.i.i:                                      ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %call3.i.i = call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %rwsem_write_trylock.exit.thread.i.i, %entry
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_write_trylock(ptr noundef %sem) unnamed_addr #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %0 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end47

land.lhs.true:                                    ; preds = %entry
  %magic = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %2, %sem
  br i1 %cmp.not, label %do.end47, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %.b57 = load i1, ptr @__down_write_trylock.__already_done, align 1
  br i1 %.b57, label %if.then43, label %if.then, !prof !97

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__down_write_trylock.__already_done, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %3 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sem, align 4
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %magic, align 4
  %7 = ptrtoint ptr %6 to i32
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i59 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %owner, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %15 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %16, %wait_list
  %cond = select i1 %cmp.i.not, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1278, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %14, ptr noundef nonnull %cond) #9
  br label %if.then43

if.then43:                                        ; preds = %if.then, %land.rhs
  %call44 = tail call i32 @debug_locks_off() #9
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tmp.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i, %do.end47
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %19, i32 1, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i, label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i, label %if.then.i, label %rwsem_write_trylock.exit, !prof !97

if.then.i:                                        ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i
  %owner.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %21 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %25, ptr %owner.i.i, align 4
  br label %rwsem_write_trylock.exit

rwsem_write_trylock.exit:                         ; preds = %if.then.i, %arch_atomic_cmpxchg_acquire.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %conv = zext i1 %cmp.not.i.i.i.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_write_killable(ptr noundef %sem) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.i.i.i = alloca i32, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1524) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_write_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.then6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %2 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i, %if.then
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %4, i32 1, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i.i.i.i, label %rwsem_write_trylock.exit.thread.i.i, label %if.then.i.i, !prof !97

rwsem_write_trylock.exit.thread.i.i:              ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  %owner.i.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %6 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %owner.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  br label %if.then6

if.then.i.i:                                      ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %call3.i.i = call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef 258) #9
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then10.critedge, label %if.then6

if.then6:                                         ; preds = %if.then.i.i, %rwsem_write_trylock.exit.thread.i.i, %entry
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

if.then10.critedge:                               ; preds = %if.then.i.i
  call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

return:                                           ; preds = %if.then10.critedge, %if.then6
  %retval.0 = phi i32 [ -4, %if.then10.critedge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_write_trylock(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__down_write_trylock(ptr noundef %sem)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @up_read(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  tail call fastcc void @__up_read(ptr noundef %sem)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__up_read(ptr noundef %sem) unnamed_addr #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %0 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end124

land.lhs.true:                                    ; preds = %entry
  %magic = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %magic, align 4
  %cmp.not = icmp eq ptr %2, %sem
  br i1 %cmp.not, label %do.body49, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %.b240 = load i1, ptr @__up_read.__already_done, align 1
  br i1 %.b240, label %if.then44, label %if.then, !prof !97

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__up_read.__already_done, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %3 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sem, align 4
  %5 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %magic, align 4
  %7 = ptrtoint ptr %6 to i32
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i244 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %owner, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %15 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %16, %wait_list
  %cond = select i1 %cmp.i.not, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1289, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %14, ptr noundef nonnull %cond) #9
  br label %if.then44

if.then44:                                        ; preds = %if.then, %land.rhs
  %call45 = tail call i32 @debug_locks_off() #9
  br label %do.body49

do.body49:                                        ; preds = %if.then44, %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %.pr = load i32, ptr @debug_locks_silent, align 4
  %tobool50.not = icmp eq i32 %.pr, 0
  br i1 %tobool50.not, label %land.lhs.true51, label %do.end124

land.lhs.true51:                                  ; preds = %do.body49
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %17 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sem, align 4
  %and.i250 = and i32 %18, 1
  %tobool.not.i = icmp eq i32 %and.i250, 0
  br i1 %tobool.not.i, label %is_rwsem_reader_owned.exit, label %land.rhs62

is_rwsem_reader_owned.exit:                       ; preds = %land.lhs.true51
  %owner.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %owner.i.i, align 4
  %and.i.i = and i32 %20, 1
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %land.rhs62, label %do.end124

land.rhs62:                                       ; preds = %is_rwsem_reader_owned.exit, %land.lhs.true51
  %.b236239 = load i1, ptr @__up_read.__already_done.12, align 1
  br i1 %.b236239, label %if.then120, label %if.then73, !prof !97

if.then73:                                        ; preds = %land.rhs62
  store i1 true, ptr @__up_read.__already_done.12, align 1
  %call.i.i245 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %21 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %sem, align 4
  %23 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %magic, align 4
  %25 = ptrtoint ptr %24 to i32
  %owner90 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i246 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner90, i32 noundef 4) #9
  %26 = ptrtoint ptr %owner90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %owner90, align 4
  %28 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i251 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i251 to ptr
  %task93 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task93 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task93, align 8
  %32 = ptrtoint ptr %31 to i32
  %wait_list94 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %33 = ptrtoint ptr %wait_list94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %wait_list94, align 4
  %cmp.i252.not = icmp eq ptr %34, %wait_list94
  %cond97 = select i1 %cmp.i252.not, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1290, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %22, i32 noundef %25, i32 noundef %27, i32 noundef %32, ptr noundef nonnull %cond97) #9
  br label %if.then120

if.then120:                                       ; preds = %if.then73, %land.rhs62
  %call121 = tail call i32 @debug_locks_off() #9
  br label %do.end124

do.end124:                                        ; preds = %if.then120, %is_rwsem_reader_owned.exit, %do.body49, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %owner.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i254 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i, i32 noundef 4) #9
  %35 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %owner.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i, %do.end124
  %storemerge.i = phi i32 [ %36, %do.end124 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i ]
  %37 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge.i, ptr %val.i, align 4
  %and.i255 = and i32 %storemerge.i, -4
  %38 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i256 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i256 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %42 = ptrtoint ptr %41 to i32
  %cmp.i257 = icmp eq i32 %and.i255, %42
  br i1 %cmp.i257, label %while.body.i, label %rwsem_clear_reader_owned.exit

while.body.i:                                     ; preds = %while.cond.i
  %and3.i = and i32 %storemerge.i, 3
  %call.i.i6.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #9
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %owner.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i, %while.body.i
  %45 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %owner.i, ptr %owner.i, i32 %44, i32 %and3.i, ptr elementtype(i32) %owner.i) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %44
  br i1 %cmp.not.i.i.i.i, label %rwsem_clear_reader_owned.exit, label %while.cond.i, !prof !97

rwsem_clear_reader_owned.exit:                    ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i, %while.cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %call.i.i247 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 -256, ptr elementtype(i32) %sem) #9, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %47 = load i32, ptr @debug_locks_silent, align 4
  %tobool128.not = icmp eq i32 %47, 0
  %cmp131 = icmp slt i32 %asmresult.i.i.i.i, 0
  %or.cond = select i1 %tobool128.not, i1 %cmp131, i1 false
  br i1 %or.cond, label %land.rhs138, label %do.end200

land.rhs138:                                      ; preds = %rwsem_clear_reader_owned.exit
  %.b237238 = load i1, ptr @__up_read.__already_done.13, align 1
  br i1 %.b237238, label %if.then196, label %if.then149, !prof !97

if.then149:                                       ; preds = %land.rhs138
  store i1 true, ptr @__up_read.__already_done.13, align 1
  %call.i.i248 = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %48 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %sem, align 4
  %magic165 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %50 = ptrtoint ptr %magic165 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %magic165, align 4
  %52 = ptrtoint ptr %51 to i32
  %call.i.i249 = call zeroext i1 @__kasan_check_read(ptr noundef %owner.i, i32 noundef 4) #9
  %53 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %owner.i, align 4
  %55 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i258 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i258 to ptr
  %task169 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task169 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task169, align 8
  %59 = ptrtoint ptr %58 to i32
  %wait_list170 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %60 = ptrtoint ptr %wait_list170 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %wait_list170, align 4
  %cmp.i259.not = icmp eq ptr %61, %wait_list170
  %cond173 = select i1 %cmp.i259.not, ptr @.str.4, ptr @.str.5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1294, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.14, i32 noundef %49, i32 noundef %52, i32 noundef %54, i32 noundef %59, ptr noundef nonnull %cond173) #9
  br label %if.then196

if.then196:                                       ; preds = %if.then149, %land.rhs138
  %call197 = call i32 @debug_locks_off() #9
  br label %do.end200

do.end200:                                        ; preds = %if.then196, %rwsem_clear_reader_owned.exit
  %and = and i32 %asmresult.i.i.i.i, -253
  %cmp201 = icmp eq i32 %and, 2
  br i1 %cmp201, label %if.then208, label %if.end210, !prof !104

if.then208:                                       ; preds = %do.end200
  call fastcc void @clear_nonspinnable(ptr noundef %sem)
  call fastcc void @rwsem_wake(ptr noundef %sem)
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %do.end200
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @up_write(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_q.i = alloca %struct.wake_q_head, align 4
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %2 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end130.i

land.lhs.true.i:                                  ; preds = %entry
  %magic.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %3 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %magic.i, align 4
  %cmp.not.i = icmp eq ptr %4, %sem
  br i1 %cmp.not.i, label %do.body49.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %.b163.i = load i1, ptr @__up_write.__already_done, align 1
  br i1 %.b163.i, label %if.then44.i, label %if.then.i, !prof !97

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__up_write.__already_done, align 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %5 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sem, align 4
  %7 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %magic.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %owner.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i166.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %owner.i, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %16 = ptrtoint ptr %15 to i32
  %wait_list.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %17 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %wait_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %wait_list.i
  %cond.i = select i1 %cmp.i.not.i, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1309, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef %16, ptr noundef nonnull %cond.i) #9
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.then.i, %land.rhs.i
  %call45.i = tail call i32 @debug_locks_off() #9
  br label %do.body49.i

do.body49.i:                                      ; preds = %if.then44.i, %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %.pr.i = load i32, ptr @debug_locks_silent, align 4
  %tobool50.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool50.not.i, label %land.lhs.true51.i, label %do.end130.i

land.lhs.true51.i:                                ; preds = %do.body49.i
  %owner.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %owner.i.i, align 4
  %and.i170.i = and i32 %20, -4
  %21 = inttoptr i32 %and.i170.i to ptr
  %22 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i171.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i171.i to ptr
  %task55.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task55.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task55.i, align 8
  %cmp56.not.i = icmp eq ptr %25, %21
  br i1 %cmp56.not.i, label %do.end130.i, label %land.rhs57.i

land.rhs57.i:                                     ; preds = %land.lhs.true51.i
  %call.i.i.i173.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %owner.i.i, align 4
  %and.i174.i = and i32 %27, 2
  %tobool.i.not.i = icmp eq i32 %and.i174.i, 0
  br i1 %tobool.i.not.i, label %land.rhs68.i, label %do.end130.i

land.rhs68.i:                                     ; preds = %land.rhs57.i
  %.b161162.i = load i1, ptr @__up_write.__already_done.15, align 1
  br i1 %.b161162.i, label %if.then126.i, label %if.then79.i, !prof !97

if.then79.i:                                      ; preds = %land.rhs68.i
  store i1 true, ptr @__up_write.__already_done.15, align 1
  %call.i.i167.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %28 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %sem, align 4
  %30 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %magic.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %call.i.i168.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %owner.i.i, align 4
  %35 = ptrtoint ptr %task55.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task55.i, align 8
  %37 = ptrtoint ptr %36 to i32
  %wait_list100.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %38 = ptrtoint ptr %wait_list100.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %wait_list100.i, align 4
  %cmp.i175.not.i = icmp eq ptr %39, %wait_list100.i
  %cond103.i = select i1 %cmp.i175.not.i, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1315, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, i32 noundef %29, i32 noundef %32, i32 noundef %34, i32 noundef %37, ptr noundef nonnull %cond103.i) #9
  br label %if.then126.i

if.then126.i:                                     ; preds = %if.then79.i, %land.rhs68.i
  %call127.i = tail call i32 @debug_locks_off() #9
  br label %do.end130.i

do.end130.i:                                      ; preds = %if.then126.i, %land.rhs57.i, %land.lhs.true51.i, %do.body49.i, %entry
  %owner.i177.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i178.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %owner.i177.i, i32 noundef 4) #9
  %40 = ptrtoint ptr %owner.i177.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %owner.i177.i, align 4
  %call.i.i169.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 -1, ptr elementtype(i32) %sem) #9, !srcloc !106
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  %and.i = and i32 %asmresult.i.i.i.i.i, 2
  %tobool133.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool133.not.i, label %__up_write.exit, label %if.then140.i, !prof !97

if.then140.i:                                     ; preds = %do.end130.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q.i) #9
  %42 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q.i, i32 0, i32 1
  %43 = ptrtoint ptr %wake_q.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q.i, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %wake_q.i, ptr %42, align 4
  %wait_lock.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  %call.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock.i) #9
  %wait_list.i2 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %45 = ptrtoint ptr %wait_list.i2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %wait_list.i2, align 4
  %cmp.i.not.i3 = icmp eq ptr %46, %wait_list.i2
  br i1 %cmp.i.not.i3, label %rwsem_wake.exit, label %if.then.i4

if.then.i4:                                       ; preds = %if.then140.i
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef 0, ptr noundef nonnull %wake_q.i) #9
  br label %rwsem_wake.exit

rwsem_wake.exit:                                  ; preds = %if.then.i4, %if.then140.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock.i, i32 noundef %call.i) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q.i) #9
  br label %__up_write.exit

__up_write.exit:                                  ; preds = %rwsem_wake.exit, %do.end130.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @downgrade_write(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_q.i.i = alloca %struct.wake_q_head, align 4
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_downgrade(ptr noundef %dep_map, i32 noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %2 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.end50.i

land.lhs.true.i:                                  ; preds = %entry
  %owner.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %owner.i.i, align 4
  %and.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i to ptr
  %6 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i70.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i70.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cmp.not.i = icmp eq ptr %9, %5
  br i1 %cmp.not.i, label %do.end50.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %.b66.i = load i1, ptr @__downgrade_write.__already_done, align 1
  br i1 %.b66.i, label %if.then46.i, label %if.then.i, !prof !97

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @__downgrade_write.__already_done, align 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %10 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sem, align 4
  %magic.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %12 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %magic.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %call.i.i68.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %owner.i.i, align 4
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %19 = ptrtoint ptr %18 to i32
  %wait_list.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %20 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %wait_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %wait_list.i
  %cond.i = select i1 %cmp.i.not.i, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1337, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %14, i32 noundef %16, i32 noundef %19, ptr noundef nonnull %cond.i) #9
  br label %if.then46.i

if.then46.i:                                      ; preds = %if.then.i, %land.rhs.i
  %call47.i = tail call i32 @debug_locks_off() #9
  br label %do.end50.i

do.end50.i:                                       ; preds = %if.then46.i, %land.lhs.true.i, %entry
  %call.i.i69.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 255, ptr elementtype(i32) %sem) #9, !srcloc !106
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  %23 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i, align 8
  %27 = ptrtoint ptr %26 to i32
  %owner1.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i.i, i32 noundef 4) #9
  %28 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %owner1.i.i.i, align 4
  %and.i1.i.i = and i32 %29, 2
  %or.i.i.i = or i32 %and.i1.i.i, %27
  %or2.i.i.i = or i32 %or.i.i.i, 1
  %call.i.i5.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i.i.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 %or2.i.i.i, ptr %owner1.i.i.i, align 4
  %and.i = and i32 %asmresult.i.i.i.i.i, 2
  %tobool53.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool53.not.i, label %__downgrade_write.exit, label %if.then54.i

if.then54.i:                                      ; preds = %do.end50.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q.i.i) #9
  %31 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %wake_q.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q.i.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %wake_q.i.i, ptr %31, align 4
  %wait_lock.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  %call.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock.i.i) #9
  %wait_list.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %34 = ptrtoint ptr %wait_list.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %wait_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %35, %wait_list.i.i
  br i1 %cmp.i.not.i.i, label %rwsem_downgrade_wake.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then54.i
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef 2, ptr noundef nonnull %wake_q.i.i) #9
  br label %rwsem_downgrade_wake.exit.i

rwsem_downgrade_wake.exit.i:                      ; preds = %if.then.i.i, %if.then54.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock.i.i, i32 noundef %call.i.i) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q.i.i) #9
  br label %__downgrade_write.exit

__downgrade_write.exit:                           ; preds = %rwsem_downgrade_wake.exit.i, %do.end50.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_downgrade(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @down_read_nested(ptr noundef %sem, i32 noundef %subclass) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1585) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_read_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  %call.i = tail call fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_read_killable_nested(ptr noundef %sem, i32 noundef %subclass) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1593) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_read_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.then6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  %call.i = tail call fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef 258) #9
  %phi.cmp = icmp eq i32 %call.i, 0
  br i1 %phi.cmp, label %if.then6, label %if.then10.critedge

if.then6:                                         ; preds = %if.then, %entry
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

if.then10.critedge:                               ; preds = %if.then
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

return:                                           ; preds = %if.then10.critedge, %if.then6
  %retval.0 = phi i32 [ -4, %if.then10.critedge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_down_write_nest_lock(ptr noundef %sem, ptr noundef %nest) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.i.i.i = alloca i32, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1607) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %nest, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_write_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %2 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i, %if.then
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %4, i32 1, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i.i.i.i, label %rwsem_write_trylock.exit.thread.i.i, label %if.then.i.i, !prof !97

rwsem_write_trylock.exit.thread.i.i:              ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  %owner.i.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %6 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %owner.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  br label %if.end

if.then.i.i:                                      ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %call3.i.i = call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %rwsem_write_trylock.exit.thread.i.i, %entry
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @down_read_non_owner(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1615) #9
  %call.i = tail call fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef 2) #9
  %owner1.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %owner1.i, align 4
  %and.i = and i32 %1, 2
  %or2.i = or i32 %and.i, 1
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %owner1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 %or2.i, ptr %owner1.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @down_write_nested(ptr noundef %sem, i32 noundef %subclass) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.i.i.i = alloca i32, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1623) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_write_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %2 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i, %if.then
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %4, i32 1, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i.i.i.i, label %rwsem_write_trylock.exit.thread.i.i, label %if.then.i.i, !prof !97

rwsem_write_trylock.exit.thread.i.i:              ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  %owner.i.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %6 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %owner.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  br label %if.end

if.then.i.i:                                      ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %call3.i.i = call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %rwsem_write_trylock.exit.thread.i.i, %entry
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @down_write_killable_nested(ptr noundef %sem, i32 noundef %subclass) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp.i.i.i = alloca i32, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1631) #9
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 6
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #9
  %call = tail call fastcc i32 @__down_write_trylock(ptr noundef %sem)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.then6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %2 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp.i.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i, %if.then
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %4, i32 1, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i.i.i.i, label %rwsem_write_trylock.exit.thread.i.i, label %if.then.i.i, !prof !97

rwsem_write_trylock.exit.thread.i.i:              ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  %owner.i.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %6 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i, align 8
  %10 = ptrtoint ptr %9 to i32
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %owner.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %owner.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  br label %if.then6

if.then.i.i:                                      ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %call3.i.i = call fastcc ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef 258) #9
  %cmp.i.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then10.critedge, label %if.then6

if.then6:                                         ; preds = %if.then.i.i, %rwsem_write_trylock.exit.thread.i.i, %entry
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

if.then10.critedge:                               ; preds = %if.then.i.i
  call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #9
  br label %return

return:                                           ; preds = %if.then10.critedge, %if.then6
  %retval.0 = phi i32 [ -4, %if.then10.critedge ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @up_read_non_owner(ptr noundef %sem) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %0 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end48

land.lhs.true:                                    ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %1 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sem, align 4
  %and.i = and i32 %2, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %is_rwsem_reader_owned.exit, label %land.rhs

is_rwsem_reader_owned.exit:                       ; preds = %land.lhs.true
  %owner.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %owner.i.i, align 4
  %and.i.i = and i32 %4, 1
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %land.rhs, label %do.end48

land.rhs:                                         ; preds = %is_rwsem_reader_owned.exit, %land.lhs.true
  %.b56 = load i1, ptr @up_read_non_owner.__already_done, align 1
  br i1 %.b56, label %if.then44, label %if.then, !prof !97

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @up_read_non_owner.__already_done, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %5 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sem, align 4
  %magic = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %7 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %magic, align 4
  %9 = ptrtoint ptr %8 to i32
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i58 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %owner, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i59 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i59 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %17 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %18, %wait_list
  %cond = select i1 %cmp.i.not, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1646, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %9, i32 noundef %11, i32 noundef %16, ptr noundef nonnull %cond) #9
  br label %if.then44

if.then44:                                        ; preds = %if.then, %land.rhs
  %call45 = tail call i32 @debug_locks_off() #9
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %is_rwsem_reader_owned.exit, %entry
  tail call fastcc void @__up_read(ptr noundef %sem)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__down_read_common(ptr noundef %sem, i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  %owner.i.i = alloca i32, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 256, ptr elementtype(i32) %sem) #9, !srcloc !103
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !107
  %cmp.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i, label %land.rhs.i, label %if.end37.i

land.rhs.i:                                       ; preds = %entry
  %.b47.i = load i1, ptr @rwsem_read_trylock.__already_done, align 1
  br i1 %.b47.i, label %if.then36.i, label %if.then.i, !prof !97

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @rwsem_read_trylock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #9
  br label %if.then36.i

if.then36.i:                                      ; preds = %if.then.i, %land.rhs.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %owner.i.i) #9
  %owner1.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %1 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %owner1.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i, %if.then36.i
  %storemerge.i.i = phi i32 [ %2, %if.then36.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.i ]
  %3 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %storemerge.i.i, ptr %owner.i.i, align 4
  %4 = and i32 %storemerge.i.i, 3
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %do.cond.i.i, label %rwsem_set_nonspinnable.exit.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %or.i.i = or i32 %storemerge.i.i, 2
  %call.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %owner.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %owner.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %owner1.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i, %do.cond.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %owner1.i.i, ptr %owner1.i.i, i32 %7, i32 %or.i.i, ptr elementtype(i32) %owner1.i.i) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i:               ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %rwsem_set_nonspinnable.exit.i, label %do.body.i.i, !prof !97

rwsem_set_nonspinnable.exit.i:                    ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %owner.i.i) #9
  br label %if.end37.i

if.end37.i:                                       ; preds = %rwsem_set_nonspinnable.exit.i, %entry
  %and.i = and i32 %asmresult.i.i.i.i.i, -2147483641
  %tobool38.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool38.not.i, label %rwsem_read_trylock.exit.thread, label %if.then

rwsem_read_trylock.exit.thread:                   ; preds = %if.end37.i
  %9 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i, align 8
  %13 = ptrtoint ptr %12 to i32
  %owner1.i.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i.i, i32 noundef 4) #9
  %14 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %owner1.i.i.i, align 4
  %and.i1.i.i = and i32 %15, 2
  %or.i.i.i = or i32 %and.i1.i.i, %13
  %or2.i.i.i = or i32 %or.i.i.i, 1
  %call.i.i5.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %owner1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %or2.i.i.i, ptr %owner1.i.i.i, align 4
  br label %cleanup

if.then:                                          ; preds = %if.end37.i
  %call1 = call fastcc ptr @rwsem_down_read_slowpath(ptr noundef %sem, i32 noundef %asmresult.i.i.i.i.i, i32 noundef %state)
  %cmp.i68 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %cleanup, label %do.body

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %17 = load i32, ptr @debug_locks_silent, align 4
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %call.i.i.i69 = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %18 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sem, align 4
  %and.i70 = and i32 %19, 1
  %tobool.not.i = icmp eq i32 %and.i70, 0
  br i1 %tobool.not.i, label %is_rwsem_reader_owned.exit, label %land.rhs

is_rwsem_reader_owned.exit:                       ; preds = %land.lhs.true
  %owner.i.i71 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i72 = call zeroext i1 @__kasan_check_read(ptr noundef %owner.i.i71, i32 noundef 4) #9
  %20 = ptrtoint ptr %owner.i.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %owner.i.i71, align 4
  %and.i.i = and i32 %21, 1
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %land.rhs, label %cleanup

land.rhs:                                         ; preds = %is_rwsem_reader_owned.exit, %land.lhs.true
  %.b65 = load i1, ptr @__down_read_common.__already_done, align 1
  br i1 %.b65, label %if.then51, label %if.then13, !prof !97

if.then13:                                        ; preds = %land.rhs
  store i1 true, ptr @__down_read_common.__already_done, align 1
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %22 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sem, align 4
  %magic = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 5
  %24 = ptrtoint ptr %magic to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %magic, align 4
  %26 = ptrtoint ptr %25 to i32
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i67 = call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %owner, align 4
  %29 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i73 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i73 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %33 = ptrtoint ptr %32 to i32
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %34 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i74.not = icmp eq ptr %35, %wait_list
  %cond = select i1 %cmp.i74.not, ptr @.str.4, ptr @.str.5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1216, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %23, i32 noundef %26, i32 noundef %28, i32 noundef %33, ptr noundef nonnull %cond) #9
  br label %if.then51

if.then51:                                        ; preds = %if.then13, %land.rhs
  %call52 = call i32 @debug_locks_off() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %is_rwsem_reader_owned.exit, %do.body, %if.then, %rwsem_read_trylock.exit.thread
  %retval.0 = phi i32 [ -4, %if.then ], [ 0, %is_rwsem_reader_owned.exit ], [ 0, %do.body ], [ 0, %if.then51 ], [ 0, %rwsem_read_trylock.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rwsem_down_read_slowpath(ptr noundef %sem, i32 noundef %count, i32 noundef %state) #0 section ".sched.text" align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %waiter = alloca %struct.rwsem_waiter, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %waiter) #9
  %0 = call ptr @memset(ptr %waiter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #9
  %1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %2 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wake_q, ptr %1, align 4
  %owner = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %owner, align 4
  %and = and i32 %5, 1
  %tobool.not = icmp ne i32 %and, 0
  %cmp = icmp sgt i32 %count, 511
  %or.cond = and i1 %cmp, %tobool.not
  %and3 = and i32 %count, 1
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond336 = and i1 %tobool4.not, %or.cond
  %and5 = and i32 %count, 5
  %tobool6.not = icmp ne i32 %and5, 0
  %6 = or i1 %tobool6.not, %or.cond336
  %7 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  br i1 %6, label %queue, label %if.then7

if.then7:                                         ; preds = %entry
  %11 = ptrtoint ptr %10 to i32
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %12 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %owner, align 4
  %and.i1.i = and i32 %13, 2
  %or.i.i = or i32 %and.i1.i, %11
  %or2.i.i = or i32 %or.i.i, 1
  %call.i.i5.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner, i32 noundef 4) #9
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %or2.i.i, ptr %owner, align 4
  %15 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i342 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i342 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %20, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 8) to i32)
  %21 = inttoptr i32 %add.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add8.i = add i32 %23, 1
  store i32 %add8.i, ptr %21, align 4
  %24 = and i32 %count, -254
  %.not = icmp eq i32 %24, 258
  br i1 %.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.then7
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %25 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %26, %wait_list
  br i1 %cmp.i.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef 2, ptr noundef nonnull %wake_q)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then12
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q) #9
  br label %cleanup

queue:                                            ; preds = %entry
  %task21 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 1
  %27 = ptrtoint ptr %task21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %10, ptr %task21, align 4
  %type = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 2
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %29, 1
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 3
  %30 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add, ptr %timeout, align 4
  %wait_lock22 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock22) #9
  %wait_list23 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %31 = ptrtoint ptr %wait_list23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %wait_list23, align 4
  %cmp.i343.not = icmp eq ptr %32, %wait_list23
  br i1 %cmp.i343.not, label %if.then26, label %if.end38

if.then26:                                        ; preds = %queue
  %call.i.i340 = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %33 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %sem, align 4
  %and29 = and i32 %34, 5
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end, label %if.end38

do.end:                                           ; preds = %if.then26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock22) #9
  %35 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i345 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i345 to ptr
  %task.i346 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i346 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i346, align 8
  %39 = ptrtoint ptr %38 to i32
  %call.i.i.i.i348 = call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %40 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %owner, align 4
  %and.i1.i349 = and i32 %41, 2
  %or.i.i350 = or i32 %and.i1.i349, %39
  %or2.i.i351 = or i32 %or.i.i350, 1
  %call.i.i5.i.i352 = call zeroext i1 @__kasan_check_write(ptr noundef %owner, i32 noundef 4) #9
  %42 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %or2.i.i351, ptr %owner, align 4
  %43 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i353 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i353 to ptr
  %cpu.i354 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu.i354 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i354, align 4
  %arrayidx7.i355 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx7.i355 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx7.i355, align 4
  %add.i356 = add i32 %48, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 9) to i32)
  %49 = inttoptr i32 %add.i356 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add8.i357 = add i32 %51, 1
  store i32 %add8.i357, ptr %49, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.then26, %queue
  %adjustment.0 = phi i32 [ -256, %queue ], [ -254, %if.then26 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %52 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end38
  %dep_map.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3, i32 4
  %call.i.i358 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  %cmp.not.i = icmp eq i32 %call.i.i358, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i, !prof !104

do.end.i:                                         ; preds = %land.rhs.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 368, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i, %if.end38
  %prev.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %54, ptr noundef %wait_list23) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %rwsem_add_waiter.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %waiter, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %wait_list23, ptr %waiter, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %waiter, ptr %54, align 4
  br label %rwsem_add_waiter.exit

rwsem_add_waiter.exit:                            ; preds = %if.end.i.i.i, %if.end.i
  %call.i.i341 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !109
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %adjustment.0, ptr elementtype(i32) %sem) #9, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %59, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !110
  %and41 = and i32 %asmresult.i.i.i.i, -255
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %lor.lhs.false.critedge

if.then43:                                        ; preds = %rwsem_add_waiter.exit
  %call.i.i.i.i359 = call zeroext i1 @__kasan_check_read(ptr noundef %owner, i32 noundef 4) #9
  %60 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %owner, align 4
  %and.i.i360 = and i32 %61, 2
  %tobool.i.not.i = icmp eq i32 %and.i.i360, 0
  br i1 %tobool.i.not.i, label %if.then51, label %if.then.i

if.then.i:                                        ; preds = %if.then43
  %call.i.i.i361 = call zeroext i1 @__kasan_check_write(ptr noundef %owner, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %owner, i32 1, i32 3, i32 1) #9
  %62 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %owner, ptr %owner, i32 2, ptr elementtype(i32) %owner) #9, !srcloc !111
  br label %if.then51

lor.lhs.false.critedge:                           ; preds = %rwsem_add_waiter.exit
  %and46 = and i32 %asmresult.i.i.i.i, 1
  %tobool47.not = icmp ne i32 %and46, 0
  %and49 = and i32 %adjustment.0, 2
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond339 = or i1 %tobool50.not, %tobool47.not
  br i1 %or.cond339, label %if.end52, label %if.then51

if.then51:                                        ; preds = %lor.lhs.false.critedge, %if.then.i, %if.then43
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef 0, ptr noundef nonnull %wake_q)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false.critedge
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock22) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q) #9
  %and56 = and i32 %state, 204
  %tobool57.not = icmp eq i32 %and56, 0
  %and.i363 = and i32 %state, 257
  %tobool.not.i364 = icmp eq i32 %and.i363, 0
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br label %for.cond

for.cond:                                         ; preds = %if.end148, %if.end52
  br i1 %tobool57.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %.b335 = load i1, ptr @rwsem_down_read_slowpath.__already_done, align 1
  br i1 %.b335, label %__here, label %if.then65, !prof !97

if.then65:                                        ; preds = %land.rhs
  store i1 true, ptr @rwsem_down_read_slowpath.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1019, i32 noundef 9, ptr noundef null) #9
  br label %__here

__here:                                           ; preds = %if.then65, %land.rhs, %for.cond
  %63 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 212
  %65 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_read_slowpath, %__here) to i32), ptr %task_state_change, align 4
  %66 = load ptr, ptr %task, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 %state, ptr %66, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !112
  %68 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %task21, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  %tobool134.not = icmp eq ptr %69, null
  br i1 %tobool134.not, label %__here199, label %if.end136

if.end136:                                        ; preds = %__here
  %70 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task, align 8
  br i1 %tobool.not.i364, label %if.end148, label %if.end.i365

if.end.i365:                                      ; preds = %if.end136
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %stack.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %76 = and i32 %75, 256
  %tobool.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !97

signal_pending.exit.i:                            ; preds = %if.end.i365
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %73, align 4
  %and1.i.i.i.i.i.i = and i32 %78, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end148, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i365
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %if.then141

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 116, i32 1
  %79 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %signal.i.i, align 4
  %81 = and i32 %80, 256
  %tobool140.not = icmp eq i32 %81, 0
  br i1 %tobool140.not, label %if.end148, label %if.then141

if.then141:                                       ; preds = %signal_pending_state.exit, %if.end3.i
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock22) #9
  %82 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task21, align 4
  %tobool144.not = icmp eq ptr %83, null
  br i1 %tobool144.not, label %if.end146, label %out_nolock

if.end146:                                        ; preds = %if.then141
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock22) #9
  br label %__here199

if.end148:                                        ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %if.end136
  call void @schedule() #9
  %84 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i366 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i366 to ptr
  %cpu.i367 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %cpu.i367 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cpu.i367, align 4
  %arrayidx7.i368 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %88 = ptrtoint ptr %arrayidx7.i368 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx7.i368, align 4
  %add.i369 = add i32 %89, ptrtoint (ptr @lockevents to i32)
  %90 = inttoptr i32 %add.i369 to ptr
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %add8.i370 = add i32 %92, 1
  store i32 %add8.i370, ptr %90, align 4
  br label %for.cond

__here199:                                        ; preds = %if.end146, %__here
  %93 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %task, align 8
  %task_state_change203 = getelementptr inbounds %struct.task_struct, ptr %94, i32 0, i32 212
  %95 = ptrtoint ptr %task_state_change203 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_read_slowpath, %__here199) to i32), ptr %task_state_change203, align 4
  %96 = load ptr, ptr %task, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 0, ptr %96, align 128
  %98 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i372 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i372 to ptr
  %cpu.i373 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu.i373 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu.i373, align 4
  %arrayidx7.i374 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx7.i374 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx7.i374, align 4
  %add.i375 = add i32 %103, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 7) to i32)
  %104 = inttoptr i32 %add.i375 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %add8.i376 = add i32 %106, 1
  store i32 %add8.i376, ptr %104, align 4
  br label %cleanup

out_nolock:                                       ; preds = %if.then141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %107 = load i32, ptr @debug_locks, align 4
  %tobool.not.i378 = icmp eq i32 %107, 0
  br i1 %tobool.not.i378, label %if.end.i384, label %land.rhs.i382

land.rhs.i382:                                    ; preds = %out_nolock
  %dep_map.i379 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3, i32 4
  %call.i.i380 = call i32 @lock_is_held_type(ptr noundef %dep_map.i379, i32 noundef -1) #9
  %cmp.not.i381 = icmp eq i32 %call.i.i380, 0
  br i1 %cmp.not.i381, label %do.end.i383, label %if.end.i384, !prof !104

do.end.i383:                                      ; preds = %land.rhs.i382
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 382, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i384

if.end.i384:                                      ; preds = %do.end.i383, %land.rhs.i382, %out_nolock
  %call.i.i39.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #9
  br i1 %call.i.i39.i, label %if.end.i.i.i385, label %list_del.exit.i

if.end.i.i.i385:                                  ; preds = %if.end.i384
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i, align 4
  %110 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i385, %if.end.i384
  %114 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %prev.i.i386 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i386 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i386, align 4
  %116 = ptrtoint ptr %wait_list23 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %wait_list23, align 4
  %cmp.i.not.i = icmp eq ptr %117, %wait_list23
  br i1 %cmp.i.not.i, label %if.end35.i, label %rwsem_del_waiter.exit, !prof !104

if.end35.i:                                       ; preds = %list_del.exit.i
  %call.i.i.i388 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %118 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 6, ptr elementtype(i32) %sem) #9, !srcloc !111
  br label %rwsem_del_waiter.exit

rwsem_del_waiter.exit:                            ; preds = %if.end35.i, %list_del.exit.i
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock22) #9
  br label %__here271

__here271:                                        ; preds = %rwsem_del_waiter.exit
  %119 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task, align 8
  %task_state_change275 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 212
  %121 = ptrtoint ptr %task_state_change275 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_read_slowpath, %__here271) to i32), ptr %task_state_change275, align 4
  %122 = load ptr, ptr %task, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 0, ptr %122, align 128
  %124 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i389 = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i389 to ptr
  %cpu.i390 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %cpu.i390 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cpu.i390, align 4
  %arrayidx7.i391 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %127
  %128 = ptrtoint ptr %arrayidx7.i391 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx7.i391, align 4
  %add.i392 = add i32 %129, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 10) to i32)
  %130 = inttoptr i32 %add.i392 to ptr
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %add8.i393 = add i32 %132, 1
  store i32 %add8.i393, ptr %130, align 4
  br label %cleanup

cleanup:                                          ; preds = %__here271, %__here199, %do.end, %if.end16, %if.then7
  %retval.0 = phi ptr [ inttoptr (i32 -4 to ptr), %__here271 ], [ %sem, %__here199 ], [ %sem, %do.end ], [ %sem, %if.end16 ], [ %sem, %if.then7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %waiter) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef %wake_type, ptr noundef %wake_q) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wlist = alloca %struct.list_head, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wlist) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %wlist, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !104

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %2 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_list, align 4
  %type = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %cmp26 = icmp eq i32 %5, 0
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  %cmp28 = icmp eq i32 %wake_type, 0
  br i1 %cmp28, label %if.then29, label %cleanup171

if.then29:                                        ; preds = %if.then27
  %task = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  tail call void @wake_q_add(ptr noundef %wake_q, ptr noundef %7) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %13, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 3) to i32)
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add8.i = add i32 %16, 1
  store i32 %add8.i, ptr %14, align 4
  br label %cleanup171

if.end31:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %17 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sem, align 4
  %cmp33 = icmp slt i32 %18, 0
  br i1 %cmp33, label %cleanup171, label %if.end41, !prof !104

if.end41:                                         ; preds = %if.end31
  %cmp42.not = icmp eq i32 %wake_type, 2
  br i1 %cmp42.not, label %if.end64, label %if.then43

if.then43:                                        ; preds = %if.end41
  %call.i.i223 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 256, ptr elementtype(i32) %sem) #9, !srcloc !106
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !115
  %and = and i32 %asmresult.i.i.i.i, 1
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %cleanup.thread, label %if.then53, !prof !97

if.then53:                                        ; preds = %if.then43
  %and54 = and i32 %asmresult.i.i.i.i, 4
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %land.lhs.true, label %cleanup

land.lhs.true:                                    ; preds = %if.then53
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %21, %22
  %cmp56 = icmp slt i32 %sub, 0
  br i1 %cmp56, label %if.then57, label %cleanup

if.then57:                                        ; preds = %land.lhs.true
  %23 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i227 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i227 to ptr
  %cpu.i228 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i228 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i228, align 4
  %arrayidx7.i229 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx7.i229 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.i229, align 4
  %add.i230 = add i32 %28, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 11) to i32)
  %29 = inttoptr i32 %add.i230 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add8.i231 = add i32 %31, 1
  store i32 %add8.i231, ptr %29, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then43
  %task63 = getelementptr inbounds %struct.rwsem_waiter, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task63, align 4
  %34 = ptrtoint ptr %33 to i32
  %owner1.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i, i32 noundef 4) #9
  %35 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %owner1.i, align 4
  %and.i = and i32 %36, 2
  %or.i = or i32 %and.i, %34
  %or2.i = or i32 %or.i, 1
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %owner1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 %or2.i, ptr %owner1.i, align 4
  br label %if.end64

cleanup:                                          ; preds = %if.then57, %land.lhs.true, %if.then53
  %adjustment.0.neg = phi i32 [ -256, %if.then53 ], [ -252, %if.then57 ], [ -256, %land.lhs.true ]
  %call.i.i224 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %adjustment.0.neg, ptr elementtype(i32) %sem) #9, !srcloc !116
  br label %cleanup171

if.end64:                                         ; preds = %cleanup.thread, %if.end41
  %adjustment.2 = phi i32 [ 0, %if.end41 ], [ 256, %cleanup.thread ]
  %39 = ptrtoint ptr %wlist to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %wlist, ptr %wlist, align 4
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %wlist, ptr %0, align 4
  %41 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wait_list, align 4
  %cmp76.not250 = icmp eq ptr %42, %wait_list
  br i1 %cmp76.not250, label %for.end.thread257, label %for.body

for.end.thread257:                                ; preds = %if.end64
  %sub98260 = sub nsw i32 0, %adjustment.2
  br label %__lockevent_inc.exit

for.body:                                         ; preds = %for.inc, %if.end64
  %waiter.0252 = phi ptr [ %tmp.0254, %for.inc ], [ %42, %if.end64 ]
  %woken.0251 = phi i32 [ %woken.1, %for.inc ], [ 0, %if.end64 ]
  %43 = ptrtoint ptr %waiter.0252 to i32
  call void @__asan_load4_noabort(i32 %43)
  %tmp.0254 = load ptr, ptr %waiter.0252, align 4
  %type79 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter.0252, i32 0, i32 2
  %44 = ptrtoint ptr %type79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type79, align 4
  %cmp80 = icmp eq i32 %45, 0
  br i1 %cmp80, label %for.inc, label %if.end82

if.end82:                                         ; preds = %for.body
  %inc = add i32 %woken.0251, 1
  %call.i.i232 = call zeroext i1 @__list_del_entry_valid(ptr noundef %waiter.0252) #9
  br i1 %call.i.i232, label %if.end.i.i, label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end82
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.0252, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %waiter.0252 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %waiter.0252, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end82
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %0, align 4
  %call.i.i.i233 = call zeroext i1 @__list_add_valid(ptr noundef %waiter.0252, ptr noundef %53, ptr noundef nonnull %wlist) #9
  br i1 %call.i.i.i233, label %if.end.i.i.i, label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %waiter.0252, ptr %0, align 4
  %55 = ptrtoint ptr %waiter.0252 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %wlist, ptr %waiter.0252, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter.0252, i32 0, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %waiter.0252, ptr %53, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i
  %cmp84 = icmp sgt i32 %inc, 255
  br i1 %cmp84, label %for.end.thread, label %for.inc, !prof !104

for.end.thread:                                   ; preds = %list_move_tail.exit
  %mul241 = shl i32 %inc, 8
  %sub98242 = sub i32 %mul241, %adjustment.2
  br label %do.body1.i

for.inc:                                          ; preds = %list_move_tail.exit, %for.body
  %woken.1 = phi i32 [ %woken.0251, %for.body ], [ %inc, %list_move_tail.exit ]
  %cmp76.not = icmp eq ptr %tmp.0254, %wait_list
  br i1 %cmp76.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %mul = shl i32 %woken.1, 8
  %sub98 = sub i32 %mul, %adjustment.2
  %tobool99.not = icmp eq i32 %woken.1, 0
  br i1 %tobool99.not, label %__lockevent_inc.exit, label %do.body1.i

do.body1.i:                                       ; preds = %for.end, %for.end.thread
  %sub98245 = phi i32 [ %sub98242, %for.end.thread ], [ %sub98, %for.end ]
  %58 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i234 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i234 to ptr
  %cpu.i235 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cpu.i235 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cpu.i235, align 4
  %arrayidx7.i236 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx7.i236 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx7.i236, align 4
  %add.i237 = add i32 %63, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 2) to i32)
  %64 = inttoptr i32 %add.i237 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %add8.i238 = add i32 %66, 1
  store i32 %add8.i238, ptr %64, align 4
  br label %__lockevent_inc.exit

__lockevent_inc.exit:                             ; preds = %do.body1.i, %for.end, %for.end.thread257
  %tobool99246 = phi i1 [ true, %for.end ], [ false, %do.body1.i ], [ true, %for.end.thread257 ]
  %sub98244 = phi i32 [ %sub98, %for.end ], [ %sub98245, %do.body1.i ], [ %sub98260, %for.end.thread257 ]
  %call.i.i225 = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %67 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %sem, align 4
  %69 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %70, %wait_list
  %and107 = and i32 %68, 4
  br i1 %cmp.i.not, label %if.then105, label %if.else

if.then105:                                       ; preds = %__lockevent_inc.exit
  %71 = xor i32 %and107, -2
  %spec.select = add i32 %71, %sub98244
  br label %if.end120

if.else:                                          ; preds = %__lockevent_inc.exit
  %tobool115.not = icmp eq i32 %and107, 0
  %or.cond = select i1 %tobool99246, i1 true, i1 %tobool115.not
  %sub117 = add i32 %sub98244, -4
  %spec.select222 = select i1 %or.cond, i32 %sub98244, i32 %sub117
  br label %if.end120

if.end120:                                        ; preds = %if.else, %if.then105
  %adjustment.3 = phi i32 [ %spec.select, %if.then105 ], [ %spec.select222, %if.else ]
  %tobool121.not = icmp eq i32 %adjustment.3, 0
  br i1 %tobool121.not, label %if.end124, label %if.then122

if.then122:                                       ; preds = %if.end120
  %call.i.i226 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %72 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %adjustment.3, ptr elementtype(i32) %sem) #9, !srcloc !116
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.end120
  %73 = ptrtoint ptr %wlist to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wlist, align 4
  %cmp136.not255 = icmp eq ptr %74, %wlist
  br i1 %cmp136.not255, label %cleanup171, label %for.body139

for.body139:                                      ; preds = %get_task_struct.exit, %if.end124
  %waiter.1256 = phi ptr [ %tmp.1, %get_task_struct.exit ], [ %74, %if.end124 ]
  %75 = ptrtoint ptr %waiter.1256 to i32
  call void @__asan_load4_noabort(i32 %75)
  %tmp.1 = load ptr, ptr %waiter.1256, align 4
  %task140 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter.1256, i32 0, i32 1
  %76 = ptrtoint ptr %task140 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task140, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !106
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %78, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !104

if.else.i.i.i.i:                                  ; preds = %for.body139
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %79 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %79, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !97

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %for.body139
  %.sink.i.i.i.i = phi i32 [ 2, %for.body139 ], [ 1, %if.else.i.i.i.i ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #9
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !117
  %80 = ptrtoint ptr %task140 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr null, ptr %task140, align 4
  call void @wake_q_add_safe(ptr noundef %wake_q, ptr noundef %77) #9
  %cmp136.not = icmp eq ptr %tmp.1, %wlist
  br i1 %cmp136.not, label %cleanup171, label %for.body139

cleanup171:                                       ; preds = %get_task_struct.exit, %if.end124, %cleanup, %if.end31, %if.then29, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wlist) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_nonspinnable(ptr noundef %sem) unnamed_addr #3 align 64 {
entry:
  %owner.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %owner.i, align 4
  %and.i = and i32 %1, 2
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %owner.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %owner.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %owner.i, ptr %owner.i, i32 2, ptr elementtype(i32) %owner.i) #9, !srcloc !111
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rwsem_down_write_slowpath(ptr noundef %sem, i32 noundef %state) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = alloca i32, align 4
  %owner.i74.i = alloca i32, align 4
  %count.i.i = alloca i32, align 4
  %waiter = alloca %struct.rwsem_waiter, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %waiter) #9
  %0 = call ptr @memset(ptr %waiter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #9
  %1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %2 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wake_q, ptr %1, align 4
  %4 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i394 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i394 to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 16384
  %8 = and i32 %7, 2
  %tobool.i.not.i = icmp eq i32 %8, 0
  %9 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  br i1 %tobool.i.not.i, label %do.body.i, label %if.end

do.body.i:                                        ; preds = %entry
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %12, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !118
  %owner1.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %13 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %owner1.i.i, align 4
  %and2.i.i = and i32 %14, -4
  %15 = inttoptr i32 %and2.i.i to ptr
  %and.i = and i32 %14, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %do.body9.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %tobool2.not.i = icmp ne i32 %and2.i.i, 0
  %and3.i = and i32 %14, 1
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = and i1 %tobool2.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %land.lhs.true5.i, label %cleanup.critedge.i

land.lhs.true5.i:                                 ; preds = %lor.lhs.false.i
  %on_cpu.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %on_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %on_cpu.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %do.body9.i, label %owner_on_cpu.exit.thread.i

owner_on_cpu.exit.thread.i:                       ; preds = %land.lhs.true5.i
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i.i, align 4
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %cpu.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  br label %land.lhs.true

do.body9.i:                                       ; preds = %land.lhs.true5.i, %do.body.i
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  br label %if.end.sink.split

cleanup.critedge.i:                               ; preds = %lor.lhs.false.i
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !119
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.critedge.i, %owner_on_cpu.exit.thread.i
  %22 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i18.c.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i18.c.i to ptr
  %preempt_count.i.i19.c.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i19.c.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i19.c.i, align 4
  %sub.i.c.i = add i32 %25, -1
  store volatile i32 %sub.i.c.i, ptr %preempt_count.i.i19.c.i, align 4
  %26 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i.i395 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i395 to ptr
  %preempt_count.i.i.i396 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i396, align 4
  %add.i.i397 = add i32 %29, 1
  store volatile i32 %add.i.i397, ptr %preempt_count.i.i.i396, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !120
  %osq.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 2
  %call.i = call zeroext i1 @osq_lock(ptr noundef %osq.i) #9
  br i1 %call.i, label %for.cond.preheader.i, label %rwsem_optimistic_spin.exit.critedge

for.cond.preheader.i:                             ; preds = %land.lhs.true
  %call1110.i = call fastcc i32 @rwsem_spin_on_owner(ptr noundef %sem) #9
  %and111.i = and i32 %call1110.i, 7
  %tobool.not112.i = icmp eq i32 %and111.i, 0
  br i1 %tobool.not112.i, label %rwsem_optimistic_spin.exit.critedge487, label %if.end3.i

if.end3.i:                                        ; preds = %cleanup.i, %for.cond.preheader.i
  %call1116.i = phi i32 [ %call1.i, %cleanup.i ], [ %call1110.i, %for.cond.preheader.i ]
  %rspin_threshold.0115.i = phi i64 [ %rspin_threshold.1100.i, %cleanup.i ], [ 0, %for.cond.preheader.i ]
  %loop.0114.i = phi i32 [ %loop.198.i, %cleanup.i ], [ 0, %for.cond.preheader.i ]
  %prev_owner_state.0113.i = phi i32 [ %call1116.i, %cleanup.i ], [ 1, %for.cond.preheader.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i.i) #9
  %call.i.i.i.i398 = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %30 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %sem, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i, %if.end3.i
  %storemerge.i.i = phi i32 [ %31, %if.end3.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i ]
  %32 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i.i, ptr %count.i.i, align 4
  %and.i.i = and i32 %storemerge.i.i, -251
  %tobool.not.i.i399 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i399, label %while.body.i.i, label %if.end7.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %or.i.i = or i32 %storemerge.i.i, 1
  %call.i.i6.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count.i.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count.i.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i, %while.body.i.i
  %35 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %34, i32 %or.i.i, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %34
  br i1 %cmp.not.i.i.i.i.i, label %rwsem_try_write_lock_unqueued.exit.i, label %while.cond.i.i, !prof !97

rwsem_try_write_lock_unqueued.exit.i:             ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i.i
  %36 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i69.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i69.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i, align 8
  %40 = ptrtoint ptr %39 to i32
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %40, ptr %owner1.i.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i7.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i7.i.i to ptr
  %cpu.i.i.i400 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i.i400 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i.i400, align 4
  %arrayidx7.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx7.i.i.i, align 4
  %add.i.i.i = add i32 %47, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 4) to i32)
  %48 = inttoptr i32 %add.i.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add8.i.i.i = add i32 %50, 1
  store i32 %add8.i.i.i, ptr %48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #9
  call void @osq_unlock(ptr noundef %osq.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  %51 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i67.i.c491 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i67.i.c491 to ptr
  %preempt_count.i.i68.i.c492 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i68.i.c492 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i68.i.c492, align 4
  %sub.i.i409.c493 = add i32 %54, -1
  store volatile i32 %sub.i.i409.c493, ptr %preempt_count.i.i68.i.c492, align 4
  br label %cleanup351

if.end7.i:                                        ; preds = %while.cond.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i.i) #9
  switch i32 %call1116.i, label %if.then24.i [
    i32 4, label %if.then8.i
    i32 2, label %cleanup.i
  ]

if.then8.i:                                       ; preds = %if.end7.i
  %cmp9.not.i = icmp eq i32 %prev_owner_state.0113.i, 4
  br i1 %cmp9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then8.i
  %call.i.i.i70.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %55 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %owner1.i.i, align 4
  %and.i71.i = and i32 %56, 2
  %tobool.i72.not.i = icmp eq i32 %and.i71.i, 0
  br i1 %tobool.i72.not.i, label %if.end13.i, label %for.end.i

if.end13.i:                                       ; preds = %if.then10.i
  %call.i.i.i73.i = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %57 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %sem, align 4
  %shr.i.i = ashr i32 %58, 8
  %59 = call i32 @llvm.smin.i32(i32 %shr.i.i, i32 30) #9
  %60 = mul i32 %59, 1000
  %mul.i.i = add i32 %60, 20000
  %div.i.i = sdiv i32 %mul.i.i, 2
  %conv.i.i = sext i32 %div.i.i to i64
  %call2.i.i = call i64 @sched_clock() #9
  %add3.i.i = add i64 %call2.i.i, %conv.i.i
  br label %if.then24.i

if.else.i:                                        ; preds = %if.then8.i
  %inc.i = add i32 %loop.0114.i, 1
  %and15.i = and i32 %inc.i, 15
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i, label %if.then24.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %call17.i = call i64 @sched_clock() #9
  %cmp18.i = icmp ugt i64 %call17.i, %rspin_threshold.0115.i
  br i1 %cmp18.i, label %if.then19.i, label %if.then24.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %owner.i74.i) #9
  %call.i.i.i75.i = call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %61 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %owner1.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i, %if.then19.i
  %storemerge.i76.i = phi i32 [ %62, %if.then19.i ], [ %asmresult3.i.i.i.i.i.i82.i, %arch_atomic_cmpxchg.exit.i.i.i.i.i ]
  %63 = ptrtoint ptr %owner.i74.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %storemerge.i76.i, ptr %owner.i74.i, align 4
  %64 = and i32 %storemerge.i76.i, 3
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %do.cond.i.i, label %rwsem_set_nonspinnable.exit.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %or.i77.i = or i32 %storemerge.i76.i, 2
  %call.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %owner1.i.i, i32 noundef 4) #9
  %call.i3.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %owner.i74.i, i32 noundef 4) #9
  %66 = ptrtoint ptr %owner.i74.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %owner.i74.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  call void @llvm.prefetch.p0(ptr %owner1.i.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i81.i

do.body.i.i.i.i.i.i81.i:                          ; preds = %do.body.i.i.i.i.i.i81.i, %do.cond.i.i
  %68 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %owner1.i.i, ptr %owner1.i.i, i32 %67, i32 %or.i77.i, ptr elementtype(i32) %owner1.i.i) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i79.i = extractvalue { i32, i32 } %68, 0
  %tobool.not.i.i.i.i.i.i80.i = icmp eq i32 %asmresult.i.i.i.i.i.i79.i, 0
  br i1 %tobool.not.i.i.i.i.i.i80.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i81.i

arch_atomic_cmpxchg.exit.i.i.i.i.i:               ; preds = %do.body.i.i.i.i.i.i81.i
  %asmresult3.i.i.i.i.i.i82.i = extractvalue { i32, i32 } %68, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %cmp.not.i.i.i.i83.i = icmp eq i32 %asmresult3.i.i.i.i.i.i82.i, %67
  br i1 %cmp.not.i.i.i.i83.i, label %rwsem_set_nonspinnable.exit.i, label %do.body.i.i, !prof !97

rwsem_set_nonspinnable.exit.i:                    ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i, %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %owner.i74.i) #9
  %69 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i84.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i84.i to ptr
  %cpu.i.i401 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %cpu.i.i401 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cpu.i.i401, align 4
  %arrayidx7.i.i402 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx7.i.i402 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx7.i.i402, align 4
  %add.i85.i = add i32 %74, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 6) to i32)
  %75 = inttoptr i32 %add.i85.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %add8.i.i403 = add i32 %77, 1
  store i32 %add8.i.i403, ptr %75, align 4
  call void @osq_unlock(ptr noundef %osq.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  br label %if.end.sink.split

if.then24.i:                                      ; preds = %land.lhs.true.i, %if.else.i, %if.end13.i, %if.end7.i
  %rspin_threshold.199.i = phi i64 [ %rspin_threshold.0115.i, %land.lhs.true.i ], [ %rspin_threshold.0115.i, %if.else.i ], [ %add3.i.i, %if.end13.i ], [ %rspin_threshold.0115.i, %if.end7.i ]
  %loop.197.i = phi i32 [ %inc.i, %land.lhs.true.i ], [ %inc.i, %if.else.i ], [ 0, %if.end13.i ], [ %loop.0114.i, %if.end7.i ]
  %78 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i404 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i404 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 16384
  %82 = and i32 %81, 2
  %tobool.i.not.i405 = icmp eq i32 %82, 0
  br i1 %tobool.i.not.i405, label %if.end27.i, label %for.end.i

if.end27.i:                                       ; preds = %if.then24.i
  %83 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i86.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i86.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i, align 8
  %prio.i.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 13
  %87 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %prio.i.i, align 8
  %cmp.i.i.i = icmp sgt i32 %88, 99
  %cmp32.not.i = icmp eq i32 %prev_owner_state.0113.i, 2
  %or.cond.i406 = select i1 %cmp.i.i.i, i1 true, i1 %cmp32.not.i
  br i1 %or.cond.i406, label %cleanup.i, label %for.end.i

cleanup.i:                                        ; preds = %if.end27.i, %if.end7.i
  %rspin_threshold.1100.i = phi i64 [ %rspin_threshold.199.i, %if.end27.i ], [ %rspin_threshold.0115.i, %if.end7.i ]
  %loop.198.i = phi i32 [ %loop.197.i, %if.end27.i ], [ %loop.0114.i, %if.end7.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !123
  %call1.i = call fastcc i32 @rwsem_spin_on_owner(ptr noundef %sem) #9
  %and.i407 = and i32 %call1.i, 7
  %tobool.not.i408 = icmp eq i32 %and.i407, 0
  br i1 %tobool.not.i408, label %for.end.i, label %if.end3.i

for.end.i:                                        ; preds = %cleanup.i, %if.end27.i, %if.then24.i, %if.then10.i
  call void @osq_unlock(ptr noundef %osq.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  br label %if.end.sink.split

rwsem_optimistic_spin.exit.critedge:              ; preds = %land.lhs.true
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  br label %if.end.sink.split

rwsem_optimistic_spin.exit.critedge487:           ; preds = %for.cond.preheader.i
  call void @osq_unlock(ptr noundef %osq.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !121
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %rwsem_optimistic_spin.exit.critedge487, %rwsem_optimistic_spin.exit.critedge, %for.end.i, %rwsem_set_nonspinnable.exit.i, %do.body9.i
  %89 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i18.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i18.i to ptr
  %preempt_count.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i19.i, align 4
  %sub.i.i409 = add i32 %92, -1
  store volatile i32 %sub.i.i409, ptr %preempt_count.i.i19.i, align 4
  %93 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i87.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i87.i to ptr
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry
  %.sink = phi ptr [ %10, %entry ], [ %94, %if.end.sink.split ]
  %cpu.i88.i = getelementptr inbounds %struct.thread_info, ptr %.sink, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i88.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i88.i, align 4
  %arrayidx7.i89.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx7.i89.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx7.i89.i, align 4
  %add.i90.i = add i32 %98, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 5) to i32)
  %99 = inttoptr i32 %add.i90.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %add8.i91.i = add i32 %101, 1
  store i32 %add8.i91.i, ptr %99, align 4
  %102 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i410 = and i32 %102, -16384
  %103 = inttoptr i32 %and.i410 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %task, align 8
  %task4 = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 1
  %106 = ptrtoint ptr %task4 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %task4, align 4
  %type = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 2
  %107 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %108, 1
  %timeout = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 3
  %109 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add, ptr %timeout, align 4
  %handoff_set = getelementptr inbounds %struct.rwsem_waiter, ptr %waiter, i32 0, i32 4
  %110 = ptrtoint ptr %handoff_set to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %handoff_set, align 4
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %111 = load i32, ptr @debug_locks, align 4
  %tobool.not.i411 = icmp eq i32 %111, 0
  br i1 %tobool.not.i411, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3, i32 4
  %call.i.i412 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  %cmp.not.i = icmp eq i32 %call.i.i412, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i, !prof !104

do.end.i:                                         ; preds = %land.rhs.i
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 368, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i, %if.end
  %wait_list.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %113, ptr noundef %wait_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %rwsem_add_waiter.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %waiter, ptr %prev.i.i, align 4
  %115 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %wait_list.i, ptr %waiter, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %waiter, ptr %113, align 4
  br label %rwsem_add_waiter.exit

rwsem_add_waiter.exit:                            ; preds = %if.end.i.i.i, %if.end.i
  %118 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wait_list.i, align 4
  %cmp.not = icmp eq ptr %119, %waiter
  br i1 %cmp.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %rwsem_add_waiter.exit
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %120 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %sem, align 4
  %and = and i32 %121, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %do.body19

if.end9:                                          ; preds = %if.then5
  %tobool11.not = icmp ugt i32 %121, 255
  %cond = zext i1 %tobool11.not to i32
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef %cond, ptr noundef nonnull %wake_q)
  %122 = ptrtoint ptr %wake_q to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wake_q, align 4
  %cmp.i = icmp eq ptr %123, inttoptr (i32 1 to ptr)
  br i1 %cmp.i, label %do.body19, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q) #9
  %124 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %wake_q, ptr %1, align 4
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9
  br label %do.body19

if.else:                                          ; preds = %rwsem_add_waiter.exit
  %call.i.i391 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %126 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 2, ptr elementtype(i32) %sem) #9, !srcloc !124
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then13, %if.end9, %if.then5
  %and20 = and i32 %state, 204
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %do.body19
  %.b390 = load i1, ptr @rwsem_down_write_slowpath.__already_done, align 1
  br i1 %.b390, label %__here, label %if.then29, !prof !97

if.then29:                                        ; preds = %land.rhs
  store i1 true, ptr @rwsem_down_write_slowpath.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1111, i32 noundef 9, ptr noundef null) #9
  br label %__here

__here:                                           ; preds = %if.then29, %land.rhs, %do.body19
  %127 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 212
  %129 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_write_slowpath, %__here) to i32), ptr %task_state_change, align 4
  %130 = load ptr, ptr %task, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile i32 %state, ptr %130, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !125
  %dep_map.i416 = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3, i32 4
  %and.i438 = and i32 %state, 257
  %tobool.not.i439 = icmp eq i32 %and.i438, 0
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br label %for.cond

for.cond:                                         ; preds = %trylock_again, %__here
  %132 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wait_list.i, align 4
  %cmp.i414 = icmp eq ptr %133, %waiter
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %134 = load i32, ptr @debug_locks, align 4
  %tobool.not.i415 = icmp eq i32 %134, 0
  br i1 %tobool.not.i415, label %if.end.i423, label %land.rhs.i418

land.rhs.i418:                                    ; preds = %for.cond
  %call.i.i417 = call i32 @lock_is_held_type(ptr noundef %dep_map.i416, i32 noundef -1) #9
  %cmp1.not.i = icmp eq i32 %call.i.i417, 0
  br i1 %cmp1.not.i, label %do.end.i419, label %if.end.i423, !prof !104

do.end.i419:                                      ; preds = %land.rhs.i418
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 574, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i423

if.end.i423:                                      ; preds = %do.end.i419, %land.rhs.i418, %for.cond
  %call.i.i.i420 = call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #9
  %135 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %sem, align 4
  br label %do.body28.i

do.body28.i:                                      ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i, %if.end.i423
  %storemerge.i = phi i32 [ %136, %if.end.i423 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_acquire.exit.i.i.i.i ]
  %137 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %storemerge.i, ptr %count.i, align 4
  %and.i424 = and i32 %storemerge.i, 4
  %tobool29.not.i = icmp eq i32 %and.i424, 0
  br i1 %tobool29.not.i, label %if.end40.i, label %if.then36.i

if.then36.i:                                      ; preds = %do.body28.i
  br i1 %cmp.i414, label %if.end40.thread.i, label %if.end90

if.end40.i:                                       ; preds = %do.body28.i
  %and41.i = and i32 %storemerge.i, -255
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else.i430, label %lor.lhs.false.i427

if.end40.thread.i:                                ; preds = %if.then36.i
  %138 = ptrtoint ptr %handoff_set to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %handoff_set, align 4
  %and4194.i = and i32 %storemerge.i, -255
  %tobool42.not95.i = icmp eq i32 %and4194.i, 0
  br i1 %tobool42.not95.i, label %if.else.i430, label %if.end90

lor.lhs.false.i427:                               ; preds = %if.end40.i
  %139 = ptrtoint ptr %task4 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %task4, align 4
  %prio.i.i425 = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 13
  %141 = ptrtoint ptr %prio.i.i425 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %prio.i.i425, align 8
  %cmp.i.i.i426 = icmp sgt i32 %142, 99
  br i1 %cmp.i.i.i426, label %land.lhs.true.i429, label %if.end49.i

land.lhs.true.i429:                               ; preds = %lor.lhs.false.i427
  %143 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %145 = load volatile i32, ptr @jiffies, align 128
  %sub.i428 = sub i32 %144, %145
  %cmp47.i = icmp slt i32 %sub.i428, 0
  br i1 %cmp47.i, label %if.end49.i, label %if.end90

if.end49.i:                                       ; preds = %land.lhs.true.i429, %lor.lhs.false.i427
  %or.i = or i32 %storemerge.i, 4
  br label %do.cond59.i

if.else.i430:                                     ; preds = %if.end40.thread.i, %if.end40.i
  %or50.i = and i32 %storemerge.i, -6
  %and51.i = or i32 %or50.i, 1
  %146 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile ptr, ptr %wait_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %147, %wait_list.i
  br i1 %cmp.i.not.i.i, label %list_is_singular.exit.thread.i, label %list_is_singular.exit.i

list_is_singular.exit.i:                          ; preds = %if.else.i430
  %148 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %147, %149
  %and56.i = and i32 %and51.i, -7
  br i1 %cmp.i.not.i, label %do.cond59.i, label %list_is_singular.exit.thread.i

list_is_singular.exit.thread.i:                   ; preds = %list_is_singular.exit.i, %if.else.i430
  br label %do.cond59.i

do.cond59.i:                                      ; preds = %list_is_singular.exit.thread.i, %list_is_singular.exit.i, %if.end49.i
  %new.2.ph.i = phi i32 [ %and56.i, %list_is_singular.exit.i ], [ %and51.i, %list_is_singular.exit.thread.i ], [ %or.i, %if.end49.i ]
  %call.i.i90.i = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count.i, i32 noundef 4) #9
  %150 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %count.i, align 4
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i, %do.cond59.i
  %152 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %151, i32 %new.2.ph.i, ptr elementtype(i32) %sem) #9, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %152, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i.i, label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i.i:         ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %152, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %151
  br i1 %cmp.not.i.i.i.i, label %do.end64.i, label %do.body28.i, !prof !97

do.end64.i:                                       ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i.i
  %and65.i = and i32 %new.2.ph.i, 4
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  br i1 %tobool66.not.i, label %if.end69.i, label %if.then67.i

if.then67.i:                                      ; preds = %do.end64.i
  %153 = ptrtoint ptr %handoff_set to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %handoff_set, align 4
  %154 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i431 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i.i.i431 to ptr
  %cpu.i.i432 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %cpu.i.i432 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cpu.i.i432, align 4
  %arrayidx7.i.i433 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx7.i.i433 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx7.i.i433, align 4
  %add.i.i434 = add i32 %159, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 14) to i32)
  %160 = inttoptr i32 %add.i.i434 to ptr
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %160, align 4
  %add8.i.i435 = add i32 %162, 1
  store i32 %add8.i.i435, ptr %160, align 4
  br label %if.end90

if.end69.i:                                       ; preds = %do.end64.i
  %call.i.i91.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #9
  br i1 %call.i.i91.i, label %if.end.i.i.i436, label %rwsem_try_write_lock.exit

if.end.i.i.i436:                                  ; preds = %if.end69.i
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %163 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %prev.i.i.i, align 4
  %165 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %164, ptr %prev1.i.i.i.i, align 4
  %168 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile ptr %166, ptr %164, align 4
  br label %rwsem_try_write_lock.exit

rwsem_try_write_lock.exit:                        ; preds = %if.end.i.i.i436, %if.end69.i
  %169 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %prev.i92.i = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %170 = ptrtoint ptr %prev.i92.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i92.i, align 4
  %owner.i.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %171 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i93.i = and i32 %171, -16384
  %172 = inttoptr i32 %and.i.i93.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 2
  %173 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %task.i.i, align 8
  %175 = ptrtoint ptr %174 to i32
  %call.i.i.i.i437 = call zeroext i1 @__kasan_check_write(ptr noundef %owner.i.i, i32 noundef 4) #9
  %176 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 %175, ptr %owner.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #9
  br label %__here250

if.end90:                                         ; preds = %if.then67.i, %land.lhs.true.i429, %if.end40.thread.i, %if.then36.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #9
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #9
  %177 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %task, align 8
  br i1 %tobool.not.i439, label %if.end97, label %if.end.i442

if.end.i442:                                      ; preds = %if.end90
  %stack.i.i.i440 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %stack.i.i.i440 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %stack.i.i.i440, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %180, align 4
  %183 = and i32 %182, 256
  %tobool.not.i.i441 = icmp eq i32 %183, 0
  br i1 %tobool.not.i.i441, label %signal_pending.exit.i, label %if.end3.i443, !prof !97

signal_pending.exit.i:                            ; preds = %if.end.i442
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %180, align 4
  %and1.i.i.i.i.i.i = and i32 %185, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.end97, label %if.end3.i443

if.end3.i443:                                     ; preds = %signal_pending.exit.i, %if.end.i442
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %__here322

signal_pending_state.exit:                        ; preds = %if.end3.i443
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 116, i32 1
  %186 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %signal.i.i, align 4
  %188 = and i32 %187, 256
  %tobool95.not = icmp eq i32 %188, 0
  br i1 %tobool95.not, label %if.end97, label %__here322

if.end97:                                         ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %if.end90
  %189 = ptrtoint ptr %handoff_set to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %handoff_set, align 4, !range !126
  %tobool99.not = icmp eq i8 %190, 0
  br i1 %tobool99.not, label %if.end111, label %if.then100

if.then100:                                       ; preds = %if.end97
  %191 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %194, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !127
  %call104 = call fastcc i32 @rwsem_spin_on_owner(ptr noundef %sem)
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !128
  %195 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i392 = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i392 to ptr
  %preempt_count.i.i393 = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i393 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i393, align 4
  %sub.i = add i32 %198, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i393, align 4
  %cmp108 = icmp eq i32 %call104, 1
  br i1 %cmp108, label %trylock_again, label %if.end111

if.end111:                                        ; preds = %if.then100, %if.end97
  call void @schedule() #9
  %199 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i445 = and i32 %199, -16384
  %200 = inttoptr i32 %and.i.i445 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %202
  %203 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx7.i, align 4
  %add.i446 = add i32 %204, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 1) to i32)
  %205 = inttoptr i32 %add.i446 to ptr
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %205, align 4
  %add8.i = add i32 %207, 1
  store i32 %add8.i, ptr %205, align 4
  br i1 %tobool21.not, label %__here169, label %land.rhs123

land.rhs123:                                      ; preds = %if.end111
  %.b388389 = load i1, ptr @rwsem_down_write_slowpath.__already_done.9, align 1
  br i1 %.b388389, label %__here169, label %if.then134, !prof !97

if.then134:                                       ; preds = %land.rhs123
  store i1 true, ptr @rwsem_down_write_slowpath.__already_done.9, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1144, i32 noundef 9, ptr noundef null) #9
  br label %__here169

__here169:                                        ; preds = %if.then134, %land.rhs123, %if.end111
  %208 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %task, align 8
  %task_state_change173 = getelementptr inbounds %struct.task_struct, ptr %209, i32 0, i32 212
  %210 = ptrtoint ptr %task_state_change173 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_write_slowpath, %__here169) to i32), ptr %task_state_change173, align 4
  %211 = load ptr, ptr %task, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile i32 %state, ptr %211, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  br label %trylock_again

trylock_again:                                    ; preds = %__here169, %if.then100
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9
  br label %for.cond

__here250:                                        ; preds = %rwsem_try_write_lock.exit
  %213 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %task, align 8
  %task_state_change254 = getelementptr inbounds %struct.task_struct, ptr %214, i32 0, i32 212
  %215 = ptrtoint ptr %task_state_change254 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_write_slowpath, %__here250) to i32), ptr %task_state_change254, align 4
  %216 = load ptr, ptr %task, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 0, ptr %216, align 128
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #9
  %218 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i448 = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i448 to ptr
  %cpu.i449 = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %cpu.i449 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %cpu.i449, align 4
  %arrayidx7.i450 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %221
  %222 = ptrtoint ptr %arrayidx7.i450 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx7.i450, align 4
  %add.i451 = add i32 %223, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 12) to i32)
  %224 = inttoptr i32 %add.i451 to ptr
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %224, align 4
  %add8.i452 = add i32 %226, 1
  store i32 %add8.i452, ptr %224, align 4
  br label %cleanup351

__here322:                                        ; preds = %signal_pending_state.exit, %if.end3.i443
  %task_state_change326 = getelementptr inbounds %struct.task_struct, ptr %178, i32 0, i32 212
  %227 = ptrtoint ptr %task_state_change326 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 ptrtoint (ptr blockaddress(@rwsem_down_write_slowpath, %__here322) to i32), ptr %task_state_change326, align 4
  %228 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store volatile i32 0, ptr %229, align 128
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %231 = load i32, ptr @debug_locks, align 4
  %tobool.not.i454 = icmp eq i32 %231, 0
  br i1 %tobool.not.i454, label %if.end.i460, label %land.rhs.i458

land.rhs.i458:                                    ; preds = %__here322
  %call.i.i456 = call i32 @lock_is_held_type(ptr noundef %dep_map.i416, i32 noundef -1) #9
  %cmp.not.i457 = icmp eq i32 %call.i.i456, 0
  br i1 %cmp.not.i457, label %do.end.i459, label %if.end.i460, !prof !104

do.end.i459:                                      ; preds = %land.rhs.i458
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 382, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i460

if.end.i460:                                      ; preds = %do.end.i459, %land.rhs.i458, %__here322
  %call.i.i39.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #9
  br i1 %call.i.i39.i, label %if.end.i.i.i463, label %list_del.exit.i467

if.end.i.i.i463:                                  ; preds = %if.end.i460
  %prev.i.i.i461 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %232 = ptrtoint ptr %prev.i.i.i461 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %prev.i.i.i461, align 4
  %234 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i.i462 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %prev1.i.i.i.i462 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %233, ptr %prev1.i.i.i.i462, align 4
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %237)
  store volatile ptr %235, ptr %233, align 4
  br label %list_del.exit.i467

list_del.exit.i467:                               ; preds = %if.end.i.i.i463, %if.end.i460
  %238 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %prev.i.i464 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %239 = ptrtoint ptr %prev.i.i464 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i464, align 4
  %240 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile ptr, ptr %wait_list.i, align 4
  %cmp.i.not.i466 = icmp eq ptr %241, %wait_list.i
  br i1 %cmp.i.not.i466, label %if.end35.i, label %rwsem_del_waiter.exit, !prof !104

if.end35.i:                                       ; preds = %list_del.exit.i467
  %call.i.i.i468 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #9
  %242 = call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 6, ptr elementtype(i32) %sem) #9, !srcloc !111
  br label %rwsem_del_waiter.exit

rwsem_del_waiter.exit:                            ; preds = %if.end35.i, %list_del.exit.i467
  %243 = ptrtoint ptr %wait_list.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile ptr, ptr %wait_list.i, align 4
  %cmp.i469.not = icmp eq ptr %244, %wait_list.i
  br i1 %cmp.i469.not, label %if.end348, label %if.then347

if.then347:                                       ; preds = %rwsem_del_waiter.exit
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef 0, ptr noundef nonnull %wake_q)
  br label %if.end348

if.end348:                                        ; preds = %if.then347, %rwsem_del_waiter.exit
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q) #9
  %245 = call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i470 = and i32 %245, -16384
  %246 = inttoptr i32 %and.i.i470 to ptr
  %cpu.i471 = getelementptr inbounds %struct.thread_info, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %cpu.i471 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %cpu.i471, align 4
  %arrayidx7.i472 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %248
  %249 = ptrtoint ptr %arrayidx7.i472 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx7.i472, align 4
  %add.i473 = add i32 %250, ptrtoint (ptr getelementptr inbounds ([15 x i32], ptr @lockevents, i32 0, i32 13) to i32)
  %251 = inttoptr i32 %add.i473 to ptr
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %add8.i474 = add i32 %253, 1
  store i32 %add8.i474, ptr %251, align 4
  br label %cleanup351

cleanup351:                                       ; preds = %if.end348, %__here250, %rwsem_try_write_lock_unqueued.exit.i
  %retval.0 = phi ptr [ %sem, %__here250 ], [ inttoptr (i32 -4 to ptr), %if.end348 ], [ %sem, %rwsem_try_write_lock_unqueued.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %waiter) #9
  ret ptr %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rwsem_spin_on_owner(ptr noundef %sem) unnamed_addr #6 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end89, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !130
  %5 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !131
  %14 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i142 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i142 to ptr
  %preempt_count.i.i143 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i143 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i143, align 4
  %sub.i = add i32 %17, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i143, align 4
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.rhs, label %if.end89

land.rhs:                                         ; preds = %land.lhs.true
  %18 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i, align 4
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %land.rhs22, label %if.end89

land.rhs22:                                       ; preds = %land.rhs
  %22 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i144 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i144 to ptr
  %preempt_count.i.i145 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i145 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i145, align 4
  %add.i146 = add i32 %25, 1
  store volatile i32 %add.i146, ptr %preempt_count.i.i145, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !132
  %26 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu, align 4
  %arrayidx46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46, align 4
  %add47 = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %33 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i.i147 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i147 to ptr
  %preempt_count.i.i148 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i148 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i148, align 4
  %sub.i149 = add i32 %36, -1
  store volatile i32 %sub.i149, ptr %preempt_count.i.i148, align 4
  %tobool54.not = icmp eq i32 %32, 0
  br i1 %tobool54.not, label %if.end89, label %land.rhs58

land.rhs58:                                       ; preds = %land.rhs22
  %.b136 = load i1, ptr @rwsem_spin_on_owner.__already_done, align 1
  br i1 %.b136, label %if.end89, label %if.then, !prof !97

if.then:                                          ; preds = %land.rhs58
  store i1 true, ptr @rwsem_spin_on_owner.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 711, i32 noundef 9, ptr noundef null) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then, %land.rhs58, %land.rhs22, %land.rhs, %land.lhs.true, %entry
  %owner1.i = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %owner1.i, align 4
  %and2.i = and i32 %38, -4
  %39 = inttoptr i32 %and2.i to ptr
  %and.i152 = and i32 %38, 2
  %tobool.not.i = icmp eq i32 %and.i152, 0
  br i1 %tobool.not.i, label %if.end.i, label %cleanup

if.end.i:                                         ; preds = %if.end89
  %and1.i = and i32 %38, 1
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool5.not.i, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end4.i
  %call.i.i.i154174 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i, i32 noundef 4) #9
  %40 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %owner1.i, align 4
  %and2.i156175 = and i32 %41, -4
  %42 = inttoptr i32 %and2.i156175 to ptr
  %cmp105.not176 = icmp eq ptr %42, %39
  %43 = xor i32 %41, %38
  %44 = and i32 %43, 3
  %cmp106.not177 = icmp eq i32 %44, 0
  %or.cond178 = select i1 %cmp105.not176, i1 %cmp106.not177, i1 false
  br i1 %or.cond178, label %if.end109.lr.ph, label %if.then107

if.end109.lr.ph:                                  ; preds = %for.cond.preheader
  %on_cpu.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 5
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  br label %if.end109

if.then107:                                       ; preds = %do.end119, %for.cond.preheader
  %.lcssa = phi i32 [ %41, %for.cond.preheader ], [ %57, %do.end119 ]
  %and2.i156.lcssa = phi i32 [ %and2.i156175, %for.cond.preheader ], [ %and2.i156, %do.end119 ]
  %and.i157 = and i32 %.lcssa, 2
  %tobool.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool.not.i158, label %if.end.i161, label %cleanup

if.end.i161:                                      ; preds = %if.then107
  %and1.i159 = and i32 %.lcssa, 1
  %tobool2.not.i160 = icmp eq i32 %and1.i159, 0
  br i1 %tobool2.not.i160, label %if.end4.i164, label %cleanup

if.end4.i164:                                     ; preds = %if.end.i161
  %tobool5.not.i162 = icmp eq i32 %and2.i156.lcssa, 0
  %cond.i163 = select i1 %tobool5.not.i162, i32 1, i32 2
  br label %cleanup

if.end109:                                        ; preds = %do.end119, %if.end109.lr.ph
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !134
  %45 = tail call i32 @llvm.read_register.i32(metadata !87) #9
  %and.i.i150 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i150 to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 16384
  %49 = and i32 %48, 2
  %tobool.i.not = icmp eq i32 %49, 0
  br i1 %tobool.i.not, label %lor.lhs.false111, label %cleanup

lor.lhs.false111:                                 ; preds = %if.end109
  %50 = ptrtoint ptr %on_cpu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %on_cpu.i, align 4
  %tobool.not.i167 = icmp eq i32 %51, 0
  br i1 %tobool.not.i167, label %cleanup, label %do.end119

do.end119:                                        ; preds = %lor.lhs.false111
  %52 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack.i.i, align 4
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %cpu.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !136
  %call.i.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %owner1.i, i32 noundef 4) #9
  %56 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %owner1.i, align 4
  %and2.i156 = and i32 %57, -4
  %58 = inttoptr i32 %and2.i156 to ptr
  %cmp105.not = icmp eq ptr %58, %39
  %59 = xor i32 %57, %38
  %60 = and i32 %59, 3
  %cmp106.not = icmp eq i32 %60, 0
  %or.cond = select i1 %cmp105.not, i1 %cmp106.not, i1 false
  br i1 %or.cond, label %if.end109, label %if.then107

cleanup:                                          ; preds = %lor.lhs.false111, %if.end109, %if.end4.i164, %if.end.i161, %if.then107, %if.end4.i, %if.end.i, %if.end89
  %retval.0 = phi i32 [ %cond.i163, %if.end4.i164 ], [ 8, %if.then107 ], [ 4, %if.end.i161 ], [ 4, %if.end.i ], [ 8, %if.end89 ], [ 1, %if.end4.i ], [ 8, %if.end109 ], [ 8, %lor.lhs.false111 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @osq_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @osq_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rwsem_wake(ptr noundef %sem) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #9
  %0 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %1 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %wake_q, ptr %0, align 4
  %wait_lock = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 3
  %call = call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock) #9
  %wait_list = getelementptr inbounds %struct.rw_semaphore, ptr %sem, i32 0, i32 4
  %3 = ptrtoint ptr %wait_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %wait_list, align 4
  %cmp.i.not = icmp eq ptr %4, %wait_list
  br i1 %cmp.i.not, label %do.body3, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @rwsem_mark_wake(ptr noundef %sem, i32 noundef 0, ptr noundef nonnull %wake_q)
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock, i32 noundef %call) #9
  call void @wake_up_q(ptr noundef nonnull %wake_q) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !84, !86}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__init_rwsem.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/locking/rwsem.c", i32 318, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab___init_rwsem, !4, !"__ksymtab___init_rwsem", i1 false, i1 false}
!4 = !{!"../kernel/locking/rwsem.c", i32 325, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../kernel/locking/rwsem.c", i32 1460, i32 2}
!7 = !{ptr @__ksymtab_down_read, !8, !"__ksymtab_down_read", i1 false, i1 false}
!8 = !{!"../kernel/locking/rwsem.c", i32 1465, i32 1}
!9 = !{ptr @__ksymtab_down_read_interruptible, !10, !"__ksymtab_down_read_interruptible", i1 false, i1 false}
!10 = !{!"../kernel/locking/rwsem.c", i32 1479, i32 1}
!11 = !{ptr @__ksymtab_down_read_killable, !12, !"__ksymtab_down_read_killable", i1 false, i1 false}
!12 = !{!"../kernel/locking/rwsem.c", i32 1493, i32 1}
!13 = !{ptr @__ksymtab_down_read_trylock, !14, !"__ksymtab_down_read_trylock", i1 false, i1 false}
!14 = !{!"../kernel/locking/rwsem.c", i32 1506, i32 1}
!15 = !{ptr @__ksymtab_down_write, !16, !"__ksymtab_down_write", i1 false, i1 false}
!16 = !{!"../kernel/locking/rwsem.c", i32 1517, i32 1}
!17 = !{ptr @__ksymtab_down_write_killable, !18, !"__ksymtab_down_write_killable", i1 false, i1 false}
!18 = !{!"../kernel/locking/rwsem.c", i32 1535, i32 1}
!19 = !{ptr @__ksymtab_down_write_trylock, !20, !"__ksymtab_down_write_trylock", i1 false, i1 false}
!20 = !{!"../kernel/locking/rwsem.c", i32 1549, i32 1}
!21 = !{ptr @__ksymtab_up_read, !22, !"__ksymtab_up_read", i1 false, i1 false}
!22 = !{!"../kernel/locking/rwsem.c", i32 1559, i32 1}
!23 = !{ptr @__ksymtab_up_write, !24, !"__ksymtab_up_write", i1 false, i1 false}
!24 = !{!"../kernel/locking/rwsem.c", i32 1569, i32 1}
!25 = !{ptr @__ksymtab_downgrade_write, !26, !"__ksymtab_downgrade_write", i1 false, i1 false}
!26 = !{!"../kernel/locking/rwsem.c", i32 1579, i32 1}
!27 = !{ptr @__ksymtab_down_read_nested, !28, !"__ksymtab_down_read_nested", i1 false, i1 false}
!28 = !{!"../kernel/locking/rwsem.c", i32 1589, i32 1}
!29 = !{ptr @__ksymtab_down_read_killable_nested, !30, !"__ksymtab_down_read_killable_nested", i1 false, i1 false}
!30 = !{!"../kernel/locking/rwsem.c", i32 1603, i32 1}
!31 = !{ptr @__ksymtab__down_write_nest_lock, !32, !"__ksymtab__down_write_nest_lock", i1 false, i1 false}
!32 = !{!"../kernel/locking/rwsem.c", i32 1611, i32 1}
!33 = !{ptr @__ksymtab_down_read_non_owner, !34, !"__ksymtab_down_read_non_owner", i1 false, i1 false}
!34 = !{!"../kernel/locking/rwsem.c", i32 1619, i32 1}
!35 = !{ptr @__ksymtab_down_write_nested, !36, !"__ksymtab_down_write_nested", i1 false, i1 false}
!36 = !{!"../kernel/locking/rwsem.c", i32 1627, i32 1}
!37 = !{ptr @__ksymtab_down_write_killable_nested, !38, !"__ksymtab_down_write_killable_nested", i1 false, i1 false}
!38 = !{!"../kernel/locking/rwsem.c", i32 1642, i32 1}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../kernel/locking/rwsem.c", i32 1646, i32 2}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__ksymtab_up_read_non_owner, !46, !"__ksymtab_up_read_non_owner", i1 false, i1 false}
!46 = !{!"../kernel/locking/rwsem.c", i32 1649, i32 1}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../kernel/locking/rwsem.c", i32 1240, i32 2}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../kernel/locking/rwsem.c", i32 1216, i32 3}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../kernel/locking/rwsem.c", i32 239, i32 6}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/locking/rwsem.c", i32 1019, i32 3}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../kernel/locking/rwsem.c", i32 1036, i32 2}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../kernel/locking/rwsem.c", i32 1043, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../kernel/locking/rwsem.c", i32 1278, i32 2}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../kernel/locking/rwsem.c", i32 1111, i32 2}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../kernel/locking/rwsem.c", i32 1144, i32 3}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../kernel/locking/rwsem.c", i32 1148, i32 2}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../kernel/locking/rwsem.c", i32 1154, i32 2}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../kernel/locking/rwsem.c", i32 711, i32 2}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../kernel/locking/rwsem.c", i32 1289, i32 2}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../kernel/locking/rwsem.c", i32 1290, i32 2}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../kernel/locking/rwsem.c", i32 1294, i32 2}
!78 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../kernel/locking/rwsem.c", i32 1309, i32 2}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../kernel/locking/rwsem.c", i32 1314, i32 2}
!83 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../kernel/locking/rwsem.c", i32 1337, i32 2}
!86 = !{ptr @.str.17, !85, !"<string literal>", i1 false, i1 false}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 736591, i64 736615, i64 736636, i64 736653, i64 736670}
!99 = !{i64 2148353828}
!100 = !{i64 2148354678}
!101 = !{i64 2148354904}
!102 = !{i64 2148337824}
!103 = !{i64 2148253575, i64 2148253607, i64 2148253636, i64 2148253670, i64 2148253701, i64 2148253724}
!104 = !{!"branch_weights", i32 1, i32 2000}
!105 = !{i64 2148339345}
!106 = !{i64 2148254385, i64 2148254417, i64 2148254446, i64 2148254480, i64 2148254511, i64 2148254534}
!107 = !{i64 2148337413}
!108 = !{i64 2152282043}
!109 = !{i64 2148338266}
!110 = !{i64 2148338495}
!111 = !{i64 2148259349, i64 2148259375, i64 2148259404, i64 2148259438, i64 2148259469, i64 2148259492}
!112 = !{i64 2152287102}
!113 = !{i64 2152292818}
!114 = !{i64 2148339786}
!115 = !{i64 2148340014}
!116 = !{i64 2148252855, i64 2148252881, i64 2148252910, i64 2148252944, i64 2148252975, i64 2148252998}
!117 = !{i64 2152005548}
!118 = !{i64 2152011813}
!119 = !{i64 2152011932}
!120 = !{i64 2152280349}
!121 = !{i64 2152280902}
!122 = !{i64 2152280759}
!123 = !{i64 2152280601}
!124 = !{i64 2148260993, i64 2148261019, i64 2148261048, i64 2148261082, i64 2148261113, i64 2148261136}
!125 = !{i64 2152308900}
!126 = !{i8 0, i8 2}
!127 = !{i64 2152309178}
!128 = !{i64 2152309275}
!129 = !{i64 2152314075}
!130 = !{i64 2152239647}
!131 = !{i64 2152244581}
!132 = !{i64 2152266299}
!133 = !{i64 2152271193}
!134 = !{i64 2152279752}
!135 = !{i64 2152279981}
!136 = !{i64 2152279823}
