; ModuleID = '/llk/IR_all_yes/lib/kunit/test.c_pt.bc'
source_filename = "../lib/kunit/test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__kunit_fail_current_test\22, \22a\22\09"
module asm "\09.weak\09__crc___kunit_fail_current_test\09\09\09\09"
module asm "\09.long\09__crc___kunit_fail_current_test\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kunit_fail_current_test:\09\09\09\09\09"
module asm "\09.asciz \09\22__kunit_fail_current_test\22\09\09\09\09\09"
module asm "__kstrtabns___kunit_fail_current_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_log_append\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_log_append\09\09\09\09"
module asm "\09.long\09__crc_kunit_log_append\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_log_append:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_log_append\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_log_append:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_suite_num_test_cases\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_suite_num_test_cases\09\09\09\09"
module asm "\09.long\09__crc_kunit_suite_num_test_cases\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_suite_num_test_cases:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_suite_num_test_cases\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_suite_num_test_cases:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_suite_has_succeeded\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_suite_has_succeeded\09\09\09\09"
module asm "\09.long\09__crc_kunit_suite_has_succeeded\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_suite_has_succeeded:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_suite_has_succeeded\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_suite_has_succeeded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_test_case_num\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_test_case_num\09\09\09\09"
module asm "\09.long\09__crc_kunit_test_case_num\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_test_case_num:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_test_case_num\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_test_case_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_do_assertion\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_do_assertion\09\09\09\09"
module asm "\09.long\09__crc_kunit_do_assertion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_do_assertion:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_do_assertion\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_do_assertion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_init_test\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_init_test\09\09\09\09"
module asm "\09.long\09__crc_kunit_init_test\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_init_test:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_init_test\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_init_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_run_tests\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_run_tests\09\09\09\09"
module asm "\09.long\09__crc_kunit_run_tests\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_run_tests:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_run_tests\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_run_tests:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__kunit_test_suites_init\22, \22a\22\09"
module asm "\09.weak\09__crc___kunit_test_suites_init\09\09\09\09"
module asm "\09.long\09__crc___kunit_test_suites_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kunit_test_suites_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__kunit_test_suites_init\22\09\09\09\09\09"
module asm "__kstrtabns___kunit_test_suites_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__kunit_test_suites_exit\22, \22a\22\09"
module asm "\09.weak\09__crc___kunit_test_suites_exit\09\09\09\09"
module asm "\09.long\09__crc___kunit_test_suites_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kunit_test_suites_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22__kunit_test_suites_exit\22\09\09\09\09\09"
module asm "__kstrtabns___kunit_test_suites_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_add_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_add_resource\09\09\09\09"
module asm "\09.long\09__crc_kunit_add_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_add_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_add_resource\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_add_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_add_named_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_add_named_resource\09\09\09\09"
module asm "\09.long\09__crc_kunit_add_named_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_add_named_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_add_named_resource\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_add_named_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_alloc_and_get_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_alloc_and_get_resource\09\09\09\09"
module asm "\09.long\09__crc_kunit_alloc_and_get_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_alloc_and_get_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_alloc_and_get_resource\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_alloc_and_get_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_remove_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_remove_resource\09\09\09\09"
module asm "\09.long\09__crc_kunit_remove_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_remove_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_remove_resource\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_remove_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_destroy_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_destroy_resource\09\09\09\09"
module asm "\09.long\09__crc_kunit_destroy_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_destroy_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_destroy_resource\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_destroy_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_kmalloc_array\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_kmalloc_array\09\09\09\09"
module asm "\09.long\09__crc_kunit_kmalloc_array\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_kmalloc_array:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_kmalloc_array\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_kmalloc_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_kfree\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_kfree\09\09\09\09"
module asm "\09.long\09__crc_kunit_kfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_kfree\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kunit_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_kunit_cleanup\09\09\09\09"
module asm "\09.long\09__crc_kunit_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunit_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22kunit_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_kunit_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.kunit_resource = type { ptr, ptr, ptr, %struct.kref, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }
%struct.string_stream = type { i32, %struct.list_head, %struct.spinlock, ptr, i32 }
%struct.kunit_try_catch_context = type { ptr, ptr, ptr }

