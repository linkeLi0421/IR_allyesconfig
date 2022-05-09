; ModuleID = '/llk/IR_all_yes/kernel/sched/wait.c_pt.bc'
source_filename = "../kernel/sched/wait.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__init_waitqueue_head\22, \22a\22\09"
module asm "\09.weak\09__crc___init_waitqueue_head\09\09\09\09"
module asm "\09.long\09__crc___init_waitqueue_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___init_waitqueue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22__init_waitqueue_head\22\09\09\09\09\09"
module asm "__kstrtabns___init_waitqueue_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_wait_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_add_wait_queue\09\09\09\09"
module asm "\09.long\09__crc_add_wait_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22add_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_wait_queue_exclusive\22, \22a\22\09"
module asm "\09.weak\09__crc_add_wait_queue_exclusive\09\09\09\09"
module asm "\09.long\09__crc_add_wait_queue_exclusive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_wait_queue_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22add_wait_queue_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_add_wait_queue_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_wait_queue_priority\22, \22a\22\09"
module asm "\09.weak\09__crc_add_wait_queue_priority\09\09\09\09"
module asm "\09.long\09__crc_add_wait_queue_priority\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_wait_queue_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22add_wait_queue_priority\22\09\09\09\09\09"
module asm "__kstrtabns_add_wait_queue_priority:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+remove_wait_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_remove_wait_queue\09\09\09\09"
module asm "\09.long\09__crc_remove_wait_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_remove_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__wake_up\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up\09\09\09\09"
module asm "\09.long\09__crc___wake_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__wake_up_locked\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_locked\09\09\09\09"
module asm "\09.long\09__crc___wake_up_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__wake_up_locked_key\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_locked_key\09\09\09\09"
module asm "\09.long\09__crc___wake_up_locked_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked_key\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__wake_up_locked_key_bookmark\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_locked_key_bookmark\09\09\09\09"
module asm "\09.long\09__crc___wake_up_locked_key_bookmark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked_key_bookmark:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked_key_bookmark\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked_key_bookmark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__wake_up_sync_key\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_sync_key\09\09\09\09"
module asm "\09.long\09__crc___wake_up_sync_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_sync_key\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__wake_up_locked_sync_key\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_locked_sync_key\09\09\09\09"
module asm "\09.long\09__crc___wake_up_locked_sync_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_locked_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_locked_sync_key\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_locked_sync_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__wake_up_sync\22, \22a\22\09"
module asm "\09.weak\09__crc___wake_up_sync\09\09\09\09"
module asm "\09.long\09__crc___wake_up_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wake_up_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22__wake_up_sync\22\09\09\09\09\09"
module asm "__kstrtabns___wake_up_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_to_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_to_wait\09\09\09\09"
module asm "\09.long\09__crc_prepare_to_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_wait\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_to_wait_exclusive\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_to_wait_exclusive\09\09\09\09"
module asm "\09.long\09__crc_prepare_to_wait_exclusive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_wait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_wait_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_wait_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+init_wait_entry\22, \22a\22\09"
module asm "\09.weak\09__crc_init_wait_entry\09\09\09\09"
module asm "\09.long\09__crc_init_wait_entry\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_wait_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22init_wait_entry\22\09\09\09\09\09"
module asm "__kstrtabns_init_wait_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prepare_to_wait_event\22, \22a\22\09"
module asm "\09.weak\09__crc_prepare_to_wait_event\09\09\09\09"
module asm "\09.long\09__crc_prepare_to_wait_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prepare_to_wait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22prepare_to_wait_event\22\09\09\09\09\09"
module asm "__kstrtabns_prepare_to_wait_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_wait_intr\22, \22a\22\09"
module asm "\09.weak\09__crc_do_wait_intr\09\09\09\09"
module asm "\09.long\09__crc_do_wait_intr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_wait_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22do_wait_intr\22\09\09\09\09\09"
module asm "__kstrtabns_do_wait_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_wait_intr_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_do_wait_intr_irq\09\09\09\09"
module asm "\09.long\09__crc_do_wait_intr_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_wait_intr_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22do_wait_intr_irq\22\09\09\09\09\09"
module asm "__kstrtabns_do_wait_intr_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+finish_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_finish_wait\09\09\09\09"
module asm "\09.long\09__crc_finish_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_finish_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22finish_wait\22\09\09\09\09\09"
module asm "__kstrtabns_finish_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+autoremove_wake_function\22, \22a\22\09"
module asm "\09.weak\09__crc_autoremove_wake_function\09\09\09\09"
module asm "\09.long\09__crc_autoremove_wake_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_autoremove_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22autoremove_wake_function\22\09\09\09\09\09"
module asm "__kstrtabns_autoremove_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wait_woken\22, \22a\22\09"
module asm "\09.weak\09__crc_wait_woken\09\09\09\09"
module asm "\09.long\09__crc_wait_woken\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_woken:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_woken\22\09\09\09\09\09"
module asm "__kstrtabns_wait_woken:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+woken_wake_function\22, \22a\22\09"
module asm "\09.weak\09__crc_woken_wake_function\09\09\09\09"
module asm "\09.long\09__crc_woken_wake_function\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_woken_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22woken_wake_function\22\09\09\09\09\09"
module asm "__kstrtabns_woken_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.132 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__init_waitqueue_head.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wq_head->lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab___init_waitqueue_head = external dso_local constant [0 x i8], align 1
@__kstrtabns___init_waitqueue_head = external dso_local constant [0 x i8], align 1
@__ksymtab___init_waitqueue_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__init_waitqueue_head to i32), ptr @__kstrtab___init_waitqueue_head, ptr @__kstrtabns___init_waitqueue_head }, section "___ksymtab+__init_waitqueue_head", align 4
@__kstrtab_add_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_add_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_wait_queue to i32), ptr @__kstrtab_add_wait_queue, ptr @__kstrtabns_add_wait_queue }, section "___ksymtab+add_wait_queue", align 4
@__kstrtab_add_wait_queue_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_wait_queue_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_add_wait_queue_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_wait_queue_exclusive to i32), ptr @__kstrtab_add_wait_queue_exclusive, ptr @__kstrtabns_add_wait_queue_exclusive }, section "___ksymtab+add_wait_queue_exclusive", align 4
@__kstrtab_add_wait_queue_priority = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_wait_queue_priority = external dso_local constant [0 x i8], align 1
@__ksymtab_add_wait_queue_priority = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_wait_queue_priority to i32), ptr @__kstrtab_add_wait_queue_priority, ptr @__kstrtabns_add_wait_queue_priority }, section "___ksymtab_gpl+add_wait_queue_priority", align 4
@__kstrtab_remove_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_wait_queue to i32), ptr @__kstrtab_remove_wait_queue, ptr @__kstrtabns_remove_wait_queue }, section "___ksymtab+remove_wait_queue", align 4
@__kstrtab___wake_up = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up to i32), ptr @__kstrtab___wake_up, ptr @__kstrtabns___wake_up }, section "___ksymtab+__wake_up", align 4
@__kstrtab___wake_up_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked to i32), ptr @__kstrtab___wake_up_locked, ptr @__kstrtabns___wake_up_locked }, section "___ksymtab_gpl+__wake_up_locked", align 4
@__kstrtab___wake_up_locked_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked_key = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked_key to i32), ptr @__kstrtab___wake_up_locked_key, ptr @__kstrtabns___wake_up_locked_key }, section "___ksymtab_gpl+__wake_up_locked_key", align 4
@__kstrtab___wake_up_locked_key_bookmark = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked_key_bookmark = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked_key_bookmark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked_key_bookmark to i32), ptr @__kstrtab___wake_up_locked_key_bookmark, ptr @__kstrtabns___wake_up_locked_key_bookmark }, section "___ksymtab_gpl+__wake_up_locked_key_bookmark", align 4
@__kstrtab___wake_up_sync_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_sync_key = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_sync_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_sync_key to i32), ptr @__kstrtab___wake_up_sync_key, ptr @__kstrtabns___wake_up_sync_key }, section "___ksymtab_gpl+__wake_up_sync_key", align 4
@__kstrtab___wake_up_locked_sync_key = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_locked_sync_key = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_locked_sync_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_locked_sync_key to i32), ptr @__kstrtab___wake_up_locked_sync_key, ptr @__kstrtabns___wake_up_locked_sync_key }, section "___ksymtab_gpl+__wake_up_locked_sync_key", align 4
@__kstrtab___wake_up_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns___wake_up_sync = external dso_local constant [0 x i8], align 1
@__ksymtab___wake_up_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wake_up_sync to i32), ptr @__kstrtab___wake_up_sync, ptr @__kstrtabns___wake_up_sync }, section "___ksymtab_gpl+__wake_up_sync", align 4
@__wake_up_pollfree.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/sched/wait.c\00", [44 x i8] zeroinitializer }, align 32
@prepare_to_wait.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_prepare_to_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_wait to i32), ptr @__kstrtab_prepare_to_wait, ptr @__kstrtabns_prepare_to_wait }, section "___ksymtab+prepare_to_wait", align 4
@prepare_to_wait_exclusive.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_prepare_to_wait_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_wait_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_wait_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_wait_exclusive to i32), ptr @__kstrtab_prepare_to_wait_exclusive, ptr @__kstrtabns_prepare_to_wait_exclusive }, section "___ksymtab+prepare_to_wait_exclusive", align 4
@__kstrtab_init_wait_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_wait_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_init_wait_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_wait_entry to i32), ptr @__kstrtab_init_wait_entry, ptr @__kstrtabns_init_wait_entry }, section "___ksymtab+init_wait_entry", align 4
@prepare_to_wait_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_prepare_to_wait_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_prepare_to_wait_event = external dso_local constant [0 x i8], align 1
@__ksymtab_prepare_to_wait_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prepare_to_wait_event to i32), ptr @__kstrtab_prepare_to_wait_event, ptr @__kstrtabns_prepare_to_wait_event }, section "___ksymtab+prepare_to_wait_event", align 4
@__kstrtab_do_wait_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_wait_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_do_wait_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_wait_intr to i32), ptr @__kstrtab_do_wait_intr, ptr @__kstrtabns_do_wait_intr }, section "___ksymtab+do_wait_intr", align 4
@__kstrtab_do_wait_intr_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_wait_intr_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_do_wait_intr_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_wait_intr_irq to i32), ptr @__kstrtab_do_wait_intr_irq, ptr @__kstrtabns_do_wait_intr_irq }, section "___ksymtab+do_wait_intr_irq", align 4
@__kstrtab_finish_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_finish_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_finish_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @finish_wait to i32), ptr @__kstrtab_finish_wait, ptr @__kstrtabns_finish_wait }, section "___ksymtab+finish_wait", align 4
@__kstrtab_autoremove_wake_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_autoremove_wake_function = external dso_local constant [0 x i8], align 1
@__ksymtab_autoremove_wake_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @autoremove_wake_function to i32), ptr @__kstrtab_autoremove_wake_function, ptr @__kstrtabns_autoremove_wake_function }, section "___ksymtab+autoremove_wake_function", align 4
@wait_woken.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_wait_woken = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_woken = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_woken = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_woken to i32), ptr @__kstrtab_wait_woken, ptr @__kstrtabns_wait_woken }, section "___ksymtab+wait_woken", align 4
@__kstrtab_woken_wake_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_woken_wake_function = external dso_local constant [0 x i8], align 1
@__ksymtab_woken_wake_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @woken_wake_function to i32), ptr @__kstrtab_woken_wake_function, ptr @__kstrtabns_woken_wake_function }, section "___ksymtab+woken_wake_function", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 11, i32 2 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [23 x i8] c"../kernel/sched/wait.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 245, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__ksymtab___init_waitqueue_head, ptr @__ksymtab___wake_up, ptr @__ksymtab___wake_up_locked, ptr @__ksymtab___wake_up_locked_key, ptr @__ksymtab___wake_up_locked_key_bookmark, ptr @__ksymtab___wake_up_locked_sync_key, ptr @__ksymtab___wake_up_sync, ptr @__ksymtab___wake_up_sync_key, ptr @__ksymtab_add_wait_queue, ptr @__ksymtab_add_wait_queue_exclusive, ptr @__ksymtab_add_wait_queue_priority, ptr @__ksymtab_autoremove_wake_function, ptr @__ksymtab_do_wait_intr, ptr @__ksymtab_do_wait_intr_irq, ptr @__ksymtab_finish_wait, ptr @__ksymtab_init_wait_entry, ptr @__ksymtab_prepare_to_wait, ptr @__ksymtab_prepare_to_wait_event, ptr @__ksymtab_prepare_to_wait_exclusive, ptr @__ksymtab_remove_wait_queue, ptr @__ksymtab_wait_woken, ptr @__ksymtab_woken_wake_function, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__init_waitqueue_head(ptr noundef %wq_head, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %wq_head, ptr noundef nonnull @.str, ptr noundef nonnull @__init_waitqueue_head.__key, i16 noundef signext 3) #5
  %dep_map = getelementptr inbounds %struct.anon, ptr %wq_head, i32 0, i32 1
  %wait_type_inner = getelementptr inbounds %struct.anon, ptr %wq_head, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_wait_queue(ptr noundef %wq_head, ptr noundef %wq_entry) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %wq_entry, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %head1.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %head.0.i = phi ptr [ %head1.i, %entry ], [ %.pn.i, %for.body.i ]
  %2 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wq.0.i, align 4
  %and.i = and i32 %4, 32
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i ], [ %head1.i, %for.cond.i ]
  %entry11.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11.i, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__add_wait_queue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry11.i, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.pn.lcssa.i, ptr %entry11.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry11.i, ptr %head.0.i, align 4
  br label %__add_wait_queue.exit

