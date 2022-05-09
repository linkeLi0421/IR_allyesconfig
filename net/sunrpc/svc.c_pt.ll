; ModuleID = '/llk/IR_all_yes/net/sunrpc/svc.c_pt.bc'
source_filename = "../net/sunrpc/svc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+svc_rpcb_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_rpcb_setup\09\09\09\09"
module asm "\09.long\09__crc_svc_rpcb_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rpcb_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rpcb_setup\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rpcb_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_rpcb_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_rpcb_cleanup\09\09\09\09"
module asm "\09.long\09__crc_svc_rpcb_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rpcb_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rpcb_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rpcb_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_bind\09\09\09\09"
module asm "\09.long\09__crc_svc_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_svc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_create\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_create\09\09\09\09"
module asm "\09.long\09__crc_svc_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_create\22\09\09\09\09\09"
module asm "__kstrtabns_svc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_create_pooled\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_create_pooled\09\09\09\09"
module asm "\09.long\09__crc_svc_create_pooled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_create_pooled:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_create_pooled\22\09\09\09\09\09"
module asm "__kstrtabns_svc_create_pooled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_shutdown_net\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_shutdown_net\09\09\09\09"
module asm "\09.long\09__crc_svc_shutdown_net\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_shutdown_net:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_shutdown_net\22\09\09\09\09\09"
module asm "__kstrtabns_svc_shutdown_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_destroy\09\09\09\09"
module asm "\09.long\09__crc_svc_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_svc_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_rqst_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_rqst_alloc\09\09\09\09"
module asm "\09.long\09__crc_svc_rqst_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rqst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rqst_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rqst_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_set_num_threads\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_set_num_threads\09\09\09\09"
module asm "\09.long\09__crc_svc_set_num_threads\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_set_num_threads:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_set_num_threads\22\09\09\09\09\09"
module asm "__kstrtabns_svc_set_num_threads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_rqst_replace_page\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_rqst_replace_page\09\09\09\09"
module asm "\09.long\09__crc_svc_rqst_replace_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rqst_replace_page:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rqst_replace_page\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rqst_replace_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_rqst_free\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_rqst_free\09\09\09\09"
module asm "\09.long\09__crc_svc_rqst_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rqst_free:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rqst_free\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rqst_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_exit_thread\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_exit_thread\09\09\09\09"
module asm "\09.long\09__crc_svc_exit_thread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_exit_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_exit_thread\22\09\09\09\09\09"
module asm "__kstrtabns_svc_exit_thread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_rpcbind_set_version\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_rpcbind_set_version\09\09\09\09"
module asm "\09.long\09__crc_svc_rpcbind_set_version\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_rpcbind_set_version:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_rpcbind_set_version\22\09\09\09\09\09"
module asm "__kstrtabns_svc_rpcbind_set_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_generic_rpcbind_set\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_generic_rpcbind_set\09\09\09\09"
module asm "\09.long\09__crc_svc_generic_rpcbind_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_generic_rpcbind_set:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_generic_rpcbind_set\22\09\09\09\09\09"
module asm "__kstrtabns_svc_generic_rpcbind_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_generic_init_request\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_generic_init_request\09\09\09\09"
module asm "\09.long\09__crc_svc_generic_init_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_generic_init_request:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_generic_init_request\22\09\09\09\09\09"
module asm "__kstrtabns_svc_generic_init_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_process\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_process\09\09\09\09"
module asm "\09.long\09__crc_svc_process\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_process\22\09\09\09\09\09"
module asm "__kstrtabns_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bc_svc_process\22, \22a\22\09"
module asm "\09.weak\09__crc_bc_svc_process\09\09\09\09"
module asm "\09.long\09__crc_bc_svc_process\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bc_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22bc_svc_process\22\09\09\09\09\09"
module asm "__kstrtabns_bc_svc_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_max_payload\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_max_payload\09\09\09\09"
module asm "\09.long\09__crc_svc_max_payload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_max_payload\22\09\09\09\09\09"
module asm "__kstrtabns_svc_max_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_encode_result_payload\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_encode_result_payload\09\09\09\09"
module asm "\09.long\09__crc_svc_encode_result_payload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_encode_result_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_encode_result_payload\22\09\09\09\09\09"
module asm "__kstrtabns_svc_encode_result_payload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_fill_write_vector\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_fill_write_vector\09\09\09\09"
module asm "\09.long\09__crc_svc_fill_write_vector\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_fill_write_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_fill_write_vector\22\09\09\09\09\09"
module asm "__kstrtabns_svc_fill_write_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_fill_symlink_pathname\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_fill_symlink_pathname\09\09\09\09"
module asm "\09.long\09__crc_svc_fill_symlink_pathname\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_fill_symlink_pathname:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_fill_symlink_pathname\22\09\09\09\09\09"
module asm "__kstrtabns_svc_fill_symlink_pathname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.svc_pool_map = type { i32, i32, i32, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fail_sunrpc_attr = type { %struct.fault_attr, i8, i8 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%union.anon.125 = type { i32 }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.svc_pool = type { i32, %struct.spinlock, %struct.list_head, i32, %struct.list_head, %struct.svc_pool_stats, i32, [40 x i8] }
%struct.svc_pool_stats = type { %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t }
%struct.svc_program = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.108 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.145 }
%union.anon.145 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.svc_serv_ops = type { ptr, ptr, ptr, ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.anon.152 = type { i32, i32 }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.svc_process_info = type { %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.149, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.149 = type { %struct.rb_node }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.150, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.150 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.147, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.147 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.svc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_pool_mode = internal constant [17 x i8] c"sunrpc.pool_mode\00", align 1
@__param_ops_pool_mode = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_pool_mode, ptr @param_get_pool_mode, ptr null }, align 4
@svc_pool_map = internal global { %struct.svc_pool_map, [44 x i8] } zeroinitializer, align 32
@__param_pool_mode = internal constant %struct.kernel_param { ptr @__param_str_pool_mode, ptr null, ptr @__param_ops_pool_mode, i16 420, i8 -1, i8 0, %union.anon.124 { ptr getelementptr (i8, ptr @svc_pool_map, i64 4) } }, section "__param", align 4
@__kstrtab_svc_rpcb_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rpcb_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rpcb_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rpcb_setup to i32), ptr @__kstrtab_svc_rpcb_setup, ptr @__kstrtabns_svc_rpcb_setup }, section "___ksymtab_gpl+svc_rpcb_setup", align 4
@__kstrtab_svc_rpcb_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rpcb_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rpcb_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rpcb_cleanup to i32), ptr @__kstrtab_svc_rpcb_cleanup, ptr @__kstrtabns_svc_rpcb_cleanup }, section "___ksymtab_gpl+svc_rpcb_cleanup", align 4
@__kstrtab_svc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_bind to i32), ptr @__kstrtab_svc_bind, ptr @__kstrtabns_svc_bind }, section "___ksymtab_gpl+svc_bind", align 4
@__kstrtab_svc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_create to i32), ptr @__kstrtab_svc_create, ptr @__kstrtabns_svc_create }, section "___ksymtab_gpl+svc_create", align 4
@__kstrtab_svc_create_pooled = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_create_pooled = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_create_pooled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_create_pooled to i32), ptr @__kstrtab_svc_create_pooled, ptr @__kstrtabns_svc_create_pooled }, section "___ksymtab_gpl+svc_create_pooled", align 4
@__kstrtab_svc_shutdown_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_shutdown_net = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_shutdown_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_shutdown_net to i32), ptr @__kstrtab_svc_shutdown_net, ptr @__kstrtabns_svc_shutdown_net }, section "___ksymtab_gpl+svc_shutdown_net", align 4
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@svc_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"svc: svc_destroy(%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"svc_destroy\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/sunrpc/svc.c\00", [47 x i8] zeroinitializer }, align 32
@svc_destroy._entry_ptr = internal global ptr @svc_destroy._entry, section ".printk_index", align 4
@__kstrtab_svc_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_destroy to i32), ptr @__kstrtab_svc_destroy, ptr @__kstrtabns_svc_destroy }, section "___ksymtab_gpl+svc_destroy", align 4
@svc_rqst_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rqstp->rq_lock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_svc_rqst_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rqst_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rqst_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rqst_alloc to i32), ptr @__kstrtab_svc_rqst_alloc, ptr @__kstrtabns_svc_rqst_alloc }, section "___ksymtab_gpl+svc_rqst_alloc", align 4
@__kstrtab_svc_set_num_threads = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_set_num_threads = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_set_num_threads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_set_num_threads to i32), ptr @__kstrtab_svc_set_num_threads, ptr @__kstrtabns_svc_set_num_threads }, section "___ksymtab_gpl+svc_set_num_threads", align 4
@__kstrtab_svc_rqst_replace_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rqst_replace_page = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rqst_replace_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rqst_replace_page to i32), ptr @__kstrtab_svc_rqst_replace_page, ptr @__kstrtabns_svc_rqst_replace_page }, section "___ksymtab_gpl+svc_rqst_replace_page", align 4
@__kstrtab_svc_rqst_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rqst_free = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rqst_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rqst_free to i32), ptr @__kstrtab_svc_rqst_free, ptr @__kstrtabns_svc_rqst_free }, section "___ksymtab_gpl+svc_rqst_free", align 4
@__kstrtab_svc_exit_thread = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_exit_thread = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_exit_thread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_exit_thread to i32), ptr @__kstrtab_svc_exit_thread, ptr @__kstrtabns_svc_exit_thread }, section "___ksymtab_gpl+svc_exit_thread", align 4
@__kstrtab_svc_rpcbind_set_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_rpcbind_set_version = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_rpcbind_set_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_rpcbind_set_version to i32), ptr @__kstrtab_svc_rpcbind_set_version, ptr @__kstrtabns_svc_rpcbind_set_version }, section "___ksymtab_gpl+svc_rpcbind_set_version", align 4
@__kstrtab_svc_generic_rpcbind_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_generic_rpcbind_set = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_generic_rpcbind_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_generic_rpcbind_set to i32), ptr @__kstrtab_svc_generic_rpcbind_set, ptr @__kstrtabns_svc_generic_rpcbind_set }, section "___ksymtab_gpl+svc_generic_rpcbind_set", align 4
@svc_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@svc_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014svc: failed to register %sv%u RPC service (errno %d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"svc_register\00", [19 x i8] zeroinitializer }, align 32
@svc_register._entry_ptr = internal global ptr @svc_register._entry, section ".printk_index", align 4
@__kstrtab_svc_generic_init_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_generic_init_request = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_generic_init_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_generic_init_request to i32), ptr @__kstrtab_svc_generic_init_request, ptr @__kstrtabns_svc_generic_init_request }, section "___ksymtab_gpl+svc_generic_init_request", align 4
@fail_sunrpc = external dso_local global %struct.fail_sunrpc_attr, align 4
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bad direction %d, dropping request\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_svc_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_process = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_process to i32), ptr @__kstrtab_svc_process, ptr @__kstrtabns_svc_process }, section "___ksymtab_gpl+svc_process", align 4
@bc_svc_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"svc: %s(%p)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bc_svc_process\00", [17 x i8] zeroinitializer }, align 32
@bc_svc_process._entry_ptr = internal global ptr @bc_svc_process._entry, section ".printk_index", align 4
@bc_svc_process.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bc_svc_process._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"svc: %s(), error=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@bc_svc_process._entry_ptr.11 = internal global ptr @bc_svc_process._entry.9, section ".printk_index", align 4
@__kstrtab_bc_svc_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_bc_svc_process = external dso_local constant [0 x i8], align 1
@__ksymtab_bc_svc_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bc_svc_process to i32), ptr @__kstrtab_bc_svc_process, ptr @__kstrtabns_bc_svc_process }, section "___ksymtab_gpl+bc_svc_process", align 4
@__kstrtab_svc_max_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_max_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_max_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_max_payload to i32), ptr @__kstrtab_svc_max_payload, ptr @__kstrtabns_svc_max_payload }, section "___ksymtab_gpl+svc_max_payload", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_svc_encode_result_payload = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_encode_result_payload = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_encode_result_payload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_encode_result_payload to i32), ptr @__kstrtab_svc_encode_result_payload, ptr @__kstrtabns_svc_encode_result_payload }, section "___ksymtab_gpl+svc_encode_result_payload", align 4
@svc_fill_write_vector.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_svc_fill_write_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_fill_write_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_fill_write_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_fill_write_vector to i32), ptr @__kstrtab_svc_fill_write_vector, ptr @__kstrtabns_svc_fill_write_vector }, section "___ksymtab_gpl+svc_fill_write_vector", align 4
@__kstrtab_svc_fill_symlink_pathname = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_fill_symlink_pathname = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_fill_symlink_pathname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_fill_symlink_pathname to i32), ptr @__kstrtab_svc_fill_symlink_pathname, ptr @__kstrtabns_svc_fill_symlink_pathname }, section "___ksymtab_gpl+svc_fill_symlink_pathname", align 4
@svc_pool_map_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @svc_pool_map_mutex, i64 52), ptr getelementptr (i8, ptr @svc_pool_map_mutex, i64 52) }, ptr @svc_pool_map_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"percpu\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pernode\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"svc_pool_map_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"svc_pool_map_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"auto\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"global\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"percpu\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pernode\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__svc_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&serv->sv_temptimer)\00", [42 x i8] zeroinitializer }, align 32
@__svc_create.__key.25 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&serv->sv_lock\00", [17 x i8] zeroinitializer }, align 32
@__svc_create._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 503, ptr null, ptr null }, align 1
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"svc: initialising pool %u for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__svc_create\00", [19 x i8] zeroinitializer }, align 32
@__svc_create._entry_ptr = internal global ptr @__svc_create._entry, section ".printk_index", align 4
@__svc_create.__key.29 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pool->sp_lock\00", [17 x i8] zeroinitializer }, align 32
@__svc_init_bc.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&serv->sv_cb_lock\00", [46 x i8] zeroinitializer }, align 32
@__svc_init_bc.__key.32 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&serv->sv_cb_waitq\00", [45 x i8] zeroinitializer }, align 32
@svc_pool_map_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@svc_init_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@svc_pool_map_set_cpumask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"udp6\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tcp6\00", [27 x i8] zeroinitializer }, align 32
@__tracepoint_svc_register = external dso_local global %struct.tracepoint, align 4
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/sunrpc.h\00", [34 x i8] zeroinitializer }, align 32
@trace_svc_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svc_noregister = external dso_local global %struct.tracepoint, align 4
@trace_svc_noregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__tracepoint_svc_unregister = external dso_local global %struct.tracepoint, align 4
@trace_svc_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svc_printk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"svc: %s: %pV\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"svc_printk\00", [21 x i8] zeroinitializer }, align 32
@svc_printk._entry_ptr = internal global ptr @svc_printk._entry, section ".printk_index", align 4
@svc_process_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"svc: svc_process dropit\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"svc_process_common\00", [45 x i8] zeroinitializer }, align 32
@svc_process_common._entry_ptr = internal global ptr @svc_process_common._entry, section ".printk_index", align 4
@svc_process_common._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"svc: svc_process close\0A\00", [40 x i8] zeroinitializer }, align 32
@svc_process_common._entry_ptr.52 = internal global ptr @svc_process_common._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"short len %zd, dropping request\0A\00", [63 x i8] zeroinitializer }, align 32
@svc_process_common._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"svc: authentication failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@svc_process_common._entry_ptr.56 = internal global ptr @svc_process_common._entry.54, section ".printk_index", align 4
@svc_process_common._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.2, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"svc: unknown program %d\0A\00", [39 x i8] zeroinitializer }, align 32
@svc_process_common._entry_ptr.59 = internal global ptr @svc_process_common._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unknown version (%d for prog %d, %s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown procedure (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to decode args\0A\00", [41 x i8] zeroinitializer }, align 32
@__tracepoint_svc_authenticate = external dso_local global %struct.tracepoint, align 4
@trace_svc_authenticate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svc_process = external dso_local global %struct.tracepoint, align 4
@trace_svc_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 6, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4294967295]
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"svc_pool_map\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 68, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 557, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 629, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1072, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1454, i32 21 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1484, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1543, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1573, i32 9 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"svc_pool_map_mutex\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 88, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 90, i32 25 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 92, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 94, i32 25 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 72, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 112, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 114, i32 23 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 116, i32 23 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 118, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 120, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 485, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 486, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 502, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 508, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 436, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 437, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 750, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1160, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 717, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 899, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 902, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 947, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 950, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant [33 x i8] c"../include/trace/events/sunrpc.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 2258, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 108, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1095, i32 56 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1154, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1351, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1359, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1363, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1376, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1387, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1393, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1403, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [20 x i8] c"../net/sunrpc/svc.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1410, i32 20 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__ksymtab_bc_svc_process, ptr @__ksymtab_svc_bind, ptr @__ksymtab_svc_create, ptr @__ksymtab_svc_create_pooled, ptr @__ksymtab_svc_destroy, ptr @__ksymtab_svc_encode_result_payload, ptr @__ksymtab_svc_exit_thread, ptr @__ksymtab_svc_fill_symlink_pathname, ptr @__ksymtab_svc_fill_write_vector, ptr @__ksymtab_svc_generic_init_request, ptr @__ksymtab_svc_generic_rpcbind_set, ptr @__ksymtab_svc_max_payload, ptr @__ksymtab_svc_process, ptr @__ksymtab_svc_rpcb_cleanup, ptr @__ksymtab_svc_rpcb_setup, ptr @__ksymtab_svc_rpcbind_set_version, ptr @__ksymtab_svc_rqst_alloc, ptr @__ksymtab_svc_rqst_free, ptr @__ksymtab_svc_rqst_replace_page, ptr @__ksymtab_svc_set_num_threads, ptr @__ksymtab_svc_shutdown_net, ptr @__param_pool_mode, ptr @__svc_create._entry, ptr @__svc_create._entry_ptr, ptr @bc_svc_process._entry, ptr @bc_svc_process._entry.9, ptr @bc_svc_process._entry_ptr, ptr @bc_svc_process._entry_ptr.11, ptr @svc_destroy._entry, ptr @svc_destroy._entry_ptr, ptr @svc_printk._entry, ptr @svc_printk._entry_ptr, ptr @svc_process_common._entry, ptr @svc_process_common._entry.50, ptr @svc_process_common._entry.54, ptr @svc_process_common._entry.57, ptr @svc_process_common._entry_ptr, ptr @svc_process_common._entry_ptr.52, ptr @svc_process_common._entry_ptr.56, ptr @svc_process_common._entry_ptr.59, ptr @svc_register._entry, ptr @svc_register._entry_ptr, ptr @svc_pool_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @svc_rqst_alloc.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @svc_pool_map_mutex, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_pool_map to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rqst_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_svc_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_svc_process._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_pool_map_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_printk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_process_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_process_common._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_process_common._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_process_common._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @svc_pool_for_cpu(ptr nocapture noundef readonly %serv, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sv_nrpools = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 14
  %0 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sv_nrpools, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sv_pools = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 15
  %2 = ptrtoint ptr %sv_pools to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sv_pools, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %arrayidx = getelementptr i32, ptr %6, i32 %cpu
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %7 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %.sink = phi ptr [ %7, %sw.bb1 ], [ %arrayidx, %sw.bb ]
  %8 = ptrtoint ptr %.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %pidx.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %9, %sw.epilog.sink.split ]
  %sv_pools4 = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 15
  %10 = ptrtoint ptr %sv_pools4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sv_pools4, align 4
  %rem = urem i32 %pidx.0, %1
  %arrayidx6 = getelementptr %struct.svc_pool, ptr %11, i32 %rem
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %arrayidx6, %sw.epilog ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rpcb_setup(ptr nocapture noundef readonly %serv, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rpcb_create_local(ptr noundef %net) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @svc_unregister(ptr noundef %serv, ptr noundef %net)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcb_create_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_unregister(ptr nocapture noundef readonly %serv, ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %1) #18
  %2 = ptrtoint ptr %serv to i32
  call void @__asan_load4_noabort(i32 %2)
  %progp.036 = load ptr, ptr %serv, align 4
  %tobool.not37 = icmp eq ptr %progp.036, null
  br i1 %tobool.not37, label %entry.do.body11_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body11

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond1.preheader.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %progp.038 to i32
  call void @__asan_load4_noabort(i32 %3)
  %progp.0 = load ptr, ptr %progp.038, align 4
  %tobool.not = icmp eq ptr %progp.0, null
  br i1 %tobool.not, label %for.cond.loopexit.do.body11_crit_edge, label %for.cond.loopexit.for.cond1.preheader_crit_edge

for.cond.loopexit.for.cond1.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond1.preheader

for.cond.loopexit.do.body11_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body11

for.cond1.preheader:                              ; preds = %for.cond.loopexit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %progp.038 = phi ptr [ %progp.0, %for.cond.loopexit.for.cond1.preheader_crit_edge ], [ %progp.036, %entry.for.cond1.preheader_crit_edge ]
  %pg_nvers = getelementptr inbounds %struct.svc_program, ptr %progp.038, i32 0, i32 4
  %4 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pg_nvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp32.not = icmp eq i32 %5, 0
  br i1 %cmp32.not, label %for.cond1.preheader.for.cond.loopexit_crit_edge, label %for.body2.lr.ph

for.cond1.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit

for.body2.lr.ph:                                  ; preds = %for.cond1.preheader
  %pg_vers = getelementptr inbounds %struct.svc_program, ptr %progp.038, i32 0, i32 5
  %pg_prog = getelementptr inbounds %struct.svc_program, ptr %progp.038, i32 0, i32 1
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %progp.038, i32 0, i32 6
  br label %for.body2

for.body2:                                        ; preds = %for.inc.for.body2_crit_edge, %for.body2.lr.ph
  %i.033 = phi i32 [ 0, %for.body2.lr.ph ], [ %inc, %for.inc.for.body2_crit_edge ]
  %6 = ptrtoint ptr %pg_vers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg_vers, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.033
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %for.body2.for.inc_crit_edge, label %if.end

for.body2.for.inc_crit_edge:                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end:                                           ; preds = %for.body2
  %vs_hidden = getelementptr inbounds %struct.svc_version, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %vs_hidden to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vs_hidden, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %pg_prog to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pg_prog, align 4
  %14 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pg_name, align 4
  %call.i = tail call i32 @rpcb_v4_register(ptr noundef %net, i32 noundef %13, i32 noundef %i.033, ptr noundef null, ptr noundef nonnull @.str.45) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -93, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -93
  br i1 %cmp.i, label %if.then.i, label %if.end8.__svc_unregister.exit_crit_edge

if.end8.__svc_unregister.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %__svc_unregister.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %call1.i = tail call i32 @rpcb_register(ptr noundef %net, i32 noundef %13, i32 noundef %i.033, i32 noundef 0, i16 noundef zeroext 0) #18
  br label %__svc_unregister.exit

__svc_unregister.exit:                            ; preds = %if.then.i, %if.end8.__svc_unregister.exit_crit_edge
  %error.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i, %if.end8.__svc_unregister.exit_crit_edge ]
  tail call fastcc void @trace_svc_unregister(ptr noundef %15, i32 noundef %i.033, i32 noundef %error.0.i) #18
  br label %for.inc

for.inc:                                          ; preds = %__svc_unregister.exit, %if.end.for.inc_crit_edge, %for.body2.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %16 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pg_nvers, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body2_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit

for.inc.for.body2_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body2

do.body11:                                        ; preds = %for.cond.loopexit.do.body11_crit_edge, %entry.do.body11_crit_edge
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 112
  %20 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sighand, align 4
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #18
  tail call void @recalc_sigpending() #18
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %sighand20 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 112
  %24 = ptrtoint ptr %sighand20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sighand20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %call15) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rpcb_cleanup(ptr nocapture noundef readonly %serv, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @svc_unregister(ptr noundef %serv, ptr noundef %net)
  tail call void @rpcb_put_local(ptr noundef %net) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcb_put_local(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_bind(ptr nocapture noundef readonly %serv, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serv to i32
  call void @__asan_load4_noabort(i32 %0)
  %progp.022.i = load ptr, ptr %serv, align 4
  %tobool.not23.i = icmp eq ptr %progp.022.i, null
  br i1 %tobool.not23.i, label %entry.return_crit_edge, label %entry.for.cond1.preheader.i_crit_edge

entry.for.cond1.preheader.i_crit_edge:            ; preds = %entry
  br label %for.cond1.preheader.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.cond1.preheader.i.for.cond.loopexit.i_crit_edge
  %1 = ptrtoint ptr %progp.024.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %progp.0.i = load ptr, ptr %progp.024.i, align 4
  %tobool.not.i = icmp eq ptr %progp.0.i, null
  br i1 %tobool.not.i, label %for.cond.loopexit.i.return_crit_edge, label %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge

for.cond.loopexit.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond1.preheader.i

for.cond.loopexit.i.return_crit_edge:             ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

for.cond1.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge, %entry.for.cond1.preheader.i_crit_edge
  %progp.024.i = phi ptr [ %progp.0.i, %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge ], [ %progp.022.i, %entry.for.cond1.preheader.i_crit_edge ]
  %pg_nvers.i = getelementptr inbounds %struct.svc_program, ptr %progp.024.i, i32 0, i32 4
  %2 = ptrtoint ptr %pg_nvers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_nvers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not.i = icmp eq i32 %3, 0
  br i1 %cmp20.not.i, label %for.cond1.preheader.i.for.cond.loopexit.i_crit_edge, label %for.body2.lr.ph.i

for.cond1.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit.i

for.body2.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %pg_vers.i = getelementptr inbounds %struct.svc_program, ptr %progp.024.i, i32 0, i32 5
  %4 = ptrtoint ptr %pg_vers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pg_vers.i, align 4
  br label %for.body2.i

for.body2.i:                                      ; preds = %for.inc.i.for.body2.i_crit_edge, %for.body2.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body2.lr.ph.i ], [ %inc.i, %for.inc.i.for.body2.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.021.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %7, null
  br i1 %cmp3.i, label %for.body2.i.for.inc.i_crit_edge, label %if.end.i

for.body2.i.for.inc.i_crit_edge:                  ; preds = %for.body2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body2.i
  %vs_hidden.i = getelementptr inbounds %struct.svc_version, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %vs_hidden.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vs_hidden.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i = icmp eq i8 %9, 0
  br i1 %tobool6.not.i, label %if.end, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body2.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body2.i_crit_edge

for.inc.i.for.body2.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body2.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.loopexit.i

if.end:                                           ; preds = %if.end.i
  %call.i = tail call i32 @rpcb_create_local(ptr noundef %net) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i3 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @svc_unregister(ptr noundef %serv, ptr noundef %net) #18
  br label %return

return:                                           ; preds = %if.end.i4, %if.end.return_crit_edge, %for.cond.loopexit.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.return_crit_edge ], [ 0, %if.end.i4 ], [ 0, %entry.return_crit_edge ], [ 0, %for.cond.loopexit.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svc_create(ptr noundef %prog, i32 noundef %bufsize, ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__svc_create(ptr noundef %prog, i32 noundef %bufsize, i32 noundef 1, ptr noundef %ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__svc_create(ptr noundef %prog, i32 noundef %bufsize, i32 noundef %npools, ptr noundef %ops) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %prog, i32 0, i32 6
  %1 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pg_name, align 4
  %sv_name = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 13
  %3 = ptrtoint ptr %sv_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %sv_name, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %prog, ptr %call7.i.i, align 8
  %sv_refcnt = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt, i32 noundef 4) #18
  %5 = ptrtoint ptr %sv_refcnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %sv_refcnt, align 4
  %pg_stats = getelementptr inbounds %struct.svc_program, ptr %prog, i32 0, i32 8
  %6 = ptrtoint ptr %pg_stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg_stats, align 4
  %sv_stats = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %sv_stats to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %sv_stats, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %bufsize, i32 1048576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool3.not, i32 4096, i32 %9
  %sv_max_payload = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %sv_max_payload to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %sv_max_payload, align 8
  %add5 = add nuw nsw i32 %spec.select, 8191
  %div120 = and i32 %add5, 4190208
  %sv_max_mesg = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %sv_max_mesg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div120, ptr %sv_max_mesg, align 4
  %sv_ops = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 16
  %12 = ptrtoint ptr %sv_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ops, ptr %sv_ops, align 4
  %tobool6.not133 = icmp eq ptr %prog, null
  br i1 %tobool6.not133, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %for.end.while.body_crit_edge, %if.end.while.body_crit_edge
  %prog.addr.0135 = phi ptr [ %34, %for.end.while.body_crit_edge ], [ %prog, %if.end.while.body_crit_edge ]
  %xdrsize.0134 = phi i32 [ %xdrsize.1.lcssa, %for.end.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %pg_nvers = getelementptr inbounds %struct.svc_program, ptr %prog.addr.0135, i32 0, i32 4
  %13 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pg_nvers, align 4
  %sub7 = add i32 %14, -1
  %pg_lovers = getelementptr inbounds %struct.svc_program, ptr %prog.addr.0135, i32 0, i32 2
  %15 = ptrtoint ptr %pg_lovers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub7, ptr %pg_lovers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9128.not = icmp eq i32 %14, 0
  br i1 %cmp9128.not, label %while.body.for.end_crit_edge, label %for.body.lr.ph

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.body
  %pg_vers = getelementptr inbounds %struct.svc_program, ptr %prog.addr.0135, i32 0, i32 5
  %pg_hivers = getelementptr inbounds %struct.svc_program, ptr %prog.addr.0135, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %xdrsize.1132 = phi i32 [ %xdrsize.0134, %for.body.lr.ph ], [ %xdrsize.2, %for.inc.for.body_crit_edge ]
  %vers.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %pg_vers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pg_vers, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %vers.0129
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %20 = ptrtoint ptr %pg_hivers to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %vers.0129, ptr %pg_hivers, align 4
  %21 = ptrtoint ptr %pg_lovers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pg_lovers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %vers.0129)
  %cmp13 = icmp ugt i32 %22, %vers.0129
  br i1 %cmp13, label %if.then14, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %pg_lovers to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %vers.0129, ptr %pg_lovers, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11.if.end16_crit_edge
  %24 = ptrtoint ptr %pg_vers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pg_vers, align 4
  %arrayidx18 = getelementptr ptr, ptr %25, i32 %vers.0129
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18, align 4
  %vs_xdrsize = getelementptr inbounds %struct.svc_version, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %vs_xdrsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vs_xdrsize, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %xdrsize.1132)
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body.for.inc_crit_edge
  %xdrsize.2 = phi i32 [ %xdrsize.1132, %for.body.for.inc_crit_edge ], [ %30, %if.end16 ]
  %inc = add nuw i32 %vers.0129, 1
  %31 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pg_nvers, align 4
  %cmp9 = icmp ult i32 %inc, %32
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %xdrsize.1.lcssa = phi i32 [ %xdrsize.0134, %while.body.for.end_crit_edge ], [ %xdrsize.2, %for.inc.for.end_crit_edge ]
  %33 = ptrtoint ptr %prog.addr.0135 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prog.addr.0135, align 4
  %tobool6.not = icmp eq ptr %34, null
  br i1 %tobool6.not, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end.while.end_crit_edge
  %xdrsize.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %xdrsize.1.lcssa, %for.end.while.end_crit_edge ]
  %sv_xdrsize = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %sv_xdrsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %xdrsize.0.lcssa, ptr %sv_xdrsize, align 8
  %sv_tempsocks = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %sv_tempsocks to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %sv_tempsocks, ptr %sv_tempsocks, align 4
  %prev.i = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sv_tempsocks, ptr %prev.i, align 8
  %sv_permsocks = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %sv_permsocks to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %sv_permsocks, ptr %sv_permsocks, align 4
  %prev.i122 = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %sv_permsocks, ptr %prev.i122, align 8
  %sv_temptimer = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %sv_temptimer, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef nonnull @__svc_create.__key) #18
  %sv_lock = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %sv_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @__svc_create.__key.25, i16 noundef signext 3) #18
  %sv_cb_list.i = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 17
  %40 = ptrtoint ptr %sv_cb_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %sv_cb_list.i, ptr %sv_cb_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sv_cb_list.i, ptr %prev.i.i, align 4
  %sv_cb_lock.i = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %sv_cb_lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @__svc_init_bc.__key, i16 noundef signext 3) #18
  %sv_cb_waitq.i = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 19
  tail call void @__init_waitqueue_head(ptr noundef %sv_cb_waitq.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @__svc_init_bc.__key.32) #18
  %sv_nrpools = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 14
  %42 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %npools, ptr %sv_nrpools, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npools, i32 128) #18
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !208