@__kunit_fail_current_test._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013    # %s: %s:%d: %s\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__kunit_fail_current_test\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/kunit/test.c\00", [47 x i8] zeroinitializer }, align 32
@__kunit_fail_current_test._entry_ptr = internal global ptr @__kunit_fail_current_test._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    # %s: %s:%d: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab___kunit_fail_current_test = external dso_local constant [0 x i8], align 1
@__kstrtabns___kunit_fail_current_test = external dso_local constant [0 x i8], align 1
@__ksymtab___kunit_fail_current_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kunit_fail_current_test to i32), ptr @__kstrtab___kunit_fail_current_test, ptr @__kstrtabns___kunit_fail_current_test }, section "___ksymtab_gpl+__kunit_fail_current_test", align 4
@__param_str_stats_enabled = internal constant [20 x i8] c"kunit.stats_enabled\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@kunit_stats_enabled = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_stats_enabled = internal constant %struct.kernel_param { ptr @__param_str_stats_enabled, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.41 { ptr @kunit_stats_enabled } }, section "__param", align 4
@__UNIQUE_ID_stats_enabledtype174 = internal constant [33 x i8] c"kunit.parmtype=stats_enabled:int\00", section ".modinfo", align 1
@__UNIQUE_ID_stats_enabled175 = internal constant [100 x i8] c"kunit.parm=stats_enabled:Print test stats: never (0), only for multiple subtests (1), or always (2)\00", section ".modinfo", align 1
@__kstrtab_kunit_log_append = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_log_append = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_log_append = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_log_append to i32), ptr @__kstrtab_kunit_log_append, ptr @__kstrtabns_kunit_log_append }, section "___ksymtab_gpl+kunit_log_append", align 4
@__kstrtab_kunit_suite_num_test_cases = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_suite_num_test_cases = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_suite_num_test_cases = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_suite_num_test_cases to i32), ptr @__kstrtab_kunit_suite_num_test_cases, ptr @__kstrtabns_kunit_suite_num_test_cases }, section "___ksymtab_gpl+kunit_suite_num_test_cases", align 4
@__kstrtab_kunit_suite_has_succeeded = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_suite_has_succeeded = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_suite_has_succeeded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_suite_has_succeeded to i32), ptr @__kstrtab_kunit_suite_has_succeeded, ptr @__kstrtabns_kunit_suite_has_succeeded }, section "___ksymtab_gpl+kunit_suite_has_succeeded", align 4
@__kstrtab_kunit_test_case_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_test_case_num = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_test_case_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_test_case_num to i32), ptr @__kstrtab_kunit_test_case_num, ptr @__kstrtabns_kunit_test_case_num }, section "___ksymtab_gpl+kunit_test_case_num", align 4
@__kstrtab_kunit_do_assertion = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_do_assertion = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_do_assertion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_do_assertion to i32), ptr @__kstrtab_kunit_do_assertion, ptr @__kstrtabns_kunit_do_assertion }, section "___ksymtab_gpl+kunit_do_assertion", align 4
@kunit_init_test.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&test->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_kunit_init_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_init_test = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_init_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_init_test to i32), ptr @__kstrtab_kunit_init_test, ptr @__kstrtabns_kunit_init_test }, section "___ksymtab_gpl+kunit_init_test", align 4
@kunit_run_tests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016        # Subtest: %s\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kunit_run_tests\00", [16 x i8] zeroinitializer }, align 32
@kunit_run_tests._entry_ptr = internal global ptr @kunit_run_tests._entry, section ".printk_index", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"        # Subtest: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"param-%d\00", [23 x i8] zeroinitializer }, align 32
@kunit_run_tests._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016        %s %d - %s\00", [43 x i8] zeroinitializer }, align 32
@kunit_run_tests._entry_ptr.11 = internal global ptr @kunit_run_tests._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"        %s %d - %s\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_kunit_run_tests = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_run_tests = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_run_tests = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_run_tests to i32), ptr @__kstrtab_kunit_run_tests, ptr @__kstrtabns_kunit_run_tests }, section "___ksymtab_gpl+kunit_run_tests", align 4
@__kstrtab___kunit_test_suites_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___kunit_test_suites_init = external dso_local constant [0 x i8], align 1
@__ksymtab___kunit_test_suites_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kunit_test_suites_init to i32), ptr @__kstrtab___kunit_test_suites_init, ptr @__kstrtabns___kunit_test_suites_init }, section "___ksymtab_gpl+__kunit_test_suites_init", align 4
@kunit_suite_counter = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__kstrtab___kunit_test_suites_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns___kunit_test_suites_exit = external dso_local constant [0 x i8], align 1
@__ksymtab___kunit_test_suites_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kunit_test_suites_exit to i32), ptr @__kstrtab___kunit_test_suites_exit, ptr @__kstrtabns___kunit_test_suites_exit }, section "___ksymtab_gpl+__kunit_test_suites_exit", align 4
@__kstrtab_kunit_add_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_add_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_add_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_add_resource to i32), ptr @__kstrtab_kunit_add_resource, ptr @__kstrtabns_kunit_add_resource }, section "___ksymtab_gpl+kunit_add_resource", align 4
@__kstrtab_kunit_add_named_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_add_named_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_add_named_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_add_named_resource to i32), ptr @__kstrtab_kunit_add_named_resource, ptr @__kstrtabns_kunit_add_named_resource }, section "___ksymtab_gpl+kunit_add_named_resource", align 4
@__kstrtab_kunit_alloc_and_get_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_alloc_and_get_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_alloc_and_get_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_alloc_and_get_resource to i32), ptr @__kstrtab_kunit_alloc_and_get_resource, ptr @__kstrtabns_kunit_alloc_and_get_resource }, section "___ksymtab_gpl+kunit_alloc_and_get_resource", align 4
@__kstrtab_kunit_remove_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_remove_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_remove_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_remove_resource to i32), ptr @__kstrtab_kunit_remove_resource, ptr @__kstrtabns_kunit_remove_resource }, section "___ksymtab_gpl+kunit_remove_resource", align 4
@__kstrtab_kunit_destroy_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_destroy_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_destroy_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_destroy_resource to i32), ptr @__kstrtab_kunit_destroy_resource, ptr @__kstrtabns_kunit_destroy_resource }, section "___ksymtab_gpl+kunit_destroy_resource", align 4
@__kstrtab_kunit_kmalloc_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_kmalloc_array = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_kmalloc_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_kmalloc_array to i32), ptr @__kstrtab_kunit_kmalloc_array, ptr @__kstrtabns_kunit_kmalloc_array }, section "___ksymtab_gpl+kunit_kmalloc_array", align 4
@__kstrtab_kunit_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_kfree to i32), ptr @__kstrtab_kunit_kfree, ptr @__kstrtabns_kunit_kfree }, section "___ksymtab_gpl+kunit_kfree", align 4
@__kstrtab_kunit_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunit_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_kunit_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunit_cleanup to i32), ptr @__kstrtab_kunit_cleanup, ptr @__kstrtabns_kunit_cleanup }, section "___ksymtab_gpl+kunit_cleanup", align 4
@__initcall__kmod_kunit__176_805_kunit_init7 = internal global ptr @kunit_init, section ".initcall7.init", align 4
@__exitcall_kunit_exit = internal global ptr @kunit_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file177 = internal constant [27 x i8] c"kunit.file=lib/kunit/kunit\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [21 x i8] c"kunit.license=GPL v2\00", section ".modinfo", align 1
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Could not allocate stream to print failed assertion in %s:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013    # %s: Could not allocate buffer, dumping stream:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kunit_print_string_stream\00", [38 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry_ptr = internal global ptr @kunit_print_string_stream._entry, section ".printk_index", align 4
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"    # %s: Could not allocate buffer, dumping stream:\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013    # %s: %s\00", [17 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry_ptr.19 = internal global ptr @kunit_print_string_stream._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"    # %s: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013    # %s: \0A\00", [18 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry_ptr.23 = internal global ptr @kunit_print_string_stream._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"    # %s: \0A\0A\00", [19 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kunit_print_string_stream._entry_ptr.26 = internal global ptr @kunit_print_string_stream._entry.25, section ".printk_index", align 4
@kunit_print_subtest_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016    # Subtest: %s\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kunit_print_subtest_start\00", [38 x i8] zeroinitializer }, align 32
@kunit_print_subtest_start._entry_ptr = internal global ptr @kunit_print_subtest_start._entry, section ".printk_index", align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    # Subtest: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@kunit_print_subtest_start._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016    1..%zd\00", [19 x i8] zeroinitializer }, align 32
@kunit_print_subtest_start._entry_ptr.32 = internal global ptr @kunit_print_subtest_start._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"    1..%zd\0A\00", [20 x i8] zeroinitializer }, align 32
@kunit_run_case_internal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013    # %s: failed to initialize: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kunit_run_case_internal\00", [40 x i8] zeroinitializer }, align 32
@kunit_run_case_internal._entry_ptr = internal global ptr @kunit_run_case_internal._entry, section ".printk_index", align 4
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"    # %s: failed to initialize: %d\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@kunit_catch_run_case._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013    # %s: test case timed out\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kunit_catch_run_case\00", [43 x i8] zeroinitializer }, align 32
@kunit_catch_run_case._entry_ptr = internal global ptr @kunit_catch_run_case._entry, section ".printk_index", align 4
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"    # %s: test case timed out\0A\0A\00", [32 x i8] zeroinitializer }, align 32
@kunit_catch_run_case._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013    # %s: internal error occurred preventing test case from running: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@kunit_catch_run_case._entry_ptr.42 = internal global ptr @kunit_catch_run_case._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"    # %s: internal error occurred preventing test case from running: %d\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"not ok\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@kunit_print_test_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016    # %s: pass:%lu fail:%lu skip:%lu total:%lu\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kunit_print_test_stats\00", [41 x i8] zeroinitializer }, align 32
@kunit_print_test_stats._entry_ptr = internal global ptr @kunit_print_test_stats._entry, section ".printk_index", align 4
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"    # %s: pass:%lu fail:%lu skip:%lu total:%lu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" # SKIP \00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kunit_print_ok_not_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s %zd - %s%s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kunit_print_ok_not_ok\00", [42 x i8] zeroinitializer }, align 32
@kunit_print_ok_not_ok._entry_ptr = internal global ptr @kunit_print_ok_not_ok._entry, section ".printk_index", align 4
@kunit_print_ok_not_ok._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016    %s %zd - %s%s%s\00", [42 x i8] zeroinitializer }, align 32
@kunit_print_ok_not_ok._entry_ptr.56 = internal global ptr @kunit_print_ok_not_ok._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    %s %zd - %s%s%s\0A\00", [43 x i8] zeroinitializer }, align 32
@kunit_print_suite_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016# %s: pass:%lu fail:%lu skip:%lu total:%lu\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kunit_print_suite_stats\00", [40 x i8] zeroinitializer }, align 32
@kunit_print_suite_stats._entry_ptr = internal global ptr @kunit_print_suite_stats._entry, section ".printk_index", align 4
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"# %s: pass:%lu fail:%lu skip:%lu total:%lu\0A\00", [52 x i8] zeroinitializer }, align 32
@kunit_print_suite_stats._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016# Totals: pass:%lu fail:%lu skip:%lu total:%lu\00", [47 x i8] zeroinitializer }, align 32
@kunit_print_suite_stats._entry_ptr.63 = internal global ptr @kunit_print_suite_stats._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"# Totals: pass:%lu fail:%lu skip:%lu total:%lu\0A\00", [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.kunit_run_tests = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@switch.table.kunit_run_tests.65 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@switch.table.kunit_print_ok_not_ok = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 49, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"kunit_stats_enabled\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 61, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 304, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 515, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 523, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 526, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"kunit_suite_counter\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 193, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 251, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 231, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 234, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 236, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 238, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 139, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 141, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 327, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 393, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 399, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 184, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 186, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant [24 x i8] c"../include/kunit/test.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 188, i32 9 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 90, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 154, i32 61 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 154, i32 74 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 165, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 170, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 447, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [20 x i8] c"../lib/kunit/test.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 457, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [29 x i8] c"switch.table.kunit_run_tests\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [32 x i8] c"switch.table.kunit_run_tests.65\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [35 x i8] c"switch.table.kunit_print_ok_not_ok\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__UNIQUE_ID_stats_enabled175, ptr @__UNIQUE_ID_stats_enabledtype174, ptr @__exitcall_kunit_exit, ptr @__initcall__kmod_kunit__176_805_kunit_init7, ptr @__ksymtab___kunit_fail_current_test, ptr @__ksymtab___kunit_test_suites_exit, ptr @__ksymtab___kunit_test_suites_init, ptr @__ksymtab_kunit_add_named_resource, ptr @__ksymtab_kunit_add_resource, ptr @__ksymtab_kunit_alloc_and_get_resource, ptr @__ksymtab_kunit_cleanup, ptr @__ksymtab_kunit_destroy_resource, ptr @__ksymtab_kunit_do_assertion, ptr @__ksymtab_kunit_init_test, ptr @__ksymtab_kunit_kfree, ptr @__ksymtab_kunit_kmalloc_array, ptr @__ksymtab_kunit_log_append, ptr @__ksymtab_kunit_remove_resource, ptr @__ksymtab_kunit_run_tests, ptr @__ksymtab_kunit_suite_has_succeeded, ptr @__ksymtab_kunit_suite_num_test_cases, ptr @__ksymtab_kunit_test_case_num, ptr @__kunit_fail_current_test._entry, ptr @__kunit_fail_current_test._entry_ptr, ptr @__param_stats_enabled, ptr @kunit_catch_run_case._entry, ptr @kunit_catch_run_case._entry.40, ptr @kunit_catch_run_case._entry_ptr, ptr @kunit_catch_run_case._entry_ptr.42, ptr @kunit_exit, ptr @kunit_print_ok_not_ok._entry, ptr @kunit_print_ok_not_ok._entry.54, ptr @kunit_print_ok_not_ok._entry_ptr, ptr @kunit_print_ok_not_ok._entry_ptr.56, ptr @kunit_print_string_stream._entry, ptr @kunit_print_string_stream._entry.17, ptr @kunit_print_string_stream._entry.21, ptr @kunit_print_string_stream._entry.25, ptr @kunit_print_string_stream._entry_ptr, ptr @kunit_print_string_stream._entry_ptr.19, ptr @kunit_print_string_stream._entry_ptr.23, ptr @kunit_print_string_stream._entry_ptr.26, ptr @kunit_print_subtest_start._entry, ptr @kunit_print_subtest_start._entry.30, ptr @kunit_print_subtest_start._entry_ptr, ptr @kunit_print_subtest_start._entry_ptr.32, ptr @kunit_print_suite_stats._entry, ptr @kunit_print_suite_stats._entry.61, ptr @kunit_print_suite_stats._entry_ptr, ptr @kunit_print_suite_stats._entry_ptr.63, ptr @kunit_print_test_stats._entry, ptr @kunit_print_test_stats._entry_ptr, ptr @kunit_run_case_internal._entry, ptr @kunit_run_case_internal._entry_ptr, ptr @kunit_run_tests._entry, ptr @kunit_run_tests._entry.9, ptr @kunit_run_tests._entry_ptr, ptr @kunit_run_tests._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @kunit_stats_enabled, ptr @kunit_init_test.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @kunit_suite_counter, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @switch.table.kunit_run_tests, ptr @switch.table.kunit_run_tests.65, ptr @switch.table.kunit_print_ok_not_ok], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_stats_enabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_init_test.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_run_tests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_run_tests._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_suite_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_string_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_string_stream._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_string_stream._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_string_stream._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_subtest_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_subtest_start._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_run_case_internal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_catch_run_case._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_catch_run_case._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_test_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_ok_not_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_ok_not_ok._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_suite_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kunit_print_suite_stats._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kunit_run_tests to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kunit_run_tests.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kunit_print_ok_not_ok to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kunit_fail_current_test(ptr noundef %file, i32 noundef %line, ptr nocapture noundef readonly %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !172
  %1 = tail call i32 @llvm.read_register.i32(metadata !162) #18
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %kunit_test = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 192
  %5 = ptrtoint ptr %kunit_test to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kunit_test, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.kunit, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %status.i, align 4
  call void @llvm.va_start(ptr nonnull %args)
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call4 = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %add = add i32 %call4, 1
  call void @llvm.va_end(ptr nonnull %args)
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %kunit_test7 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 192
  %11 = ptrtoint ptr %kunit_test7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kunit_test7, align 4
  %call.i = call ptr @kunit_kmalloc_array(ptr noundef %12, i32 noundef 1, i32 noundef %add, i32 noundef 3264) #18
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.va_start(ptr nonnull %args)
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %.fca.0.load39 = load i32, ptr %args, align 4
  %.fca.0.insert40 = insertvalue [1 x i32] poison, i32 %.fca.0.load39, 0
  %call13 = call i32 @vsnprintf(ptr noundef nonnull %call.i, i32 noundef %add, ptr noundef %fmt, [1 x i32] %.fca.0.insert40)
  call void @llvm.va_end(ptr nonnull %args)
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %kunit_test17 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 192
  %16 = ptrtoint ptr %kunit_test17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kunit_test17, align 4
  %name = getelementptr inbounds %struct.kunit, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %19, ptr noundef %file, i32 noundef %line, ptr noundef nonnull %call.i) #21
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %kunit_test21 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 192
  %22 = ptrtoint ptr %kunit_test21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kunit_test21, align 4
  %log = getelementptr inbounds %struct.kunit, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %log, align 4
  %name25 = getelementptr inbounds %struct.kunit, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name25, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef %27, ptr noundef %file, i32 noundef %line, ptr noundef nonnull %call.i)
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %kunit_test30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 192
  %30 = ptrtoint ptr %kunit_test30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kunit_test30, align 4
  call void @kunit_kfree(ptr noundef %31, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_log_append(ptr noundef %log, ptr nocapture noundef readonly %fmt, ...) #5 align 64 {
entry:
  %line = alloca [512 x i8], align 1
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %line) #18
  %0 = call ptr @memset(ptr %line, i32 255, i32 512)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !172
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %log) #22
  %sub1 = sub i32 511, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1)
  %cmp = icmp slt i32 %sub1, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call4 = call i32 @vsnprintf(ptr noundef nonnull %line, i32 noundef 512, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %call6 = call ptr @strncat(ptr noundef nonnull %log, ptr noundef nonnull %line, i32 noundef %sub1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %line) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_kfree(ptr noundef %test, ptr noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  %resources.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i = load ptr, ptr %prev.i, align 4
  %cmp7.not28.i = icmp eq ptr %.pn26.i, %resources.i
  br i1 %cmp7.not28.i, label %entry.kunit_find_resource.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kunit_find_resource.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_resource.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn26.i, %entry.for.body.i_crit_edge ]
  %res.030.i = getelementptr i8, ptr %.pn29.i, i32 -16
  %1 = ptrtoint ptr %res.030.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %res.030.i, align 4
  %cmp.i = icmp eq ptr %2, %ptr
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %res.030.i.le = getelementptr i8, ptr %.pn29.i, i32 -16
  %refcount.i.i = getelementptr i8, ptr %.pn29.i, i32 -4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #18, !srcloc !173
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !174

if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !175

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_resource.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %kunit_find_resource.exit

for.inc.i:                                        ; preds = %for.body.i
  %prev12.i = getelementptr inbounds %struct.list_head, ptr %.pn29.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev12.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %prev12.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %resources.i
  br i1 %cmp7.not.i, label %for.inc.i.kunit_find_resource.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.kunit_find_resource.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_resource.exit

kunit_find_resource.exit:                         ; preds = %for.inc.i.kunit_find_resource.exit_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge, %entry.kunit_find_resource.exit_crit_edge
  %found.0.i = phi ptr [ %res.030.i.le, %if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge ], [ %res.030.i.le, %if.end15.sink.split.i.i.i.i.i.i ], [ null, %entry.kunit_find_resource.exit_crit_edge ], [ null, %for.inc.i.kunit_find_resource.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #18
  tail call void @kunit_remove_resource(ptr noundef %test, ptr noundef %found.0.i)
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %found.0.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #18, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i3 = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i3)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i3, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kunit_find_resource.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i3)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i3, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !175

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #18
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %kunit_find_resource.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !178
  %free.i.i.i = getelementptr %struct.kunit_resource, ptr %found.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %8(ptr noundef %found.0.i) #18
  tail call void @kfree(ptr noundef %found.0.i) #18
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_suite_num_test_cases(ptr nocapture noundef readonly %suite) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %test_cases = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 3
  %0 = ptrtoint ptr %test_cases to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test_cases, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not3 = icmp eq ptr %3, null
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %test_case.04 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %inc = add i32 %len.05, 1
  %incdec.ptr = getelementptr %struct.kunit_case, ptr %test_case.04, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %len.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_suite_has_succeeded(ptr nocapture noundef readonly %suite) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %test_cases = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 3
  %0 = ptrtoint ptr %test_cases to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test_cases, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not10 = icmp eq ptr %3, null
  br i1 %tobool.not10, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %status.012 = phi i32 [ %status.1, %for.inc.for.body_crit_edge ], [ 2, %entry.for.body_crit_edge ]
  %test_case.011 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %status1 = getelementptr inbounds %struct.kunit_case, ptr %test_case.011, i32 0, i32 3
  %4 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %for.body.for.inc_crit_edge [
    i32 1, label %for.body.cleanup_crit_edge
    i32 0, label %if.then4
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %status.1 = phi i32 [ 0, %if.then4 ], [ %status.012, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.kunit_case, ptr %test_case.011, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %status.1, %for.inc.cleanup_crit_edge ], [ %5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_test_case_num(ptr nocapture noundef readonly %suite, ptr noundef readnone %test_case) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %test_cases = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 3
  %0 = ptrtoint ptr %test_cases to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test_cases, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not5 = icmp eq ptr %3, null
  br i1 %tobool.not5, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %tc.06 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cmp = icmp eq ptr %tc.06, %test_case
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %for.body
  %inc = add i32 %i.07, 1
  %incdec.ptr = getelementptr %struct.kunit_case, ptr %tc.06, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %i.07, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_do_assertion(ptr noundef %test, ptr noundef %assert, i1 noundef zeroext %pass, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !172
  br i1 %pass, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %message = getelementptr inbounds %struct.kunit_assert, ptr %assert, i32 0, i32 4
  %1 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %message, align 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %assert, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %args, ptr %va, align 4
  %status.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %3 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %status.i.i, align 4
  %call.i = call ptr @alloc_string_stream(ptr noundef %test, i32 noundef 3264) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %file.i = getelementptr inbounds %struct.kunit_assert, ptr %assert, i32 0, i32 3
  %4 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file.i, align 4
  %line.i = getelementptr inbounds %struct.kunit_assert, ptr %assert, i32 0, i32 2
  %6 = ptrtoint ptr %line.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %line.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 254, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %5, i32 noundef %7) #18
  br label %kunit_fail.exit

if.end17.i:                                       ; preds = %if.end
  %format.i = getelementptr inbounds %struct.kunit_assert, ptr %assert, i32 0, i32 5
  %8 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format.i, align 4
  call void %9(ptr noundef %assert, ptr noundef nonnull %call.i) #18
  %call.i.i = call zeroext i1 @string_stream_is_empty(ptr noundef nonnull %call.i) #18
  br i1 %call.i.i, label %if.end17.i.kunit_print_string_stream.exit.i_crit_edge, label %if.end.i.i

if.end17.i.kunit_print_string_stream.exit.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_string_stream.exit.i

if.end.i.i:                                       ; preds = %if.end17.i
  %call1.i.i = call ptr @string_stream_get_string(ptr noundef nonnull %call.i) #18
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  %name.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %10 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i.i, align 4
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.end42.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %11) #21
  %log.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %12 = ptrtoint ptr %log.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log.i.i, align 4
  %14 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef %15) #18
  %fragments.i.i = getelementptr inbounds %struct.string_stream, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %fragments.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn73.i.i = load ptr, ptr %fragments.i.i, align 4
  %cmp.not74.i.i = icmp eq ptr %.pn73.i.i, %fragments.i.i
  br i1 %cmp.not74.i.i, label %do.end.i.i.do.end31.i.i_crit_edge, label %do.end.i.i.do.end13.i.i_crit_edge

do.end.i.i.do.end13.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %do.end13.i.i

do.end.i.i.do.end31.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end31.i.i

do.end13.i.i:                                     ; preds = %do.end13.i.i.do.end13.i.i_crit_edge, %do.end.i.i.do.end13.i.i_crit_edge
  %.pn75.i.i = phi ptr [ %.pn.i.i, %do.end13.i.i.do.end13.i.i_crit_edge ], [ %.pn73.i.i, %do.end.i.i.do.end13.i.i_crit_edge ]
  %17 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i.i, align 4
  %fragment16.i.i = getelementptr i8, ptr %.pn75.i.i, i32 8
  %19 = ptrtoint ptr %fragment16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fragment16.i.i, align 4
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %18, ptr noundef %20) #21
  %21 = ptrtoint ptr %log.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log.i.i, align 4
  %23 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name.i.i, align 4
  %25 = ptrtoint ptr %fragment16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fragment16.i.i, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %22, ptr noundef nonnull @.str.20, ptr noundef %24, ptr noundef %26) #18
  %27 = ptrtoint ptr %.pn75.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i.i = load ptr, ptr %.pn75.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %fragments.i.i
  br i1 %cmp.not.i.i, label %do.end13.i.i.do.end31.i.i_crit_edge, label %do.end13.i.i.do.end13.i.i_crit_edge