__add_wait_queue.exit:                            ; preds = %if.end.i.i.i, %for.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_wait_queue_exclusive(ptr noundef %wq_head, ptr noundef %wq_entry) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %wq_entry, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %entry1.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1.i, ptr noundef %3, ptr noundef %head.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__add_wait_queue_entry_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry1.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head.i, ptr %entry1.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry1.i, ptr %3, align 4
  br label %__add_wait_queue_entry_tail.exit

__add_wait_queue_entry_tail.exit:                 ; preds = %if.end.i.i.i, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_wait_queue_priority(ptr noundef %wq_head, ptr noundef %wq_entry) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %or = or i32 %1, 33
  store i32 %or, ptr %wq_entry, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %head1.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %head.0.i = phi ptr [ %head1.i, %entry ], [ %.pn.i, %for.body.i ]
  %2 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %3 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wq.0.i, align 4
  %and.i = and i32 %4, 32
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i ], [ %head1.i, %for.cond.i ]
  %entry11.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11.i, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__add_wait_queue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry11.i, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %.pn.lcssa.i, ptr %entry11.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %8 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry11.i, ptr %head.0.i, align 4
  br label %__add_wait_queue.exit

__add_wait_queue.exit:                            ; preds = %if.end.i.i.i, %for.end.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @remove_wait_queue(ptr noundef %wq_head, ptr noundef %wq_entry) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %entry1.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__remove_wait_queue.exit