kcalloc.exit.thread:                              ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %sv_pools126 = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 15
  %45 = ptrtoint ptr %sv_pools126 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %sv_pools126, align 8
  br label %if.then34

if.end7.i.i:                                      ; preds = %while.end
  %46 = extractvalue { i32, i1 } %43, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #22
  %sv_pools = getelementptr inbounds %struct.svc_serv, ptr %call7.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %sv_pools to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i, ptr %sv_pools, align 8
  %tobool33.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool33.not, label %if.end7.i.i.if.then34_crit_edge, label %for.cond36.preheader

if.end7.i.i.if.then34_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34

for.cond36.preheader:                             ; preds = %if.end7.i.i
  %48 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sv_nrpools, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp38138.not = icmp eq i32 %49, 0
  br i1 %cmp38138.not, label %for.cond36.preheader.cleanup_crit_edge, label %for.cond36.preheader.for.body39_crit_edge

for.cond36.preheader.for.body39_crit_edge:        ; preds = %for.cond36.preheader
  br label %for.body39

for.cond36.preheader.cleanup_crit_edge:           ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then34:                                        ; preds = %if.end7.i.i.if.then34_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

for.body39:                                       ; preds = %do.end55.for.body39_crit_edge, %for.cond36.preheader.for.body39_crit_edge
  %i.0139 = phi i32 [ %inc61, %do.end55.for.body39_crit_edge ], [ 0, %for.cond36.preheader.for.body39_crit_edge ]
  %50 = ptrtoint ptr %sv_pools to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sv_pools, align 8
  %arrayidx41 = getelementptr %struct.svc_pool, ptr %51, i32 %i.0139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %52 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %for.body39.do.end55_crit_edge, label %do.end49, !prof !209

for.body39.do.end55_crit_edge:                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end55

do.end49:                                         ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #20
  %53 = ptrtoint ptr %sv_name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sv_name, align 8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.0139, ptr noundef %54) #23
  br label %do.end55

do.end55:                                         ; preds = %do.end49, %for.body39.do.end55_crit_edge
  %55 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %i.0139, ptr %arrayidx41, align 128
  %sp_sockets = getelementptr %struct.svc_pool, ptr %51, i32 %i.0139, i32 2
  %56 = ptrtoint ptr %sp_sockets to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %sp_sockets, ptr %sp_sockets, align 4
  %prev.i123 = getelementptr %struct.svc_pool, ptr %51, i32 %i.0139, i32 2, i32 1
  %57 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sp_sockets, ptr %prev.i123, align 4
  %sp_all_threads = getelementptr %struct.svc_pool, ptr %51, i32 %i.0139, i32 4
  %58 = ptrtoint ptr %sp_all_threads to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %sp_all_threads, ptr %sp_all_threads, align 4
  %prev.i124 = getelementptr %struct.svc_pool, ptr %51, i32 %i.0139, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %sp_all_threads, ptr %prev.i124, align 4
  %sp_lock = getelementptr %struct.svc_pool, ptr %51, i32 %i.0139, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %sp_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @__svc_create.__key.29, i16 noundef signext 3) #18
  %inc61 = add nuw i32 %i.0139, 1
  %60 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sv_nrpools, align 4
  %cmp38 = icmp ult i32 %inc61, %61
  br i1 %cmp38, label %do.end55.for.body39_crit_edge, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end55.for.body39_crit_edge:                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body39

cleanup:                                          ; preds = %do.end55.cleanup_crit_edge, %if.then34, %for.cond36.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then34 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %for.cond36.preheader.cleanup_crit_edge ], [ %call7.i.i, %do.end55.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svc_create_pooled(ptr noundef %prog, i32 noundef %bufsize, ptr noundef %ops) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @svc_pool_map_mutex, i32 noundef 0) #18
  %0 = load i32, ptr @svc_pool_map, align 4
  %inc.i = add i32 %0, 1
  store i32 %inc.i, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end39.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  %1 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp ult i32 %1, 2
  br i1 %cmp.i, label %land.rhs.i, label %if.then.i.if.end30.i_crit_edge

if.then.i.if.end30.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b73.i = load i1, ptr @svc_pool_map_get.__already_done, align 1
  br i1 %.b73.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then9.i, !prof !209

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end30.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @svc_pool_map_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 256, i32 noundef 9, ptr noundef null) #18
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end30.i_crit_edge, %if.then.i.if.end30.i_crit_edge
  %2 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %svc_pool_map_get.exit

if.end39.i:                                       ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp40.i = icmp eq i32 %3, -1
  br i1 %cmp40.i, label %if.end.i.i.i.i, label %if.end39.i.if.end43.i_crit_edge

if.end39.i.if.end43.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43.i

if.end.i.i.i.i:                                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %4) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i.i.i.i)
  %cmp.i.i = icmp ugt i32 %call4.i.i.i.i, 2
  %..i.i = zext i1 %cmp.i.i to i32
  store i32 %..i.i, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end.i.i.i.i, %if.end39.i.if.end43.i_crit_edge
  %5 = phi i32 [ %..i.i, %if.end.i.i.i.i ], [ %3, %if.end39.i.if.end43.i_crit_edge ]
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %5, label %if.end43.i.if.end51.thread.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb46.i
  ]

if.end43.i.if.end51.thread.i_crit_edge:           ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.thread.i