do.end13.i.i.do.end13.i.i_crit_edge:              ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end13.i.i

do.end13.i.i.do.end31.i.i_crit_edge:              ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %do.end13.i.i.do.end31.i.i_crit_edge, %do.end.i.i.do.end31.i.i_crit_edge
  %28 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i.i, align 4
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %29) #21
  %30 = ptrtoint ptr %log.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %log.i.i, align 4
  %32 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %31, ptr noundef nonnull @.str.24, ptr noundef %33) #18
  br label %kunit_print_string_stream.exit.i

do.end42.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call45.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %11, ptr noundef nonnull %call1.i.i) #21
  %log46.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %34 = ptrtoint ptr %log46.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %log46.i.i, align 4
  %36 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %35, ptr noundef nonnull @.str.20, ptr noundef %37, ptr noundef nonnull %call1.i.i) #18
  call void @kunit_kfree(ptr noundef %test, ptr noundef nonnull %call1.i.i) #18
  br label %kunit_print_string_stream.exit.i

kunit_print_string_stream.exit.i:                 ; preds = %do.end42.i.i, %do.end31.i.i, %if.end17.i.kunit_print_string_stream.exit.i_crit_edge
  %call19.i = call i32 @string_stream_destroy(ptr noundef nonnull %call.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %kunit_print_string_stream.exit.i.kunit_fail.exit_crit_edge, label %do.end36.i, !prof !175

kunit_print_string_stream.exit.i.kunit_fail.exit_crit_edge: ; preds = %kunit_print_string_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_fail.exit

do.end36.i:                                       ; preds = %kunit_print_string_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 262, i32 noundef 9, ptr noundef null) #18
  br label %kunit_fail.exit

kunit_fail.exit:                                  ; preds = %do.end36.i, %kunit_print_string_stream.exit.i.kunit_fail.exit_crit_edge, %do.end.i
  call void @llvm.va_end(ptr nonnull %args)
  %type = getelementptr inbounds %struct.kunit_assert, ptr %assert, i32 0, i32 1
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  br i1 %cmp, label %if.then3, label %kunit_fail.exit.cleanup_crit_edge

kunit_fail.exit.cleanup_crit_edge:                ; preds = %kunit_fail.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %kunit_fail.exit
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_handle_no_return()
  call fastcc void @kunit_abort(ptr noundef %test) #23
  unreachable

cleanup:                                          ; preds = %kunit_fail.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunit_abort(ptr noundef %test) unnamed_addr #9 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %try_catch = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  call void @__asan_handle_no_return()
  tail call void @kunit_try_catch_throw(ptr noundef %try_catch) #24
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_init_test(ptr noundef %test, ptr noundef %name, ptr noundef %log) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @kunit_init_test.__key, i16 noundef signext 3) #18
  %resources = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %0 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %resources, ptr %resources, align 4
  %prev.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %resources, ptr %prev.i, align 4
  %name1 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name1, align 4
  %log2 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %3 = ptrtoint ptr %log2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %log, ptr %log2, align 4
  %tobool.not = icmp eq ptr %log, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %log to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %log, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %status_comment = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %6 = ptrtoint ptr %status_comment to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %status_comment, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_run_tests(ptr noundef %suite) #0 align 64 {
entry:
  %context.i105 = alloca %struct.kunit_try_catch_context, align 4
  %context.i = alloca %struct.kunit_try_catch_context, align 4
  %param_desc = alloca [128 x i8], align 1
  %suite_stats.sroa.0 = alloca i32, align 4
  %suite_stats.sroa.5 = alloca i32, align 4
  %suite_stats.sroa.7 = alloca i32, align 4
  %test = alloca %struct.kunit, align 4
  %param_stats.sroa.0 = alloca i32, align 4
  %param_stats.sroa.7 = alloca i32, align 4
  %param_stats.sroa.11 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %param_desc) #18
  %0 = call ptr @memset(ptr %param_desc, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %suite_stats.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %suite_stats.sroa.5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %suite_stats.sroa.7)
  %1 = ptrtoint ptr %suite_stats.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %suite_stats.sroa.0, align 4
  %2 = ptrtoint ptr %suite_stats.sroa.5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %suite_stats.sroa.5, align 4
  %3 = ptrtoint ptr %suite_stats.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %suite_stats.sroa.7, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %suite) #21
  %log.i = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 6
  %4 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %log.i, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %suite) #18
  %test_cases.i.i = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 3
  %6 = ptrtoint ptr %test_cases.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %test_cases.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not3.i.i = icmp eq ptr %9, null
  br i1 %tobool.not3.i.i, label %entry.kunit_suite_num_test_cases.exit.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.kunit_suite_num_test_cases.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_suite_num_test_cases.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %len.05.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %test_case.04.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %7, %entry.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %len.05.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.kunit_case, ptr %test_case.04.i.i, i32 1
  %10 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %for.body.i.i.kunit_suite_num_test_cases.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.body.i.i.kunit_suite_num_test_cases.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_suite_num_test_cases.exit.i

kunit_suite_num_test_cases.exit.i:                ; preds = %for.body.i.i.kunit_suite_num_test_cases.exit.i_crit_edge, %entry.kunit_suite_num_test_cases.exit.i_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %entry.kunit_suite_num_test_cases.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.kunit_suite_num_test_cases.exit.i_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %len.0.lcssa.i.i) #21
  %12 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %log.i, align 4
  %14 = ptrtoint ptr %test_cases.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %test_cases.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not3.i20.i = icmp eq ptr %17, null
  br i1 %tobool.not3.i20.i, label %kunit_suite_num_test_cases.exit.i.kunit_print_subtest_start.exit_crit_edge, label %kunit_suite_num_test_cases.exit.i.for.body.i26.i_crit_edge

kunit_suite_num_test_cases.exit.i.for.body.i26.i_crit_edge: ; preds = %kunit_suite_num_test_cases.exit.i
  br label %for.body.i26.i

kunit_suite_num_test_cases.exit.i.kunit_print_subtest_start.exit_crit_edge: ; preds = %kunit_suite_num_test_cases.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_subtest_start.exit

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %kunit_suite_num_test_cases.exit.i.for.body.i26.i_crit_edge
  %len.05.i21.i = phi i32 [ %inc.i23.i, %for.body.i26.i.for.body.i26.i_crit_edge ], [ 0, %kunit_suite_num_test_cases.exit.i.for.body.i26.i_crit_edge ]
  %test_case.04.i22.i = phi ptr [ %incdec.ptr.i24.i, %for.body.i26.i.for.body.i26.i_crit_edge ], [ %15, %kunit_suite_num_test_cases.exit.i.for.body.i26.i_crit_edge ]
  %inc.i23.i = add i32 %len.05.i21.i, 1
  %incdec.ptr.i24.i = getelementptr %struct.kunit_case, ptr %test_case.04.i22.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i24.i, align 4
  %tobool.not.i25.i = icmp eq ptr %19, null
  br i1 %tobool.not.i25.i, label %for.body.i26.i.kunit_print_subtest_start.exit_crit_edge, label %for.body.i26.i.for.body.i26.i_crit_edge

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i26.i

for.body.i26.i.kunit_print_subtest_start.exit_crit_edge: ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_subtest_start.exit

kunit_print_subtest_start.exit:                   ; preds = %for.body.i26.i.kunit_print_subtest_start.exit_crit_edge, %kunit_suite_num_test_cases.exit.i.kunit_print_subtest_start.exit_crit_edge
  %len.0.lcssa.i27.i = phi i32 [ 0, %kunit_suite_num_test_cases.exit.i.kunit_print_subtest_start.exit_crit_edge ], [ %inc.i23.i, %for.body.i26.i.kunit_print_subtest_start.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %13, ptr noundef nonnull @.str.33, i32 noundef %len.0.lcssa.i27.i) #18
  %20 = ptrtoint ptr %test_cases.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %test_cases.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool.not183 = icmp eq ptr %23, null
  br i1 %tobool.not183, label %kunit_print_subtest_start.exit.for.end_crit_edge, label %for.body.lr.ph

kunit_print_subtest_start.exit.for.end_crit_edge: ; preds = %kunit_print_subtest_start.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %kunit_print_subtest_start.exit
  %param_value = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 4
  %log = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 2
  %24 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %context.i105, i32 0, i32 1
  %25 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %context.i105, i32 0, i32 2
  %lock.i.i108 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %resources.i.i109 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i.i.i110 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %name1.i.i111 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 1
  %status.i.i115 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 7
  %status_comment.i.i116 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 9
  %try_catch1.i117 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3
  %try2.i.i118 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3, i32 3
  %catch3.i.i119 = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 3, i32 4
  %param_index = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 5
  %26 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %context.i, i32 0, i32 1
  %27 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %context.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %kunit_update_stats.exit160.for.body_crit_edge, %for.body.lr.ph
  %test_case.0189 = phi ptr [ %21, %for.body.lr.ph ], [ %incdec.ptr, %kunit_update_stats.exit160.for.body_crit_edge ]
  %total_stats.sroa.12.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %add9.i, %kunit_update_stats.exit160.for.body_crit_edge ]
  %total_stats.sroa.9.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %add6.i, %kunit_update_stats.exit160.for.body_crit_edge ]
  %total_stats.sroa.6.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %add4.i, %kunit_update_stats.exit160.for.body_crit_edge ]
  %total_stats.sroa.0.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %add2.i, %kunit_update_stats.exit160.for.body_crit_edge ]
  %suite_stats.sroa.9.0184 = phi i32 [ 0, %for.body.lr.ph ], [ %inc5.i158, %kunit_update_stats.exit160.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 356, ptr nonnull %test) #18
  %28 = call ptr @memset(ptr %test, i32 0, i32 356)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_stats.sroa.0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_stats.sroa.7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param_stats.sroa.11)
  %29 = ptrtoint ptr %param_stats.sroa.0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %param_stats.sroa.0, align 4
  %30 = ptrtoint ptr %param_stats.sroa.7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %param_stats.sroa.7, align 4
  %31 = ptrtoint ptr %param_stats.sroa.11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %param_stats.sroa.11, align 4
  %status = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 3
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %status, align 4
  %generate_params = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 2
  %33 = ptrtoint ptr %generate_params to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %generate_params, align 4
  %tobool1.not = icmp eq ptr %34, null
  br i1 %tobool1.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %context.i) #18
  %name.i = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 1
  %35 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i, align 4
  %log.i103 = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 4
  %37 = ptrtoint ptr %log.i103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %log.i103, align 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i108, ptr noundef nonnull @.str.4, ptr noundef nonnull @kunit_init_test.__key, i16 noundef signext 3) #18
  %39 = ptrtoint ptr %resources.i.i109 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i109, ptr %resources.i.i109, align 4
  %40 = ptrtoint ptr %prev.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i109, ptr %prev.i.i.i110, align 4
  %41 = ptrtoint ptr %name1.i.i111 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %36, ptr %name1.i.i111, align 4
  %42 = ptrtoint ptr %log to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %log, align 4
  %tobool.not.i.i104 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i104, label %if.then.kunit_init_test.exit.i_crit_edge, label %if.then.i.i

if.then.kunit_init_test.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_init_test.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %38, align 1
  br label %kunit_init_test.exit.i