if.end.i.i.i:                                     ; preds = %entry
  %prev.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i.i, align 4
  %2 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i, %entry
  %6 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up(ptr noundef %wq_head, i32 noundef %mode, i32 noundef %nr_exclusive, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %bookmark.i = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bookmark.i) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %bookmark.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bookmark.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %3, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %entry
  %nr_exclusive.addr.0.i = phi i32 [ %nr_exclusive, %entry ], [ %call8.i, %do.body.i ]
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %call8.i = call fastcc i32 @__wake_up_common(ptr noundef %wq_head, i32 noundef %mode, i32 noundef %nr_exclusive.addr.0.i, i32 noundef 0, ptr noundef %key, ptr noundef nonnull %bookmark.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call5.i) #5
  %9 = ptrtoint ptr %bookmark.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bookmark.i, align 4
  %and.i = and i32 %10, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %__wake_up_common_lock.exit, label %do.body.i

__wake_up_common_lock.exit:                       ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bookmark.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_locked(ptr noundef %wq_head, i32 noundef %mode, i32 noundef %nr) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %wq_head, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i, !prof !76

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i, %entry
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 4
  %cmp39.i = icmp eq ptr %2, %head.i
  br i1 %cmp39.i, label %__wake_up_common.exit, label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %if.end.i
  %nr_exclusive.addr.0131.i = phi i32 [ %nr_exclusive.addr.2.i, %cleanup.i ], [ %nr, %if.end.i ]
  %.pn115.in130.i = phi ptr [ %.pn115133.i, %cleanup.i ], [ %2, %if.end.i ]
  %curr.1132.i = getelementptr i8, ptr %.pn115.in130.i, i32 -12
  %3 = ptrtoint ptr %.pn115.in130.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn115133.i = load ptr, ptr %.pn115.in130.i, align 4
  %4 = ptrtoint ptr %curr.1132.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr.1132.i, align 4
  %and54.i = and i32 %5, 4
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %cleanup.i

if.end57.i:                                       ; preds = %for.body.i
  %func.i = getelementptr i8, ptr %.pn115.in130.i, i32 -4
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %call58.i = tail call i32 %7(ptr noundef %curr.1132.i, i32 noundef %mode, i32 noundef 0, ptr noundef null) #5
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %__wake_up_common.exit, label %if.end61.i

if.end61.i:                                       ; preds = %if.end57.i
  %tobool62.not.i = icmp eq i32 %call58.i, 0
  %and64.i = and i32 %5, 1
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %or.cond.i = select i1 %tobool62.not.i, i1 true, i1 %tobool65.not.i
  br i1 %or.cond.i, label %cleanup.i, label %land.lhs.true66.i

land.lhs.true66.i:                                ; preds = %if.end61.i
  %dec.i = add i32 %nr_exclusive.addr.0131.i, -1
  %tobool67.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool67.not.i, label %__wake_up_common.exit, label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true66.i, %if.end61.i, %for.body.i
  %nr_exclusive.addr.2.i = phi i32 [ %nr_exclusive.addr.0131.i, %for.body.i ], [ %dec.i, %land.lhs.true66.i ], [ %nr_exclusive.addr.0131.i, %if.end61.i ]
  %cmp49.not.i = icmp eq ptr %.pn115133.i, %head.i
  br i1 %cmp49.not.i, label %__wake_up_common.exit, label %for.body.i

__wake_up_common.exit:                            ; preds = %cleanup.i, %land.lhs.true66.i, %if.end57.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__wake_up_common(ptr noundef %wq_head, i32 noundef %mode, i32 noundef %nr_exclusive, i32 noundef %wake_flags, ptr noundef %key, ptr noundef %bookmark) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.anon, ptr %wq_head, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %if.end, !prof !76

do.end:                                           ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs, %entry
  %tobool24.not = icmp eq ptr %bookmark, null
  br i1 %tobool24.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %1 = ptrtoint ptr %bookmark to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bookmark, align 4
  %and = and i32 %2, 4
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  %entry27 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark, i32 0, i32 3
  %3 = ptrtoint ptr %entry27 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry27, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry27) #5
  br i1 %call.i.i, label %if.end.i.i, label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %entry27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %entry27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26
  %11 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %entry27, align 4
  %prev.i = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %bookmark to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bookmark, align 4
  br label %if.end36