sw.bb.i:                                          ; preds = %if.end43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #18
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %sw.bb.i.if.then49.sink.split.i_crit_edge, label %kcalloc.exit.thread41.i.i.i, !prof !208

sw.bb.i.if.then49.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then49.sink.split.i

kcalloc.exit.thread41.i.i.i:                      ; preds = %sw.bb.i
  %call8.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #22
  store ptr %call8.i.i.i.i.i, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %tobool.not43.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool.not43.i.i.i, label %kcalloc.exit.thread41.i.i.i.if.end51.thread.i_crit_edge, label %if.end7.i.i31.i.i.i

kcalloc.exit.thread41.i.i.i.if.end51.thread.i_crit_edge: ; preds = %kcalloc.exit.thread41.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.thread.i

if.end7.i.i31.i.i.i:                              ; preds = %kcalloc.exit.thread41.i.i.i
  %call8.i.i30.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #22
  store ptr %call8.i.i30.i.i.i, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %tobool4.not.i.i.i = icmp eq ptr %call8.i.i30.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end7.i.i31.i.i.i.if.then49.sink.split.sink.split.i_crit_edge, label %svc_pool_map_alloc_arrays.exit.i.i

if.end7.i.i31.i.i.i.if.then49.sink.split.sink.split.i_crit_edge: ; preds = %if.end7.i.i31.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then49.sink.split.sink.split.i

svc_pool_map_alloc_arrays.exit.i.i:               ; preds = %if.end7.i.i31.i.i.i
  %call19.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i.i, i32 %11)
  %cmp10.i.i = icmp ult i32 %call19.i.i, %11
  br i1 %cmp10.i.i, label %svc_pool_map_alloc_arrays.exit.i.i.do.body.i.i_crit_edge, label %svc_pool_map_alloc_arrays.exit.i.i.if.end51.thread.i_crit_edge

svc_pool_map_alloc_arrays.exit.i.i.if.end51.thread.i_crit_edge: ; preds = %svc_pool_map_alloc_arrays.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.thread.i

svc_pool_map_alloc_arrays.exit.i.i.do.body.i.i_crit_edge: ; preds = %svc_pool_map_alloc_arrays.exit.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end12.i.i.do.body.i.i_crit_edge, %svc_pool_map_alloc_arrays.exit.i.i.do.body.i.i_crit_edge
  %call112.i.i = phi i32 [ %call1.i.i, %do.end12.i.i.do.body.i.i_crit_edge ], [ %call19.i.i, %svc_pool_map_alloc_arrays.exit.i.i.do.body.i.i_crit_edge ]
  %pidx.011.i.i = phi i32 [ %inc.i.i, %do.end12.i.i.do.body.i.i_crit_edge ], [ 0, %svc_pool_map_alloc_arrays.exit.i.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pidx.011.i.i, i32 %7)
  %exitcond.not.i.i = icmp eq i32 %pidx.011.i.i, %7
  br i1 %exitcond.not.i.i, label %do.body6.i.i, label %do.end12.i.i, !prof !208

do.body6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #18, !srcloc !210
  unreachable

do.end12.i.i:                                     ; preds = %do.body.i.i
  %12 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 %call112.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pidx.011.i.i, ptr %arrayidx.i.i, align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %arrayidx13.i.i = getelementptr i32, ptr %14, i32 %pidx.011.i.i
  %15 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call112.i.i, ptr %arrayidx13.i.i, align 4
  %inc.i.i = add i32 %pidx.011.i.i, 1
  %call1.i.i = tail call i32 @cpumask_next(i32 noundef %call112.i.i, ptr noundef nonnull @__cpu_online_mask) #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i74.i = icmp ult i32 %call1.i.i, %16
  br i1 %cmp.i74.i, label %do.end12.i.i.do.body.i.i_crit_edge, label %sw.epilog.i

do.end12.i.i.do.body.i.i_crit_edge:               ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i.i

sw.bb46.i:                                        ; preds = %if.end43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i75.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 4) #21
  store ptr %call7.i.i.i.i.i75.i, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %tobool.not.i.i76.i = icmp eq ptr %call7.i.i.i.i.i75.i, null
  br i1 %tobool.not.i.i76.i, label %sw.bb46.i.if.end51.thread.i_crit_edge, label %if.end.i.i1.i.i.i

sw.bb46.i.if.end51.thread.i_crit_edge:            ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.thread.i

if.end.i.i1.i.i.i:                                ; preds = %sw.bb46.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i26.i.i77.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 4) #21
  store ptr %call7.i.i.i26.i.i77.i, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %tobool4.not.i.i78.i = icmp eq ptr %call7.i.i.i26.i.i77.i, null
  br i1 %tobool4.not.i.i78.i, label %if.end.i.i1.i.i.i.if.then49.sink.split.sink.split.i_crit_edge, label %if.end.i.i.i179.i

if.end.i.i1.i.i.i.if.then49.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i.i1.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then49.sink.split.sink.split.i

if.end.i.i.i179.i:                                ; preds = %if.end.i.i1.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i178.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %19) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i178.i)
  %tobool2.not.i.i = icmp eq i32 %call4.i.i.i178.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.i179.i.if.end51.thread.i_crit_edge, label %sw.epilog.thread184.i

if.end.i.i.i179.i.if.end51.thread.i_crit_edge:    ; preds = %if.end.i.i.i179.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.thread.i

sw.epilog.thread184.i:                            ; preds = %if.end.i.i.i179.i
  call void @__sanitizer_cov_trace_pc() #20
  %20 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %22 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  br label %if.end51.thread.i

sw.epilog.i:                                      ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %pidx.011.i.i)
  %cmp48.i = icmp ugt i32 %pidx.011.i.i, 2147483646
  br i1 %cmp48.i, label %sw.epilog.i.if.end51.thread.i_crit_edge, label %if.end51.i

sw.epilog.i.if.end51.thread.i_crit_edge:          ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end51.thread.i

if.then49.sink.split.sink.split.i:                ; preds = %if.end.i.i1.i.i.i.if.then49.sink.split.sink.split.i_crit_edge, %if.end7.i.i31.i.i.i.if.then49.sink.split.sink.split.i_crit_edge
  %23 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %23) #18
  br label %if.then49.sink.split.i

if.then49.sink.split.i:                           ; preds = %if.then49.sink.split.sink.split.i, %sw.bb.i.if.then49.sink.split.i_crit_edge
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  br label %if.end51.thread.i

if.end51.thread.i:                                ; preds = %if.then49.sink.split.i, %sw.epilog.i.if.end51.thread.i_crit_edge, %sw.epilog.thread184.i, %if.end.i.i.i179.i.if.end51.thread.i_crit_edge, %sw.bb46.i.if.end51.thread.i_crit_edge, %svc_pool_map_alloc_arrays.exit.i.i.if.end51.thread.i_crit_edge, %kcalloc.exit.thread41.i.i.i.if.end51.thread.i_crit_edge, %if.end43.i.if.end51.thread.i_crit_edge
  %.sink.i = phi ptr [ %22, %sw.epilog.thread184.i ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %if.then49.sink.split.i ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %if.end.i.i.i179.i.if.end51.thread.i_crit_edge ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %sw.bb46.i.if.end51.thread.i_crit_edge ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %svc_pool_map_alloc_arrays.exit.i.i.if.end51.thread.i_crit_edge ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %kcalloc.exit.thread41.i.i.i.if.end51.thread.i_crit_edge ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %if.end43.i.if.end51.thread.i_crit_edge ], [ getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), %sw.epilog.i.if.end51.thread.i_crit_edge ]
  %24 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %.sink.i, align 4
  store i32 1, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %if.then54.i

if.end51.i:                                       ; preds = %sw.epilog.i
  store i32 %inc.i.i, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pidx.011.i.i)
  %cmp53.i = icmp eq i32 %pidx.011.i.i, 0
  br i1 %cmp53.i, label %if.end51.i.if.then54.i_crit_edge, label %if.end51.i.if.end56.i_crit_edge

if.end51.i.if.end56.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56.i

if.end51.i.if.then54.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then54.i

if.then54.i:                                      ; preds = %if.end51.i.if.then54.i_crit_edge, %if.end51.thread.i
  %25 = load i32, ptr @svc_pool_map, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr @svc_pool_map, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then54.i, %if.end51.i.if.end56.i_crit_edge
  %npools.1189.i = phi i32 [ 1, %if.then54.i ], [ %inc.i.i, %if.end51.i.if.end56.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  br label %svc_pool_map_get.exit

svc_pool_map_get.exit:                            ; preds = %if.end56.i, %if.end30.i
  %retval.0.i = phi i32 [ %2, %if.end30.i ], [ %npools.1189.i, %if.end56.i ]
  %call1 = tail call fastcc ptr @__svc_create(ptr noundef %prog, i32 noundef %bufsize, i32 noundef %retval.0.i, ptr noundef %ops)
  %tobool.not = icmp ne ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp.i5 = icmp slt i32 %retval.0.i, 2
  %or.cond = or i1 %cmp.i5, %tobool.not
  br i1 %or.cond, label %svc_pool_map_get.exit.cleanup_crit_edge, label %if.end.i

svc_pool_map_get.exit.cleanup_crit_edge:          ; preds = %svc_pool_map_get.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %svc_pool_map_get.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @svc_pool_map_mutex, i32 noundef 0) #18
  %26 = load i32, ptr @svc_pool_map, align 4
  %dec.i6 = add i32 %26, -1
  store i32 %dec.i6, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i6)
  %tobool.not.i7 = icmp eq i32 %dec.i6, 0
  br i1 %tobool.not.i7, label %if.then1.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %27 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %27) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %28) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then1.i, %if.end.i.if.end5.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %svc_pool_map_get.exit.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_shutdown_net(ptr noundef %serv, ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @svc_close_net(ptr noundef %serv, ptr noundef %net) #18
  %sv_ops = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 16
  %0 = ptrtoint ptr %sv_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sv_ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void %3(ptr noundef %serv, ptr noundef %net) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_close_net(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_destroy(ptr noundef %ref) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ref, i32 -52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !209

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pg_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4) #23
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %sv_temptimer = getelementptr i8, ptr %ref, i32 44
  %call7 = tail call i32 @del_timer_sync(ptr noundef %sv_temptimer) #18
  %sv_permsocks = getelementptr i8, ptr %ref, i32 24
  %5 = ptrtoint ptr %sv_permsocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sv_permsocks, align 4
  %cmp.i.not = icmp eq ptr %6, %sv_permsocks
  br i1 %cmp.i.not, label %do.body29, label %do.body20, !prof !209

do.body20:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 564, 0\0A.popsection", ""() #18, !srcloc !211
  unreachable

do.body29:                                        ; preds = %do.end6
  %sv_tempsocks = getelementptr i8, ptr %ref, i32 32
  %7 = ptrtoint ptr %sv_tempsocks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sv_tempsocks, align 4
  %cmp.i57.not = icmp eq ptr %8, %sv_tempsocks
  br i1 %cmp.i57.not, label %do.end49, label %do.body41, !prof !209

do.body41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 565, 0\0A.popsection", ""() #18, !srcloc !212
  unreachable

do.end49:                                         ; preds = %do.body29
  tail call void @cache_clean_deferred(ptr noundef %add.ptr) #18
  %sv_nrpools = getelementptr i8, ptr %ref, i32 96
  %9 = ptrtoint ptr %sv_nrpools to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sv_nrpools, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i59 = icmp slt i32 %10, 2
  br i1 %cmp.i59, label %do.end49.svc_pool_map_put.exit_crit_edge, label %if.end.i

do.end49.svc_pool_map_put.exit_crit_edge:         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %svc_pool_map_put.exit

if.end.i:                                         ; preds = %do.end49
  tail call void @mutex_lock_nested(ptr noundef nonnull @svc_pool_map_mutex, i32 noundef 0) #18
  %11 = load i32, ptr @svc_pool_map, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %12 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  tail call void @kfree(ptr noundef %12) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 4), align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  tail call void @kfree(ptr noundef %13) #18
  store ptr null, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  store i32 0, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 2), align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then1.i, %if.end.i.if.end5.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  br label %svc_pool_map_put.exit

svc_pool_map_put.exit:                            ; preds = %if.end5.i, %do.end49.svc_pool_map_put.exit_crit_edge
  %sv_pools = getelementptr i8, ptr %ref, i32 100
  %14 = ptrtoint ptr %sv_pools to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sv_pools, align 4
  tail call void @kfree(ptr noundef %15) #18
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cache_clean_deferred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svc_rqst_alloc(ptr noundef %serv, ptr noundef %pool, i32 noundef %node) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6952) #21
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 33
  %1 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rq_flags, align 4
  %or.i = or i32 %2, 64
  store i32 %or.i, ptr %rq_flags, align 4
  %rq_lock = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 47
  tail call void @__raw_spin_lock_init(ptr noundef %rq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @svc_rqst_alloc.__key, i16 noundef signext 3) #18
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %rq_server to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serv, ptr %rq_server, align 4
  %rq_pool = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %rq_pool to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pool, ptr %rq_pool, align 8
  %5 = zext i32 %node to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %node, label %do.body3.i.i [
    i32 -1, label %if.end.alloc_pages_node.exit_crit_edge
    i32 0, label %if.end.alloc_pages_node.exit_crit_edge89
  ], !prof !213

if.end.alloc_pages_node.exit_crit_edge89:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %alloc_pages_node.exit

if.end.alloc_pages_node.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %alloc_pages_node.exit

do.body3.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #18, !srcloc !214
  unreachable

alloc_pages_node.exit:                            ; preds = %if.end.alloc_pages_node.exit_crit_edge, %if.end.alloc_pages_node.exit_crit_edge89
  %call38.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %rq_scratch_page = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %rq_scratch_page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38.i.i, ptr %rq_scratch_page, align 4
  %tobool4.not = icmp eq ptr %call38.i.i, null
  br i1 %tobool4.not, label %alloc_pages_node.exit.out_enomem_crit_edge, label %if.end6

alloc_pages_node.exit.out_enomem_crit_edge:       ; preds = %alloc_pages_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_enomem

if.end6:                                          ; preds = %alloc_pages_node.exit
  %sv_xdrsize = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 8
  %7 = ptrtoint ptr %sv_xdrsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sv_xdrsize, align 4
  %call.i4.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #22
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 35
  %9 = ptrtoint ptr %rq_argp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i4.i, ptr %rq_argp, align 8
  %tobool9.not = icmp eq ptr %call.i4.i, null
  br i1 %tobool9.not, label %if.end6.out_enomem_crit_edge, label %if.end5.i65

if.end6.out_enomem_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_enomem

if.end5.i65:                                      ; preds = %if.end6
  %10 = ptrtoint ptr %sv_xdrsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sv_xdrsize, align 4
  %call.i4.i64 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #22
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 36
  %12 = ptrtoint ptr %rq_resp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i4.i64, ptr %rq_resp, align 4
  %tobool15.not = icmp eq ptr %call.i4.i64, null
  br i1 %tobool15.not, label %if.end5.i65.out_enomem_crit_edge, label %if.end17

if.end5.i65.out_enomem_crit_edge:                 ; preds = %if.end5.i65
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_enomem

if.end17:                                         ; preds = %if.end5.i65
  %13 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rq_server, align 4
  %sv_bc_enabled.i.i = getelementptr inbounds %struct.svc_serv, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %sv_bc_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sv_bc_enabled.i.i, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.not.i = icmp eq i8 %16, 0
  br i1 %tobool.i.not.i, label %if.end.i69, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i69:                                       ; preds = %if.end17
  %sv_max_mesg = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 7
  %17 = ptrtoint ptr %sv_max_mesg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sv_max_mesg, align 4
  %div56.i = lshr i32 %18, 12
  %add.i = add nuw nsw i32 %div56.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1060863, i32 %18)
  %cmp.i68 = icmp ugt i32 %18, 1060863
  br i1 %cmp.i68, label %land.rhs.i, label %if.end.i69.if.end29.i_crit_edge

if.end.i69.if.end29.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end.i69
  %.b57.i = load i1, ptr @svc_init_buffer.__already_done, align 1
  br i1 %.b57.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then7.i, !prof !209

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end29.i

if.then7.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @svc_init_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 593, i32 noundef 9, ptr noundef null) #18
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then7.i, %land.rhs.i.if.end29.i_crit_edge, %if.end.i69.if.end29.i_crit_edge
  %spec.store.select.i = phi i32 [ %add.i, %if.end.i69.if.end29.i_crit_edge ], [ 259, %if.then7.i ], [ 259, %land.rhs.i.if.end29.i_crit_edge ]
  %19 = zext i32 %node to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %node, label %do.body3.i.i.i [
    i32 -1, label %if.end29.i.while.body.i.preheader_crit_edge
    i32 0, label %if.end29.i.while.body.i.preheader_crit_edge90
  ], !prof !213

if.end29.i.while.body.i.preheader_crit_edge90:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.preheader

if.end29.i.while.body.i.preheader_crit_edge:      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end29.i.while.body.i.preheader_crit_edge, %if.end29.i.while.body.i.preheader_crit_edge90
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.i.preheader
  %pages.064.i = phi i32 [ %dec.i, %cleanup.i.while.body.i_crit_edge ], [ %spec.store.select.i, %while.body.i.preheader ]
  %arghi.063.i = phi i32 [ %inc.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %while.body.i.preheader ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %tobool42.not.i = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool42.not.i, label %svc_init_buffer.exit, label %cleanup.i

do.body3.i.i.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #18, !srcloc !214
  unreachable

cleanup.i:                                        ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %arghi.063.i, 1
  %arrayidx.i = getelementptr %struct.svc_rqst, ptr %call.i.i.i, i32 0, i32 20, i32 %arghi.063.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38.i.i.i, ptr %arrayidx.i, align 4
  %dec.i = add nsw i32 %pages.064.i, -1
  %tobool40.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool40.not.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

svc_init_buffer.exit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages.064.i)
  %cmp45.i.not = icmp eq i32 %pages.064.i, 0
  br i1 %cmp45.i.not, label %svc_init_buffer.exit.cleanup_crit_edge, label %svc_init_buffer.exit.out_enomem_crit_edge

svc_init_buffer.exit.out_enomem_crit_edge:        ; preds = %svc_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_enomem

svc_init_buffer.exit.cleanup_crit_edge:           ; preds = %svc_init_buffer.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