kunit_init_test.exit.i:                           ; preds = %if.then.i.i, %if.then.kunit_init_test.exit.i_crit_edge
  %44 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %status.i.i115, align 4
  %45 = ptrtoint ptr %status_comment.i.i116 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %status_comment.i.i116, align 4
  %46 = ptrtoint ptr %try_catch1.i117 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %test, ptr %try_catch1.i117, align 4
  %47 = ptrtoint ptr %try2.i.i118 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_try_run_case, ptr %try2.i.i118, align 4
  %48 = ptrtoint ptr %catch3.i.i119 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @kunit_catch_run_case, ptr %catch3.i.i119, align 4
  %49 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %test, ptr %context.i, align 4
  %50 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %suite, ptr %26, align 4
  %51 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %test_case.0189, ptr %27, align 4
  call void @kunit_try_catch_run(ptr noundef %try_catch1.i117, ptr noundef nonnull %context.i) #18
  %52 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status.i.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i = icmp eq i32 %53, 1
  br i1 %cmp.i, label %kunit_init_test.exit.i.if.end12.sink.split.i_crit_edge, label %if.else.i

kunit_init_test.exit.i.if.end12.sink.split.i_crit_edge: ; preds = %kunit_init_test.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %kunit_init_test.exit.i
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp7.not.i = icmp ne i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp9.i = icmp eq i32 %53, 0
  %or.cond.i = select i1 %cmp7.not.i, i1 %cmp9.i, i1 false
  br i1 %or.cond.i, label %if.else.i.if.end12.sink.split.i_crit_edge, label %if.else.i.kunit_run_case_catch_errors.exit_crit_edge

if.else.i.kunit_run_case_catch_errors.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_run_case_catch_errors.exit

if.else.i.if.end12.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i.if.end12.sink.split.i_crit_edge, %kunit_init_test.exit.i.if.end12.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %kunit_init_test.exit.i.if.end12.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end12.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink.i, ptr %status, align 4
  br label %kunit_run_case_catch_errors.exit

kunit_run_case_catch_errors.exit:                 ; preds = %if.end12.sink.split.i, %if.else.i.kunit_run_case_catch_errors.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %context.i) #18
  %57 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status.i.i115, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %58, label %kunit_run_case_catch_errors.exit.if.end42_crit_edge [
    i32 0, label %kunit_run_case_catch_errors.exit.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 1, label %sw.bb3.i
  ]

kunit_run_case_catch_errors.exit.sw.epilog.sink.split.i_crit_edge: ; preds = %kunit_run_case_catch_errors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

kunit_run_case_catch_errors.exit.if.end42_crit_edge: ; preds = %kunit_run_case_catch_errors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

sw.bb1.i:                                         ; preds = %kunit_run_case_catch_errors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %kunit_run_case_catch_errors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %sw.bb1.i, %kunit_run_case_catch_errors.exit.sw.epilog.sink.split.i_crit_edge
  %failed.sink9.i = phi ptr [ %param_stats.sroa.11, %sw.bb3.i ], [ %param_stats.sroa.7, %sw.bb1.i ], [ %param_stats.sroa.0, %kunit_run_case_catch_errors.exit.sw.epilog.sink.split.i_crit_edge ]
  %60 = ptrtoint ptr %failed.sink9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %failed.sink9.i, align 4
  %inc4.i = add i32 %61, 1
  store i32 %inc4.i, ptr %failed.sink9.i, align 4
  br label %if.end42

if.else:                                          ; preds = %for.body
  %62 = ptrtoint ptr %param_desc to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %param_desc, align 1
  %call = call ptr %34(ptr noundef null, ptr noundef nonnull %param_desc) #18
  %63 = ptrtoint ptr %param_value to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call, ptr %param_value, align 4
  %name = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 1
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %65) #21
  %66 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %log, align 4
  %68 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %67, ptr noundef nonnull @.str.7, ptr noundef %69)
  %70 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %param_value, align 4
  %tobool10.not181 = icmp eq ptr %71, null
  br i1 %tobool10.not181, label %if.else.if.end42_crit_edge, label %while.body.lr.ph

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

while.body.lr.ph:                                 ; preds = %if.else
  %log.i107 = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %kunit_update_stats.exit145.while.body_crit_edge, %while.body.lr.ph
  %param_stats.sroa.15.1182 = phi i32 [ 0, %while.body.lr.ph ], [ %inc5.i143, %kunit_update_stats.exit145.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %context.i105) #18
  %72 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name, align 4
  %74 = ptrtoint ptr %log.i107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %log.i107, align 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i108, ptr noundef nonnull @.str.4, ptr noundef nonnull @kunit_init_test.__key, i16 noundef signext 3) #18
  %76 = ptrtoint ptr %resources.i.i109 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i109, ptr %resources.i.i109, align 4
  %77 = ptrtoint ptr %prev.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i109, ptr %prev.i.i.i110, align 4
  %78 = ptrtoint ptr %name1.i.i111 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %73, ptr %name1.i.i111, align 4
  %79 = ptrtoint ptr %log to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %75, ptr %log, align 4
  %tobool.not.i.i113 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i113, label %while.body.kunit_init_test.exit.i122_crit_edge, label %if.then.i.i114

while.body.kunit_init_test.exit.i122_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_init_test.exit.i122

if.then.i.i114:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %75, align 1
  br label %kunit_init_test.exit.i122

kunit_init_test.exit.i122:                        ; preds = %if.then.i.i114, %while.body.kunit_init_test.exit.i122_crit_edge
  %81 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %status.i.i115, align 4
  %82 = ptrtoint ptr %status_comment.i.i116 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %status_comment.i.i116, align 4
  %83 = ptrtoint ptr %try_catch1.i117 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %test, ptr %try_catch1.i117, align 4
  %84 = ptrtoint ptr %try2.i.i118 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @kunit_try_run_case, ptr %try2.i.i118, align 4
  %85 = ptrtoint ptr %catch3.i.i119 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @kunit_catch_run_case, ptr %catch3.i.i119, align 4
  %86 = ptrtoint ptr %context.i105 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %test, ptr %context.i105, align 4
  %87 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %suite, ptr %24, align 4
  %88 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %test_case.0189, ptr %25, align 4
  call void @kunit_try_catch_run(ptr noundef %try_catch1.i117, ptr noundef nonnull %context.i105) #18
  %89 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %status.i.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i120 = icmp eq i32 %90, 1
  br i1 %cmp.i120, label %kunit_init_test.exit.i122.if.end12.sink.split.i128_crit_edge, label %if.else.i126

kunit_init_test.exit.i122.if.end12.sink.split.i128_crit_edge: ; preds = %kunit_init_test.exit.i122
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.sink.split.i128

if.else.i126:                                     ; preds = %kunit_init_test.exit.i122
  %91 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp7.not.i123 = icmp ne i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp9.i124 = icmp eq i32 %90, 0
  %or.cond.i125 = select i1 %cmp7.not.i123, i1 %cmp9.i124, i1 false
  br i1 %or.cond.i125, label %if.else.i126.if.end12.sink.split.i128_crit_edge, label %if.else.i126.kunit_run_case_catch_errors.exit129_crit_edge

if.else.i126.kunit_run_case_catch_errors.exit129_crit_edge: ; preds = %if.else.i126
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_run_case_catch_errors.exit129

if.else.i126.if.end12.sink.split.i128_crit_edge:  ; preds = %if.else.i126
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12.sink.split.i128

if.end12.sink.split.i128:                         ; preds = %if.else.i126.if.end12.sink.split.i128_crit_edge, %kunit_init_test.exit.i122.if.end12.sink.split.i128_crit_edge
  %.sink.i127 = phi i32 [ 1, %kunit_init_test.exit.i122.if.end12.sink.split.i128_crit_edge ], [ 0, %if.else.i126.if.end12.sink.split.i128_crit_edge ]
  %93 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %.sink.i127, ptr %status, align 4
  br label %kunit_run_case_catch_errors.exit129

kunit_run_case_catch_errors.exit129:              ; preds = %if.end12.sink.split.i128, %if.else.i126.kunit_run_case_catch_errors.exit129_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %context.i105) #18
  %94 = ptrtoint ptr %param_desc to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %param_desc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp = icmp eq i8 %95, 0
  br i1 %cmp, label %if.then13, label %kunit_run_case_catch_errors.exit129.do.end19_crit_edge

kunit_run_case_catch_errors.exit129.do.end19_crit_edge: ; preds = %kunit_run_case_catch_errors.exit129
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end19

if.then13:                                        ; preds = %kunit_run_case_catch_errors.exit129
  call void @__sanitizer_cov_trace_pc() #20
  %96 = ptrtoint ptr %param_index to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %param_index, align 4
  %call15 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %param_desc, i32 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %97)
  br label %do.end19

do.end19:                                         ; preds = %if.then13, %kunit_run_case_catch_errors.exit129.do.end19_crit_edge
  %98 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %status.i.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %99)
  %100 = icmp ult i32 %99, 3
  br i1 %100, label %switch.lookup, label %do.end19.kunit_status_to_ok_not_ok.exit_crit_edge

do.end19.kunit_status_to_ok_not_ok.exit_crit_edge: ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit

switch.lookup:                                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.kunit_run_tests, i32 0, i32 %99
  %101 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %101)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %kunit_status_to_ok_not_ok.exit

kunit_status_to_ok_not_ok.exit:                   ; preds = %switch.lookup, %do.end19.kunit_status_to_ok_not_ok.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.46, %do.end19.kunit_status_to_ok_not_ok.exit_crit_edge ]
  %102 = ptrtoint ptr %param_index to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %param_index, align 4
  %add = add i32 %103, 1
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %retval.0.i, i32 noundef %add, ptr noundef nonnull %param_desc) #21
  %104 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %log, align 4
  %106 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %status.i.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %108 = icmp ult i32 %107, 3
  br i1 %108, label %switch.lookup197, label %kunit_status_to_ok_not_ok.exit.kunit_status_to_ok_not_ok.exit134_crit_edge

kunit_status_to_ok_not_ok.exit.kunit_status_to_ok_not_ok.exit134_crit_edge: ; preds = %kunit_status_to_ok_not_ok.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit134

switch.lookup197:                                 ; preds = %kunit_status_to_ok_not_ok.exit
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep198 = getelementptr inbounds [3 x ptr], ptr @switch.table.kunit_run_tests.65, i32 0, i32 %107
  %109 = ptrtoint ptr %switch.gep198 to i32
  call void @__asan_load4_noabort(i32 %109)
  %switch.load199 = load ptr, ptr %switch.gep198, align 4
  br label %kunit_status_to_ok_not_ok.exit134

kunit_status_to_ok_not_ok.exit134:                ; preds = %switch.lookup197, %kunit_status_to_ok_not_ok.exit.kunit_status_to_ok_not_ok.exit134_crit_edge
  %retval.0.i133 = phi ptr [ %switch.load199, %switch.lookup197 ], [ @.str.46, %kunit_status_to_ok_not_ok.exit.kunit_status_to_ok_not_ok.exit134_crit_edge ]
  %110 = ptrtoint ptr %param_index to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %param_index, align 4
  %add30 = add i32 %111, 1
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %105, ptr noundef nonnull @.str.12, ptr noundef nonnull %retval.0.i133, i32 noundef %add30, ptr noundef nonnull %param_desc)
  %112 = ptrtoint ptr %param_desc to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %param_desc, align 1
  %113 = ptrtoint ptr %generate_params to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %generate_params, align 4
  %115 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %param_value, align 4
  %call38 = call ptr %114(ptr noundef %116, ptr noundef nonnull %param_desc) #18
  %117 = ptrtoint ptr %param_value to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call38, ptr %param_value, align 4
  %118 = ptrtoint ptr %param_index to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %param_index, align 4
  %inc = add i32 %119, 1
  store i32 %inc, ptr %param_index, align 4
  %120 = ptrtoint ptr %status.i.i115 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %status.i.i115, align 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %121, label %kunit_status_to_ok_not_ok.exit134.kunit_update_stats.exit145_crit_edge [
    i32 0, label %kunit_status_to_ok_not_ok.exit134.sw.epilog.sink.split.i141_crit_edge
    i32 2, label %sw.bb1.i136
    i32 1, label %sw.bb3.i138
  ]

kunit_status_to_ok_not_ok.exit134.sw.epilog.sink.split.i141_crit_edge: ; preds = %kunit_status_to_ok_not_ok.exit134
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i141

kunit_status_to_ok_not_ok.exit134.kunit_update_stats.exit145_crit_edge: ; preds = %kunit_status_to_ok_not_ok.exit134
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_update_stats.exit145

sw.bb1.i136:                                      ; preds = %kunit_status_to_ok_not_ok.exit134
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i141

sw.bb3.i138:                                      ; preds = %kunit_status_to_ok_not_ok.exit134
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i141

sw.epilog.sink.split.i141:                        ; preds = %sw.bb3.i138, %sw.bb1.i136, %kunit_status_to_ok_not_ok.exit134.sw.epilog.sink.split.i141_crit_edge
  %failed.sink9.i139 = phi ptr [ %param_stats.sroa.11, %sw.bb3.i138 ], [ %param_stats.sroa.7, %sw.bb1.i136 ], [ %param_stats.sroa.0, %kunit_status_to_ok_not_ok.exit134.sw.epilog.sink.split.i141_crit_edge ]
  %123 = ptrtoint ptr %failed.sink9.i139 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %failed.sink9.i139, align 4
  %inc4.i140 = add i32 %124, 1
  store i32 %inc4.i140, ptr %failed.sink9.i139, align 4
  %125 = ptrtoint ptr %param_value to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr = load ptr, ptr %param_value, align 4
  br label %kunit_update_stats.exit145

kunit_update_stats.exit145:                       ; preds = %sw.epilog.sink.split.i141, %kunit_status_to_ok_not_ok.exit134.kunit_update_stats.exit145_crit_edge
  %126 = phi ptr [ %call38, %kunit_status_to_ok_not_ok.exit134.kunit_update_stats.exit145_crit_edge ], [ %.pr, %sw.epilog.sink.split.i141 ]
  %inc5.i143 = add i32 %param_stats.sroa.15.1182, 1
  %tobool10.not = icmp eq ptr %126, null
  br i1 %tobool10.not, label %kunit_update_stats.exit145.if.end42_crit_edge, label %kunit_update_stats.exit145.while.body_crit_edge