if.else:                                          ; preds = %land.lhs.true, %if.end
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %list_del.exit
  %.pn = phi ptr [ %4, %list_del.exit ], [ %15, %if.else ]
  %head38 = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %cmp39 = icmp eq ptr %.pn, %head38
  br i1 %cmp39, label %cleanup88, label %for.body

for.body:                                         ; preds = %cleanup, %if.end36
  %nr_exclusive.addr.0131 = phi i32 [ %nr_exclusive.addr.2, %cleanup ], [ %nr_exclusive, %if.end36 ]
  %.pn115.in130 = phi ptr [ %.pn115133, %cleanup ], [ %.pn, %if.end36 ]
  %cnt.0129 = phi i32 [ %cnt.2, %cleanup ], [ 0, %if.end36 ]
  %curr.1132 = getelementptr i8, ptr %.pn115.in130, i32 -12
  %16 = ptrtoint ptr %.pn115.in130 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn115133 = load ptr, ptr %.pn115.in130, align 4
  %17 = ptrtoint ptr %curr.1132 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr.1132, align 4
  %and54 = and i32 %18, 4
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end57, label %cleanup

if.end57:                                         ; preds = %for.body
  %func = getelementptr i8, ptr %.pn115.in130, i32 -4
  %19 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %func, align 4
  %call58 = tail call i32 %20(ptr noundef %curr.1132, i32 noundef %mode, i32 noundef %wake_flags, ptr noundef %key) #5
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %cleanup88, label %if.end61

if.end61:                                         ; preds = %if.end57
  %tobool62.not = icmp eq i32 %call58, 0
  %and64 = and i32 %18, 1
  %tobool65.not = icmp eq i32 %and64, 0
  %or.cond = select i1 %tobool62.not, i1 true, i1 %tobool65.not
  br i1 %or.cond, label %if.end69, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end61
  %dec = add i32 %nr_exclusive.addr.0131, -1
  %tobool67.not = icmp eq i32 %dec, 0
  br i1 %tobool67.not, label %cleanup88, label %if.end69

if.end69:                                         ; preds = %land.lhs.true66, %if.end61
  %nr_exclusive.addr.1 = phi i32 [ %dec, %land.lhs.true66 ], [ %nr_exclusive.addr.0131, %if.end61 ]
  br i1 %tobool24.not, label %cleanup, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.end69
  %inc = add i32 %cnt.0129, 1
  %cmp72 = icmp slt i32 %inc, 65
  %cmp76.not = icmp eq ptr %.pn115133, %head38
  %or.cond116 = select i1 %cmp72, i1 true, i1 %cmp76.not
  br i1 %or.cond116, label %cleanup, label %if.then77

if.then77:                                        ; preds = %land.lhs.true71
  %21 = ptrtoint ptr %bookmark to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %bookmark, align 4
  %entry79 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark, i32 0, i32 3
  %prev.i117 = getelementptr inbounds %struct.list_head, ptr %.pn115133, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i117, align 4
  %call.i.i118 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry79, ptr noundef %23, ptr noundef %.pn115133) #5
  br i1 %call.i.i118, label %if.end.i.i119, label %cleanup88

if.end.i.i119:                                    ; preds = %if.then77
  %24 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry79, ptr %prev.i117, align 4
  %25 = ptrtoint ptr %entry79 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn115133, ptr %entry79, align 4
  %prev3.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry79, ptr %23, align 4
  br label %cleanup88

cleanup:                                          ; preds = %land.lhs.true71, %if.end69, %for.body
  %cnt.2 = phi i32 [ %cnt.0129, %for.body ], [ %inc, %land.lhs.true71 ], [ %cnt.0129, %if.end69 ]
  %nr_exclusive.addr.2 = phi i32 [ %nr_exclusive.addr.0131, %for.body ], [ %nr_exclusive.addr.1, %land.lhs.true71 ], [ %nr_exclusive.addr.1, %if.end69 ]
  %cmp49.not = icmp eq ptr %.pn115133, %head38
  br i1 %cmp49.not, label %cleanup88, label %for.body

cleanup88:                                        ; preds = %cleanup, %if.end.i.i119, %if.then77, %land.lhs.true66, %if.end57, %if.end36
  %retval.0 = phi i32 [ %nr_exclusive, %if.end36 ], [ %nr_exclusive.addr.1, %if.end.i.i119 ], [ %nr_exclusive.addr.1, %if.then77 ], [ %nr_exclusive.addr.2, %cleanup ], [ %nr_exclusive.addr.0131, %if.end57 ], [ 0, %land.lhs.true66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_locked_key(ptr noundef %wq_head, i32 noundef %mode, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %wq_head, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i, !prof !76

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i, %entry
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 4
  %cmp39.i = icmp eq ptr %2, %head.i
  br i1 %cmp39.i, label %__wake_up_common.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end.i
  %.pn115.in130.i = phi ptr [ %.pn115133.i, %for.body.i.backedge ], [ %2, %if.end.i ]
  %curr.1132.i = getelementptr i8, ptr %.pn115.in130.i, i32 -12
  %3 = ptrtoint ptr %.pn115.in130.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn115133.i = load ptr, ptr %.pn115.in130.i, align 4
  %4 = ptrtoint ptr %curr.1132.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr.1132.i, align 4
  %and54.i = and i32 %5, 4
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %cleanup.i

if.end57.i:                                       ; preds = %for.body.i
  %func.i = getelementptr i8, ptr %.pn115.in130.i, i32 -4
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %call58.i = tail call i32 %7(ptr noundef %curr.1132.i, i32 noundef %mode, i32 noundef 0, ptr noundef %key) #5
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %__wake_up_common.exit, label %if.end61.i

if.end61.i:                                       ; preds = %if.end57.i
  %tobool62.not.i = icmp ne i32 %call58.i, 0
  %and64.i = and i32 %5, 1
  %tobool65.not.i = icmp ne i32 %and64.i, 0
  %or.cond.i = select i1 %tobool62.not.i, i1 %tobool65.not.i, i1 false
  %cmp49.not.i = icmp eq ptr %.pn115133.i, %head.i
  %or.cond = select i1 %or.cond.i, i1 true, i1 %cmp49.not.i
  br i1 %or.cond, label %__wake_up_common.exit, label %for.body.i.backedge

cleanup.i:                                        ; preds = %for.body.i
  %cmp49.not.i.old = icmp eq ptr %.pn115133.i, %head.i
  br i1 %cmp49.not.i.old, label %__wake_up_common.exit, label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %cleanup.i, %if.end61.i
  br label %for.body.i

__wake_up_common.exit:                            ; preds = %cleanup.i, %if.end61.i, %if.end57.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_locked_key_bookmark(ptr noundef %wq_head, i32 noundef %mode, ptr noundef %key, ptr noundef %bookmark) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__wake_up_common(ptr noundef %wq_head, i32 noundef %mode, i32 noundef 1, i32 noundef 0, ptr noundef %key, ptr noundef %bookmark)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_sync_key(ptr noundef %wq_head, i32 noundef %mode, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %bookmark.i = alloca %struct.wait_queue_entry, align 4
  %tobool.not = icmp eq ptr %wq_head, null
  br i1 %tobool.not, label %return, label %if.end, !prof !76

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bookmark.i) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %bookmark.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bookmark.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %3, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i, %if.end
  %nr_exclusive.addr.0.i = phi i32 [ 1, %if.end ], [ %call8.i, %do.body.i ]
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %wq_head) #5
  %call8.i = call fastcc i32 @__wake_up_common(ptr noundef nonnull %wq_head, i32 noundef %mode, i32 noundef %nr_exclusive.addr.0.i, i32 noundef 16, ptr noundef %key, ptr noundef nonnull %bookmark.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %wq_head, i32 noundef %call5.i) #5
  %9 = ptrtoint ptr %bookmark.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bookmark.i, align 4
  %and.i = and i32 %10, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %__wake_up_common_lock.exit, label %do.body.i

__wake_up_common_lock.exit:                       ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bookmark.i) #5
  br label %return