out_enomem:                                       ; preds = %svc_init_buffer.exit.out_enomem_crit_edge, %if.end5.i65.out_enomem_crit_edge, %if.end6.out_enomem_crit_edge, %alloc_pages_node.exit.out_enomem_crit_edge
  tail call void @svc_rqst_free(ptr noundef nonnull %call.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out_enomem, %svc_init_buffer.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_enomem ], [ null, %entry.cleanup_crit_edge ], [ %call.i.i.i, %svc_init_buffer.exit.cleanup_crit_edge ], [ %call.i.i.i, %if.end17.cleanup_crit_edge ], [ %call.i.i.i, %cleanup.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rqst_free(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @svc_release_buffer(ptr noundef %rqstp)
  %rq_scratch_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 18
  %0 = ptrtoint ptr %rq_scratch_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_scratch_page, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !209

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !208

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.37) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !215
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !216
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@svc_rqst_free, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !219

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %6) #18
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %10 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_resp, align 4
  tail call void @kfree(ptr noundef %11) #18
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %12 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_argp, align 8
  tail call void @kfree(ptr noundef %13) #18
  %rq_auth_data = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 37
  %14 = ptrtoint ptr %rq_auth_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq_auth_data, align 8
  tail call void @kfree(ptr noundef %15) #18
  %tobool2.not = icmp eq ptr %rqstp, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %rq_rcu_head = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rq_rcu_head, ptr noundef nonnull inttoptr (i32 8 to ptr)) #18
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_set_num_threads(ptr noundef %serv, ptr noundef %pool, i32 noundef %nrservs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pool, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sv_nrthreads = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 4
  %0 = ptrtoint ptr %sv_nrthreads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sv_nrthreads, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %sp_lock = getelementptr inbounds %struct.svc_pool, ptr %pool, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %sp_lock) #18
  %sp_nrthreads = getelementptr inbounds %struct.svc_pool, ptr %pool, i32 0, i32 3
  %2 = ptrtoint ptr %sp_nrthreads to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sp_nrthreads, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sp_lock) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pn = phi i32 [ %1, %if.then ], [ %3, %if.else ]
  %nrservs.addr.0 = sub i32 %nrservs, %.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrservs.addr.0)
  %cmp3 = icmp sgt i32 %nrservs.addr.0, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %sv_nrthreads.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 4
  %4 = ptrtoint ptr %sv_nrthreads.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sv_nrthreads.i, align 4
  %sub.i = add i32 %5, -1
  %sv_pools.i.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 15
  %sv_nrpools.i.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 14
  %sv_refcnt.i.i.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 3
  %sv_lock.i.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 2
  %sv_ops.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 16
  %sv_name.i = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 13
  br label %do.body.i

do.body.i:                                        ; preds = %if.end15.i.do.body.i_crit_edge, %if.then4
  %state.0.i = phi i32 [ %sub.i, %if.then4 ], [ %state.1.i, %if.end15.i.do.body.i_crit_edge ]
  %nrservs.addr.0.i = phi i32 [ %nrservs.addr.0, %if.then4 ], [ %dec.i, %if.end15.i.do.body.i_crit_edge ]
  %dec.i = add nsw i32 %nrservs.addr.0.i, -1
  br i1 %cmp, label %if.end.i.i, label %do.body.i.choose_pool.exit.i_crit_edge

do.body.i.choose_pool.exit.i_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %choose_pool.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %sv_pools.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sv_pools.i.i, align 4
  %inc.i.i = add i32 %state.0.i, 1
  %8 = ptrtoint ptr %sv_nrpools.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sv_nrpools.i.i, align 4
  %rem.i.i = urem i32 %state.0.i, %9
  %arrayidx.i.i = getelementptr %struct.svc_pool, ptr %7, i32 %rem.i.i
  br label %choose_pool.exit.i

choose_pool.exit.i:                               ; preds = %if.end.i.i, %do.body.i.choose_pool.exit.i_crit_edge
  %state.1.i = phi i32 [ %inc.i.i, %if.end.i.i ], [ %state.0.i, %do.body.i.choose_pool.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i ], [ %pool, %do.body.i.choose_pool.exit.i_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retval.0.i.i, align 128
  %12 = load i32, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %choose_pool.exit.i.if.end8.i.i_crit_edge, label %if.then.i.i

choose_pool.exit.i.if.end8.i.i_crit_edge:         ; preds = %choose_pool.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %choose_pool.exit.i
  %13 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %13, label %if.then.i.i.if.end8.i.i_crit_edge [
    i32 1, label %if.then.i.i.svc_pool_map_get_node.exit.i_crit_edge
    i32 2, label %if.then4.i.i
  ]

if.then.i.i.svc_pool_map_get_node.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %svc_pool_map_get_node.exit.i

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %15 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %arrayidx6.i.i = getelementptr i32, ptr %15, i32 %11
  %16 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i.i, align 4
  br label %svc_pool_map_get_node.exit.i

if.end8.i.i:                                      ; preds = %if.then.i.i.if.end8.i.i_crit_edge, %choose_pool.exit.i.if.end8.i.i_crit_edge
  br label %svc_pool_map_get_node.exit.i

svc_pool_map_get_node.exit.i:                     ; preds = %if.end8.i.i, %if.then4.i.i, %if.then.i.i.svc_pool_map_get_node.exit.i_crit_edge
  %retval.0.i42.i = phi i32 [ %17, %if.then4.i.i ], [ -1, %if.end8.i.i ], [ 0, %if.then.i.i.svc_pool_map_get_node.exit.i_crit_edge ]
  %call.i.i = tail call ptr @svc_rqst_alloc(ptr noundef %serv, ptr noundef %retval.0.i.i, i32 noundef %retval.0.i42.i) #18
  %tobool.not.i43.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i43.i, label %svc_pool_map_get_node.exit.i.if.then.i_crit_edge, label %if.end.i44.i

svc_pool_map_get_node.exit.i.if.then.i_crit_edge: ; preds = %svc_pool_map_get_node.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.end.i44.i:                                     ; preds = %svc_pool_map_get_node.exit.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i.i.i, i32 1, i32 3, i32 1) #18
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i.i.i, ptr %sv_refcnt.i.i.i, i32 1, ptr elementtype(i32) %sv_refcnt.i.i.i) #18, !srcloc !220
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end.i44.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !208

if.end.i44.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end.i44.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.svc_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !209

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.svc_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %svc_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end.i44.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end.i44.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #18
  br label %svc_get.exit.i.i

svc_get.exit.i.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.svc_get.exit.i.i_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %sv_lock.i.i) #18
  %20 = ptrtoint ptr %sv_nrthreads.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sv_nrthreads.i, align 4
  %add.i.i = add i32 %21, 1
  store i32 %add.i.i, ptr %sv_nrthreads.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sv_lock.i.i) #18
  %sp_lock.i.i = getelementptr inbounds %struct.svc_pool, ptr %retval.0.i.i, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %sp_lock.i.i) #18
  %sp_nrthreads.i.i = getelementptr inbounds %struct.svc_pool, ptr %retval.0.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %sp_nrthreads.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sp_nrthreads.i.i, align 8
  %inc.i45.i = add i32 %23, 1
  store i32 %inc.i45.i, ptr %sp_nrthreads.i.i, align 8
  %sp_all_threads.i.i = getelementptr inbounds %struct.svc_pool, ptr %retval.0.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %sp_all_threads.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sp_all_threads.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %sp_all_threads.i.i, ptr noundef %25) #18
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %svc_get.exit.i.i.svc_prepare_thread.exit.i_crit_edge

svc_get.exit.i.i.svc_prepare_thread.exit.i_crit_edge: ; preds = %svc_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %svc_prepare_thread.exit.i

if.end.i.i.i.i:                                   ; preds = %svc_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sp_all_threads.i.i, ptr %prev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !221
  %28 = ptrtoint ptr %sp_all_threads.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call.i.i, ptr %sp_all_threads.i.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %prev37.i.i.i.i, align 4
  br label %svc_prepare_thread.exit.i

svc_prepare_thread.exit.i:                        ; preds = %if.end.i.i.i.i, %svc_get.exit.i.i.svc_prepare_thread.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sp_lock.i.i) #18
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %svc_prepare_thread.exit.i.if.then.i_crit_edge, label %if.end.i

svc_prepare_thread.exit.i.if.then.i_crit_edge:    ; preds = %svc_prepare_thread.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %svc_prepare_thread.exit.i.if.then.i_crit_edge, %svc_pool_map_get_node.exit.i.if.then.i_crit_edge
  %retval.0.i4652.i = phi ptr [ %call.i.i, %svc_prepare_thread.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %svc_pool_map_get_node.exit.i.if.then.i_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i4652.i to i32
  br label %return

if.end.i:                                         ; preds = %svc_prepare_thread.exit.i
  %31 = ptrtoint ptr %sv_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sv_ops.i, align 4
  %svo_module.i = getelementptr inbounds %struct.svc_serv_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %svo_module.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %svo_module.i, align 4
  tail call void @__module_get(ptr noundef %34) #18
  %35 = ptrtoint ptr %sv_ops.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sv_ops.i, align 4
  %svo_function.i = getelementptr inbounds %struct.svc_serv_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %svo_function.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %svo_function.i, align 4
  %39 = ptrtoint ptr %sv_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sv_name.i, align 4
  %call6.i = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef %38, ptr noundef nonnull %call.i.i, i32 noundef %retval.0.i42.i, ptr noundef nonnull @.str.35, ptr noundef %40) #18
  %cmp.i47.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %if.then8.i, label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %sv_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sv_ops.i, align 4
  %svo_module10.i = getelementptr inbounds %struct.svc_serv_ops, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %svo_module10.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %svo_module10.i, align 4
  tail call void @module_put(ptr noundef %44) #18
  tail call void @svc_exit_thread(ptr noundef nonnull %call.i.i) #18
  %45 = ptrtoint ptr %call6.i to i32
  br label %return

if.end12.i:                                       ; preds = %if.end.i
  %rq_task.i = getelementptr inbounds %struct.svc_rqst, ptr %call.i.i, i32 0, i32 46
  %46 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call6.i, ptr %rq_task.i, align 4
  %47 = ptrtoint ptr %sv_nrpools.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sv_nrpools.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i = icmp ugt i32 %48, 1
  br i1 %cmp.i, label %if.then13.i, label %if.end12.i.if.end15.i_crit_edge

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end12.i
  %49 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %retval.0.i.i, align 128
  %51 = load ptr, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 3), align 4
  %arrayidx.i48.i = getelementptr i32, ptr %51, i32 %50
  %52 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i48.i, align 4
  %54 = load i32, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i49.i = icmp eq i32 %54, 0
  br i1 %cmp.i49.i, label %land.rhs.i.i, label %if.then13.i.if.end38.i.i_crit_edge

if.then13.i.if.end38.i.i_crit_edge:               ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i.i

land.rhs.i.i:                                     ; preds = %if.then13.i
  %.b50.i.i = load i1, ptr @svc_pool_map_set_cpumask.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end15.i_crit_edge, label %if.end27.i.i, !prof !209

land.rhs.i.i.if.end15.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

if.end27.i.i:                                     ; preds = %land.rhs.i.i
  store i1 true, ptr @svc_pool_map_set_cpumask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 341, i32 noundef 9, ptr noundef null) #18
  %.pr.i.i = load i32, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp36.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %cmp36.i.i, label %if.end27.i.i.if.end15.i_crit_edge, label %if.end27.i.i.if.end38.i.i_crit_edge

if.end27.i.i.if.end38.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end38.i.i

if.end27.i.i.if.end15.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

if.end38.i.i:                                     ; preds = %if.end27.i.i.if.end38.i.i_crit_edge, %if.then13.i.if.end38.i.i_crit_edge
  %55 = load i32, ptr getelementptr inbounds (%struct.svc_pool_map, ptr @svc_pool_map, i32 0, i32 1), align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %55, label %if.end38.i.i.if.end15.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb40.i.i
  ]

if.end38.i.i.if.end15.i_crit_edge:                ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.i

sw.bb.i.i:                                        ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %rem.i.i.i = and i32 %53, 31
  %add.i.i.i = add nuw nsw i32 %rem.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i.i
  %div3.i.i.i = lshr i32 %53, 5
  %idx.neg.i.i.i = sub nsw i32 0, %div3.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 %idx.neg.i.i.i
  %call39.i.i = tail call i32 @set_cpus_allowed_ptr(ptr noundef %call6.i, ptr noundef %add.ptr.i.i.i) #18
  br label %if.end15.i

sw.bb40.i.i:                                      ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call41.i.i = tail call i32 @set_cpus_allowed_ptr(ptr noundef %call6.i, ptr noundef nonnull @__cpu_online_mask) #18
  br label %if.end15.i

if.end15.i:                                       ; preds = %sw.bb40.i.i, %sw.bb.i.i, %if.end38.i.i.if.end15.i_crit_edge, %if.end27.i.i.if.end15.i_crit_edge, %land.rhs.i.i.if.end15.i_crit_edge, %if.end12.i.if.end15.i_crit_edge
  tail call void @svc_sock_update_bufs(ptr noundef %serv) #18
  %call16.i = tail call i32 @wake_up_process(ptr noundef %call6.i) #18
  %cmp17.i = icmp ugt i32 %nrservs.addr.0.i, 1
  br i1 %cmp17.i, label %if.end15.i.do.body.i_crit_edge, label %if.end15.i.return_crit_edge

if.end15.i.return_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end15.i.do.body.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrservs.addr.0)
  %cmp6 = icmp slt i32 %nrservs.addr.0, 0
  br i1 %cmp6, label %if.then7, label %if.end5.return_crit_edge

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then7:                                         ; preds = %if.end5
  %sv_nrthreads.i22 = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 4
  %57 = ptrtoint ptr %sv_nrthreads.i22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sv_nrthreads.i22, align 4
  %sub.i23 = add i32 %58, -1
  %sp_lock.i.i25 = getelementptr inbounds %struct.svc_pool, ptr %pool, i32 0, i32 1
  %sv_nrpools.i.i26 = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 14
  %sv_pools.i.i27 = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 15
  br label %do.body.i30

do.body.i30:                                      ; preds = %if.end.i40.do.body.i30_crit_edge, %if.then7
  %state.0.i28 = phi i32 [ %sub.i23, %if.then7 ], [ %state.2.i, %if.end.i40.do.body.i30_crit_edge ]
  %nrservs.addr.0.i29 = phi i32 [ %nrservs.addr.0, %if.then7 ], [ %inc.i, %if.end.i40.do.body.i30_crit_edge ]
  br i1 %cmp, label %for.cond.preheader.i.i, label %if.then.i.i31

for.cond.preheader.i.i:                           ; preds = %do.body.i30
  %59 = ptrtoint ptr %sv_nrpools.i.i26 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sv_nrpools.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp129.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp129.not.i.i, label %for.cond.preheader.i.i.return_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.return_crit_edge:          ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then.i.i31:                                    ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_raw_spin_lock_bh(ptr noundef %sp_lock.i.i25) #18
  br label %found_pool.i.i

for.body.i.i:                                     ; preds = %if.end.i.i36.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %state.1.i32 = phi i32 [ %dec.i.i, %if.end.i.i36.for.body.i.i_crit_edge ], [ %state.0.i28, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.030.i.i = phi i32 [ %inc.i.i35, %if.end.i.i36.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %61 = ptrtoint ptr %sv_pools.i.i27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sv_pools.i.i27, align 4
  %dec.i.i = add i32 %state.1.i32, -1
  %63 = ptrtoint ptr %sv_nrpools.i.i26 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sv_nrpools.i.i26, align 4
  %rem.i.i33 = urem i32 %dec.i.i, %64
  %sp_lock3.i.i = getelementptr %struct.svc_pool, ptr %62, i32 %rem.i.i33, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %sp_lock3.i.i) #18
  %sp_all_threads.i.i34 = getelementptr %struct.svc_pool, ptr %62, i32 %rem.i.i33, i32 4
  %65 = ptrtoint ptr %sp_all_threads.i.i34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %sp_all_threads.i.i34, align 4
  %cmp.i.not.i.i = icmp eq ptr %66, %sp_all_threads.i.i34
  br i1 %cmp.i.not.i.i, label %if.end.i.i36, label %found_pool.loopexit.i.i

if.end.i.i36:                                     ; preds = %for.body.i.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %sp_lock3.i.i) #18
  %inc.i.i35 = add nuw i32 %i.030.i.i, 1
  %67 = ptrtoint ptr %sv_nrpools.i.i26 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sv_nrpools.i.i26, align 4
  %cmp1.i.i = icmp ult i32 %inc.i.i35, %68
  br i1 %cmp1.i.i, label %if.end.i.i36.for.body.i.i_crit_edge, label %if.end.i.i36.return_crit_edge

if.end.i.i36.return_crit_edge:                    ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i.i36.for.body.i.i_crit_edge:              ; preds = %if.end.i.i36
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

found_pool.loopexit.i.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.le.i.i = getelementptr %struct.svc_pool, ptr %62, i32 %rem.i.i33
  br label %found_pool.i.i

found_pool.i.i:                                   ; preds = %found_pool.loopexit.i.i, %if.then.i.i31
  %state.2.i = phi i32 [ %dec.i.i, %found_pool.loopexit.i.i ], [ %state.0.i28, %if.then.i.i31 ]
  %pool.addr.0.i.i = phi ptr [ %arrayidx.le.i.i, %found_pool.loopexit.i.i ], [ %pool, %if.then.i.i31 ]
  %sp_all_threads7.i.i = getelementptr inbounds %struct.svc_pool, ptr %pool.addr.0.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %sp_all_threads7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %sp_all_threads7.i.i, align 4
  %cmp.i27.not.i.i = icmp eq ptr %70, %sp_all_threads7.i.i
  br i1 %cmp.i27.not.i.i, label %choose_victim.exit.thread4.i, label %if.then10.i.i

choose_victim.exit.thread4.i:                     ; preds = %found_pool.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %sp_lock13.i6.i = getelementptr inbounds %struct.svc_pool, ptr %pool.addr.0.i.i, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %sp_lock13.i6.i) #18
  br label %return

if.then10.i.i:                                    ; preds = %found_pool.i.i
  %rq_flags.i.i = getelementptr inbounds %struct.svc_rqst, ptr %70, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 5, ptr noundef %rq_flags.i.i) #18
  %call.i.i.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %70) #18
  br i1 %call.i.i.i.i37, label %if.end.i.i.i.i38, label %if.then10.i.i.choose_victim.exit.i_crit_edge

if.then10.i.i.choose_victim.exit.i_crit_edge:     ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %choose_victim.exit.i

if.end.i.i.i.i38:                                 ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %70, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %choose_victim.exit.i

choose_victim.exit.i:                             ; preds = %if.end.i.i.i.i38, %if.then10.i.i.choose_victim.exit.i_crit_edge
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %rq_task.i.i = getelementptr inbounds %struct.svc_rqst, ptr %70, i32 0, i32 46
  %78 = ptrtoint ptr %rq_task.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rq_task.i.i, align 4
  %sp_lock13.i.i = getelementptr inbounds %struct.svc_pool, ptr %pool.addr.0.i.i, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %sp_lock13.i.i) #18
  %cmp.i39 = icmp eq ptr %79, null
  br i1 %cmp.i39, label %choose_victim.exit.i.return_crit_edge, label %if.end.i40

choose_victim.exit.i.return_crit_edge:            ; preds = %choose_victim.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end.i40:                                       ; preds = %choose_victim.exit.i
  %call1.i = tail call i32 @kthread_stop(ptr noundef nonnull %79) #18
  %inc.i = add nsw i32 %nrservs.addr.0.i29, 1
  %exitcond.not = icmp eq i32 %inc.i, 0
  br i1 %exitcond.not, label %if.end.i40.return_crit_edge, label %if.end.i40.do.body.i30_crit_edge