kunit_update_stats.exit145.while.body_crit_edge:  ; preds = %kunit_update_stats.exit145
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

kunit_update_stats.exit145.if.end42_crit_edge:    ; preds = %kunit_update_stats.exit145
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.end42:                                         ; preds = %kunit_update_stats.exit145.if.end42_crit_edge, %if.else.if.end42_crit_edge, %sw.epilog.sink.split.i, %kunit_run_case_catch_errors.exit.if.end42_crit_edge
  %param_stats.sroa.15.2 = phi i32 [ 1, %kunit_run_case_catch_errors.exit.if.end42_crit_edge ], [ 1, %sw.epilog.sink.split.i ], [ 0, %if.else.if.end42_crit_edge ], [ %inc5.i143, %kunit_update_stats.exit145.if.end42_crit_edge ]
  %127 = ptrtoint ptr %param_stats.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %127)
  %param_stats.sroa.0.0.param_stats.sroa.0.0.param_stats.sroa.0.0..fca.0.load = load i32, ptr %param_stats.sroa.0, align 4
  %128 = ptrtoint ptr %param_stats.sroa.7 to i32
  call void @__asan_load4_noabort(i32 %128)
  %param_stats.sroa.7.0.param_stats.sroa.7.0.param_stats.sroa.7.4..fca.1.load = load i32, ptr %param_stats.sroa.7, align 4
  %129 = ptrtoint ptr %param_stats.sroa.11 to i32
  call void @__asan_load4_noabort(i32 %129)
  %param_stats.sroa.11.0.param_stats.sroa.11.0.param_stats.sroa.11.8..fca.2.load = load i32, ptr %param_stats.sroa.11, align 4
  %130 = load i32, ptr @kunit_stats_enabled, align 4
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %130, label %kunit_should_print_stats.exit.i [
    i32 0, label %if.end42.kunit_print_test_stats.exit_crit_edge
    i32 2, label %if.end42.do.end.i_crit_edge
  ]

if.end42.do.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

if.end42.kunit_print_test_stats.exit_crit_edge:   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_test_stats.exit

kunit_should_print_stats.exit.i:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %param_stats.sroa.15.2)
  %cmp4.i.i = icmp ugt i32 %param_stats.sroa.15.2, 1
  br i1 %cmp4.i.i, label %kunit_should_print_stats.exit.i.do.end.i_crit_edge, label %kunit_should_print_stats.exit.i.kunit_print_test_stats.exit_crit_edge

kunit_should_print_stats.exit.i.kunit_print_test_stats.exit_crit_edge: ; preds = %kunit_should_print_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_test_stats.exit

kunit_should_print_stats.exit.i.do.end.i_crit_edge: ; preds = %kunit_should_print_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i:                                         ; preds = %kunit_should_print_stats.exit.i.do.end.i_crit_edge, %if.end42.do.end.i_crit_edge
  %132 = ptrtoint ptr %name1.i.i111 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name1.i.i111, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %133, i32 noundef %param_stats.sroa.0.0.param_stats.sroa.0.0.param_stats.sroa.0.0..fca.0.load, i32 noundef %param_stats.sroa.11.0.param_stats.sroa.11.0.param_stats.sroa.11.8..fca.2.load, i32 noundef %param_stats.sroa.7.0.param_stats.sroa.7.0.param_stats.sroa.7.4..fca.1.load, i32 noundef %param_stats.sroa.15.2) #21
  %134 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %log, align 4
  %136 = ptrtoint ptr %name1.i.i111 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name1.i.i111, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %135, ptr noundef nonnull @.str.49, ptr noundef %137, i32 noundef %param_stats.sroa.0.0.param_stats.sroa.0.0.param_stats.sroa.0.0..fca.0.load, i32 noundef %param_stats.sroa.11.0.param_stats.sroa.11.0.param_stats.sroa.11.8..fca.2.load, i32 noundef %param_stats.sroa.7.0.param_stats.sroa.7.0.param_stats.sroa.7.4..fca.1.load, i32 noundef %param_stats.sroa.15.2) #18
  br label %kunit_print_test_stats.exit

kunit_print_test_stats.exit:                      ; preds = %do.end.i, %kunit_should_print_stats.exit.i.kunit_print_test_stats.exit_crit_edge, %if.end42.kunit_print_test_stats.exit_crit_edge
  %138 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %status, align 4
  %140 = ptrtoint ptr %test_cases.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %test_cases.i.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %tobool.not5.i = icmp eq ptr %143, null
  br i1 %tobool.not5.i, label %kunit_print_test_stats.exit.kunit_test_case_num.exit_crit_edge, label %kunit_print_test_stats.exit.for.body.i_crit_edge

kunit_print_test_stats.exit.for.body.i_crit_edge: ; preds = %kunit_print_test_stats.exit
  br label %for.body.i

kunit_print_test_stats.exit.kunit_test_case_num.exit_crit_edge: ; preds = %kunit_print_test_stats.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_test_case_num.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %kunit_print_test_stats.exit.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 1, %kunit_print_test_stats.exit.for.body.i_crit_edge ]
  %tc.06.i = phi ptr [ %incdec.ptr.i, %if.end.i.for.body.i_crit_edge ], [ %141, %kunit_print_test_stats.exit.for.body.i_crit_edge ]
  %cmp.i148 = icmp eq ptr %tc.06.i, %test_case.0189
  br i1 %cmp.i148, label %for.body.i.kunit_test_case_num.exit_crit_edge, label %if.end.i

for.body.i.kunit_test_case_num.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_test_case_num.exit

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %i.07.i, 1
  %incdec.ptr.i = getelementptr %struct.kunit_case, ptr %tc.06.i, i32 1
  %144 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %145, null
  br i1 %tobool.not.i, label %if.end.i.kunit_test_case_num.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end.i.kunit_test_case_num.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_test_case_num.exit

kunit_test_case_num.exit:                         ; preds = %if.end.i.kunit_test_case_num.exit_crit_edge, %for.body.i.kunit_test_case_num.exit_crit_edge, %kunit_print_test_stats.exit.kunit_test_case_num.exit_crit_edge
  %retval.0.i149 = phi i32 [ 0, %kunit_print_test_stats.exit.kunit_test_case_num.exit_crit_edge ], [ %i.07.i, %for.body.i.kunit_test_case_num.exit_crit_edge ], [ 0, %if.end.i.kunit_test_case_num.exit_crit_edge ]
  %name45 = getelementptr inbounds %struct.kunit_case, ptr %test_case.0189, i32 0, i32 1
  %146 = ptrtoint ptr %name45 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name45, align 4
  call fastcc void @kunit_print_ok_not_ok(ptr noundef nonnull %test, i1 noundef zeroext true, i32 noundef %139, i32 noundef %retval.0.i149, ptr noundef %147, ptr noundef %status_comment.i.i116)
  %148 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %status, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %149, label %kunit_test_case_num.exit.kunit_update_stats.exit160_crit_edge [
    i32 0, label %kunit_test_case_num.exit.sw.epilog.sink.split.i156_crit_edge
    i32 2, label %sw.bb1.i151
    i32 1, label %sw.bb3.i153
  ]

kunit_test_case_num.exit.sw.epilog.sink.split.i156_crit_edge: ; preds = %kunit_test_case_num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i156

kunit_test_case_num.exit.kunit_update_stats.exit160_crit_edge: ; preds = %kunit_test_case_num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_update_stats.exit160

sw.bb1.i151:                                      ; preds = %kunit_test_case_num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i156

sw.bb3.i153:                                      ; preds = %kunit_test_case_num.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.sink.split.i156

sw.epilog.sink.split.i156:                        ; preds = %sw.bb3.i153, %sw.bb1.i151, %kunit_test_case_num.exit.sw.epilog.sink.split.i156_crit_edge
  %failed.sink9.i154 = phi ptr [ %suite_stats.sroa.7, %sw.bb3.i153 ], [ %suite_stats.sroa.5, %sw.bb1.i151 ], [ %suite_stats.sroa.0, %kunit_test_case_num.exit.sw.epilog.sink.split.i156_crit_edge ]
  %151 = ptrtoint ptr %failed.sink9.i154 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %failed.sink9.i154, align 4
  %inc4.i155 = add i32 %152, 1
  store i32 %inc4.i155, ptr %failed.sink9.i154, align 4
  br label %kunit_update_stats.exit160

kunit_update_stats.exit160:                       ; preds = %sw.epilog.sink.split.i156, %kunit_test_case_num.exit.kunit_update_stats.exit160_crit_edge
  %inc5.i158 = add i32 %suite_stats.sroa.9.0184, 1
  %add2.i = add i32 %param_stats.sroa.0.0.param_stats.sroa.0.0.param_stats.sroa.0.0..fca.0.load, %total_stats.sroa.0.0185
  %add4.i = add i32 %param_stats.sroa.7.0.param_stats.sroa.7.0.param_stats.sroa.7.4..fca.1.load, %total_stats.sroa.6.0186
  %add6.i = add i32 %param_stats.sroa.11.0.param_stats.sroa.11.0.param_stats.sroa.11.8..fca.2.load, %total_stats.sroa.9.0187
  %add9.i = add i32 %param_stats.sroa.15.2, %total_stats.sroa.12.0188
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_stats.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_stats.sroa.7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param_stats.sroa.11)
  call void @llvm.lifetime.end.p0(i64 356, ptr nonnull %test) #18
  %incdec.ptr = getelementptr %struct.kunit_case, ptr %test_case.0189, i32 1
  %153 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %154, null
  br i1 %tobool.not, label %kunit_update_stats.exit160.for.end_crit_edge, label %kunit_update_stats.exit160.for.body_crit_edge

kunit_update_stats.exit160.for.body_crit_edge:    ; preds = %kunit_update_stats.exit160
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

kunit_update_stats.exit160.for.end_crit_edge:     ; preds = %kunit_update_stats.exit160
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %kunit_update_stats.exit160.for.end_crit_edge, %kunit_print_subtest_start.exit.for.end_crit_edge
  %suite_stats.sroa.9.0.lcssa = phi i32 [ 0, %kunit_print_subtest_start.exit.for.end_crit_edge ], [ %inc5.i158, %kunit_update_stats.exit160.for.end_crit_edge ]
  %total_stats.sroa.0.0.lcssa = phi i32 [ 0, %kunit_print_subtest_start.exit.for.end_crit_edge ], [ %add2.i, %kunit_update_stats.exit160.for.end_crit_edge ]
  %total_stats.sroa.6.0.lcssa = phi i32 [ 0, %kunit_print_subtest_start.exit.for.end_crit_edge ], [ %add4.i, %kunit_update_stats.exit160.for.end_crit_edge ]
  %total_stats.sroa.9.0.lcssa = phi i32 [ 0, %kunit_print_subtest_start.exit.for.end_crit_edge ], [ %add6.i, %kunit_update_stats.exit160.for.end_crit_edge ]
  %total_stats.sroa.12.0.lcssa = phi i32 [ 0, %kunit_print_subtest_start.exit.for.end_crit_edge ], [ %add9.i, %kunit_update_stats.exit160.for.end_crit_edge ]
  %155 = ptrtoint ptr %suite_stats.sroa.0 to i32
  call void @__asan_load4_noabort(i32 %155)
  %suite_stats.sroa.0.0.suite_stats.sroa.0.0.suite_stats.sroa.0.0..fca.0.load73 = load i32, ptr %suite_stats.sroa.0, align 4
  %156 = ptrtoint ptr %suite_stats.sroa.5 to i32
  call void @__asan_load4_noabort(i32 %156)
  %suite_stats.sroa.5.0.suite_stats.sroa.5.0.suite_stats.sroa.5.4..fca.1.load76 = load i32, ptr %suite_stats.sroa.5, align 4
  %157 = ptrtoint ptr %suite_stats.sroa.7 to i32
  call void @__asan_load4_noabort(i32 %157)
  %suite_stats.sroa.7.0.suite_stats.sroa.7.0.suite_stats.sroa.7.8..fca.2.load79 = load i32, ptr %suite_stats.sroa.7, align 4
  %158 = load i32, ptr @kunit_stats_enabled, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %158, label %kunit_should_print_stats.exit.i163 [
    i32 0, label %for.end.kunit_print_suite_stats.exit_crit_edge
    i32 2, label %for.end.do.end.i166_crit_edge
  ]

for.end.do.end.i166_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i166

for.end.kunit_print_suite_stats.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_suite_stats.exit

kunit_should_print_stats.exit.i163:               ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %suite_stats.sroa.9.0.lcssa)
  %cmp4.i.i162 = icmp ugt i32 %suite_stats.sroa.9.0.lcssa, 1
  br i1 %cmp4.i.i162, label %kunit_should_print_stats.exit.i163.do.end.i166_crit_edge, label %kunit_should_print_stats.exit.i163.if.end.i167_crit_edge

kunit_should_print_stats.exit.i163.if.end.i167_crit_edge: ; preds = %kunit_should_print_stats.exit.i163
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i167

kunit_should_print_stats.exit.i163.do.end.i166_crit_edge: ; preds = %kunit_should_print_stats.exit.i163
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i166