return:                                           ; preds = %__wake_up_common_lock.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_locked_sync_key(ptr noundef %wq_head, i32 noundef %mode, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %wq_head, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end.i, !prof !76

do.end.i:                                         ; preds = %land.rhs.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 88, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i, %entry
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i, align 4
  %cmp39.i = icmp eq ptr %2, %head.i
  br i1 %cmp39.i, label %__wake_up_common.exit, label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end.i
  %.pn115.in130.i = phi ptr [ %.pn115133.i, %for.body.i.backedge ], [ %2, %if.end.i ]
  %curr.1132.i = getelementptr i8, ptr %.pn115.in130.i, i32 -12
  %3 = ptrtoint ptr %.pn115.in130.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn115133.i = load ptr, ptr %.pn115.in130.i, align 4
  %4 = ptrtoint ptr %curr.1132.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr.1132.i, align 4
  %and54.i = and i32 %5, 4
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %cleanup.i

if.end57.i:                                       ; preds = %for.body.i
  %func.i = getelementptr i8, ptr %.pn115.in130.i, i32 -4
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %func.i, align 4
  %call58.i = tail call i32 %7(ptr noundef %curr.1132.i, i32 noundef %mode, i32 noundef 16, ptr noundef %key) #5
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %__wake_up_common.exit, label %if.end61.i

if.end61.i:                                       ; preds = %if.end57.i
  %tobool62.not.i = icmp ne i32 %call58.i, 0
  %and64.i = and i32 %5, 1
  %tobool65.not.i = icmp ne i32 %and64.i, 0
  %or.cond.i = select i1 %tobool62.not.i, i1 %tobool65.not.i, i1 false
  %cmp49.not.i = icmp eq ptr %.pn115133.i, %head.i
  %or.cond = select i1 %or.cond.i, i1 true, i1 %cmp49.not.i
  br i1 %or.cond, label %__wake_up_common.exit, label %for.body.i.backedge

cleanup.i:                                        ; preds = %for.body.i
  %cmp49.not.i.old = icmp eq ptr %.pn115133.i, %head.i
  br i1 %cmp49.not.i.old, label %__wake_up_common.exit, label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %cleanup.i, %if.end61.i
  br label %for.body.i

__wake_up_common.exit:                            ; preds = %cleanup.i, %if.end61.i, %if.end57.i, %if.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_sync(ptr noundef %wq_head, i32 noundef %mode) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %bookmark.i.i = alloca %struct.wait_queue_entry, align 4
  %tobool.not.i = icmp eq ptr %wq_head, null
  br i1 %tobool.not.i, label %__wake_up_sync_key.exit, label %if.end.i, !prof !76

if.end.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bookmark.i.i) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %bookmark.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bookmark.i.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %3, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %if.end.i
  %nr_exclusive.addr.0.i.i = phi i32 [ 1, %if.end.i ], [ %call8.i.i, %do.body.i.i ]
  %call5.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %wq_head) #5
  %call8.i.i = call fastcc i32 @__wake_up_common(ptr noundef nonnull %wq_head, i32 noundef %mode, i32 noundef %nr_exclusive.addr.0.i.i, i32 noundef 16, ptr noundef null, ptr noundef nonnull %bookmark.i.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %wq_head, i32 noundef %call5.i.i) #5
  %9 = ptrtoint ptr %bookmark.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bookmark.i.i, align 4
  %and.i.i = and i32 %10, 4
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %__wake_up_common_lock.exit.i, label %do.body.i.i

__wake_up_common_lock.exit.i:                     ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bookmark.i.i) #5
  br label %__wake_up_sync_key.exit

__wake_up_sync_key.exit:                          ; preds = %__wake_up_common_lock.exit.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__wake_up_pollfree(ptr noundef %wq_head) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %bookmark.i.i = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bookmark.i.i) #5
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %bookmark.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %bookmark.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bookmark.i.i, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %2, ptr %3, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i, %entry
  %nr_exclusive.addr.0.i.i = phi i32 [ 0, %entry ], [ %call8.i.i, %do.body.i.i ]
  %call5.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %call8.i.i = call fastcc i32 @__wake_up_common(ptr noundef %wq_head, i32 noundef 3, i32 noundef %nr_exclusive.addr.0.i.i, i32 noundef 0, ptr noundef nonnull inttoptr (i32 16400 to ptr), ptr noundef nonnull %bookmark.i.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call5.i.i) #5
  %9 = ptrtoint ptr %bookmark.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bookmark.i.i, align 4
  %and.i.i = and i32 %10, 4
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %__wake_up.exit, label %do.body.i.i

__wake_up.exit:                                   ; preds = %do.body.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bookmark.i.i) #5
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %12, %head.i
  br i1 %cmp.i.i.not, label %if.end28, label %land.rhs