if.end.i40.do.body.i30_crit_edge:                 ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i30

if.end.i40.return_crit_edge:                      ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

return:                                           ; preds = %if.end.i40.return_crit_edge, %choose_victim.exit.i.return_crit_edge, %choose_victim.exit.thread4.i, %if.end.i.i36.return_crit_edge, %for.cond.preheader.i.i.return_crit_edge, %if.end5.return_crit_edge, %if.end15.i.return_crit_edge, %if.then8.i, %if.then.i
  %retval.0 = phi i32 [ 0, %if.end5.return_crit_edge ], [ %30, %if.then.i ], [ %45, %if.then8.i ], [ 0, %choose_victim.exit.thread4.i ], [ 0, %if.end15.i.return_crit_edge ], [ 0, %if.end.i.i36.return_crit_edge ], [ 0, %for.cond.preheader.i.i.return_crit_edge ], [ 0, %choose_victim.exit.i.return_crit_edge ], [ 0, %if.end.i40.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_rqst_replace_page(ptr noundef %rqstp, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %0 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_next_page, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then:                                          ; preds = %entry
  %rq_pvec = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 24
  %4 = ptrtoint ptr %rq_pvec to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rq_pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %tobool1.not = icmp eq i8 %5, 15
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__pagevec_release(ptr noundef %rq_pvec) #18
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_next_page, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %rq_pvec to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rq_pvec, align 4
  %inc.i = add i8 %11, 1
  store i8 %inc.i, ptr %rq_pvec, align 4
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 24, i32 2, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %arrayidx.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %13 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !209

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #18
  %18 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %19, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !208

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.36) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #18, !srcloc !222
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #18
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #18, !srcloc !223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@svc_rqst_replace_page, %if.then.i.i.i.i)) #18
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !219

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__page_ref_mod(ptr noundef %17, i32 noundef 1) #18
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %21 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rq_next_page, align 8
  %incdec.ptr = getelementptr ptr, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %rq_next_page, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %page, ptr %22, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_release_buffer(ptr nocapture noundef readonly %rqstp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then:                                          ; preds = %for.body
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !209

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !208

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %9 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.37) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !215
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !216
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !217
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@svc_release_buffer, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !219

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %6) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 260
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_exit_thread(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %0 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_server, align 4
  %rq_pool = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 8
  %2 = ptrtoint ptr %rq_pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_pool, align 8
  %sp_lock = getelementptr inbounds %struct.svc_pool, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %sp_lock) #18
  %sp_nrthreads = getelementptr inbounds %struct.svc_pool, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sp_nrthreads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sp_nrthreads, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %sp_nrthreads, align 8
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  %call = tail call i32 @_test_and_set_bit(i32 noundef 5, ptr noundef %rq_flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rqstp) #18
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rqstp, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %rqstp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rqstp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rqstp, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_rcu.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sp_lock) #18
  %sv_lock = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %sv_lock) #18
  %sv_nrthreads = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %sv_nrthreads to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sv_nrthreads, align 4
  %sub = add i32 %14, -1
  store i32 %sub, ptr %sv_nrthreads, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %sv_lock) #18
  tail call void @svc_sock_update_bufs(ptr noundef %1) #18
  tail call void @svc_rqst_free(ptr noundef %rqstp)
  %sv_refcnt.i = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sv_refcnt.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !224
  tail call void @llvm.prefetch.p0(ptr %sv_refcnt.i, i32 1, i32 3, i32 1) #18
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sv_refcnt.i, ptr %sv_refcnt.i, i32 1, ptr elementtype(i32) %sv_refcnt.i) #18, !srcloc !225
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.svc_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !209

if.end5.i.i.i.i.i.svc_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %svc_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %sv_refcnt.i, i32 noundef 3) #18
  br label %svc_put.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !226
  tail call void @svc_destroy(ptr noundef %sv_refcnt.i) #18
  br label %svc_put.exit

svc_put.exit:                                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.svc_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_sock_update_bufs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_rpcbind_set_version(ptr noundef %net, ptr nocapture noundef readonly %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #2 align 64 {
entry:
  %sin6.i.i = alloca %struct.sockaddr_in6, align 4
  %sin.i.i = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 6
  %0 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_name, align 4
  %pg_prog = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 1
  %2 = ptrtoint ptr %pg_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_prog, align 4
  %4 = zext i32 %family to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %family, label %entry.__svc_register.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 10, label %sw.bb1.i
  ]

entry.__svc_register.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__svc_register.exit

sw.bb.i:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i.i) #18
  %5 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %sin.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %sin.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %port, ptr %5, align 2
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %7, align 4
  %conv.i.i = zext i16 %proto to i32
  %12 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %proto, label %sw.bb.i.__svc_rpcb_register4.exit.i_crit_edge [
    i16 17, label %sw.bb.i.sw.epilog.i.i_crit_edge
    i16 6, label %sw.bb1.i.i
  ]

sw.bb.i.sw.epilog.i.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i.i

sw.bb.i.__svc_rpcb_register4.exit.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__svc_rpcb_register4.exit.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.sw.epilog.i.i_crit_edge
  %netid.0.i.i = phi ptr [ @.str.39, %sw.bb1.i.i ], [ @.str.38, %sw.bb.i.sw.epilog.i.i_crit_edge ]
  %call.i.i = call i32 @rpcb_v4_register(ptr noundef %net, i32 noundef %3, i32 noundef %version, ptr noundef nonnull %sin.i.i, ptr noundef nonnull %netid.0.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -93, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -93
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.epilog.i.i.__svc_rpcb_register4.exit.i_crit_edge

sw.epilog.i.i.__svc_rpcb_register4.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__svc_rpcb_register4.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %call4.i.i = call i32 @rpcb_register(ptr noundef %net, i32 noundef %3, i32 noundef %version, i32 noundef %conv.i.i, i16 noundef zeroext %port) #18
  br label %__svc_rpcb_register4.exit.i

__svc_rpcb_register4.exit.i:                      ; preds = %if.then.i.i, %sw.epilog.i.i.__svc_rpcb_register4.exit.i_crit_edge, %sw.bb.i.__svc_rpcb_register4.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -92, %sw.bb.i.__svc_rpcb_register4.exit.i_crit_edge ], [ %call4.i.i, %if.then.i.i ], [ %call.i.i, %sw.epilog.i.i.__svc_rpcb_register4.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i.i) #18
  br label %__svc_register.exit

sw.bb1.i:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6.i.i) #18
  %13 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i.i, i32 0, i32 1
  %14 = getelementptr inbounds i8, ptr %sin6.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 24)
  %16 = ptrtoint ptr %sin6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 10, ptr %sin6.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %port, ptr %13, align 2
  %18 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.70)
  switch i16 %proto, label %sw.bb1.i.__svc_rpcb_register6.exit.i_crit_edge [
    i16 17, label %sw.bb1.i.sw.epilog.i17.i_crit_edge
    i16 6, label %sw.bb15.i.i
  ]

sw.bb1.i.sw.epilog.i17.i_crit_edge:               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i17.i

sw.bb1.i.__svc_rpcb_register6.exit.i_crit_edge:   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__svc_rpcb_register6.exit.i

sw.bb15.i.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog.i17.i

sw.epilog.i17.i:                                  ; preds = %sw.bb15.i.i, %sw.bb1.i.sw.epilog.i17.i_crit_edge
  %netid.0.i14.i = phi ptr [ @.str.41, %sw.bb15.i.i ], [ @.str.40, %sw.bb1.i.sw.epilog.i17.i_crit_edge ]
  %call.i15.i = call i32 @rpcb_v4_register(ptr noundef %net, i32 noundef %3, i32 noundef %version, ptr noundef nonnull %sin6.i.i, ptr noundef nonnull %netid.0.i14.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -93, i32 %call.i15.i)
  %cmp.i16.i = icmp eq i32 %call.i15.i, -93
  %spec.store.select.i.i = select i1 %cmp.i16.i, i32 -97, i32 %call.i15.i
  br label %__svc_rpcb_register6.exit.i

__svc_rpcb_register6.exit.i:                      ; preds = %sw.epilog.i17.i, %sw.bb1.i.__svc_rpcb_register6.exit.i_crit_edge
  %retval.0.i18.i = phi i32 [ %spec.store.select.i.i, %sw.epilog.i17.i ], [ -92, %sw.bb1.i.__svc_rpcb_register6.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6.i.i) #18
  br label %__svc_register.exit

__svc_register.exit:                              ; preds = %__svc_rpcb_register6.exit.i, %__svc_rpcb_register4.exit.i, %entry.__svc_register.exit_crit_edge
  %error.0.i = phi i32 [ -97, %entry.__svc_register.exit_crit_edge ], [ %retval.0.i18.i, %__svc_rpcb_register6.exit.i ], [ %retval.0.i.i, %__svc_rpcb_register4.exit.i ]
  %conv.i = zext i16 %proto to i32
  %conv3.i = trunc i32 %family to i16
  call fastcc void @trace_svc_register(ptr noundef %1, i32 noundef %version, i32 noundef %conv.i, i16 noundef zeroext %port, i16 noundef zeroext %conv3.i, i32 noundef %error.0.i) #18
  ret i32 %error.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_generic_rpcbind_set(ptr noundef %net, ptr nocapture noundef readonly %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_vers = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 5
  %0 = ptrtoint ptr %pg_vers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pg_vers, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %version
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %vs_hidden = getelementptr inbounds %struct.svc_version, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %vs_hidden to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vs_hidden, align 4, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 6
  %6 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pg_name, align 4
  %conv = zext i16 %proto to i32
  %conv2 = trunc i32 %family to i16
  tail call fastcc void @trace_svc_noregister(ptr noundef %7, i32 noundef %version, i32 noundef %conv, i16 noundef zeroext %port, i16 noundef zeroext %conv2)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %vs_need_cong_ctrl = getelementptr inbounds %struct.svc_version, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %vs_need_cong_ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vs_need_cong_ctrl, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %proto)
  %cmp7 = icmp eq i16 %proto, 17
  %or.cond = and i1 %cmp7, %tobool4.not
  br i1 %or.cond, label %if.end3.cleanup_crit_edge, label %if.end10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @svc_rpcbind_set_version(ptr noundef %net, ptr noundef %progp, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port)
  %vs_rpcb_optnl = getelementptr inbounds %struct.svc_version, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %vs_rpcb_optnl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vs_rpcb_optnl, align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  %spec.select = select i1 %tobool11.not, i32 %call, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then1 ], [ %spec.select, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svc_noregister(ptr noundef %program, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %protocol, i16 noundef zeroext %port) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_noregister, i32 0, i32 1), ptr blockaddress(@trace_svc_noregister, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !227
  %call42 = tail call i32 @__traceiter_svc_noregister(ptr noundef null, ptr noundef %program, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %protocol, i16 noundef zeroext %port, i32 noundef 0) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !228
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !209

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_noregister, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_noregister, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_svc_noregister.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_svc_noregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 2259, ptr noundef nonnull @.str.43) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !230
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_register(ptr nocapture noundef readonly %serv, ptr noundef %net, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i16 %port, %proto
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %1 = icmp eq i16 %0, 0
  br i1 %1, label %land.rhs7, label %for.cond.preheader

land.rhs7:                                        ; preds = %entry
  %.b84 = load i1, ptr @svc_register.__already_done, align 1
  br i1 %.b84, label %land.rhs7.cleanup_crit_edge, label %if.then, !prof !209

land.rhs7.cleanup_crit_edge:                      ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then:                                          ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @svc_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1062, i32 noundef 9, ptr noundef null) #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %serv to i32
  call void @__asan_load4_noabort(i32 %2)
  %progp.089 = load ptr, ptr %serv, align 4
  %tobool50.not90 = icmp eq ptr %progp.089, null
  br i1 %tobool50.not90, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.cond51.preheader_crit_edge

for.cond.preheader.for.cond51.preheader_crit_edge: ; preds = %for.cond.preheader
  br label %for.cond51.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond51.preheader:                             ; preds = %for.inc64.for.cond51.preheader_crit_edge, %for.cond.preheader.for.cond51.preheader_crit_edge
  %progp.092 = phi ptr [ %progp.0, %for.inc64.for.cond51.preheader_crit_edge ], [ %progp.089, %for.cond.preheader.for.cond51.preheader_crit_edge ]
  %error.091 = phi i32 [ %error.2, %for.inc64.for.cond51.preheader_crit_edge ], [ 0, %for.cond.preheader.for.cond51.preheader_crit_edge ]
  %pg_nvers = getelementptr inbounds %struct.svc_program, ptr %progp.092, i32 0, i32 4
  %3 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pg_nvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5287.not = icmp eq i32 %4, 0
  br i1 %cmp5287.not, label %for.cond51.preheader.for.inc64_crit_edge, label %for.body54.lr.ph

for.cond51.preheader.for.inc64_crit_edge:         ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc64

for.body54.lr.ph:                                 ; preds = %for.cond51.preheader
  %pg_rpcbind_set = getelementptr inbounds %struct.svc_program, ptr %progp.092, i32 0, i32 11
  br label %for.body54

for.body54:                                       ; preds = %for.inc.for.body54_crit_edge, %for.body54.lr.ph
  %i.088 = phi i32 [ 0, %for.body54.lr.ph ], [ %inc, %for.inc.for.body54_crit_edge ]
  %5 = ptrtoint ptr %pg_rpcbind_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pg_rpcbind_set, align 4
  %call = tail call i32 %6(ptr noundef %net, ptr noundef nonnull %progp.092, i32 noundef %i.088, i32 noundef %family, i16 noundef zeroext %proto, i16 noundef zeroext %port) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp55 = icmp slt i32 %call, 0
  br i1 %cmp55, label %do.end60, label %for.inc

do.end60:                                         ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #20
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %progp.092, i32 0, i32 6
  %7 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pg_name, align 4
  %sub = sub i32 0, %call
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %8, i32 noundef %i.088, i32 noundef %sub) #23
  br label %for.inc64

for.inc:                                          ; preds = %for.body54
  %inc = add nuw i32 %i.088, 1
  %9 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pg_nvers, align 4
  %cmp52 = icmp ult i32 %inc, %10
  br i1 %cmp52, label %for.inc.for.body54_crit_edge, label %for.inc.for.inc64_crit_edge

for.inc.for.inc64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc64

for.inc.for.body54_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body54

for.inc64:                                        ; preds = %for.inc.for.inc64_crit_edge, %do.end60, %for.cond51.preheader.for.inc64_crit_edge
  %error.2 = phi i32 [ %call, %do.end60 ], [ %error.091, %for.cond51.preheader.for.inc64_crit_edge ], [ %call, %for.inc.for.inc64_crit_edge ]
  %11 = ptrtoint ptr %progp.092 to i32
  call void @__asan_load4_noabort(i32 %11)
  %progp.0 = load ptr, ptr %progp.092, align 4
  %tobool50.not = icmp eq ptr %progp.0, null
  br i1 %tobool50.not, label %for.inc64.cleanup_crit_edge, label %for.inc64.for.cond51.preheader_crit_edge

for.inc64.for.cond51.preheader_crit_edge:         ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond51.preheader

for.inc64.cleanup_crit_edge:                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %for.inc64.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then, %land.rhs7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %if.then ], [ -22, %land.rhs7.cleanup_crit_edge ], [ %error.2, %for.inc64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @svc_generic_init_request(ptr nocapture noundef %rqstp, ptr nocapture noundef readonly %progp, ptr nocapture noundef writeonly %ret) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %0 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_vers, align 4
  %pg_nvers = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 4
  %2 = ptrtoint ptr %pg_nvers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pg_nvers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.err_bad_vers_crit_edge

entry.err_bad_vers_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad_vers

if.end:                                           ; preds = %entry
  %pg_vers = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 5
  %4 = ptrtoint ptr %pg_vers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pg_vers, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.err_bad_vers_crit_edge, label %if.end3

if.end.err_bad_vers_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad_vers

if.end3:                                          ; preds = %if.end
  %vs_need_cong_ctrl = getelementptr inbounds %struct.svc_version, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %vs_need_cong_ctrl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vs_need_cong_ctrl, align 2, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %land.lhs.true

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end3
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %10 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rq_xprt, align 8
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true6

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %xpt_flags, align 4
  %14 = and i32 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %land.lhs.true6.err_bad_vers_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

land.lhs.true6.err_bad_vers_crit_edge:            ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad_vers

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %rq_proc = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %15 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_proc, align 8
  %vs_nproc = getelementptr inbounds %struct.svc_version, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %vs_nproc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vs_nproc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp11.not = icmp ult i32 %16, %18
  br i1 %cmp11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %vs_proc = getelementptr inbounds %struct.svc_version, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %vs_proc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vs_proc, align 4
  %arrayidx15 = getelementptr %struct.svc_procedure, ptr %20, i32 %16
  %rq_procinfo = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 9
  %21 = ptrtoint ptr %rq_procinfo to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx15, ptr %rq_procinfo, align 4
  %tobool16.not = icmp eq ptr %arrayidx15, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %rq_argp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 35
  %22 = ptrtoint ptr %rq_argp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rq_argp, align 8
  %pc_argsize = getelementptr %struct.svc_procedure, ptr %20, i32 %16, i32 4
  %24 = ptrtoint ptr %pc_argsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pc_argsize, align 4
  %26 = call ptr @memset(ptr %23, i32 0, i32 %25)
  %rq_resp = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 36
  %27 = ptrtoint ptr %rq_resp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rq_resp, align 4
  %pc_ressize = getelementptr %struct.svc_procedure, ptr %20, i32 %16, i32 5
  %29 = ptrtoint ptr %pc_ressize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pc_ressize, align 4
  %31 = call ptr @memset(ptr %28, i32 0, i32 %30)
  %vs_count = getelementptr inbounds %struct.svc_version, ptr %7, i32 0, i32 3
  %32 = ptrtoint ptr %vs_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vs_count, align 4
  %34 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rq_proc, align 8
  %arrayidx20 = getelementptr i32, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx20, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %arrayidx20, align 4
  %vs_dispatch = getelementptr inbounds %struct.svc_version, ptr %7, i32 0, i32 8
  %38 = ptrtoint ptr %vs_dispatch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vs_dispatch, align 4
  %40 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ret, align 4
  br label %cleanup

err_bad_vers:                                     ; preds = %land.lhs.true6.err_bad_vers_crit_edge, %if.end.err_bad_vers_crit_edge, %entry.err_bad_vers_crit_edge
  %pg_lovers = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 2
  %41 = ptrtoint ptr %pg_lovers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pg_lovers, align 4
  %43 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %ret, align 4
  %pg_hivers = getelementptr inbounds %struct.svc_program, ptr %progp, i32 0, i32 3
  %44 = ptrtoint ptr %pg_hivers to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pg_hivers, align 4
  %hivers = getelementptr inbounds %struct.anon.152, ptr %ret, i32 0, i32 1
  %46 = ptrtoint ptr %hivers to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %hivers, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_bad_vers, %if.end18, %if.end13.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %err_bad_vers ], [ 0, %if.end18 ], [ 3, %if.end13.cleanup_crit_edge ], [ 3, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_process(ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %0 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_server, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.fail_sunrpc_attr, ptr @fail_sunrpc, i32 0, i32 2) to i32))
  %2 = load i8, ptr getelementptr inbounds (%struct.fail_sunrpc_attr, ptr @fail_sunrpc, i32 0, i32 2), align 1, !range !207
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call zeroext i1 @should_fail(ptr noundef nonnull @fail_sunrpc, i32 noundef 1) #18
  br i1 %call, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %3 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rq_xprt, align 8
  tail call void @svc_xprt_deferred_close(ptr noundef %4) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %rq_respages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %5 = ptrtoint ptr %rq_respages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq_respages, align 4
  %arrayidx3 = getelementptr ptr, ptr %6, i32 1
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %7 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx3, ptr %rq_next_page, align 8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  %call6 = tail call ptr @page_address(ptr noundef %9) #18
  %10 = ptrtoint ptr %rq_res to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %rq_res, align 4
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %iov_len, align 4
  %12 = ptrtoint ptr %rq_respages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq_respages, align 4
  %add.ptr = getelementptr ptr, ptr %13, i32 1
  %pages = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %pages, align 4
  %len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 8
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %len, align 8
  %page_base = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 4
  %16 = ptrtoint ptr %page_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %page_base, align 8
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 5
  %17 = ptrtoint ptr %page_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %page_len, align 4
  %buflen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 7
  %18 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4096, ptr %buflen, align 4
  %tail = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %tail, align 8
  %iov_len19 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %iov_len19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %iov_len19, align 4
  %21 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rq_arg, align 4
  %incdec.ptr.i = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  store ptr %incdec.ptr.i, ptr %rq_arg, align 4
  %iov_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iov_len.i, align 4
  %sub.i = add i32 %26, -4
  store i32 %sub.i, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not = icmp eq i32 %24, 0
  br i1 %cmp.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @svc_printk(ptr noundef %rqstp, ptr noundef nonnull @.str.6, i32 noundef %24)
  %sv_stats = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %sv_stats to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sv_stats, align 4
  %rpcbadfmt = getelementptr inbounds %struct.svc_stat, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %rpcbadfmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rpcbadfmt, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rpcbadfmt, align 4
  br label %out_drop