do.end.i166:                                      ; preds = %kunit_should_print_stats.exit.i163.do.end.i166_crit_edge, %for.end.do.end.i166_crit_edge
  %call2.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %suite, i32 noundef %suite_stats.sroa.0.0.suite_stats.sroa.0.0.suite_stats.sroa.0.0..fca.0.load73, i32 noundef %suite_stats.sroa.7.0.suite_stats.sroa.7.0.suite_stats.sroa.7.8..fca.2.load79, i32 noundef %suite_stats.sroa.5.0.suite_stats.sroa.5.0.suite_stats.sroa.5.4..fca.1.load76, i32 noundef %suite_stats.sroa.9.0.lcssa) #21
  %160 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %161, ptr noundef nonnull @.str.60, ptr noundef %suite, i32 noundef %suite_stats.sroa.0.0.suite_stats.sroa.0.0.suite_stats.sroa.0.0..fca.0.load73, i32 noundef %suite_stats.sroa.7.0.suite_stats.sroa.7.0.suite_stats.sroa.7.8..fca.2.load79, i32 noundef %suite_stats.sroa.5.0.suite_stats.sroa.5.0.suite_stats.sroa.5.4..fca.1.load76, i32 noundef %suite_stats.sroa.9.0.lcssa) #18
  %.pr.i = load i32, ptr @kunit_stats_enabled, align 4
  br label %if.end.i167

if.end.i167:                                      ; preds = %do.end.i166, %kunit_should_print_stats.exit.i163.if.end.i167_crit_edge
  %162 = phi i32 [ %.pr.i, %do.end.i166 ], [ %158, %kunit_should_print_stats.exit.i163.if.end.i167_crit_edge ]
  %163 = zext i32 %162 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %162, label %kunit_should_print_stats.exit56.i [
    i32 0, label %if.end.i167.kunit_print_suite_stats.exit_crit_edge
    i32 2, label %if.end.i167.do.end14.i_crit_edge
  ]

if.end.i167.do.end14.i_crit_edge:                 ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14.i

if.end.i167.kunit_print_suite_stats.exit_crit_edge: ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_suite_stats.exit

kunit_should_print_stats.exit56.i:                ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %total_stats.sroa.12.0.lcssa)
  %cmp4.i53.i = icmp ugt i32 %total_stats.sroa.12.0.lcssa, 1
  br i1 %cmp4.i53.i, label %kunit_should_print_stats.exit56.i.do.end14.i_crit_edge, label %kunit_should_print_stats.exit56.i.kunit_print_suite_stats.exit_crit_edge

kunit_should_print_stats.exit56.i.kunit_print_suite_stats.exit_crit_edge: ; preds = %kunit_should_print_stats.exit56.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_suite_stats.exit

kunit_should_print_stats.exit56.i.do.end14.i_crit_edge: ; preds = %kunit_should_print_stats.exit56.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end14.i

do.end14.i:                                       ; preds = %kunit_should_print_stats.exit56.i.do.end14.i_crit_edge, %if.end.i167.do.end14.i_crit_edge
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %total_stats.sroa.0.0.lcssa, i32 noundef %total_stats.sroa.9.0.lcssa, i32 noundef %total_stats.sroa.6.0.lcssa, i32 noundef %total_stats.sroa.12.0.lcssa) #21
  %164 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %log.i, align 4
  call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %165, ptr noundef nonnull @.str.64, i32 noundef %total_stats.sroa.0.0.lcssa, i32 noundef %total_stats.sroa.9.0.lcssa, i32 noundef %total_stats.sroa.6.0.lcssa, i32 noundef %total_stats.sroa.12.0.lcssa) #18
  br label %kunit_print_suite_stats.exit

kunit_print_suite_stats.exit:                     ; preds = %do.end14.i, %kunit_should_print_stats.exit56.i.kunit_print_suite_stats.exit_crit_edge, %if.end.i167.kunit_print_suite_stats.exit_crit_edge, %for.end.kunit_print_suite_stats.exit_crit_edge
  %166 = ptrtoint ptr %test_cases.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %test_cases.i.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %tobool.not10.i.i = icmp eq ptr %169, null
  br i1 %tobool.not10.i.i, label %kunit_print_suite_stats.exit.kunit_print_subtest_end.exit_crit_edge, label %kunit_print_suite_stats.exit.for.body.i.i169_crit_edge

kunit_print_suite_stats.exit.for.body.i.i169_crit_edge: ; preds = %kunit_print_suite_stats.exit
  br label %for.body.i.i169

kunit_print_suite_stats.exit.kunit_print_subtest_end.exit_crit_edge: ; preds = %kunit_print_suite_stats.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_subtest_end.exit

for.body.i.i169:                                  ; preds = %for.inc.i.i.for.body.i.i169_crit_edge, %kunit_print_suite_stats.exit.for.body.i.i169_crit_edge
  %status.012.i.i = phi i32 [ %status.1.i.i, %for.inc.i.i.for.body.i.i169_crit_edge ], [ 2, %kunit_print_suite_stats.exit.for.body.i.i169_crit_edge ]
  %test_case.011.i.i = phi ptr [ %incdec.ptr.i.i170, %for.inc.i.i.for.body.i.i169_crit_edge ], [ %167, %kunit_print_suite_stats.exit.for.body.i.i169_crit_edge ]
  %status1.i.i = getelementptr inbounds %struct.kunit_case, ptr %test_case.011.i.i, i32 0, i32 3
  %170 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %status1.i.i, align 4
  %172 = zext i32 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %171, label %for.body.i.i169.for.inc.i.i_crit_edge [
    i32 1, label %for.body.i.i169.kunit_print_subtest_end.exit_crit_edge
    i32 0, label %if.then4.i.i
  ]

for.body.i.i169.kunit_print_subtest_end.exit_crit_edge: ; preds = %for.body.i.i169
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_subtest_end.exit

for.body.i.i169.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i169
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %for.body.i.i169
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then4.i.i, %for.body.i.i169.for.inc.i.i_crit_edge
  %status.1.i.i = phi i32 [ 0, %if.then4.i.i ], [ %status.012.i.i, %for.body.i.i169.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i170 = getelementptr %struct.kunit_case, ptr %test_case.011.i.i, i32 1
  %173 = ptrtoint ptr %incdec.ptr.i.i170 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %incdec.ptr.i.i170, align 4
  %tobool.not.i.i171 = icmp eq ptr %174, null
  br i1 %tobool.not.i.i171, label %for.inc.i.i.kunit_print_subtest_end.exit_crit_edge, label %for.inc.i.i.for.body.i.i169_crit_edge

for.inc.i.i.for.body.i.i169_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i169

for.inc.i.i.kunit_print_subtest_end.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_print_subtest_end.exit

kunit_print_subtest_end.exit:                     ; preds = %for.inc.i.i.kunit_print_subtest_end.exit_crit_edge, %for.body.i.i169.kunit_print_subtest_end.exit_crit_edge, %kunit_print_suite_stats.exit.kunit_print_subtest_end.exit_crit_edge
  %retval.0.i.i = phi i32 [ 2, %kunit_print_suite_stats.exit.kunit_print_subtest_end.exit_crit_edge ], [ %status.1.i.i, %for.inc.i.i.kunit_print_subtest_end.exit_crit_edge ], [ %171, %for.body.i.i169.kunit_print_subtest_end.exit_crit_edge ]
  %175 = load i32, ptr @kunit_suite_counter, align 4
  %inc.i172 = add i32 %175, 1
  store i32 %inc.i172, ptr @kunit_suite_counter, align 4
  %status_comment.i = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 4
  call fastcc void @kunit_print_ok_not_ok(ptr noundef %suite, i1 noundef zeroext false, i32 noundef %retval.0.i.i, i32 noundef %175, ptr noundef %suite, ptr noundef %status_comment.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %suite_stats.sroa.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %suite_stats.sroa.5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %suite_stats.sroa.7)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %param_desc) #18
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunit_print_ok_not_ok(ptr noundef readonly %test_or_suite, i1 noundef zeroext %is_test, i32 noundef %status, i32 noundef %test_number, ptr noundef %description, ptr noundef %directive) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cond5 = select i1 %is_test, ptr %test_or_suite, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %status)
  %cmp = icmp eq i32 %status, 2
  %cond6 = select i1 %cmp, ptr @.str.50, ptr @.str.51
  %tobool7.not66 = icmp eq ptr %test_or_suite, null
  %tobool7.not = or i1 %tobool7.not66, %is_test
  br i1 %tobool7.not, label %do.end17, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status)
  %0 = icmp ult i32 %status, 3
  br i1 %0, label %switch.lookup, label %do.end.kunit_status_to_ok_not_ok.exit_crit_edge

do.end.kunit_status_to_ok_not_ok.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.kunit_print_ok_not_ok, i32 0, i32 %status
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %kunit_status_to_ok_not_ok.exit

kunit_status_to_ok_not_ok.exit:                   ; preds = %switch.lookup, %do.end.kunit_status_to_ok_not_ok.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.46, %do.end.kunit_status_to_ok_not_ok.exit_crit_edge ]
  %spec.select50 = select i1 %cmp, ptr %directive, ptr @.str.51
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull %retval.0.i, i32 noundef %test_number, ptr noundef %description, ptr noundef nonnull %cond6, ptr noundef %spec.select50) #21
  br label %if.end

do.end17:                                         ; preds = %entry
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %status, label %sw.epilog.i53 [
    i32 2, label %do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge
    i32 0, label %do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge67
    i32 1, label %kunit_status_to_ok_not_ok.exit55.thread
  ]

do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge67: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit55

do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge: ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit55

kunit_status_to_ok_not_ok.exit55.thread:          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #20
  %spec.select5161 = select i1 %cmp, ptr %directive, ptr @.str.51
  %call2562 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.45, i32 noundef %test_number, ptr noundef %description, ptr noundef nonnull %cond6, ptr noundef %spec.select5161) #21
  %log63 = getelementptr inbounds %struct.kunit, ptr %cond5, i32 0, i32 2
  %3 = ptrtoint ptr %log63 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %log63, align 4
  br label %sw.bb1.i56

sw.epilog.i53:                                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit55

kunit_status_to_ok_not_ok.exit55:                 ; preds = %sw.epilog.i53, %do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge, %do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge67
  %retval.0.i54 = phi ptr [ @.str.46, %sw.epilog.i53 ], [ @.str.44, %do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge ], [ @.str.44, %do.end17.kunit_status_to_ok_not_ok.exit55_crit_edge67 ]
  %spec.select51 = select i1 %cmp, ptr %directive, ptr @.str.51
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull %retval.0.i54, i32 noundef %test_number, ptr noundef %description, ptr noundef nonnull %cond6, ptr noundef %spec.select51) #21
  %log = getelementptr inbounds %struct.kunit, ptr %cond5, i32 0, i32 2
  %5 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log, align 4
  %7 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %status, label %sw.epilog.i57 [
    i32 2, label %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge
    i32 0, label %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge68
    i32 1, label %kunit_status_to_ok_not_ok.exit55.sw.bb1.i56_crit_edge
  ]

kunit_status_to_ok_not_ok.exit55.sw.bb1.i56_crit_edge: ; preds = %kunit_status_to_ok_not_ok.exit55
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb1.i56

kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge68: ; preds = %kunit_status_to_ok_not_ok.exit55
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit59

kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge: ; preds = %kunit_status_to_ok_not_ok.exit55
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit59

sw.bb1.i56:                                       ; preds = %kunit_status_to_ok_not_ok.exit55.sw.bb1.i56_crit_edge, %kunit_status_to_ok_not_ok.exit55.thread
  %8 = phi ptr [ %4, %kunit_status_to_ok_not_ok.exit55.thread ], [ %6, %kunit_status_to_ok_not_ok.exit55.sw.bb1.i56_crit_edge ]
  %spec.select5164 = phi ptr [ %spec.select5161, %kunit_status_to_ok_not_ok.exit55.thread ], [ %spec.select51, %kunit_status_to_ok_not_ok.exit55.sw.bb1.i56_crit_edge ]
  br label %kunit_status_to_ok_not_ok.exit59

sw.epilog.i57:                                    ; preds = %kunit_status_to_ok_not_ok.exit55
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_status_to_ok_not_ok.exit59

kunit_status_to_ok_not_ok.exit59:                 ; preds = %sw.epilog.i57, %sw.bb1.i56, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge68
  %9 = phi ptr [ %6, %sw.epilog.i57 ], [ %8, %sw.bb1.i56 ], [ %6, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge ], [ %6, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge68 ]
  %spec.select5165 = phi ptr [ %spec.select51, %sw.epilog.i57 ], [ %spec.select5164, %sw.bb1.i56 ], [ %spec.select51, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge ], [ %spec.select51, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge68 ]
  %retval.0.i58 = phi ptr [ @.str.46, %sw.epilog.i57 ], [ @.str.45, %sw.bb1.i56 ], [ @.str.44, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge ], [ @.str.44, %kunit_status_to_ok_not_ok.exit55.kunit_status_to_ok_not_ok.exit59_crit_edge68 ]
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %9, ptr noundef nonnull @.str.57, ptr noundef nonnull %retval.0.i58, i32 noundef %test_number, ptr noundef %description, ptr noundef nonnull %cond6, ptr noundef %spec.select5165)
  br label %if.end

if.end:                                           ; preds = %kunit_status_to_ok_not_ok.exit59, %kunit_status_to_ok_not_ok.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kunit_test_suites_init(ptr nocapture noundef readonly %suites) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %suites to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suites, align 4
  %cmp.not8 = icmp eq ptr %1, null
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %7, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %arrayidx10 = phi ptr [ %arrayidx, %for.body.for.body_crit_edge ], [ %suites, %entry.for.body_crit_edge ]
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @kunit_debugfs_create_suite(ptr noundef nonnull %2) #18
  %status_comment.i = getelementptr inbounds %struct.kunit_suite, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %status_comment.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %status_comment.i, align 4
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx10, align 4
  %call = tail call i32 @kunit_run_tests(ptr noundef %5)
  %inc = add i32 %i.09, 1
  %arrayidx = getelementptr ptr, ptr %suites, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kunit_test_suites_exit(ptr nocapture noundef readonly %suites) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %suites to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %suites, align 4
  %cmp.not5 = icmp eq ptr %1, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %4, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @kunit_debugfs_destroy_suite(ptr noundef nonnull %2) #18
  %inc = add i32 %i.06, 1
  %arrayidx = getelementptr ptr, ptr %suites, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  store i32 1, ptr @kunit_suite_counter, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_add_resource(ptr noundef %test, ptr noundef readonly %init, ptr noundef %free, ptr noundef %res, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %free1 = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 2
  %0 = ptrtoint ptr %free1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %free, ptr %free1, align 4
  %refcount = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #18
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 4
  %tobool.not = icmp eq ptr %init, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %init(ptr noundef %res, ptr noundef %data) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.do.body6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.do.body6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %res, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.else, %if.then.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %node = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4
  %resources = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %4, ptr noundef %resources) #18
  br i1 %call.i.i, label %if.end.i.i, label %do.body6.list_add_tail.exit_crit_edge