land.rhs:                                         ; preds = %__wake_up.exit
  %.b39 = load i1, ptr @__wake_up_pollfree.__already_done, align 1
  br i1 %.b39, label %if.end28, label %if.then, !prof !77

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__wake_up_pollfree.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 9, ptr noundef null) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs, %__wake_up.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prepare_to_wait(ptr noundef %wq_head, ptr noundef %wq_entry, i32 noundef %state) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %and = and i32 %1, -2
  store i32 %and, ptr %wq_entry, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %entry6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %2 = ptrtoint ptr %entry6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry6, align 4
  %cmp.i.not = icmp eq ptr %3, %entry6
  br i1 %cmp.i.not, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  %head1.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then
  %head.0.i = phi ptr [ %head1.i, %if.then ], [ %.pn.i, %for.body.i ]
  %4 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %5 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wq.0.i, align 4
  %and.i = and i32 %6, 32
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i ], [ %head1.i, %for.cond.i ]
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry6, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body9

if.end.i.i.i:                                     ; preds = %for.end.i
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry6, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %.pn.lcssa.i, ptr %entry6, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry6, ptr %head.0.i, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.end.i.i.i, %for.end.i, %entry
  %and10 = and i32 %state, 204
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %do.body9
  %.b88 = load i1, ptr @prepare_to_wait.__already_done, align 1
  br i1 %.b88, label %__here, label %if.then20, !prof !77

if.then20:                                        ; preds = %land.rhs
  store i1 true, ptr @prepare_to_wait.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 269, i32 noundef 9, ptr noundef null) #5
  br label %__here

__here:                                           ; preds = %if.then20, %land.rhs, %do.body9
  %11 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i89 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i89 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@prepare_to_wait, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %state, ptr %16, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef %wq_head, ptr noundef %wq_entry, i32 noundef %state) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %wq_entry, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %entry6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %2 = ptrtoint ptr %entry6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry6, align 4
  %cmp.i.not = icmp eq ptr %3, %entry6
  br i1 %cmp.i.not, label %if.then, label %do.body11

if.then:                                          ; preds = %entry
  %head = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %head, align 4
  %cmp.i93 = icmp eq ptr %5, %head
  %prev.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry6, ptr noundef %7, ptr noundef %head) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body11

if.end.i.i.i:                                     ; preds = %if.then
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry6, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %head, ptr %entry6, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry6, ptr %7, align 4
  br label %do.body11

do.body11:                                        ; preds = %if.end.i.i.i, %if.then, %entry
  %was_empty.0.off0 = phi i1 [ false, %entry ], [ %cmp.i93, %if.then ], [ %cmp.i93, %if.end.i.i.i ]
  %and = and i32 %state, 204
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %do.body11
  %.b92 = load i1, ptr @prepare_to_wait_exclusive.__already_done, align 1
  br i1 %.b92, label %__here, label %if.then22, !prof !77

if.then22:                                        ; preds = %land.rhs
  store i1 true, ptr @prepare_to_wait_exclusive.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 287, i32 noundef 9, ptr noundef null) #5
  br label %__here

__here:                                           ; preds = %if.then22, %land.rhs, %do.body11
  %12 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@prepare_to_wait_exclusive, %__here) to i32), ptr %task_state_change, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %state, ptr %17, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call3) #5
  ret i1 %was_empty.0.off0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_wait_entry(ptr noundef %wq_entry, i32 noundef %flags) #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %wq_entry, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 1
  %5 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %private, align 4
  %func = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @autoremove_wake_function, ptr %func, align 4
  %entry2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %7 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry2, ptr %entry2, align 4
  %prev.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry2, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @autoremove_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @default_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init_careful.exit

if.end.i.i:                                       ; preds = %if.then
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init_careful.exit

list_del_init_careful.exit:                       ; preds = %if.end.i.i, %if.then
  %prev.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry1, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !80
  %7 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry1, ptr %entry1, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init_careful.exit, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prepare_to_wait_event(ptr noundef %wq_head, ptr noundef %wq_entry, i32 noundef %state) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %and.i104 = and i32 %state, 257
  %tobool.not.i = icmp eq i32 %and.i104, 0
  br i1 %tobool.not.i, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %entry
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end3.i, !prof !77

signal_pending.exit.i:                            ; preds = %if.end.i
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i.i = and i32 %10, 1
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %if.else, label %if.end3.i

if.end3.i:                                        ; preds = %signal_pending.exit.i, %if.end.i
  %and4.i = and i32 %state, 1
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %if.then

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %11 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signal.i.i, align 4
  %13 = and i32 %12, 256
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %signal_pending_state.exit, %if.end3.i
  %entry7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry7) #5
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %entry7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then
  %20 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry7, ptr %prev.i3.i, align 4
  br label %if.end90

if.else:                                          ; preds = %signal_pending_state.exit, %signal_pending.exit.i, %entry
  %entry8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %22 = ptrtoint ptr %entry8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %entry8, align 4
  %cmp.i.not = icmp eq ptr %23, %entry8
  br i1 %cmp.i.not, label %if.then11, label %do.body18

if.then11:                                        ; preds = %if.else
  %24 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wq_entry, align 4
  %and = and i32 %25, 1
  %tobool13.not = icmp eq i32 %and, 0
  %head1.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1
  br i1 %tobool13.not, label %for.cond.i, label %if.then14

if.then14:                                        ; preds = %if.then11
  %prev.i.i105 = getelementptr inbounds %struct.wait_queue_head, ptr %wq_head, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i105 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i105, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry8, ptr noundef %27, ptr noundef %head1.i) #5
  br i1 %call.i.i.i, label %do.body18.sink.split, label %do.body18

for.cond.i:                                       ; preds = %for.body.i, %if.then11
  %head.0.i = phi ptr [ %.pn.i, %for.body.i ], [ %head1.i, %if.then11 ]
  %28 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %29 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wq.0.i, align 4
  %and.i106 = and i32 %30, 32
  %tobool.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %tobool.not.i107, label %for.end.i, label %for.cond.i