if.end22:                                         ; preds = %if.end
  %call23 = tail call fastcc i32 @svc_process_common(ptr noundef %rqstp, ptr noundef %rq_arg, ptr noundef %rq_res)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.out_drop_crit_edge, label %if.then27, !prof !208

if.end22.out_drop_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_drop

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %call28 = tail call i32 @svc_send(ptr noundef %rqstp) #18
  br label %cleanup

out_drop:                                         ; preds = %if.end22.out_drop_crit_edge, %if.then21
  tail call void @svc_drop(ptr noundef %rqstp) #18
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %if.then27
  %retval.0 = phi i32 [ 0, %out_drop ], [ %call28, %if.then27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_deferred_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_printk(ptr noundef %rqstp, ptr noundef %fmt, ...) unnamed_addr #2 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  %buf = alloca [63 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #18
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #18
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !231
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %buf) #18
  %2 = call ptr @memset(ptr %buf, i32 255, i32 63)
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fmt, ptr %vaf, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %args, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %5 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !209

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = call ptr @svc_print_addr(ptr noundef %rqstp, ptr noundef nonnull %buf, i32 noundef 63) #18
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %call, ptr noundef nonnull %vaf) #23
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %buf) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_process_common(ptr noundef %rqstp, ptr nocapture noundef %argv, ptr noundef %resv) unnamed_addr #2 align 64 {
entry:
  %process = alloca %struct.svc_process_info, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %0 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_server, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %process) #18
  %2 = ptrtoint ptr %process to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %process, align 4, !annotation !231
  %3 = getelementptr inbounds %struct.anon.152, ptr %process, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !231
  %iov_len = getelementptr inbounds %struct.kvec, ptr %argv, i32 0, i32 1
  %5 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %6)
  %cmp = icmp ult i32 %6, 24
  br i1 %cmp, label %err_short_len, label %if.end

if.end:                                           ; preds = %entry
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 4, ptr noundef %rq_flags) #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %rq_flags) #18
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %rq_flags) #18
  %rq_xid = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %7 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rq_xid, align 4
  %9 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv, align 4
  %iov_len.i = getelementptr inbounds %struct.kvec, ptr %resv, i32 0, i32 1
  %11 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %add.ptr.i, align 4
  %14 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %14, 4
  store i32 %add.i, ptr %iov_len.i, align 4
  %15 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %argv, align 4
  %incdec.ptr.i = getelementptr i32, ptr %16, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  store ptr %incdec.ptr.i, ptr %argv, align 4
  %19 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iov_len, align 4
  %sub.i = add i32 %20, -4
  store i32 %sub.i, ptr %iov_len, align 4
  %21 = load ptr, ptr %resv, align 4
  %22 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i271 = getelementptr i8, ptr %21, i32 %22
  %23 = ptrtoint ptr %add.ptr.i271 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %add.ptr.i271, align 4
  %24 = load i32, ptr %iov_len.i, align 4
  %add.i272 = add i32 %24, 4
  store i32 %add.i272, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp3.not = icmp eq i32 %18, 2
  br i1 %cmp3.not, label %if.end5, label %err_bad_rpc

if.end5:                                          ; preds = %if.end
  %25 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %add.i272
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iov_len.i, align 4
  %add.i275 = add i32 %29, 4
  store i32 %add.i275, ptr %iov_len.i, align 4
  %30 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %argv, align 4
  %incdec.ptr.i276 = getelementptr i32, ptr %31, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  store ptr %incdec.ptr.i276, ptr %argv, align 4
  %34 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iov_len, align 4
  %sub.i278 = add i32 %35, -4
  store i32 %sub.i278, ptr %iov_len, align 4
  %rq_prog = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 28
  %36 = ptrtoint ptr %rq_prog to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %rq_prog, align 8
  %37 = load ptr, ptr %argv, align 4
  %incdec.ptr.i279 = getelementptr i32, ptr %37, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  store ptr %incdec.ptr.i279, ptr %argv, align 4
  %40 = load i32, ptr %iov_len, align 4
  %sub.i281 = add i32 %40, -4
  store i32 %sub.i281, ptr %iov_len, align 4
  %rq_vers = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 29
  %41 = ptrtoint ptr %rq_vers to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %rq_vers, align 4
  %42 = load ptr, ptr %argv, align 4
  %incdec.ptr.i282 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  store ptr %incdec.ptr.i282, ptr %argv, align 4
  %45 = load i32, ptr %iov_len, align 4
  %sub.i284 = add i32 %45, -4
  store i32 %sub.i284, ptr %iov_len, align 4
  %rq_proc = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 30
  %46 = ptrtoint ptr %rq_proc to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %rq_proc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %progp.0.in = phi ptr [ %1, %if.end5 ], [ %progp.0, %for.body.for.cond_crit_edge ]
  %47 = ptrtoint ptr %progp.0.in to i32
  call void @__asan_load4_noabort(i32 %47)
  %progp.0 = load ptr, ptr %progp.0.in, align 4
  %tobool.not = icmp eq ptr %progp.0, null
  br i1 %tobool.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  %call13330 = tail call i32 @svc_authenticate(ptr noundef %rqstp) #18
  br label %if.end18

for.body:                                         ; preds = %for.cond
  %pg_prog = getelementptr inbounds %struct.svc_program, ptr %progp.0, i32 0, i32 1
  %48 = ptrtoint ptr %pg_prog to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pg_prog, align 4
  %cmp10 = icmp eq i32 %33, %49
  br i1 %cmp10, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

for.end:                                          ; preds = %for.body
  %call13 = tail call i32 @svc_authenticate(ptr noundef %rqstp) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call13)
  %cmp14 = icmp ne i32 %call13, 5
  %brmerge = select i1 %cmp14, i1 true, i1 %tobool.not
  br i1 %brmerge, label %for.end.if.end18_crit_edge, label %if.then16

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %pg_authenticate = getelementptr inbounds %struct.svc_program, ptr %progp.0, i32 0, i32 9
  %50 = ptrtoint ptr %pg_authenticate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pg_authenticate, align 4
  %call17 = tail call i32 %51(ptr noundef %rqstp) #18
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge, %for.end.thread
  %progp.0.lcssa333 = phi ptr [ %progp.0, %if.then16 ], [ %progp.0, %for.end.if.end18_crit_edge ], [ null, %for.end.thread ]
  %auth_res.0 = phi i32 [ %call17, %if.then16 ], [ %call13, %for.end.if.end18_crit_edge ], [ %call13330, %for.end.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %auth_res.0)
  %cond = icmp eq i32 %auth_res.0, 5
  br i1 %cond, label %if.end18.sw.epilog_crit_edge, label %if.then20

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then20:                                        ; preds = %if.end18
  tail call fastcc void @trace_svc_authenticate(ptr noundef %rqstp, i32 noundef %auth_res.0)
  %52 = zext i32 %auth_res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %auth_res.0, label %if.then20.sw.epilog_crit_edge [
    i32 10, label %if.then20.sendit_crit_edge
    i32 1, label %err_garbage
    i32 2, label %if.then20.err_bad_crit_edge
    i32 8, label %if.then20.do.body109_crit_edge
    i32 7, label %close
    i32 6, label %if.then20.dropit_crit_edge
  ]

if.then20.dropit_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %dropit

if.then20.do.body109_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body109

if.then20.err_bad_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad

if.then20.sendit_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sendit

if.then20.sw.epilog_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then20.sw.epilog_crit_edge, %if.end18.sw.epilog_crit_edge
  br i1 %tobool.not, label %sw.epilog.do.body132_crit_edge, label %if.end29

sw.epilog.do.body132_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body132

if.end29:                                         ; preds = %sw.epilog
  %pg_init_request = getelementptr inbounds %struct.svc_program, ptr %progp.0.lcssa333, i32 0, i32 10
  %53 = ptrtoint ptr %pg_init_request to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pg_init_request, align 4
  %call30 = call i32 %54(ptr noundef %rqstp, ptr noundef nonnull %progp.0.lcssa333, ptr noundef nonnull %process) #18
  %55 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call30, label %sw.epilog34 [
    i32 3, label %if.end29.err_bad_proc_crit_edge
    i32 1, label %if.end29.do.body132_crit_edge
    i32 2, label %err_bad_vers
  ]

if.end29.do.body132_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body132

if.end29.err_bad_proc_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad_proc

sw.epilog34:                                      ; preds = %if.end29
  %rq_procinfo = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 9
  %56 = ptrtoint ptr %rq_procinfo to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rq_procinfo, align 4
  %tobool35.not = icmp eq ptr %57, null
  br i1 %tobool35.not, label %sw.epilog34.err_bad_proc_crit_edge, label %lor.lhs.false

sw.epilog34.err_bad_proc_crit_edge:               ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad_proc

lor.lhs.false:                                    ; preds = %sw.epilog34
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool36.not = icmp eq ptr %59, null
  br i1 %tobool36.not, label %lor.lhs.false.err_bad_proc_crit_edge, label %if.end38

lor.lhs.false.err_bad_proc_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_bad_proc

if.end38:                                         ; preds = %lor.lhs.false
  %sv_stats = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %sv_stats to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sv_stats, align 4
  %rpccnt = getelementptr inbounds %struct.svc_stat, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %rpccnt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rpccnt, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %rpccnt, align 4
  %pg_name = getelementptr inbounds %struct.svc_program, ptr %progp.0.lcssa333, i32 0, i32 6
  %64 = ptrtoint ptr %pg_name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pg_name, align 4
  call fastcc void @trace_svc_process(ptr noundef %rqstp, ptr noundef %65)
  %66 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %resv, align 4
  %68 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iov_len.i, align 4
  %add.ptr41 = getelementptr i8, ptr %67, i32 %69
  %70 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %add.ptr41, align 4
  %71 = load i32, ptr %iov_len.i, align 4
  %add.i287 = add i32 %71, 4
  store i32 %add.i287, ptr %iov_len.i, align 4
  %pc_xdrressize = getelementptr inbounds %struct.svc_procedure, ptr %57, i32 0, i32 7
  %72 = ptrtoint ptr %pc_xdrressize to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pc_xdrressize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool42.not = icmp eq i32 %73, 0
  br i1 %tobool42.not, label %if.end38.if.end45_crit_edge, label %if.then43

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  %shl = shl i32 %73, 2
  %rq_auth_slack.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 39
  %74 = ptrtoint ptr %rq_auth_slack.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rq_auth_slack.i, align 8
  %add.i288 = add i32 %75, %shl
  call void @svc_reserve(ptr noundef %rqstp, i32 noundef %add.i288) #18
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38.if.end45_crit_edge
  %76 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %process, align 4
  %call46 = call i32 %77(ptr noundef %rqstp, ptr noundef %add.ptr41) #18
  %pc_release = getelementptr inbounds %struct.svc_procedure, ptr %57, i32 0, i32 3
  %78 = ptrtoint ptr %pc_release to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pc_release, align 4
  %tobool47.not = icmp eq ptr %79, null
  br i1 %tobool47.not, label %if.end45.if.end50_crit_edge, label %if.then48

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end50

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  call void %79(ptr noundef %rqstp) #18
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool51.not = icmp eq i32 %call46, 0
  br i1 %tobool51.not, label %if.end50.dropit_crit_edge, label %if.end53

if.end50.dropit_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #20
  br label %dropit

if.end53:                                         ; preds = %if.end50
  %rq_auth_stat = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %80 = ptrtoint ptr %rq_auth_stat to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rq_auth_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp54.not = icmp eq i32 %81, 0
  br i1 %cmp54.not, label %if.end56, label %if.end53.do.body109_crit_edge

if.end53.do.body109_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body109

if.end56:                                         ; preds = %if.end53
  %82 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp57.not = icmp eq i32 %83, 0
  br i1 %cmp57.not, label %if.end56.if.end61_crit_edge, label %if.then58

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end61

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  %84 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %resv, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr41 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %85 to i32
  %sub.ptr.sub = add i32 %sub.ptr.lhs.cast, 4
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %86 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %add, ptr %iov_len.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end56.if.end61_crit_edge
  %pc_encode = getelementptr inbounds %struct.svc_procedure, ptr %57, i32 0, i32 2
  %87 = ptrtoint ptr %pc_encode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pc_encode, align 4
  %cmp62 = icmp eq ptr %88, null
  br i1 %cmp62, label %if.end61.dropit_crit_edge, label %if.end61.sendit_crit_edge

if.end61.sendit_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %sendit

if.end61.dropit_crit_edge:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %dropit

sendit.sink.split:                                ; preds = %err_bad, %err_bad_proc, %err_bad_vers, %do.end149, %do.end127, %err_bad_rpc
  %89 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iov_len.i, align 4
  %add.i328 = add i32 %90, 4
  store i32 %add.i328, ptr %iov_len.i, align 4
  br label %sendit

sendit:                                           ; preds = %sendit.sink.split, %if.end61.sendit_crit_edge, %if.then20.sendit_crit_edge
  %call65 = call i32 @svc_authorise(ptr noundef %rqstp) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %sendit.cleanup_crit_edge, label %sendit.close_xprt_crit_edge

sendit.close_xprt_crit_edge:                      ; preds = %sendit
  call void @__sanitizer_cov_trace_pc() #20
  br label %close_xprt

sendit.cleanup_crit_edge:                         ; preds = %sendit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

dropit:                                           ; preds = %if.end61.dropit_crit_edge, %if.end50.dropit_crit_edge, %if.then20.dropit_crit_edge
  %call69 = call i32 @svc_authorise(ptr noundef %rqstp) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %91 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %91, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %dropit.cleanup_crit_edge, label %dropit.cleanup.sink.split_crit_edge, !prof !209

dropit.cleanup.sink.split_crit_edge:              ; preds = %dropit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

dropit.cleanup_crit_edge:                         ; preds = %dropit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

close:                                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  %call79 = tail call i32 @svc_authorise(ptr noundef %rqstp) #18
  br label %close_xprt

close_xprt:                                       ; preds = %err_short_len, %close, %sendit.close_xprt_crit_edge
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %92 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rq_xprt, align 8
  %tobool80.not = icmp eq ptr %93, null
  br i1 %tobool80.not, label %close_xprt.do.body88_crit_edge, label %land.lhs.true81

close_xprt.do.body88_crit_edge:                   ; preds = %close_xprt
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body88

land.lhs.true81:                                  ; preds = %close_xprt
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %xpt_flags, align 4
  %96 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool84.not = icmp eq i32 %96, 0
  br i1 %tobool84.not, label %land.lhs.true81.do.body88_crit_edge, label %if.then85

land.lhs.true81.do.body88_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body88

if.then85:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #20
  call void @svc_close_xprt(ptr noundef nonnull %93) #18
  br label %do.body88

do.body88:                                        ; preds = %if.then85, %land.lhs.true81.do.body88_crit_edge, %close_xprt.do.body88_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %97 = load i32, ptr @rpc_debug, align 4
  %and89 = and i32 %97, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.cleanup_crit_edge, label %do.body88.cleanup.sink.split_crit_edge, !prof !209

do.body88.cleanup.sink.split_crit_edge:           ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

do.body88.cleanup_crit_edge:                      ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

err_short_len:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @svc_printk(ptr noundef %rqstp, ptr noundef nonnull @.str.53, i32 noundef %6)
  br label %close_xprt

err_bad_rpc:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sv_stats107 = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %98 = ptrtoint ptr %sv_stats107 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sv_stats107, align 4
  %rpcbadfmt = getelementptr inbounds %struct.svc_stat, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %rpcbadfmt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rpcbadfmt, align 4
  %inc108 = add i32 %101, 1
  store i32 %inc108, ptr %rpcbadfmt, align 4
  %102 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %resv, align 4
  %104 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i290 = getelementptr i8, ptr %103, i32 %105
  %106 = ptrtoint ptr %add.ptr.i290 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %add.ptr.i290, align 4
  %107 = load i32, ptr %iov_len.i, align 4
  %add.i291 = add i32 %107, 4
  store i32 %add.i291, ptr %iov_len.i, align 4
  %108 = load ptr, ptr %resv, align 4
  %add.ptr.i293 = getelementptr i8, ptr %108, i32 %add.i291
  %109 = ptrtoint ptr %add.ptr.i293 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %add.ptr.i293, align 4
  %110 = load i32, ptr %iov_len.i, align 4
  %add.i294 = add i32 %110, 4
  store i32 %add.i294, ptr %iov_len.i, align 4
  %111 = load ptr, ptr %resv, align 4
  %add.ptr.i296 = getelementptr i8, ptr %111, i32 %add.i294
  %112 = ptrtoint ptr %add.ptr.i296 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 2, ptr %add.ptr.i296, align 4
  %113 = load i32, ptr %iov_len.i, align 4
  %add.i297 = add i32 %113, 4
  store i32 %add.i297, ptr %iov_len.i, align 4
  %114 = load ptr, ptr %resv, align 4
  %add.ptr.i299 = getelementptr i8, ptr %114, i32 %add.i297
  %115 = ptrtoint ptr %add.ptr.i299 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 2, ptr %add.ptr.i299, align 4
  br label %sendit.sink.split