do.body6.list_add_tail.exit_crit_edge:            ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %prev.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body6.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #18
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #10 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_add_named_resource(ptr noundef %test, ptr noundef readonly %init, ptr noundef %free, ptr noundef %res, ptr noundef %name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #18
  %resources.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i.i = load ptr, ptr %prev.i.i, align 4
  %cmp7.not28.i.i = icmp eq ptr %.pn26.i.i, %resources.i.i
  br i1 %cmp7.not28.i.i, label %if.end.kunit_find_named_resource.exit.thread_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.kunit_find_named_resource.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_named_resource.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn26.i.i, %if.end.for.body.i.i_crit_edge ]
  %name.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -12
  %1 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %kunit_resource_name_match.exit.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

kunit_resource_name_match.exit.i:                 ; preds = %for.body.i.i
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef nonnull %name) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %kunit_resource_name_match.exit.i.for.inc.i.i_crit_edge

kunit_resource_name_match.exit.i.for.inc.i.i_crit_edge: ; preds = %kunit_resource_name_match.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %kunit_resource_name_match.exit.i
  %res.030.i.le.i = getelementptr i8, ptr %.pn29.i.i, i32 -16
  %refcount.i.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -4
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #18, !srcloc !173
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !174

if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !175

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_named_resource.exit

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #18
  br label %kunit_find_named_resource.exit

for.inc.i.i:                                      ; preds = %kunit_resource_name_match.exit.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %prev12.i.i = getelementptr inbounds %struct.list_head, ptr %.pn29.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev12.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i.i = load ptr, ptr %prev12.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %resources.i.i
  br i1 %cmp7.not.i.i, label %for.inc.i.i.kunit_find_named_resource.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.inc.i.i.kunit_find_named_resource.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_named_resource.exit.thread

kunit_find_named_resource.exit.thread:            ; preds = %for.inc.i.i.kunit_find_named_resource.exit.thread_crit_edge, %if.end.kunit_find_named_resource.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #18
  br label %if.end3

kunit_find_named_resource.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.kunit_find_named_resource.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #18
  %tobool1.not = icmp eq ptr %res.030.i.le.i, null
  br i1 %tobool1.not, label %kunit_find_named_resource.exit.if.end3_crit_edge, label %if.then2

kunit_find_named_resource.exit.if.end3_crit_edge: ; preds = %kunit_find_named_resource.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %kunit_find_named_resource.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #18, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i11, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !175

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #18
  br label %cleanup

if.then.i.i11:                                    ; preds = %if.then2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !178
  %free.i.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -8
  %7 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i11.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.i11.cleanup_crit_edge:                  ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i.i11
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %8(ptr noundef nonnull %res.030.i.le.i) #18
  tail call void @kfree(ptr noundef nonnull %res.030.i.le.i) #18
  br label %cleanup

if.end3:                                          ; preds = %kunit_find_named_resource.exit.if.end3_crit_edge, %kunit_find_named_resource.exit.thread
  %name4 = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 1
  %9 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %name4, align 4
  %free1.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 2
  %10 = ptrtoint ptr %free1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %free, ptr %free1.i, align 4
  %refcount.i12 = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i12, i32 noundef 4) #18
  %11 = ptrtoint ptr %refcount.i12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %refcount.i12, align 4
  %tobool.not.i = icmp eq ptr %init, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  %call.i = tail call i32 %init(ptr noundef %res, ptr noundef %data) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.do.body6.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.do.body6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body6.i

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %res, align 4
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.else.i, %if.then.i.do.body6.i_crit_edge
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #18
  %node.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %14, ptr noundef %resources.i.i) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body6.i.list_add_tail.exit.i_crit_edge

do.body6.i.list_add_tail.exit.i_crit_edge:        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body6.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call8.i) #18
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.i, %if.then.i.cleanup_crit_edge, %if.then.i.i.i, %if.then.i.i11.cleanup_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -17, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ -17, %if.then10.i.i.i.i.i ], [ -17, %if.then.i.i11.cleanup_crit_edge ], [ -17, %if.then.i.i.i ], [ 0, %list_add_tail.exit.i ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kunit_alloc_and_get_resource(ptr noundef %test, ptr noundef readonly %init, ptr noundef %free, i32 noundef %internal_gfp, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %internal_gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i19.i.i, label %entry.kzalloc.exit_crit_edge, label %if.end.i20.i.i, !prof !175

entry.kzalloc.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit

if.end.i20.i.i:                                   ; preds = %entry
  %and2.i.i.i = and i32 %internal_gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i20.i.i.kzalloc.exit_crit_edge

if.end.i20.i.i.kzalloc.exit_crit_edge:            ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i.i.i = and i32 %internal_gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i20.i.i.kzalloc.exit_crit_edge, %entry.kzalloc.exit_crit_edge
  %retval.0.i21.i.i = phi i32 [ 0, %entry.kzalloc.exit_crit_edge ], [ 3, %if.end.i20.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %internal_gfp, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 24) #26
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %kzalloc.exit
  %free1.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %free1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %free, ptr %free1.i, align 8
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #18
  %3 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refcount.i, align 4
  %tobool.not.i = icmp eq ptr %init, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i = tail call i32 %init(ptr noundef nonnull %call7.i.i, ptr noundef %data) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.do.body6.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.do.body6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body6.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %call7.i.i, align 8
  br label %do.body6.i

do.body6.i:                                       ; preds = %if.else.i, %if.then.i.do.body6.i_crit_edge
  %lock.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  %node.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i, i32 0, i32 4
  %resources.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %6, ptr noundef %resources.i) #18
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body6.i.if.then3_crit_edge

do.body6.i.if.then3_crit_edge:                    ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3

if.end.i.i.i:                                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node.i, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i, ptr %node.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node.i, ptr %6, align 4
  br label %if.then3

if.then3:                                         ; preds = %if.end.i.i.i, %do.body6.i.if.then3_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call8.i) #18
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #18
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #18, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !174

if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !175

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %kzalloc.exit.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ], [ %call7.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.end15.sink.split.i.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_remove_resource(ptr noundef %test, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %node = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #18
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #18
  %refcount.i = getelementptr inbounds %struct.kunit_resource, ptr %res, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #18
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #18, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !175

if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_put_resource.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #18
  br label %kunit_put_resource.exit

if.then.i.i:                                      ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !178
  %free.i.i.i = getelementptr %struct.kunit_resource, ptr %res, i32 0, i32 2
  %9 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.kunit_put_resource.exit_crit_edge, label %if.then.i.i.i

if.then.i.i.kunit_put_resource.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_put_resource.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %10(ptr noundef %res) #18
  tail call void @kfree(ptr noundef %res) #18
  br label %kunit_put_resource.exit

kunit_put_resource.exit:                          ; preds = %if.then.i.i.i, %if.then.i.i.kunit_put_resource.exit_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.kunit_put_resource.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kunit_destroy_resource(ptr noundef %test, ptr nocapture noundef readonly %match, ptr noundef %match_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #18
  %resources.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn26.i = load ptr, ptr %prev.i, align 4
  %cmp7.not28.i = icmp eq ptr %.pn26.i, %resources.i
  br i1 %cmp7.not28.i, label %entry.kunit_find_resource.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.kunit_find_resource.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_resource.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn26.i, %entry.for.body.i_crit_edge ]
  %res.030.i = getelementptr i8, ptr %.pn29.i, i32 -16
  %call9.i = tail call zeroext i1 %match(ptr noundef %test, ptr noundef %res.030.i, ptr noundef %match_data) #18
  br i1 %call9.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %refcount.i.i = getelementptr i8, ptr %.pn29.i, i32 -4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #18
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #18, !srcloc !173
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !174

if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !175

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_resource.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #18
  br label %kunit_find_resource.exit

for.inc.i:                                        ; preds = %for.body.i
  %prev12.i = getelementptr inbounds %struct.list_head, ptr %.pn29.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev12.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %prev12.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %resources.i
  br i1 %cmp7.not.i, label %for.inc.i.kunit_find_resource.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.kunit_find_resource.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_find_resource.exit.thread

kunit_find_resource.exit.thread:                  ; preds = %for.inc.i.kunit_find_resource.exit.thread_crit_edge, %entry.kunit_find_resource.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #18
  br label %cleanup

kunit_find_resource.exit:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.kunit_find_resource.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #18
  %tobool.not = icmp eq ptr %res.030.i, null
  br i1 %tobool.not, label %kunit_find_resource.exit.cleanup_crit_edge, label %if.end

kunit_find_resource.exit.cleanup_crit_edge:       ; preds = %kunit_find_resource.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %kunit_find_resource.exit
  tail call void @kunit_remove_resource(ptr noundef %test, ptr noundef nonnull %res.030.i)
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #18
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #18, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i4 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i4)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i4, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i4)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i4, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !175

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #18
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !178
  %free.i.i.i = getelementptr i8, ptr %.pn29.i, i32 -8
  %5 = ptrtoint ptr %free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %6(ptr noundef nonnull %res.030.i) #18
  tail call void @kfree(ptr noundef nonnull %res.030.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then.i.i.cleanup_crit_edge, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %kunit_find_resource.exit.cleanup_crit_edge, %kunit_find_resource.exit.thread
  %retval.0 = phi i32 [ -2, %kunit_find_resource.exit.cleanup_crit_edge ], [ -2, %kunit_find_resource.exit.thread ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kunit_kmalloc_array(ptr noundef %test, i32 noundef %n, i32 noundef %size, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i20.i.i.i, !prof !175

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit.i

if.end.i20.i.i.i:                                 ; preds = %entry
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge

if.end.i20.i.i.i.kzalloc.exit.i_crit_edge:        ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i20.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i21.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i20.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfp, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i21.i.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i.i, i32 noundef 24) #26
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge, label %if.end.i

kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge: ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_alloc_resource.exit

if.end.i:                                         ; preds = %kzalloc.exit.i
  %free1.i.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %free1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kunit_kmalloc_array_free, ptr %free1.i.i, align 8
  %refcount.i.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #18
  %3 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %refcount.i.i, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n, i32 %size) #18
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kunit_kmalloc_array_init.exit.thread6.i, label %if.end7.i.i.i, !prof !174

kunit_kmalloc_array_init.exit.thread6.i:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %kunit_alloc_resource.exit

if.end7.i.i.i:                                    ; preds = %if.end.i
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef %gfp) #27
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool.not.i.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.not.i, label %if.end7.i.i.i.kunit_alloc_resource.exit_crit_edge, label %do.body6.i.i

if.end7.i.i.i.kunit_alloc_resource.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_alloc_resource.exit

do.body6.i.i:                                     ; preds = %if.end7.i.i.i
  %lock.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call8.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #18
  %node.i.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i.i, i32 0, i32 4
  %resources.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i.i, ptr noundef %10, ptr noundef %resources.i.i) #18
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body6.i.i.if.then3.i_crit_edge

do.body6.i.i.if.then3.i_crit_edge:                ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then3.i

if.end.i.i.i.i:                                   ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node.i.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i, ptr %node.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.kunit_resource, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node.i.i, ptr %10, align 4
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i.i.i.i, %do.body6.i.i.if.then3.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call8.i.i) #18
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i.i, align 8
  br label %kunit_alloc_resource.exit

kunit_alloc_resource.exit:                        ; preds = %if.then3.i, %if.end7.i.i.i.kunit_alloc_resource.exit_crit_edge, %kunit_kmalloc_array_init.exit.thread6.i, %kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.then3.i ], [ null, %kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge ], [ null, %if.end7.i.i.i.kunit_alloc_resource.exit_crit_edge ], [ null, %kunit_kmalloc_array_init.exit.thread6.i ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_kmalloc_array_free(ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @kfree(ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunit_cleanup(ptr noundef %test) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call217 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %resources = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %0 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %resources, align 4
  %cmp.i.not18 = icmp eq ptr %1, %resources
  br i1 %cmp.i.not18, label %entry.if.then_crit_edge, label %if.end.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.end.lr.ph:                                     ; preds = %entry
  %prev = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  br label %if.end

if.then:                                          ; preds = %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  %call2.lcssa = phi i32 [ %call217, %entry.if.then_crit_edge ], [ %call2, %if.end.if.then_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.lcssa) #18
  %2 = tail call i32 @llvm.read_register.i32(metadata !162) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %kunit_test = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 192
  %6 = ptrtoint ptr %kunit_test to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %kunit_test, align 4
  ret void

if.end:                                           ; preds = %if.end.if.end_crit_edge, %if.end.lr.ph
  %call219 = phi i32 [ %call217, %if.end.lr.ph ], [ %call2, %if.end.if.end_crit_edge ]
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call219) #18
  tail call void @kunit_remove_resource(ptr noundef %test, ptr noundef %add.ptr)
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #18
  %9 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %resources, align 4
  %cmp.i.not = icmp eq ptr %10, %resources
  br i1 %cmp.i.not, label %if.end.if.then_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kunit_init() #11 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kunit_debugfs_init() #18
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kunit_exit() #11 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kunit_debugfs_cleanup() #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_debugfs_cleanup() local_unnamed_addr #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_string_stream(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_stream_destroy(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @string_stream_is_empty(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @string_stream_get_string(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @kunit_try_catch_throw(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_try_run_case(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %suite2 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %suite2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suite2, align 4
  %test_case3 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %test_case3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test_case3, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !162) #18
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %kunit_test = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 192
  %10 = ptrtoint ptr %kunit_test to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %kunit_test, align 4
  %init.i = getelementptr inbounds %struct.kunit_suite, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.end9.i_crit_edge, label %if.then.i

entry.if.end9.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 %12(ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end9.i_crit_edge, label %cleanup.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.i

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %name.i = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %14, i32 noundef %call.i) #21
  %log.i = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log.i, align 4
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %16, ptr noundef nonnull @.str.36, ptr noundef %18, i32 noundef %call.i) #18
  %status.i.i = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %status.i.i, align 4
  br label %kunit_run_case_internal.exit

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %entry.if.end9.i_crit_edge
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  tail call void %21(ptr noundef %1) #18
  br label %kunit_run_case_internal.exit