for.end.i:                                        ; preds = %for.body.i, %for.cond.i
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i ], [ %head1.i, %for.cond.i ]
  %call.i.i.i108 = tail call zeroext i1 @__list_add_valid(ptr noundef %entry8, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #5
  br i1 %call.i.i.i108, label %if.end.i.i.i111, label %do.body18

if.end.i.i.i111:                                  ; preds = %for.end.i
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  br label %do.body18.sink.split

do.body18.sink.split:                             ; preds = %if.end.i.i.i111, %if.then14
  %prev1.i.i.i109.sink = phi ptr [ %prev1.i.i.i109, %if.end.i.i.i111 ], [ %prev.i.i105, %if.then14 ]
  %.pn.lcssa.i.sink = phi ptr [ %.pn.lcssa.i, %if.end.i.i.i111 ], [ %head1.i, %if.then14 ]
  %head.0.i.lcssa.sink117 = phi ptr [ %head.0.i, %if.end.i.i.i111 ], [ %27, %if.then14 ]
  %31 = ptrtoint ptr %prev1.i.i.i109.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry8, ptr %prev1.i.i.i109.sink, align 4
  %32 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn.lcssa.i.sink, ptr %entry8, align 4
  %prev3.i.i.i110 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head.0.i.lcssa.sink117, ptr %prev3.i.i.i110, align 4
  %34 = ptrtoint ptr %head.0.i.lcssa.sink117 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry8, ptr %head.0.i.lcssa.sink117, align 4
  br label %do.body18

do.body18:                                        ; preds = %do.body18.sink.split, %for.end.i, %if.then14, %if.else
  %and19 = and i32 %state, 204
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %do.body18
  %.b103 = load i1, ptr @prepare_to_wait_event.__already_done, align 1
  br i1 %.b103, label %__here, label %if.then29, !prof !77

if.then29:                                        ; preds = %land.rhs
  store i1 true, ptr @prepare_to_wait_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 330, i32 noundef 9, ptr noundef null) #5
  br label %__here

__here:                                           ; preds = %if.then29, %land.rhs, %do.body18
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@prepare_to_wait_event, %__here) to i32), ptr %task_state_change, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 %state, ptr %38, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !81
  br label %if.end90

if.end90:                                         ; preds = %__here, %list_del_init.exit
  %ret.0 = phi i32 [ -512, %list_del_init.exit ], [ 0, %__here ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call2) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_wait_intr(ptr noundef %wq, ptr noundef %wait) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %entry1, align 4
  %cmp.i.not = icmp eq ptr %1, %entry1
  br i1 %cmp.i.not, label %if.then, label %__here, !prof !77

if.then:                                          ; preds = %entry
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %3, ptr noundef %head.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__here

if.end.i.i.i:                                     ; preds = %if.then
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry1, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head.i, ptr %entry1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry1, ptr %3, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i, %if.then, %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@do_wait_intr, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %return, !prof !77

signal_pending.exit:                              ; preds = %__here
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  %tobool75.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool75.not, label %if.end77, label %return

if.end77:                                         ; preds = %signal_pending.exit
  tail call void @_raw_spin_unlock(ptr noundef %wq) #5
  tail call void @schedule() #5
  tail call void @_raw_spin_lock(ptr noundef %wq) #5
  br label %return

return:                                           ; preds = %if.end77, %signal_pending.exit, %__here
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -512, %signal_pending.exit ], [ -512, %__here ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_wait_intr_irq(ptr noundef %wq, ptr noundef %wait) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %entry1, align 4
  %cmp.i.not = icmp eq ptr %1, %entry1
  br i1 %cmp.i.not, label %if.then, label %__here, !prof !77

if.then:                                          ; preds = %entry
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %wq, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry1, ptr noundef %3, ptr noundef %head.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__here

if.end.i.i.i:                                     ; preds = %if.then
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry1, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head.i, ptr %entry1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry1, ptr %3, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i, %if.then, %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@do_wait_intr_irq, %__here) to i32), ptr %task_state_change, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stack.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %21 = and i32 %20, 256
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %return, !prof !77

signal_pending.exit:                              ; preds = %__here
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and1.i.i.i.i.i = and i32 %23, 1
  %tobool75.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool75.not, label %if.end77, label %return

if.end77:                                         ; preds = %signal_pending.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %wq) #5
  tail call void @schedule() #5
  tail call void @_raw_spin_lock_irq(ptr noundef %wq) #5
  br label %return

return:                                           ; preds = %if.end77, %signal_pending.exit, %__here
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -512, %signal_pending.exit ], [ -512, %__here ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @finish_wait(ptr noundef %wq_head, ptr noundef %wq_entry) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@finish_wait, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %5, align 128
  %entry51 = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3
  %7 = ptrtoint ptr %entry51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %entry51, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !84
  %cmp.i.not.i = icmp eq ptr %8, %entry51
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %do.body56

list_empty_careful.exit:                          ; preds = %__here
  %prev.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %10, %entry51
  br i1 %cmp.i.not, label %if.end66, label %do.body56

do.body56:                                        ; preds = %list_empty_careful.exit, %__here
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_head) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry51) #5
  br i1 %call.i.i, label %if.end.i.i, label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body56
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %entry51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entry51, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body56
  %17 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i3.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wq_entry, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry51, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_head, i32 noundef %call59) #5
  br label %if.end66

if.end66:                                         ; preds = %list_del_init.exit, %list_empty_careful.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wait_woken(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %timeout) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mode, 204
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %__here, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b169 = load i1, ptr @wait_woken.__already_done, align 1
  br i1 %.b169, label %__here, label %if.then, !prof !77

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @wait_woken.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 458, i32 noundef 9, ptr noundef null) #5
  br label %__here

__here:                                           ; preds = %if.then, %land.rhs, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@wait_woken, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %mode, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !85
  %7 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wq_entry, align 4
  %and63 = and i32 %8, 2
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true, label %__here119

land.lhs.true:                                    ; preds = %__here
  %9 = tail call i32 @llvm.read_register.i32(metadata !66) #5
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i170 = and i32 %14, 2097152
  %tobool.not.i = icmp eq i32 %and.i170, 0
  br i1 %tobool.not.i, label %if.then66, label %is_kthread_should_stop.exit

is_kthread_should_stop.exit:                      ; preds = %land.lhs.true
  %call1.i = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call1.i, label %__here119, label %if.then66

if.then66:                                        ; preds = %is_kthread_should_stop.exit, %land.lhs.true
  %call67 = tail call i32 @schedule_timeout(i32 noundef %timeout) #5
  br label %__here119