do.body109:                                       ; preds = %if.end53.do.body109_crit_edge, %if.then20.do.body109_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %116 = load i32, ptr @rpc_debug, align 4
  %and110 = and i32 %116, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body109.do.end127_crit_edge, label %do.end121, !prof !209

do.body109.do.end127_crit_edge:                   ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end127

do.end121:                                        ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #20
  %rq_auth_stat123 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %117 = ptrtoint ptr %rq_auth_stat123 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rq_auth_stat123, align 4
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %118) #23
  br label %do.end127

do.end127:                                        ; preds = %do.end121, %do.body109.do.end127_crit_edge
  %sv_stats128 = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %119 = ptrtoint ptr %sv_stats128 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sv_stats128, align 4
  %rpcbadauth = getelementptr inbounds %struct.svc_stat, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %rpcbadauth to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rpcbadauth, align 4
  %inc129 = add i32 %122, 1
  store i32 %inc129, ptr %rpcbadauth, align 4
  %rq_res.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %123 = ptrtoint ptr %rq_res.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rq_res.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %iov_len.i301 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %iov_len.i301 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %sub.ptr.sub.i, ptr %iov_len.i301, align 4
  %126 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %resv, align 4
  %128 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i303 = getelementptr i8, ptr %127, i32 %129
  %130 = ptrtoint ptr %add.ptr.i303 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %add.ptr.i303, align 4
  %131 = load i32, ptr %iov_len.i, align 4
  %add.i304 = add i32 %131, 4
  store i32 %add.i304, ptr %iov_len.i, align 4
  %132 = load ptr, ptr %resv, align 4
  %add.ptr.i306 = getelementptr i8, ptr %132, i32 %add.i304
  %133 = ptrtoint ptr %add.ptr.i306 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %add.ptr.i306, align 4
  %134 = load i32, ptr %iov_len.i, align 4
  %add.i307 = add i32 %134, 4
  store i32 %add.i307, ptr %iov_len.i, align 4
  %rq_auth_stat131 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 38
  %135 = ptrtoint ptr %rq_auth_stat131 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rq_auth_stat131, align 4
  %137 = load ptr, ptr %resv, align 4
  %add.ptr.i309 = getelementptr i8, ptr %137, i32 %add.i307
  %138 = ptrtoint ptr %add.ptr.i309 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %136, ptr %add.ptr.i309, align 4
  br label %sendit.sink.split

do.body132:                                       ; preds = %if.end29.do.body132_crit_edge, %sw.epilog.do.body132_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %139 = load i32, ptr @rpc_debug, align 4
  %and133 = and i32 %139, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br i1 %tobool134.not, label %do.body132.do.end149_crit_edge, label %do.end144, !prof !209

do.body132.do.end149_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end149

do.end144:                                        ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #20
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %33) #23
  br label %do.end149

do.end149:                                        ; preds = %do.end144, %do.body132.do.end149_crit_edge
  %sv_stats150 = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %140 = ptrtoint ptr %sv_stats150 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sv_stats150, align 4
  %rpcbadfmt151 = getelementptr inbounds %struct.svc_stat, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %rpcbadfmt151 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rpcbadfmt151, align 4
  %inc152 = add i32 %143, 1
  store i32 %inc152, ptr %rpcbadfmt151, align 4
  %144 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %resv, align 4
  %146 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i312 = getelementptr i8, ptr %145, i32 %147
  %148 = ptrtoint ptr %add.ptr.i312 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %add.ptr.i312, align 4
  br label %sendit.sink.split

err_bad_vers:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  %149 = ptrtoint ptr %rq_vers to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rq_vers, align 4
  %151 = ptrtoint ptr %rq_prog to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rq_prog, align 8
  %pg_name155 = getelementptr inbounds %struct.svc_program, ptr %progp.0.lcssa333, i32 0, i32 6
  %153 = ptrtoint ptr %pg_name155 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pg_name155, align 4
  call void (ptr, ptr, ...) @svc_printk(ptr noundef %rqstp, ptr noundef nonnull @.str.60, i32 noundef %150, i32 noundef %152, ptr noundef %154)
  %sv_stats156 = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %155 = ptrtoint ptr %sv_stats156 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %sv_stats156, align 4
  %rpcbadfmt157 = getelementptr inbounds %struct.svc_stat, ptr %156, i32 0, i32 6
  %157 = ptrtoint ptr %rpcbadfmt157 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rpcbadfmt157, align 4
  %inc158 = add i32 %158, 1
  store i32 %inc158, ptr %rpcbadfmt157, align 4
  %159 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %resv, align 4
  %161 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i315 = getelementptr i8, ptr %160, i32 %162
  %163 = ptrtoint ptr %add.ptr.i315 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 2, ptr %add.ptr.i315, align 4
  %164 = load i32, ptr %iov_len.i, align 4
  %add.i316 = add i32 %164, 4
  store i32 %add.i316, ptr %iov_len.i, align 4
  %165 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %process, align 4
  %167 = load ptr, ptr %resv, align 4
  %add.ptr.i318 = getelementptr i8, ptr %167, i32 %add.i316
  %168 = ptrtoint ptr %add.ptr.i318 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %166, ptr %add.ptr.i318, align 4
  %169 = load i32, ptr %iov_len.i, align 4
  %add.i319 = add i32 %169, 4
  store i32 %add.i319, ptr %iov_len.i, align 4
  %170 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %3, align 4
  %172 = load ptr, ptr %resv, align 4
  %add.ptr.i321 = getelementptr i8, ptr %172, i32 %add.i319
  %173 = ptrtoint ptr %add.ptr.i321 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %171, ptr %add.ptr.i321, align 4
  br label %sendit.sink.split

err_bad_proc:                                     ; preds = %lor.lhs.false.err_bad_proc_crit_edge, %sw.epilog34.err_bad_proc_crit_edge, %if.end29.err_bad_proc_crit_edge
  %174 = ptrtoint ptr %rq_proc to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %rq_proc, align 8
  call void (ptr, ptr, ...) @svc_printk(ptr noundef %rqstp, ptr noundef nonnull @.str.61, i32 noundef %175)
  %sv_stats160 = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %176 = ptrtoint ptr %sv_stats160 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sv_stats160, align 4
  %rpcbadfmt161 = getelementptr inbounds %struct.svc_stat, ptr %177, i32 0, i32 6
  %178 = ptrtoint ptr %rpcbadfmt161 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rpcbadfmt161, align 4
  %inc162 = add i32 %179, 1
  store i32 %inc162, ptr %rpcbadfmt161, align 4
  %180 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %resv, align 4
  %182 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i324 = getelementptr i8, ptr %181, i32 %183
  %184 = ptrtoint ptr %add.ptr.i324 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 3, ptr %add.ptr.i324, align 4
  br label %sendit.sink.split

err_garbage:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @svc_printk(ptr noundef %rqstp, ptr noundef nonnull @.str.62)
  br label %err_bad

err_bad:                                          ; preds = %err_garbage, %if.then20.err_bad_crit_edge
  %rpc_stat.0 = phi i32 [ 4, %err_garbage ], [ 5, %if.then20.err_bad_crit_edge ]
  %sv_stats163 = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 1
  %185 = ptrtoint ptr %sv_stats163 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sv_stats163, align 4
  %rpcbadfmt164 = getelementptr inbounds %struct.svc_stat, ptr %186, i32 0, i32 6
  %187 = ptrtoint ptr %rpcbadfmt164 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rpcbadfmt164, align 4
  %inc165 = add i32 %188, 1
  store i32 %inc165, ptr %rpcbadfmt164, align 4
  %189 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %resv, align 4
  %191 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %iov_len.i, align 4
  %add.ptr.i327 = getelementptr i8, ptr %190, i32 %192
  %193 = ptrtoint ptr %add.ptr.i327 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %rpc_stat.0, ptr %add.ptr.i327, align 4
  br label %sendit.sink.split

cleanup.sink.split:                               ; preds = %do.body88.cleanup.sink.split_crit_edge, %dropit.cleanup.sink.split_crit_edge
  %.str.51.sink = phi ptr [ @.str.48, %dropit.cleanup.sink.split_crit_edge ], [ @.str.51, %do.body88.cleanup.sink.split_crit_edge ]
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.51.sink) #23
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body88.cleanup_crit_edge, %dropit.cleanup_crit_edge, %sendit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sendit.cleanup_crit_edge ], [ 0, %dropit.cleanup_crit_edge ], [ 0, %do.body88.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %process) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_send(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bc_svc_process(ptr noundef %serv, ptr noundef %req, ptr noundef %rqstp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %0 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !209

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %req) #23
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %rq_xid = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 5
  %1 = ptrtoint ptr %rq_xid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rq_xid, align 4
  %rq_xid8 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 27
  %3 = ptrtoint ptr %rq_xid8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rq_xid8, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %prot = getelementptr inbounds %struct.rpc_xprt, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prot, align 4
  %rq_prot = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 31
  %8 = ptrtoint ptr %rq_prot to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rq_prot, align 4
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %9 = ptrtoint ptr %rq_server to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %serv, ptr %rq_server, align 4
  %10 = load ptr, ptr %req, align 8
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xprt_net, align 8
  %rq_bc_net = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 48
  %13 = ptrtoint ptr %rq_bc_net to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %rq_bc_net, align 4
  %rq_addrlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 4
  %14 = ptrtoint ptr %rq_addrlen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %rq_addrlen, align 4
  %rq_addr = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %15 = load ptr, ptr %req, align 8
  %addr = getelementptr inbounds %struct.rpc_xprt, ptr %15, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %rq_addr, ptr %addr, i32 128)
  %rq_rcv_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %rq_arg, ptr %rq_rcv_buf, i32 44)
  %rq_snd_buf = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %rq_res, ptr %rq_snd_buf, i32 44)
  %len = getelementptr inbounds %struct.rpc_rqst, ptr %req, i32 0, i32 20, i32 8
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 8
  %len15 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %21 = ptrtoint ptr %len15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %len15, align 8
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %23)
  %cmp.not = icmp ugt i32 %20, %23
  br i1 %cmp.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %20, ptr %iov_len, align 4
  %page_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %25 = ptrtoint ptr %page_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %page_len, align 4
  br label %if.end58

if.else:                                          ; preds = %do.end7
  %page_len36 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %26 = ptrtoint ptr %page_len36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_len36, align 4
  %add = add i32 %27, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add)
  %cmp37.not = icmp ugt i32 %20, %add
  br i1 %cmp37.not, label %if.else47, label %if.then38

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %sub = sub i32 %20, %23
  %28 = ptrtoint ptr %page_len36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %page_len36, align 4
  br label %if.end58

if.else47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %len15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %len15, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else47, %if.then38, %if.then21
  %iov_len59 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %iov_len59 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %iov_len59, align 4
  %31 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rq_arg, align 4
  %33 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iov_len, align 4
  %incdec.ptr.i193 = getelementptr i32, ptr %32, i32 2
  store ptr %incdec.ptr.i193, ptr %rq_arg, align 4
  %sub.i195 = add i32 %34, -8
  store i32 %sub.i195, ptr %iov_len, align 4
  %call62 = tail call fastcc i32 @svc_process_common(ptr noundef %rqstp, ptr noundef %rq_arg, ptr noundef %rq_res)
  %35 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %req, align 8
  %bc_slot_count = getelementptr inbounds %struct.rpc_xprt, ptr %36, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bc_slot_count, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %bc_slot_count, i32 1, i32 3, i32 1) #18
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bc_slot_count, ptr %bc_slot_count, i32 1, ptr elementtype(i32) %bc_slot_count) #18, !srcloc !232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool64.not = icmp eq i32 %call62, 0
  br i1 %tobool64.not, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @xprt_free_bc_request(ptr noundef %req) #18
  br label %do.body124

if.end66:                                         ; preds = %if.end58
  %38 = call ptr @memcpy(ptr %rq_snd_buf, ptr %rq_res, i32 44)
  %call69 = tail call ptr @rpc_run_bc_task(ptr noundef %req) #18
  %cmp.i = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then71, label %if.end73

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %call69 to i32
  br label %do.body124

if.end73:                                         ; preds = %if.end66
  %call.i.i192 = tail call zeroext i1 @__kasan_check_read(ptr noundef %call69, i32 noundef 4) #18
  %40 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %call69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp75.not = icmp eq i32 %41, 1
  br i1 %cmp75.not, label %if.end73.if.end116_crit_edge, label %land.rhs

if.end73.if.end116_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end116

land.rhs:                                         ; preds = %if.end73
  %.b191 = load i1, ptr @bc_svc_process.__already_done, align 1
  br i1 %.b191, label %land.rhs.if.end116_crit_edge, label %if.then90, !prof !209

land.rhs.if.end116_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end116

if.then90:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @bc_svc_process.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1538, i32 noundef 9, ptr noundef null) #18
  br label %if.end116

if.end116:                                        ; preds = %if.then90, %land.rhs.if.end116_crit_edge, %if.end73.if.end116_crit_edge
  %tk_status = getelementptr inbounds %struct.rpc_task, ptr %call69, i32 0, i32 1
  %42 = ptrtoint ptr %tk_status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tk_status, align 4
  tail call void @rpc_put_task(ptr noundef %call69) #18
  br label %do.body124

do.body124:                                       ; preds = %if.end116, %if.then71, %if.then65
  %error.0 = phi i32 [ %39, %if.then71 ], [ %43, %if.end116 ], [ -22, %if.then65 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %44 = load i32, ptr @rpc_debug, align 4
  %and125 = and i32 %44, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %do.body124.do.end141_crit_edge, label %do.end136, !prof !209

do.body124.do.end141_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end141

do.end136:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #20
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %error.0) #23
  br label %do.end141

do.end141:                                        ; preds = %do.end136, %do.body124.do.end141_crit_edge
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_free_bc_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_bc_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @svc_max_payload(ptr nocapture noundef readonly %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %xcl_max_payload = getelementptr inbounds %struct.svc_xprt_class, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %xcl_max_payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xcl_max_payload, align 4
  %rq_server = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 7
  %6 = ptrtoint ptr %rq_server to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq_server, align 4
  %sv_max_payload = getelementptr inbounds %struct.svc_serv, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %sv_max_payload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sv_max_payload, align 4
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %5)
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @svc_proc_name(ptr noundef readonly %rqstp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rqstp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true:                                    ; preds = %entry
  %rq_procinfo = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 9
  %0 = ptrtoint ptr %rq_procinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_procinfo, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %pc_name = getelementptr inbounds %struct.svc_procedure, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc_name, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.then ], [ @.str.12, %land.lhs.true.return_crit_edge ], [ @.str.12, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_encode_result_payload(ptr noundef %rqstp, i32 noundef %offset, i32 noundef %length) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %xpt_ops = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xpt_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_ops, align 4
  %xpo_result_payload = getelementptr inbounds %struct.svc_xprt_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %xpo_result_payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpo_result_payload, align 4
  %call = tail call i32 %5(ptr noundef %rqstp, i32 noundef %offset, i32 noundef %length) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_fill_write_vector(ptr nocapture noundef writeonly %rqstp, ptr nocapture noundef readonly %payload) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %pages1 = getelementptr inbounds %struct.xdr_buf, ptr %payload, i32 0, i32 3
  %0 = ptrtoint ptr %pages1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages1, align 4
  %rq_vec = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25
  %len = getelementptr inbounds %struct.xdr_buf, ptr %payload, i32 0, i32 8
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %iov_len = getelementptr inbounds %struct.kvec, ptr %payload, i32 0, i32 1
  %4 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %payload, align 4
  %8 = ptrtoint ptr %rq_vec to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %rq_vec, align 4
  %9 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iov_len, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %3, i32 %10)
  %iov_len6 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 25, i32 0, i32 1
  %12 = ptrtoint ptr %iov_len6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %iov_len6, align 4
  %sub = sub i32 %3, %11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %total.0 = phi i32 [ %sub, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total.0)
  %tobool9.not94 = icmp eq i32 %total.0, 0
  br i1 %tobool9.not94, label %if.end.if.end55_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %pages.097 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %1, %if.end.while.body_crit_edge ]
  %total.196 = phi i32 [ %sub22, %while.body.while.body_crit_edge ], [ %total.0, %if.end.while.body_crit_edge ]
  %i.195 = phi i32 [ %inc23, %while.body.while.body_crit_edge ], [ %i.0, %if.end.while.body_crit_edge ]
  %13 = ptrtoint ptr %pages.097 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages.097, align 4
  %call = tail call ptr @page_address(ptr noundef %14) #18
  %arrayidx10 = getelementptr %struct.kvec, ptr %rq_vec, i32 %i.195
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %arrayidx10, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %total.196, i32 4096)
  %iov_len19 = getelementptr %struct.kvec, ptr %rq_vec, i32 %i.195, i32 1
  %17 = ptrtoint ptr %iov_len19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %iov_len19, align 4
  %sub22 = sub i32 %total.196, %16
  %inc23 = add i32 %i.195, 1
  %incdec.ptr = getelementptr ptr, ptr %pages.097, i32 1
  %tobool9.not = icmp eq i32 %sub22, 0
  br i1 %tobool9.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %inc23)
  %cmp24 = icmp ugt i32 %inc23, 259
  br i1 %cmp24, label %land.rhs, label %while.end.if.end55_crit_edge

while.end.if.end55_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

land.rhs:                                         ; preds = %while.end
  %.b93 = load i1, ptr @svc_fill_write_vector.__already_done, align 1
  br i1 %.b93, label %land.rhs.if.end55_crit_edge, label %if.then32, !prof !209

land.rhs.if.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end55

if.then32:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @svc_fill_write_vector.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1629, i32 noundef 9, ptr noundef null) #18
  br label %if.end55