kunit_run_case_internal.exit:                     ; preds = %if.end9.i, %cleanup.i
  tail call fastcc void @kunit_run_case_cleanup(ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kunit_catch_run_case(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %try_result.i = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %try_result.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %try_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end20, label %if.then

if.then:                                          ; preds = %entry
  %status.i = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %3)
  %cmp = icmp eq i32 %3, -110
  %name = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  br i1 %cmp, label %do.end, label %do.end12

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %6) #21
  %log = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 4
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %8, ptr noundef nonnull @.str.39, ptr noundef %10)
  br label %cleanup

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %6, i32 noundef %3) #21
  %log16 = getelementptr inbounds %struct.kunit, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %log16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log16, align 4
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @kunit_log_append(ptr noundef %12, ptr noundef nonnull @.str.43, ptr noundef %14, i32 noundef %3)
  br label %cleanup

if.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %suite2 = getelementptr inbounds %struct.kunit_try_catch_context, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %suite2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %suite2, align 4
  tail call fastcc void @kunit_run_case_cleanup(ptr noundef %1, ptr noundef %16)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end12, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_try_catch_run(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunit_run_case_cleanup(ptr noundef %test, ptr nocapture noundef readonly %suite) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %exit = getelementptr inbounds %struct.kunit_suite, ptr %suite, i32 0, i32 2
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exit, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %1(ptr noundef %test) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %lock.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 6
  %call217.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #18
  %resources.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8
  %2 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %resources.i.i, align 4
  %cmp.i.not18.i.i = icmp eq ptr %3, %resources.i.i
  br i1 %cmp.i.not18.i.i, label %if.end.kunit_case_internal_cleanup.exit_crit_edge, label %if.end.lr.ph.i.i

if.end.kunit_case_internal_cleanup.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_case_internal_cleanup.exit

if.end.lr.ph.i.i:                                 ; preds = %if.end
  %prev.i.i = getelementptr inbounds %struct.kunit, ptr %test, i32 0, i32 8, i32 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  %call219.i.i = phi i32 [ %call217.i.i, %if.end.lr.ph.i.i ], [ %call2.i.i, %if.end.i.i.if.end.i.i_crit_edge ]
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 -16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call219.i.i) #18
  tail call void @kunit_remove_resource(ptr noundef %test, ptr noundef %add.ptr.i.i) #18
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #18
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %resources.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %resources.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.kunit_case_internal_cleanup.exit_crit_edge, label %if.end.i.i.if.end.i.i_crit_edge

if.end.i.i.if.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.end.i.i.kunit_case_internal_cleanup.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunit_case_internal_cleanup.exit

kunit_case_internal_cleanup.exit:                 ; preds = %if.end.i.i.kunit_case_internal_cleanup.exit_crit_edge, %if.end.kunit_case_internal_cleanup.exit_crit_edge
  %call2.lcssa.i.i = phi i32 [ %call217.i.i, %if.end.kunit_case_internal_cleanup.exit_crit_edge ], [ %call2.i.i, %if.end.i.i.kunit_case_internal_cleanup.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.lcssa.i.i) #18
  %8 = tail call i32 @llvm.read_register.i32(metadata !162) #18
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i.i, align 8
  %kunit_test.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 192
  %12 = ptrtoint ptr %kunit_test.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %kunit_test.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_debugfs_create_suite(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_debugfs_destroy_suite(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #10 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_debugfs_init() local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nounwind allocsize(2) }
attributes #27 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !120, !121, !122, !123, !125, !127, !129, !131, !132, !133, !134, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !155, !157, !158, !159, !160}
!llvm.named.register.sp = !{!162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/kunit/test.c", i32 49, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__kunit_fail_current_test._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__kunit_fail_current_test._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab___kunit_fail_current_test, !8, !"__ksymtab___kunit_fail_current_test", i1 false, i1 false}
!8 = !{!"../lib/kunit/test.c", i32 52, i32 1}
!9 = !{ptr @__param_stats_enabled, !10, !"__param_stats_enabled", i1 false, i1 false}
!10 = !{!"../lib/kunit/test.c", i32 62, i32 1}
!11 = !{ptr @__UNIQUE_ID_stats_enabledtype174, !10, !"__UNIQUE_ID_stats_enabledtype174", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_stats_enabled175, !13, !"__UNIQUE_ID_stats_enabled175", i1 false, i1 false}
!13 = !{!"../lib/kunit/test.c", i32 63, i32 1}
!14 = !{ptr @__ksymtab_kunit_log_append, !15, !"__ksymtab_kunit_log_append", i1 false, i1 false}
!15 = !{!"../lib/kunit/test.c", i32 123, i32 1}
!16 = !{ptr @__ksymtab_kunit_suite_num_test_cases, !17, !"__ksymtab_kunit_suite_num_test_cases", i1 false, i1 false}
!17 = !{!"../lib/kunit/test.c", i32 135, i32 1}
!18 = !{ptr @__ksymtab_kunit_suite_has_succeeded, !19, !"__ksymtab_kunit_suite_has_succeeded", i1 false, i1 false}
!19 = !{!"../lib/kunit/test.c", i32 191, i32 1}
!20 = !{ptr @__ksymtab_kunit_test_case_num, !21, !"__ksymtab_kunit_test_case_num", i1 false, i1 false}
!21 = !{!"../lib/kunit/test.c", i32 218, i32 1}
!22 = !{ptr @__ksymtab_kunit_do_assertion, !23, !"__ksymtab_kunit_do_assertion", i1 false, i1 false}
!23 = !{!"../lib/kunit/test.c", i32 300, i32 1}
!24 = !{ptr @kunit_init_test.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../lib/kunit/test.c", i32 304, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__ksymtab_kunit_init_test, !28, !"__ksymtab_kunit_init_test", i1 false, i1 false}
!28 = !{!"../lib/kunit/test.c", i32 313, i32 1}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/kunit/test.c", i32 515, i32 4}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @kunit_run_tests._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @kunit_run_tests._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/kunit/test.c", i32 523, i32 8}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/kunit/test.c", i32 526, i32 5}
!39 = !{ptr @kunit_run_tests._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @kunit_run_tests._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__ksymtab_kunit_run_tests, !43, !"__ksymtab_kunit_run_tests", i1 false, i1 false}
!43 = !{!"../lib/kunit/test.c", i32 558, i32 1}
!44 = !{ptr @__ksymtab___kunit_test_suites_init, !45, !"__ksymtab___kunit_test_suites_init", i1 false, i1 false}
!45 = !{!"../lib/kunit/test.c", i32 576, i32 1}
!46 = !{ptr @__ksymtab___kunit_test_suites_exit, !47, !"__ksymtab___kunit_test_suites_exit", i1 false, i1 false}
!47 = !{!"../lib/kunit/test.c", i32 592, i32 1}
!48 = !{ptr @__ksymtab_kunit_add_resource, !49, !"__ksymtab_kunit_add_resource", i1 false, i1 false}
!49 = !{!"../lib/kunit/test.c", i32 627, i32 1}
!50 = !{ptr @__ksymtab_kunit_add_named_resource, !51, !"__ksymtab_kunit_add_named_resource", i1 false, i1 false}
!51 = !{!"../lib/kunit/test.c", i32 651, i32 1}
!52 = !{ptr @__ksymtab_kunit_alloc_and_get_resource, !53, !"__ksymtab_kunit_alloc_and_get_resource", i1 false, i1 false}
!53 = !{!"../lib/kunit/test.c", i32 677, i32 1}
!54 = !{ptr @__ksymtab_kunit_remove_resource, !55, !"__ksymtab_kunit_remove_resource", i1 false, i1 false}
!55 = !{!"../lib/kunit/test.c", i32 688, i32 1}
!56 = !{ptr @__ksymtab_kunit_destroy_resource, !57, !"__ksymtab_kunit_destroy_resource", i1 false, i1 false}
!57 = !{!"../lib/kunit/test.c", i32 706, i32 1}
!58 = !{ptr @__ksymtab_kunit_kmalloc_array, !59, !"__ksymtab_kunit_kmalloc_array", i1 false, i1 false}
!59 = !{!"../lib/kunit/test.c", i32 744, i32 1}
!60 = !{ptr @__ksymtab_kunit_kfree, !61, !"__ksymtab_kunit_kfree", i1 false, i1 false}
!61 = !{!"../lib/kunit/test.c", i32 762, i32 1}
!62 = !{ptr @__ksymtab_kunit_cleanup, !63, !"__ksymtab_kunit_cleanup", i1 false, i1 false}
!63 = !{!"../lib/kunit/test.c", i32 797, i32 1}
!64 = !{ptr @__initcall__kmod_kunit__176_805_kunit_init7, !65, !"__initcall__kmod_kunit__176_805_kunit_init7", i1 false, i1 false}
!65 = !{!"../lib/kunit/test.c", i32 805, i32 1}
!66 = !{ptr @__exitcall_kunit_exit, !67, !"__exitcall_kunit_exit", i1 false, i1 false}
!67 = !{!"../lib/kunit/test.c", i32 811, i32 1}
!68 = !{ptr @__UNIQUE_ID_file177, !69, !"__UNIQUE_ID_file177", i1 false, i1 false}
!69 = !{!"../lib/kunit/test.c", i32 813, i32 1}
!70 = !{ptr @__UNIQUE_ID_license178, !69, !"__UNIQUE_ID_license178", i1 false, i1 false}
!71 = !{ptr @__param_str_stats_enabled, !10, !"__param_str_stats_enabled", i1 false, i1 false}
!72 = !{ptr @kunit_stats_enabled, !73, !"kunit_stats_enabled", i1 false, i1 false}
!73 = !{!"../lib/kunit/test.c", i32 61, i32 12}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/kunit/test.c", i32 251, i32 3}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/kunit/test.c", i32 231, i32 3}
!78 = !{ptr @.str.15, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @kunit_print_string_stream._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @kunit_print_string_stream._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/kunit/test.c", i32 234, i32 4}
!84 = !{ptr @kunit_print_string_stream._entry.17, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @kunit_print_string_stream._entry_ptr.19, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/kunit/test.c", i32 236, i32 3}
!89 = !{ptr @kunit_print_string_stream._entry.21, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @kunit_print_string_stream._entry_ptr.23, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @kunit_print_string_stream._entry.25, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../lib/kunit/test.c", i32 238, i32 3}
!94 = !{ptr @kunit_print_string_stream._entry_ptr.26, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/kunit/test.c", i32 139, i32 2}
!97 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @kunit_print_subtest_start._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @kunit_print_subtest_start._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../lib/kunit/test.c", i32 141, i32 2}
!103 = !{ptr @kunit_print_subtest_start._entry.30, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @kunit_print_subtest_start._entry_ptr.32, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../lib/kunit/test.c", i32 327, i32 4}
!108 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @kunit_run_case_internal._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @kunit_run_case_internal._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../lib/kunit/test.c", i32 393, i32 4}
!114 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @kunit_catch_run_case._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @kunit_catch_run_case._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../lib/kunit/test.c", i32 399, i32 4}
!120 = !{ptr @kunit_catch_run_case._entry.40, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @kunit_catch_run_case._entry_ptr.42, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/kunit/test.h", i32 184, i32 10}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/kunit/test.h", i32 186, i32 10}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/kunit/test.h", i32 188, i32 9}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/kunit/test.c", i32 90, i32 2}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @kunit_print_test_stats._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @kunit_print_test_stats._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/kunit/test.c", i32 154, i32 61}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/kunit/test.c", i32 154, i32 74}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/kunit/test.c", i32 165, i32 3}
!141 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @kunit_print_ok_not_ok._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @kunit_print_ok_not_ok._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../lib/kunit/test.c", i32 170, i32 3}
!146 = !{ptr @kunit_print_ok_not_ok._entry.54, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @kunit_print_ok_not_ok._entry_ptr.56, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../lib/kunit/test.c", i32 447, i32 3}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @kunit_print_suite_stats._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @kunit_print_suite_stats._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../lib/kunit/test.c", i32 457, i32 3}
!157 = !{ptr @kunit_print_suite_stats._entry.61, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @kunit_print_suite_stats._entry_ptr.63, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @kunit_suite_counter, !161, !"kunit_suite_counter", i1 false, i1 false}
!161 = !{!"../lib/kunit/test.c", i32 193, i32 15}
!162 = !{!"sp"}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"auto-init"}
!173 = !{i64 2148581030, i64 2148581062, i64 2148581091, i64 2148581125, i64 2148581156, i64 2148581179}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{!"branch_weights", i32 2000, i32 1}
!176 = !{i64 2148669055}
!177 = !{i64 2148583495, i64 2148583527, i64 2148583556, i64 2148583590, i64 2148583621, i64 2148583644}
!178 = !{i64 2149303779}