__here119:                                        ; preds = %if.then66, %is_kthread_should_stop.exit, %__here
  %timeout.addr.0 = phi i32 [ %timeout, %__here ], [ %timeout, %is_kthread_should_stop.exit ], [ %call67, %if.then66 ]
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change123 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change123 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@wait_woken, %__here119) to i32), ptr %task_state_change123, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %18, align 128
  %20 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wq_entry, align 4
  %and151 = and i32 %21, -3
  store volatile i32 %and151, ptr %wq_entry, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !86
  ret i32 %timeout.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @woken_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !87
  %0 = ptrtoint ptr %wq_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_entry, align 4
  %or = or i32 %1, 2
  store i32 %or, ptr %wq_entry, align 4
  %call = tail call i32 @default_wake_function(ptr noundef %wq_entry, i32 noundef %mode, i32 noundef %sync, ptr noundef %key) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__init_waitqueue_head.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../kernel/sched/wait.c", i32 11, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab___init_waitqueue_head, !4, !"__ksymtab___init_waitqueue_head", i1 false, i1 false}
!4 = !{!"../kernel/sched/wait.c", i32 16, i32 1}
!5 = !{ptr @__ksymtab_add_wait_queue, !6, !"__ksymtab_add_wait_queue", i1 false, i1 false}
!6 = !{!"../kernel/sched/wait.c", i32 27, i32 1}
!7 = !{ptr @__ksymtab_add_wait_queue_exclusive, !8, !"__ksymtab_add_wait_queue_exclusive", i1 false, i1 false}
!8 = !{!"../kernel/sched/wait.c", i32 38, i32 1}
!9 = !{ptr @__ksymtab_add_wait_queue_priority, !10, !"__ksymtab_add_wait_queue_priority", i1 false, i1 false}
!10 = !{!"../kernel/sched/wait.c", i32 49, i32 1}
!11 = !{ptr @__ksymtab_remove_wait_queue, !12, !"__ksymtab_remove_wait_queue", i1 false, i1 false}
!12 = !{!"../kernel/sched/wait.c", i32 59, i32 1}
!13 = !{ptr @__ksymtab___wake_up, !14, !"__ksymtab___wake_up", i1 false, i1 false}
!14 = !{!"../kernel/sched/wait.c", i32 159, i32 1}
!15 = !{ptr @__ksymtab___wake_up_locked, !16, !"__ksymtab___wake_up_locked", i1 false, i1 false}
!16 = !{!"../kernel/sched/wait.c", i32 168, i32 1}
!17 = !{ptr @__ksymtab___wake_up_locked_key, !18, !"__ksymtab___wake_up_locked_key", i1 false, i1 false}
!18 = !{!"../kernel/sched/wait.c", i32 174, i32 1}
!19 = !{ptr @__ksymtab___wake_up_locked_key_bookmark, !20, !"__ksymtab___wake_up_locked_key_bookmark", i1 false, i1 false}
!20 = !{!"../kernel/sched/wait.c", i32 181, i32 1}
!21 = !{ptr @__ksymtab___wake_up_sync_key, !22, !"__ksymtab___wake_up_sync_key", i1 false, i1 false}
!22 = !{!"../kernel/sched/wait.c", i32 207, i32 1}
!23 = !{ptr @__ksymtab___wake_up_locked_sync_key, !24, !"__ksymtab___wake_up_locked_sync_key", i1 false, i1 false}
!24 = !{!"../kernel/sched/wait.c", i32 230, i32 1}
!25 = !{ptr @__ksymtab___wake_up_sync, !26, !"__ksymtab___wake_up_sync", i1 false, i1 false}
!26 = !{!"../kernel/sched/wait.c", i32 239, i32 1}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../kernel/sched/wait.c", i32 245, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../kernel/sched/wait.c", i32 269, i32 2}
!32 = !{ptr @__ksymtab_prepare_to_wait, !33, !"__ksymtab_prepare_to_wait", i1 false, i1 false}
!33 = !{!"../kernel/sched/wait.c", i32 272, i32 1}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../kernel/sched/wait.c", i32 287, i32 2}
!36 = !{ptr @__ksymtab_prepare_to_wait_exclusive, !37, !"__ksymtab_prepare_to_wait_exclusive", i1 false, i1 false}
!37 = !{!"../kernel/sched/wait.c", i32 291, i32 1}
!38 = !{ptr @__ksymtab_init_wait_entry, !39, !"__ksymtab_init_wait_entry", i1 false, i1 false}
!39 = !{!"../kernel/sched/wait.c", i32 300, i32 1}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../kernel/sched/wait.c", i32 330, i32 3}
!42 = !{ptr @__ksymtab_prepare_to_wait_event, !43, !"__ksymtab_prepare_to_wait_event", i1 false, i1 false}
!43 = !{!"../kernel/sched/wait.c", i32 336, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../kernel/sched/wait.c", i32 350, i32 2}
!46 = !{ptr @__ksymtab_do_wait_intr, !47, !"__ksymtab_do_wait_intr", i1 false, i1 false}
!47 = !{!"../kernel/sched/wait.c", i32 360, i32 1}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../kernel/sched/wait.c", i32 367, i32 2}
!50 = !{ptr @__ksymtab_do_wait_intr_irq, !51, !"__ksymtab_do_wait_intr_irq", i1 false, i1 false}
!51 = !{!"../kernel/sched/wait.c", i32 377, i32 1}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../kernel/sched/wait.c", i32 392, i32 2}
!54 = !{ptr @__ksymtab_finish_wait, !55, !"__ksymtab_finish_wait", i1 false, i1 false}
!55 = !{!"../kernel/sched/wait.c", i32 412, i32 1}
!56 = !{ptr @__ksymtab_autoremove_wake_function, !57, !"__ksymtab_autoremove_wake_function", i1 false, i1 false}
!57 = !{!"../kernel/sched/wait.c", i32 423, i32 1}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../kernel/sched/wait.c", i32 458, i32 2}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../kernel/sched/wait.c", i32 461, i32 2}
!62 = !{ptr @__ksymtab_wait_woken, !63, !"__ksymtab_wait_woken", i1 false, i1 false}
!63 = !{!"../kernel/sched/wait.c", i32 473, i32 1}
!64 = !{ptr @__ksymtab_woken_wake_function, !65, !"__ksymtab_woken_wake_function", i1 false, i1 false}
!65 = !{!"../kernel/sched/wait.c", i32 483, i32 1}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2158486391}
!79 = !{i64 2158492880}
!80 = !{i64 2149034367}
!81 = !{i64 2158505189}
!82 = !{i64 2158511532}
!83 = !{i64 2158517698}
!84 = !{i64 2149042329}
!85 = !{i64 2158531827}
!86 = !{i64 2158538748}
!87 = !{i64 2158540192}