if.end55:                                         ; preds = %if.then32, %land.rhs.if.end55_crit_edge, %while.end.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %i.1.lcssa100 = phi i32 [ %inc23, %while.end.if.end55_crit_edge ], [ %inc23, %if.then32 ], [ %inc23, %land.rhs.if.end55_crit_edge ], [ %i.0, %if.end.if.end55_crit_edge ]
  ret i32 %i.1.lcssa100
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svc_fill_symlink_pathname(ptr nocapture readnone %rqstp, ptr nocapture noundef readonly %first, ptr nocapture noundef readonly %p, i32 noundef %total) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %total, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #22
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %iov_len = getelementptr inbounds %struct.kvec, ptr %first, i32 0, i32 1
  %0 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iov_len, align 4
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %total)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %first, align 4
  %5 = call ptr @memcpy(ptr %call9.i, ptr %4, i32 %2)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %2
  %sub = sub i32 %total, %2
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %remaining.0 = phi i32 [ %sub, %if.then3 ], [ %total, %if.end.if.end4_crit_edge ]
  %dst.0 = phi ptr [ %add.ptr, %if.then3 ], [ %call9.i, %if.end.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0)
  %tobool5.not = icmp eq i32 %remaining.0, 0
  br i1 %tobool5.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  %6 = tail call i32 @llvm.umin.i32(i32 %remaining.0, i32 4096)
  %7 = call ptr @memcpy(ptr %dst.0, ptr %p, i32 %6)
  %add.ptr13 = getelementptr i8, ptr %dst.0, i32 %6
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %if.end4.if.end14_crit_edge
  %dst.1 = phi ptr [ %add.ptr13, %if.then6 ], [ %dst.0, %if.end4.if.end14_crit_edge ]
  %8 = ptrtoint ptr %dst.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %dst.1, align 1
  %call15 = tail call i32 @strlen(ptr noundef nonnull %call9.i) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %total)
  %cmp16.not = icmp eq i32 %call15, %total
  br i1 %cmp16.not, label %if.end14.cleanup_crit_edge, label %if.then17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %call9.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then17 ], [ %call9.i, %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -526 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_pool_mode(ptr nocapture noundef readonly %val, ptr nocapture noundef readonly %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @svc_pool_map_mutex, i32 noundef 0) #18
  %3 = load i32, ptr @svc_pool_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef %val, ptr noundef nonnull dereferenceable(5) @.str.13, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.out.sink.split_crit_edge, label %if.else

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strncmp(ptr noundef %val, ptr noundef nonnull dereferenceable(7) @.str.14, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.out.sink.split_crit_edge, label %if.else6

if.else.out.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

if.else6:                                         ; preds = %if.else
  %call7 = tail call i32 @strncmp(ptr noundef %val, ptr noundef nonnull dereferenceable(7) @.str.15, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else6.out.sink.split_crit_edge, label %if.else10

if.else6.out.sink.split_crit_edge:                ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

if.else10:                                        ; preds = %if.else6
  %call11 = tail call i32 @strncmp(ptr noundef %val, ptr noundef nonnull dereferenceable(8) @.str.16, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else10.out.sink.split_crit_edge, label %if.else10.out_crit_edge

if.else10.out_crit_edge:                          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.else10.out.sink.split_crit_edge:               ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.else10.out.sink.split_crit_edge, %if.else6.out.sink.split_crit_edge, %if.else.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %.sink = phi i32 [ -1, %if.end.out.sink.split_crit_edge ], [ 0, %if.else.out.sink.split_crit_edge ], [ 1, %if.else6.out.sink.split_crit_edge ], [ 2, %if.else10.out.sink.split_crit_edge ]
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %2, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else10.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -16, %entry.out_crit_edge ], [ -22, %if.else10.out_crit_edge ], [ 0, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef nonnull @svc_pool_map_mutex) #18
  ret i32 %err.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_pool_mode(ptr noundef %buf, ptr nocapture noundef readonly %kp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %4, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef 20) #18
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef 20) #18
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call4 = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef 20) #18
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call6 = tail call i32 @strlcpy(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef 20) #18
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call7, %sw.default ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svc_register(ptr noundef %program, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %protocol, i16 noundef zeroext %port, i32 noundef %error) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_register, i32 0, i32 1), ptr blockaddress(@trace_svc_register, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !233
  %call42 = tail call i32 @__traceiter_svc_register(ptr noundef null, ptr noundef %program, i32 noundef %version, i32 noundef %family, i16 noundef zeroext %protocol, i16 noundef zeroext %port, i32 noundef %error) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !234
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_register, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_register, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svc_register.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_svc_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 2258, ptr noundef nonnull @.str.43) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !230
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
declare dso_local i32 @rpcb_v4_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcb_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_noregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svc_unregister(ptr noundef %program, i32 noundef %version, i32 noundef %error) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_unregister, i32 0, i32 1), ptr blockaddress(@trace_svc_unregister, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !235
  %call42 = tail call i32 @__traceiter_svc_unregister(ptr noundef null, ptr noundef %program, i32 noundef %version, i32 noundef %error) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !236
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_unregister, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_unregister, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svc_unregister.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_svc_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 2285, ptr noundef nonnull @.str.43) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !230
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
declare dso_local i32 @__traceiter_svc_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_print_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_authenticate(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svc_authenticate(ptr noundef %rqst, i32 noundef %auth_res) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_authenticate, i32 0, i32 1), ptr blockaddress(@trace_svc_authenticate, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !237
  %call42 = tail call i32 @__traceiter_svc_authenticate(ptr noundef null, ptr noundef %rqst, i32 noundef %auth_res) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !238
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_authenticate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_authenticate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svc_authenticate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_svc_authenticate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 1648, ptr noundef nonnull @.str.43) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !230
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svc_process(ptr noundef %rqst, ptr noundef %name) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_process, i32 0, i32 1), ptr blockaddress(@trace_svc_process, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !219

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !239
  %call42 = tail call i32 @__traceiter_svc_process(ptr noundef null, ptr noundef %rqst, ptr noundef %name) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !240
  %13 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !197) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_process, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svc_process, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svc_process.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_svc_process.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.42, i32 noundef 1680, ptr noundef nonnull @.str.43) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !230
  %31 = tail call i32 @llvm.read_register.i32(metadata !197) #18
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
declare dso_local i32 @svc_authorise(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_close_xprt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_authenticate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svc_process(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind readonly }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !155, !156, !158, !160, !161, !163, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !177, !179, !180, !181, !183, !184, !185, !187, !189, !191, !193, !194, !196}
!llvm.named.register.sp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__param_pool_mode, !1, !"__param_pool_mode", i1 false, i1 false}
!1 = !{!"../net/sunrpc/svc.c", i32 124, i32 1}
!2 = !{ptr @__ksymtab_svc_rpcb_setup, !3, !"__ksymtab_svc_rpcb_setup", i1 false, i1 false}
!3 = !{!"../net/sunrpc/svc.c", i32 397, i32 1}
!4 = !{ptr @__ksymtab_svc_rpcb_cleanup, !5, !"__ksymtab_svc_rpcb_cleanup", i1 false, i1 false}
!5 = !{!"../net/sunrpc/svc.c", i32 404, i32 1}
!6 = !{ptr @__ksymtab_svc_bind, !7, !"__ksymtab_svc_bind", i1 false, i1 false}
!7 = !{!"../net/sunrpc/svc.c", i32 429, i32 1}
!8 = !{ptr @__ksymtab_svc_create, !9, !"__ksymtab_svc_create", i1 false, i1 false}
!9 = !{!"../net/sunrpc/svc.c", i32 520, i32 1}
!10 = !{ptr @__ksymtab_svc_create_pooled, !11, !"__ksymtab_svc_create_pooled", i1 false, i1 false}
!11 = !{!"../net/sunrpc/svc.c", i32 537, i32 1}
!12 = !{ptr @__ksymtab_svc_shutdown_net, !13, !"__ksymtab_svc_shutdown_net", i1 false, i1 false}
!13 = !{!"../net/sunrpc/svc.c", i32 546, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sunrpc/svc.c", i32 557, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @svc_destroy._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @svc_destroy._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_svc_destroy, !21, !"__ksymtab_svc_destroy", i1 false, i1 false}
!21 = !{!"../net/sunrpc/svc.c", i32 574, i32 1}
!22 = !{ptr @svc_rqst_alloc.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/sunrpc/svc.c", i32 629, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__ksymtab_svc_rqst_alloc, !26, !"__ksymtab_svc_rqst_alloc", i1 false, i1 false}
!26 = !{!"../net/sunrpc/svc.c", i32 653, i32 1}
!27 = !{ptr @__ksymtab_svc_set_num_threads, !28, !"__ksymtab_svc_set_num_threads", i1 false, i1 false}
!28 = !{!"../net/sunrpc/svc.c", i32 811, i32 1}
!29 = !{ptr @__ksymtab_svc_rqst_replace_page, !30, !"__ksymtab_svc_rqst_replace_page", i1 false, i1 false}
!30 = !{!"../net/sunrpc/svc.c", i32 832, i32 1}
!31 = !{ptr @__ksymtab_svc_rqst_free, !32, !"__ksymtab_svc_rqst_free", i1 false, i1 false}
!32 = !{!"../net/sunrpc/svc.c", i32 849, i32 1}
!33 = !{ptr @__ksymtab_svc_exit_thread, !34, !"__ksymtab_svc_exit_thread", i1 false, i1 false}
!34 = !{!"../net/sunrpc/svc.c", i32 872, i32 1}
!35 = !{ptr @__ksymtab_svc_rpcbind_set_version, !36, !"__ksymtab_svc_rpcbind_set_version", i1 false, i1 false}
!36 = !{!"../net/sunrpc/svc.c", i32 1010, i32 1}
!37 = !{ptr @__ksymtab_svc_generic_rpcbind_set, !38, !"__ksymtab_svc_generic_rpcbind_set", i1 false, i1 false}
!38 = !{!"../net/sunrpc/svc.c", i32 1042, i32 1}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../net/sunrpc/svc.c", i32 1062, i32 2}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sunrpc/svc.c", i32 1072, i32 5}
!43 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @svc_register._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @svc_register._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_svc_generic_init_request, !47, !"__ksymtab_svc_generic_init_request", i1 false, i1 false}
!47 = !{!"../net/sunrpc/svc.c", i32 1213, i32 1}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sunrpc/svc.c", i32 1454, i32 21}
!50 = !{ptr @__ksymtab_svc_process, !51, !"__ksymtab_svc_process", i1 false, i1 false}
!51 = !{!"../net/sunrpc/svc.c", i32 1467, i32 1}
!52 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sunrpc/svc.c", i32 1484, i32 2}
!54 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bc_svc_process._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bc_svc_process._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../net/sunrpc/svc.c", i32 1538, i32 2}
!59 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/sunrpc/svc.c", i32 1543, i32 2}
!61 = !{ptr @bc_svc_process._entry.9, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @bc_svc_process._entry_ptr.11, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @__ksymtab_bc_svc_process, !64, !"__ksymtab_bc_svc_process", i1 false, i1 false}
!64 = !{!"../net/sunrpc/svc.c", i32 1546, i32 1}
!65 = !{ptr @__ksymtab_svc_max_payload, !66, !"__ksymtab_svc_max_payload", i1 false, i1 false}
!66 = !{!"../net/sunrpc/svc.c", i32 1560, i32 1}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/sunrpc/svc.c", i32 1573, i32 9}
!69 = !{ptr @__ksymtab_svc_encode_result_payload, !70, !"__ksymtab_svc_encode_result_payload", i1 false, i1 false}
!70 = !{!"../net/sunrpc/svc.c", i32 1592, i32 1}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../net/sunrpc/svc.c", i32 1629, i32 2}
!73 = !{ptr @__ksymtab_svc_fill_write_vector, !74, !"__ksymtab_svc_fill_write_vector", i1 false, i1 false}
!74 = !{!"../net/sunrpc/svc.c", i32 1632, i32 1}
!75 = !{ptr @__ksymtab_svc_fill_symlink_pathname, !76, !"__ksymtab_svc_fill_symlink_pathname", i1 false, i1 false}
!76 = !{!"../net/sunrpc/svc.c", i32 1682, i32 1}
!77 = !{ptr @__param_str_pool_mode, !1, !"__param_str_pool_mode", i1 false, i1 false}
!78 = !{ptr @__param_ops_pool_mode, !1, !"__param_ops_pool_mode", i1 false, i1 false}
!79 = !{ptr @.str.13, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/sunrpc/svc.c", i32 88, i32 20}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sunrpc/svc.c", i32 90, i32 25}
!83 = !{ptr @.str.15, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/sunrpc/svc.c", i32 92, i32 25}
!85 = !{ptr @.str.16, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/sunrpc/svc.c", i32 94, i32 25}
!87 = !{ptr @.str.17, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/sunrpc/svc.c", i32 72, i32 8}
!89 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @svc_pool_map_mutex, !88, !"svc_pool_map_mutex", i1 false, i1 false}
!91 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/sunrpc/svc.c", i32 112, i32 23}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/sunrpc/svc.c", i32 114, i32 23}
!95 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/sunrpc/svc.c", i32 116, i32 23}
!97 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/sunrpc/svc.c", i32 118, i32 23}
!99 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/sunrpc/svc.c", i32 120, i32 23}
!101 = !{ptr @svc_pool_map, !102, !"svc_pool_map", i1 false, i1 false}
!102 = !{!"../net/sunrpc/svc.c", i32 68, i32 28}
!103 = !{ptr @__svc_create.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../net/sunrpc/svc.c", i32 485, i32 2}
!105 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__svc_create.__key.25, !107, !"__key", i1 false, i1 false}
!107 = !{!"../net/sunrpc/svc.c", i32 486, i32 2}
!108 = !{ptr @.str.26, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/sunrpc/svc.c", i32 502, i32 3}
!111 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @__svc_create._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @__svc_create._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @__svc_create.__key.29, !115, !"__key", i1 false, i1 false}
!115 = !{!"../net/sunrpc/svc.c", i32 508, i32 3}
!116 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @__svc_init_bc.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../net/sunrpc/svc.c", i32 436, i32 2}
!119 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @__svc_init_bc.__key.32, !121, !"__key", i1 false, i1 false}
!121 = !{!"../net/sunrpc/svc.c", i32 437, i32 2}
!122 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../net/sunrpc/svc.c", i32 256, i32 3}
!125 = distinct !{null, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../net/sunrpc/svc.c", i32 593, i32 2}
!129 = !{ptr @.str.35, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/sunrpc/svc.c", i32 750, i32 18}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../net/sunrpc/svc.c", i32 341, i32 2}
!133 = !{ptr @.str.36, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!135 = !{ptr @.str.37, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/mm.h", i32 717, i32 2}
!137 = !{ptr @.str.38, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/sunrpc/svc.c", i32 899, i32 11}
!139 = !{ptr @.str.39, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/sunrpc/svc.c", i32 902, i32 11}
!141 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/sunrpc/svc.c", i32 947, i32 11}
!143 = !{ptr @.str.41, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/sunrpc/svc.c", i32 950, i32 11}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../include/trace/events/sunrpc.h", i32 2258, i32 1}
!147 = !{ptr @.str.42, !146, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!149 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!152 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../include/trace/events/sunrpc.h", i32 2259, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = !{ptr @.str.45, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/sunrpc/svc.c", i32 1095, i32 56}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../include/trace/events/sunrpc.h", i32 2261, i32 1}
!160 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!161 = !{ptr @.str.46, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/sunrpc/svc.c", i32 1154, i32 2}
!163 = !{ptr @.str.47, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @svc_printk._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @svc_printk._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.48, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/sunrpc/svc.c", i32 1351, i32 2}
!168 = !{ptr @.str.49, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @svc_process_common._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @svc_process_common._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.51, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/sunrpc/svc.c", i32 1359, i32 2}
!173 = !{ptr @svc_process_common._entry.50, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @svc_process_common._entry_ptr.52, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/sunrpc/svc.c", i32 1363, i32 20}
!177 = !{ptr @.str.55, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../net/sunrpc/svc.c", i32 1376, i32 2}
!179 = !{ptr @svc_process_common._entry.54, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @svc_process_common._entry_ptr.56, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.58, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/sunrpc/svc.c", i32 1387, i32 2}
!183 = !{ptr @svc_process_common._entry.57, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @svc_process_common._entry_ptr.59, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.60, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/sunrpc/svc.c", i32 1393, i32 20}
!187 = !{ptr @.str.61, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/sunrpc/svc.c", i32 1403, i32 20}
!189 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/sunrpc/svc.c", i32 1410, i32 20}
!191 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!192 = !{!"../include/trace/events/sunrpc.h", i32 1628, i32 1}
!193 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!194 = distinct !{null, !195, !"__already_done", i1 false, i1 false}
!195 = !{!"../include/trace/events/sunrpc.h", i32 1650, i32 1}
!196 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!197 = !{!"sp"}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{i8 0, i8 2}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2159755455, i64 2159755936, i64 2159755492, i64 2159755548, i64 2159755582, i64 2159755606, i64 2159755647, i64 2159755668, i64 2159755696, i64 2159755730}
!211 = !{i64 2159780423, i64 2159780904, i64 2159780460, i64 2159780516, i64 2159780550, i64 2159780574, i64 2159780615, i64 2159780636, i64 2159780664, i64 2159780698}
!212 = !{i64 2159782034, i64 2159782515, i64 2159782071, i64 2159782127, i64 2159782161, i64 2159782185, i64 2159782226, i64 2159782247, i64 2159782275, i64 2159782309}
!213 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!214 = !{i64 2151892654, i64 2151893138, i64 2151892691, i64 2151892747, i64 2151892781, i64 2151892805, i64 2151892846, i64 2151892867, i64 2151892895, i64 2151892929}
!215 = !{i64 2153191331, i64 2153191814, i64 2153191368, i64 2153191424, i64 2153191458, i64 2153191482, i64 2153191523, i64 2153191544, i64 2153191572, i64 2153191606}
!216 = !{i64 2148459509}
!217 = !{i64 2148374218, i64 2148374250, i64 2148374279, i64 2148374313, i64 2148374344, i64 2148374367}
!218 = !{i64 2148459738}
!219 = !{i64 2148820783, i64 2148820788, i64 2148820801, i64 2148820845, i64 2148820879, i64 2148820900}
!220 = !{i64 2148372563, i64 2148372595, i64 2148372624, i64 2148372658, i64 2148372689, i64 2148372712}
!221 = !{i64 2149249226}
!222 = !{i64 2153215304, i64 2153215788, i64 2153215341, i64 2153215397, i64 2153215431, i64 2153215455, i64 2153215496, i64 2153215517, i64 2153215545, i64 2153215579}
!223 = !{i64 2148371033, i64 2148371059, i64 2148371088, i64 2148371122, i64 2148371153, i64 2148371176}
!224 = !{i64 2148460588}
!225 = !{i64 2148375028, i64 2148375060, i64 2148375089, i64 2148375123, i64 2148375154, i64 2148375177}
!226 = !{i64 2149661074}
!227 = !{i64 2159705149}
!228 = !{i64 2159705446}
!229 = !{i64 2149232393}
!230 = !{i64 2149233429}
!231 = !{!"auto-init"}
!232 = !{i64 2148373498, i64 2148373524, i64 2148373553, i64 2148373587, i64 2148373618, i64 2148373641}
!233 = !{i64 2159686009}
!234 = !{i64 2159686302}
!235 = !{i64 2159722378}
!236 = !{i64 2159722615}
!237 = !{i64 2158985238}
!238 = !{i64 2158985461}
!239 = !{i64 2159005753}
!240 = !{i64 2159005958}
