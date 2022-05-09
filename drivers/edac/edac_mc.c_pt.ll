; ModuleID = '/llk/IR_all_yes/drivers/edac/edac_mc.c_pt.bc'
source_filename = "../drivers/edac/edac_mc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+edac_op_state\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_op_state\09\09\09\09"
module asm "\09.long\09__crc_edac_op_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_op_state:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_op_state\22\09\09\09\09\09"
module asm "__kstrtabns_edac_op_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mem_types\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mem_types\09\09\09\09"
module asm "\09.long\09__crc_edac_mem_types\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mem_types:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mem_types\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mem_types:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mc_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_alloc\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mc_free\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_free\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_free\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_has_mcs\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_has_mcs\09\09\09\09"
module asm "\09.long\09__crc_edac_has_mcs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_has_mcs:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_has_mcs\22\09\09\09\09\09"
module asm "__kstrtabns_edac_has_mcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+find_mci_by_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_find_mci_by_dev\09\09\09\09"
module asm "\09.long\09__crc_find_mci_by_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_mci_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22find_mci_by_dev\22\09\09\09\09\09"
module asm "__kstrtabns_find_mci_by_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+edac_mc_find\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_find\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_find\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_get_owner\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_get_owner\09\09\09\09"
module asm "\09.long\09__crc_edac_get_owner\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_get_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_get_owner\22\09\09\09\09\09"
module asm "__kstrtabns_edac_get_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mc_add_mc_with_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_add_mc_with_groups\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_add_mc_with_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_add_mc_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_add_mc_with_groups\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_add_mc_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mc_del_mc\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_del_mc\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_del_mc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_del_mc:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_del_mc\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_del_mc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mc_find_csrow_by_page\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_find_csrow_by_page\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_find_csrow_by_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_find_csrow_by_page:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_find_csrow_by_page\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_find_csrow_by_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_layer_name\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_layer_name\09\09\09\09"
module asm "\09.long\09__crc_edac_layer_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_layer_name:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_layer_name\22\09\09\09\09\09"
module asm "__kstrtabns_edac_layer_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_raw_mc_handle_error\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_raw_mc_handle_error\09\09\09\09"
module asm "\09.long\09__crc_edac_raw_mc_handle_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_raw_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_raw_mc_handle_error\22\09\09\09\09\09"
module asm "__kstrtabns_edac_raw_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mc_handle_error\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mc_handle_error\09\09\09\09"
module asm "\09.long\09__crc_edac_mc_handle_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mc_handle_error\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mc_handle_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.edac_mc_layer = type { i32, i32, i8 }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@edac_op_state = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__kstrtab_edac_op_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_op_state = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_op_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_op_state to i32), ptr @__kstrtab_edac_op_state, ptr @__kstrtabns_edac_op_state }, section "___ksymtab_gpl+edac_op_state", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d \00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Empty\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FPM\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EDO\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BEDO\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unbuffered-SDR\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Registered-SDR\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unbuffered-DDR\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Registered-DDR\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RMBS\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unbuffered-DDR2\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FullyBuffered-DDR2\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Registered-DDR2\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XDR\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unbuffered-DDR3\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Registered-DDR3\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Load-Reduced-DDR3-RAM\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Low-Power-DDR3-RAM\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unbuffered-DDR4\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Registered-DDR4\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Load-Reduced-DDR4-RAM\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Low-Power-DDR4-RAM\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unbuffered-DDR5\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Registered-DDR5\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Load-Reduced-DDR5-RAM\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Non-volatile-RAM\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Wide-IO-2\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"High-bandwidth-memory-Gen2\00", [37 x i8] zeroinitializer }, align 32
@edac_mem_types = dso_local constant { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [44 x i8] zeroinitializer }, align 32
@__kstrtab_edac_mem_types = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mem_types = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mem_types = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mem_types to i32), ptr @__kstrtab_edac_mem_types, ptr @__kstrtabns_edac_mem_types }, section "___ksymtab_gpl+edac_mem_types", align 4
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/edac/edac_mc.c\00", [41 x i8] zeroinitializer }, align 32
@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@edac_mc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.30, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\017EDAC DEBUG: %s: allocating %u bytes for mci data (%d %s, %d csrows/channels)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edac_mc_alloc\00", [18 x i8] zeroinitializer }, align 32
@edac_mc_alloc._entry_ptr = internal global ptr @edac_mc_alloc._entry, section ".printk_index", align 4
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ranks\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dimms\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_edac_mc_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_alloc to i32), ptr @__kstrtab_edac_mc_alloc, ptr @__kstrtabns_edac_mc_alloc }, section "___ksymtab_gpl+edac_mc_alloc", align 4
@edac_mc_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.30, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017EDAC DEBUG: %s: \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edac_mc_free\00", [19 x i8] zeroinitializer }, align 32
@edac_mc_free._entry_ptr = internal global ptr @edac_mc_free._entry, section ".printk_index", align 4
@__kstrtab_edac_mc_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_free = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_free to i32), ptr @__kstrtab_edac_mc_free, ptr @__kstrtabns_edac_mc_free }, section "___ksymtab_gpl+edac_mc_free", align 4
@mem_ctls_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mem_ctls_mutex, i64 52), ptr getelementptr (i8, ptr @mem_ctls_mutex, i64 52) }, ptr @mem_ctls_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mc_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mc_devices, ptr @mc_devices }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_edac_has_mcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_has_mcs = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_has_mcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_has_mcs to i32), ptr @__kstrtab_edac_has_mcs, ptr @__kstrtabns_edac_has_mcs }, section "___ksymtab_gpl+edac_has_mcs", align 4
@__kstrtab_find_mci_by_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_mci_by_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_find_mci_by_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_mci_by_dev to i32), ptr @__kstrtab_find_mci_by_dev, ptr @__kstrtabns_find_mci_by_dev }, section "___ksymtab_gpl+find_mci_by_dev", align 4
@__kstrtab_edac_mc_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_find = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_find to i32), ptr @__kstrtab_edac_mc_find, ptr @__kstrtabns_edac_mc_find }, section "___ksymtab+edac_mc_find", align 4
@edac_mc_owner = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_edac_get_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_get_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_get_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_get_owner to i32), ptr @__kstrtab_edac_get_owner, ptr @__kstrtabns_edac_get_owner }, section "___ksymtab_gpl+edac_get_owner", align 4
@edac_mc_add_mc_with_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.37, ptr @.str.30, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"edac_mc_add_mc_with_groups\00", [37 x i8] zeroinitializer }, align 32
@edac_mc_add_mc_with_groups._entry_ptr = internal global ptr @edac_mc_add_mc_with_groups._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@edac_mc_add_mc_with_groups._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.30, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014EDAC MC%d: failed to create sysfs device\0A\00", [52 x i8] zeroinitializer }, align 32
@edac_mc_add_mc_with_groups._entry_ptr.40 = internal global ptr @edac_mc_add_mc_with_groups._entry.38, section ".printk_index", align 4
@edac_mc_add_mc_with_groups.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&mci->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@edac_mc_add_mc_with_groups.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&mci->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@edac_mc_add_mc_with_groups._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.30, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016EDAC MC%d: Giving out device to module %s controller %s: DEV %s (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@edac_mc_add_mc_with_groups._entry_ptr.46 = internal global ptr @edac_mc_add_mc_with_groups._entry.44, section ".printk_index", align 4
@__kstrtab_edac_mc_add_mc_with_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_add_mc_with_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_add_mc_with_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups to i32), ptr @__kstrtab_edac_mc_add_mc_with_groups, ptr @__kstrtabns_edac_mc_add_mc_with_groups }, section "___ksymtab_gpl+edac_mc_add_mc_with_groups", align 4
@edac_mc_del_mc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.47, ptr @.str.30, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"edac_mc_del_mc\00", [17 x i8] zeroinitializer }, align 32
@edac_mc_del_mc._entry_ptr = internal global ptr @edac_mc_del_mc._entry, section ".printk_index", align 4
@edac_mc_del_mc._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.30, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016EDAC MC: Removed device %d for %s %s: DEV %s\0A\00", [48 x i8] zeroinitializer }, align 32
@edac_mc_del_mc._entry_ptr.50 = internal global ptr @edac_mc_del_mc._entry.48, section ".printk_index", align 4
@__kstrtab_edac_mc_del_mc = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_del_mc = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_del_mc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_del_mc to i32), ptr @__kstrtab_edac_mc_del_mc, ptr @__kstrtabns_edac_mc_del_mc }, section "___ksymtab_gpl+edac_mc_del_mc", align 4
@edac_mc_find_csrow_by_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.30, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017EDAC DEBUG: %s: MC%d: 0x%lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"edac_mc_find_csrow_by_page\00", [37 x i8] zeroinitializer }, align 32
@edac_mc_find_csrow_by_page._entry_ptr = internal global ptr @edac_mc_find_csrow_by_page._entry, section ".printk_index", align 4
@edac_mc_find_csrow_by_page._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.30, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017EDAC DEBUG: %s: MC%d: first(0x%lx) page(0x%lx) last(0x%lx) mask(0x%lx)\0A\00", [54 x i8] zeroinitializer }, align 32
@edac_mc_find_csrow_by_page._entry_ptr.55 = internal global ptr @edac_mc_find_csrow_by_page._entry.53, section ".printk_index", align 4
@edac_mc_find_csrow_by_page._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.30, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013EDAC MC%d: could not look up page error address %lx\0A\00", [41 x i8] zeroinitializer }, align 32
@edac_mc_find_csrow_by_page._entry_ptr.58 = internal global ptr @edac_mc_find_csrow_by_page._entry.56, section ".printk_index", align 4
@__kstrtab_edac_mc_find_csrow_by_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_find_csrow_by_page = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_find_csrow_by_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_find_csrow_by_page to i32), ptr @__kstrtab_edac_mc_find_csrow_by_page, ptr @__kstrtabns_edac_mc_find_csrow_by_page }, section "___ksymtab_gpl+edac_mc_find_csrow_by_page", align 4
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"branch\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slot\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csrow\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@edac_layer_name = dso_local global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [44 x i8] zeroinitializer }, align 32
@__kstrtab_edac_layer_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_layer_name = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_layer_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_layer_name to i32), ptr @__kstrtab_edac_layer_name, ptr @__kstrtabns_edac_layer_name }, section "___ksymtab_gpl+edac_layer_name", align 4
@edac_raw_mc_handle_error.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_edac_raw_mc_handle_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_raw_mc_handle_error = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_raw_mc_handle_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_raw_mc_handle_error to i32), ptr @__kstrtab_edac_raw_mc_handle_error, ptr @__kstrtabns_edac_raw_mc_handle_error }, section "___ksymtab_gpl+edac_raw_mc_handle_error", align 4
@edac_mc_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.30, i32 1035, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017EDAC DEBUG: %s: MC%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edac_mc_handle_error\00", [43 x i8] zeroinitializer }, align 32
@edac_mc_handle_error._entry_ptr = internal global ptr @edac_mc_handle_error._entry, section ".printk_index", align 4
@.str.67 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@edac_mc_handle_error._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.30, i32 1062, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013EDAC MC%d: INTERNAL ERROR: %s value is out of range (%d >= %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@edac_mc_handle_error._entry_ptr.70 = internal global ptr @edac_mc_handle_error._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" or \00", [27 x i8] zeroinitializer }, align 32
@edac_mc_handle_error._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.30, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017EDAC DEBUG: %s: %s csrows map: (%d,%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@edac_mc_handle_error._entry_ptr.75 = internal global ptr @edac_mc_handle_error._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rank\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dimm\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"any memory\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown memory\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s:%d\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@__kstrtab_edac_mc_handle_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mc_handle_error = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mc_handle_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mc_handle_error to i32), ptr @__kstrtab_edac_mc_handle_error, ptr @__kstrtabns_edac_mc_handle_error }, section "___ksymtab_gpl+edac_mc_handle_error", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mc#%u\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s#%u\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mem_ctls_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mem_ctls_mutex\00", [17 x i8] zeroinitializer }, align 32
@__find_mci_by_dev._entry = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.86, ptr @.str.30, i32 504, ptr null, ptr null }, align 1
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__find_mci_by_dev\00", [46 x i8] zeroinitializer }, align 32
@__find_mci_by_dev._entry_ptr = internal global ptr @__find_mci_by_dev._entry, section ".printk_index", align 4
@edac_mc_dump_mci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.30, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017EDAC DEBUG: %s: \09mci = %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edac_mc_dump_mci\00", [47 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr = internal global ptr @edac_mc_dump_mci._entry, section ".printk_index", align 4
@edac_mc_dump_mci._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.30, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017EDAC DEBUG: %s: \09mci->mtype_cap = %lx\0A\00", [55 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.91 = internal global ptr @edac_mc_dump_mci._entry.89, section ".printk_index", align 4
@edac_mc_dump_mci._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.30, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017EDAC DEBUG: %s: \09mci->edac_ctl_cap = %lx\0A\00", [52 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.94 = internal global ptr @edac_mc_dump_mci._entry.92, section ".printk_index", align 4
@edac_mc_dump_mci._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.30, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017EDAC DEBUG: %s: \09mci->edac_cap = %lx\0A\00", [56 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.97 = internal global ptr @edac_mc_dump_mci._entry.95, section ".printk_index", align 4
@edac_mc_dump_mci._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str.30, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017EDAC DEBUG: %s: \09mci->edac_check = %p\0A\00", [55 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.100 = internal global ptr @edac_mc_dump_mci._entry.98, section ".printk_index", align 4
@edac_mc_dump_mci._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str.30, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017EDAC DEBUG: %s: \09mci->nr_csrows = %d, csrows = %p\0A\00", [43 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.103 = internal global ptr @edac_mc_dump_mci._entry.101, section ".printk_index", align 4
@edac_mc_dump_mci._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.88, ptr @.str.30, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017EDAC DEBUG: %s: \09mci->nr_dimms = %d, dimms = %p\0A\00", [45 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.106 = internal global ptr @edac_mc_dump_mci._entry.104, section ".printk_index", align 4
@edac_mc_dump_mci._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.88, ptr @.str.30, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017EDAC DEBUG: %s: \09dev = %p\0A\00", [35 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.109 = internal global ptr @edac_mc_dump_mci._entry.107, section ".printk_index", align 4
@edac_mc_dump_mci._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.88, ptr @.str.30, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017EDAC DEBUG: %s: \09mod_name:ctl_name = %s:%s\0A\00", [50 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.112 = internal global ptr @edac_mc_dump_mci._entry.110, section ".printk_index", align 4
@edac_mc_dump_mci._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.88, ptr @.str.30, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017EDAC DEBUG: %s: \09pvt_info = %p\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@edac_mc_dump_mci._entry_ptr.115 = internal global ptr @edac_mc_dump_mci._entry.113, section ".printk_index", align 4
@edac_mc_dump_csrow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.30, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017EDAC DEBUG: %s: csrow->csrow_idx = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edac_mc_dump_csrow\00", [45 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr = internal global ptr @edac_mc_dump_csrow._entry, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.117, ptr @.str.30, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017EDAC DEBUG: %s:   csrow = %p\0A\00", [32 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.120 = internal global ptr @edac_mc_dump_csrow._entry.118, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.117, ptr @.str.30, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017EDAC DEBUG: %s:   csrow->first_page = 0x%lx\0A\00", [49 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.123 = internal global ptr @edac_mc_dump_csrow._entry.121, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.30, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017EDAC DEBUG: %s:   csrow->last_page = 0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.126 = internal global ptr @edac_mc_dump_csrow._entry.124, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.117, ptr @.str.30, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017EDAC DEBUG: %s:   csrow->page_mask = 0x%lx\0A\00", [50 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.129 = internal global ptr @edac_mc_dump_csrow._entry.127, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.117, ptr @.str.30, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017EDAC DEBUG: %s:   csrow->nr_channels = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.132 = internal global ptr @edac_mc_dump_csrow._entry.130, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.117, ptr @.str.30, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017EDAC DEBUG: %s:   csrow->channels = %p\0A\00", [54 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.135 = internal global ptr @edac_mc_dump_csrow._entry.133, section ".printk_index", align 4
@edac_mc_dump_csrow._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.117, ptr @.str.30, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017EDAC DEBUG: %s:   csrow->mci = %p\0A\00", [59 x i8] zeroinitializer }, align 32
@edac_mc_dump_csrow._entry_ptr.138 = internal global ptr @edac_mc_dump_csrow._entry.136, section ".printk_index", align 4
@edac_mc_dump_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.30, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017EDAC DEBUG: %s:   channel->chan_idx = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edac_mc_dump_channel\00", [43 x i8] zeroinitializer }, align 32
@edac_mc_dump_channel._entry_ptr = internal global ptr @edac_mc_dump_channel._entry, section ".printk_index", align 4
@edac_mc_dump_channel._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.30, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017EDAC DEBUG: %s:     channel = %p\0A\00", [60 x i8] zeroinitializer }, align 32
@edac_mc_dump_channel._entry_ptr.143 = internal global ptr @edac_mc_dump_channel._entry.141, section ".printk_index", align 4
@edac_mc_dump_channel._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.30, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017EDAC DEBUG: %s:     channel->csrow = %p\0A\00", [53 x i8] zeroinitializer }, align 32
@edac_mc_dump_channel._entry_ptr.146 = internal global ptr @edac_mc_dump_channel._entry.144, section ".printk_index", align 4
@edac_mc_dump_channel._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.30, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017EDAC DEBUG: %s:     channel->dimm = %p\0A\00", [54 x i8] zeroinitializer }, align 32
@edac_mc_dump_channel._entry_ptr.149 = internal global ptr @edac_mc_dump_channel._entry.147, section ".printk_index", align 4
@edac_mc_dump_dimm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.30, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017EDAC DEBUG: %s: %s%i: %smapped as virtual row %d, chan %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"edac_mc_dump_dimm\00", [46 x i8] zeroinitializer }, align 32
@edac_mc_dump_dimm._entry_ptr = internal global ptr @edac_mc_dump_dimm._entry, section ".printk_index", align 4
@edac_mc_dump_dimm._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.30, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017EDAC DEBUG: %s:   dimm = %p\0A\00", [33 x i8] zeroinitializer }, align 32
@edac_mc_dump_dimm._entry_ptr.154 = internal global ptr @edac_mc_dump_dimm._entry.152, section ".printk_index", align 4
@edac_mc_dump_dimm._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.151, ptr @.str.30, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017EDAC DEBUG: %s:   dimm->label = '%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@edac_mc_dump_dimm._entry_ptr.157 = internal global ptr @edac_mc_dump_dimm._entry.155, section ".printk_index", align 4
@edac_mc_dump_dimm._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.151, ptr @.str.30, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017EDAC DEBUG: %s:   dimm->nr_pages = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@edac_mc_dump_dimm._entry_ptr.160 = internal global ptr @edac_mc_dump_dimm._entry.158, section ".printk_index", align 4
@edac_mc_dump_dimm._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.151, ptr @.str.30, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017EDAC DEBUG: %s:   dimm->grain = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@edac_mc_dump_dimm._entry_ptr.163 = internal global ptr @edac_mc_dump_dimm._entry.161, section ".printk_index", align 4
@edac_mc_dump_dimm._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.151, ptr @.str.30, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@edac_mc_dump_dimm._entry_ptr.165 = internal global ptr @edac_mc_dump_dimm._entry.164, section ".printk_index", align 4
@add_mc_to_global_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.30, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014EDAC MC: %s (%s) %s %s already assigned %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"add_mc_to_global_list\00", [42 x i8] zeroinitializer }, align 32
@add_mc_to_global_list._entry_ptr = internal global ptr @add_mc_to_global_list._entry, section ".printk_index", align 4
@add_mc_to_global_list._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.30, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\014EDAC MC: bug in low-level driver: attempt to assign\0A    duplicate mc_idx %d in %s()\0A\00", [41 x i8] zeroinitializer }, align 32
@add_mc_to_global_list._entry_ptr.170 = internal global ptr @add_mc_to_global_list._entry.168, section ".printk_index", align 4
@__tracepoint_mc_event = external dso_local global %struct.tracepoint, align 4
@.str.171 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/ras/ras_event.h\00", [40 x i8] zeroinitializer }, align 32
@trace_mc_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.172 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@edac_ce_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.30, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014EDAC MC%d: %d CE %s%son %s (%s page:0x%lx offset:0x%lx grain:%ld syndrome:0x%lx%s%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edac_ce_error\00", [18 x i8] zeroinitializer }, align 32
@edac_ce_error._entry_ptr = internal global ptr @edac_ce_error._entry, section ".printk_index", align 4
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" - \00", [28 x i8] zeroinitializer }, align 32
@edac_get_dimm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/edac.h\00", [43 x i8] zeroinitializer }, align 32
@edac_mc_scrub_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.178, ptr @.str.30, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"edac_mc_scrub_block\00", [44 x i8] zeroinitializer }, align 32
@edac_mc_scrub_block._entry_ptr = internal global ptr @edac_mc_scrub_block._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@edac_ue_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.30, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014EDAC MC%d: %d UE %s%son %s (%s page:0x%lx offset:0x%lx grain:%ld%s%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edac_ue_error\00", [18 x i8] zeroinitializer }, align 32
@edac_ue_error._entry_ptr = internal global ptr @edac_ue_error._entry, section ".printk_index", align 4
@.str.181 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"UE %s%son %s (%s page:0x%lx offset:0x%lx grain:%ld%s%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@edac_inc_csrow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.30, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017EDAC DEBUG: %s: csrow/channel to increment: (%d,%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"edac_inc_csrow\00", [17 x i8] zeroinitializer }, align 32
@edac_inc_csrow._entry_ptr = internal global ptr @edac_inc_csrow._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"edac_op_state\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 43, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 69, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 141, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 142, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 143, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 144, i32 14 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 145, i32 14 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 146, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 147, i32 14 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 148, i32 14 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 149, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 150, i32 15 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 151, i32 15 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 152, i32 15 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 153, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 154, i32 16 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 155, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 156, i32 15 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 157, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 158, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 159, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 160, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 161, i32 16 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 163, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 162, i32 17 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 164, i32 15 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 165, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 166, i32 17 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 167, i32 17 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 168, i32 15 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 169, i32 15 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"edac_mem_types\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 140, i32 20 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 400, i32 6 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 429, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 478, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [15 x i8] c"mem_ctls_mutex\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [11 x i8] c"mc_devices\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 48, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant [14 x i8] c"edac_mc_owner\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 54, i32 20 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 675, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 720, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 728, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 736, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 759, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 784, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 829, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 842, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 857, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 866, i32 27 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 867, i32 28 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 868, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 869, i32 32 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 870, i32 28 }
@___asan_gen_.395 = private unnamed_addr constant [16 x i8] c"edac_layer_name\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 865, i32 13 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1035, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1048, i32 18 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1059, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1117, i32 31 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1118, i32 13 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1125, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1140, i32 21 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1142, i32 21 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1155, i32 30 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1157, i32 12 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 344, i32 25 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 348, i32 26 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 47, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 504, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 123, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 124, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 125, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 126, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 127, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 128, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 130, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 132, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 133, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 135, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 111, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 112, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 113, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 114, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 115, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 116, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 117, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 118, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 84, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 85, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 86, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 87, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 99, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 102, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 103, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 104, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 105, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 106, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 619, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 625, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [27 x i8] c"../include/ras/ras_event.h\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.657, i32 98, i32 1 }
@___asan_gen_.660 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.660, i32 108, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 908, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant [24 x i8] c"../include/linux/edac.h\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.675, i32 656, i32 6 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 799, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 945, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 958, i32 9 }
@___asan_gen_.695 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.702 = private constant [26 x i8] c"../drivers/edac/edac_mc.c\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 977, i32 2 }
@llvm.compiler.used = appending global [236 x ptr] [ptr @__find_mci_by_dev._entry, ptr @__find_mci_by_dev._entry_ptr, ptr @__ksymtab_edac_get_owner, ptr @__ksymtab_edac_has_mcs, ptr @__ksymtab_edac_layer_name, ptr @__ksymtab_edac_mc_add_mc_with_groups, ptr @__ksymtab_edac_mc_alloc, ptr @__ksymtab_edac_mc_del_mc, ptr @__ksymtab_edac_mc_find, ptr @__ksymtab_edac_mc_find_csrow_by_page, ptr @__ksymtab_edac_mc_free, ptr @__ksymtab_edac_mc_handle_error, ptr @__ksymtab_edac_mem_types, ptr @__ksymtab_edac_op_state, ptr @__ksymtab_edac_raw_mc_handle_error, ptr @__ksymtab_find_mci_by_dev, ptr @add_mc_to_global_list._entry, ptr @add_mc_to_global_list._entry.168, ptr @add_mc_to_global_list._entry_ptr, ptr @add_mc_to_global_list._entry_ptr.170, ptr @edac_ce_error._entry, ptr @edac_ce_error._entry_ptr, ptr @edac_inc_csrow._entry, ptr @edac_inc_csrow._entry_ptr, ptr @edac_mc_add_mc_with_groups._entry, ptr @edac_mc_add_mc_with_groups._entry.38, ptr @edac_mc_add_mc_with_groups._entry.44, ptr @edac_mc_add_mc_with_groups._entry_ptr, ptr @edac_mc_add_mc_with_groups._entry_ptr.40, ptr @edac_mc_add_mc_with_groups._entry_ptr.46, ptr @edac_mc_alloc._entry, ptr @edac_mc_alloc._entry_ptr, ptr @edac_mc_del_mc._entry, ptr @edac_mc_del_mc._entry.48, ptr @edac_mc_del_mc._entry_ptr, ptr @edac_mc_del_mc._entry_ptr.50, ptr @edac_mc_dump_channel._entry, ptr @edac_mc_dump_channel._entry.141, ptr @edac_mc_dump_channel._entry.144, ptr @edac_mc_dump_channel._entry.147, ptr @edac_mc_dump_channel._entry_ptr, ptr @edac_mc_dump_channel._entry_ptr.143, ptr @edac_mc_dump_channel._entry_ptr.146, ptr @edac_mc_dump_channel._entry_ptr.149, ptr @edac_mc_dump_csrow._entry, ptr @edac_mc_dump_csrow._entry.118, ptr @edac_mc_dump_csrow._entry.121, ptr @edac_mc_dump_csrow._entry.124, ptr @edac_mc_dump_csrow._entry.127, ptr @edac_mc_dump_csrow._entry.130, ptr @edac_mc_dump_csrow._entry.133, ptr @edac_mc_dump_csrow._entry.136, ptr @edac_mc_dump_csrow._entry_ptr, ptr @edac_mc_dump_csrow._entry_ptr.120, ptr @edac_mc_dump_csrow._entry_ptr.123, ptr @edac_mc_dump_csrow._entry_ptr.126, ptr @edac_mc_dump_csrow._entry_ptr.129, ptr @edac_mc_dump_csrow._entry_ptr.132, ptr @edac_mc_dump_csrow._entry_ptr.135, ptr @edac_mc_dump_csrow._entry_ptr.138, ptr @edac_mc_dump_dimm._entry, ptr @edac_mc_dump_dimm._entry.152, ptr @edac_mc_dump_dimm._entry.155, ptr @edac_mc_dump_dimm._entry.158, ptr @edac_mc_dump_dimm._entry.161, ptr @edac_mc_dump_dimm._entry.164, ptr @edac_mc_dump_dimm._entry_ptr, ptr @edac_mc_dump_dimm._entry_ptr.154, ptr @edac_mc_dump_dimm._entry_ptr.157, ptr @edac_mc_dump_dimm._entry_ptr.160, ptr @edac_mc_dump_dimm._entry_ptr.163, ptr @edac_mc_dump_dimm._entry_ptr.165, ptr @edac_mc_dump_mci._entry, ptr @edac_mc_dump_mci._entry.101, ptr @edac_mc_dump_mci._entry.104, ptr @edac_mc_dump_mci._entry.107, ptr @edac_mc_dump_mci._entry.110, ptr @edac_mc_dump_mci._entry.113, ptr @edac_mc_dump_mci._entry.89, ptr @edac_mc_dump_mci._entry.92, ptr @edac_mc_dump_mci._entry.95, ptr @edac_mc_dump_mci._entry.98, ptr @edac_mc_dump_mci._entry_ptr, ptr @edac_mc_dump_mci._entry_ptr.100, ptr @edac_mc_dump_mci._entry_ptr.103, ptr @edac_mc_dump_mci._entry_ptr.106, ptr @edac_mc_dump_mci._entry_ptr.109, ptr @edac_mc_dump_mci._entry_ptr.112, ptr @edac_mc_dump_mci._entry_ptr.115, ptr @edac_mc_dump_mci._entry_ptr.91, ptr @edac_mc_dump_mci._entry_ptr.94, ptr @edac_mc_dump_mci._entry_ptr.97, ptr @edac_mc_find_csrow_by_page._entry, ptr @edac_mc_find_csrow_by_page._entry.53, ptr @edac_mc_find_csrow_by_page._entry.56, ptr @edac_mc_find_csrow_by_page._entry_ptr, ptr @edac_mc_find_csrow_by_page._entry_ptr.55, ptr @edac_mc_find_csrow_by_page._entry_ptr.58, ptr @edac_mc_free._entry, ptr @edac_mc_free._entry_ptr, ptr @edac_mc_handle_error._entry, ptr @edac_mc_handle_error._entry.68, ptr @edac_mc_handle_error._entry.73, ptr @edac_mc_handle_error._entry_ptr, ptr @edac_mc_handle_error._entry_ptr.70, ptr @edac_mc_handle_error._entry_ptr.75, ptr @edac_mc_scrub_block._entry, ptr @edac_mc_scrub_block._entry_ptr, ptr @edac_ue_error._entry, ptr @edac_ue_error._entry_ptr, ptr @edac_op_state, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @edac_mem_types, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mem_ctls_mutex, ptr @mc_devices, ptr @edac_mc_owner, ptr @.str.37, ptr @.str.39, ptr @edac_mc_add_mc_with_groups.__key, ptr @.str.41, ptr @edac_mc_add_mc_with_groups.__key.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @edac_layer_name, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_op_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mem_types to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_ctls_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_owner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_add_mc_with_groups._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_del_mc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_del_mc._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_find_csrow_by_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_find_csrow_by_page._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_find_csrow_by_page._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_layer_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_handle_error._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_handle_error._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_mci._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_csrow._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_channel._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_channel._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_channel._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_dimm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_dimm._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_dimm._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_dimm._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_dimm._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_dump_dimm._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mc_to_global_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mc_to_global_list._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_ce_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_scrub_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_ue_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_inc_csrow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_dimm_info_location(ptr nocapture noundef readonly %dimm, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mci1 = getelementptr inbounds %struct.dimm_info, ptr %dimm, i32 0, i32 3
  %0 = ptrtoint ptr %mci1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mci1, align 4
  %n_layers = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %layers = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.018 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %count.017 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %len.addr.015 = phi i32 [ %len, %for.body.lr.ph ], [ %sub, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %layers, align 8
  %arrayidx = getelementptr %struct.edac_mc_layer, ptr %5, i32 %i.016
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.dimm_info, ptr %dimm, i32 0, i32 2, i32 %i.016
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.018, i32 noundef %len.addr.015, ptr noundef nonnull @.str, ptr noundef %9, i32 noundef %11) #12
  %add.ptr = getelementptr i8, ptr %p.018, i32 %call
  %sub = sub i32 %len.addr.015, %call
  %add = add i32 %call, %count.017
  %inc = add nuw i32 %i.016, 1
  %12 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_layers, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %count.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @edac_align_ptr(ptr nocapture noundef %p, i32 noundef %size, i32 noundef %n_elems) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %mul = mul i32 %n_elems, %size
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  store ptr %add.ptr, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp = icmp ugt i32 %size, 4
  br i1 %cmp, label %entry.if.end12_crit_edge, label %if.else3

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp4 = icmp ugt i32 %size, 2
  br i1 %cmp4, label %if.else3.if.end12_crit_edge, label %if.else6

if.else3.if.end12_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp7 = icmp eq i32 %size, 2
  br i1 %cmp7, label %if.else6.if.end12_crit_edge, label %if.else6.cleanup_crit_edge

if.else6.cleanup_crit_edge:                       ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else6.if.end12_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end12:                                         ; preds = %if.else6.if.end12_crit_edge, %if.else3.if.end12_crit_edge, %entry.if.end12_crit_edge
  %align.0 = phi i32 [ 8, %entry.if.end12_crit_edge ], [ 4, %if.else3.if.end12_crit_edge ], [ 2, %if.else6.if.end12_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  %rem = urem i32 %2, %align.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp13 = icmp eq i32 %rem, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub nsw i32 %align.0, %rem
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 %sub
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr16, ptr %p, align 4
  %add = add i32 %align.0, %2
  %sub17 = sub i32 %add, %rem
  %4 = inttoptr i32 %sub17 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %if.else6.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.end15 ], [ %1, %if.else6.cleanup_crit_edge ], [ %1, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @edac_mc_alloc(i32 noundef %mc_num, i32 noundef %n_layers, ptr nocapture noundef readonly %layers, i32 noundef %sz_pvt) #0 align 64 {
entry:
  %pos.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %n_layers, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %0)
  %1 = icmp ult i32 %0, -3
  br i1 %1, label %do.end, label %for.body, !prof !370

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 400, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

for.body:                                         ; preds = %entry
  %size24 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %2 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size24, align 4
  %is_virt_csrow = getelementptr %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %4 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_virt_csrow, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool26.not = icmp eq i8 %5, 0
  %mul30 = select i1 %tobool26.not, i32 1, i32 %3
  %mul33 = select i1 %tobool26.not, i32 %3, i32 1
  %6 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp36 = icmp eq i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_layers)
  %exitcond.not = icmp eq i32 %n_layers, 1
  br i1 %exitcond.not, label %for.body.edac_align_ptr.exit_crit_edge, label %for.body.1

for.body.edac_align_ptr.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_align_ptr.exit

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 1
  %size24.1 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 1, i32 1
  %8 = ptrtoint ptr %size24.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size24.1, align 4
  %mul.1 = mul i32 %9, %3
  %is_virt_csrow.1 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 1, i32 2
  %10 = ptrtoint ptr %is_virt_csrow.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_virt_csrow.1, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool26.not.1 = icmp eq i8 %11, 0
  %mul30.1 = select i1 %tobool26.not.1, i32 1, i32 %9
  %tot_csrows.1.1 = mul i32 %mul30.1, %mul30
  %mul33.1 = select i1 %tobool26.not.1, i32 %9, i32 1
  %tot_channels.1.1 = mul i32 %mul33.1, %mul33
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp36.1 = icmp eq i32 %13, 3
  %per_rank.1.off0.1 = select i1 %cmp36.1, i1 true, i1 %cmp36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n_layers)
  %exitcond.not.1 = icmp eq i32 %n_layers, 2
  br i1 %exitcond.not.1, label %for.body.1.edac_align_ptr.exit_crit_edge, label %for.body.2

for.body.1.edac_align_ptr.exit_crit_edge:         ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_align_ptr.exit

for.body.2:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.2 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 2
  %size24.2 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 2, i32 1
  %14 = ptrtoint ptr %size24.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size24.2, align 4
  %mul.2 = mul i32 %15, %mul.1
  %is_virt_csrow.2 = getelementptr %struct.edac_mc_layer, ptr %layers, i32 2, i32 2
  %16 = ptrtoint ptr %is_virt_csrow.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_virt_csrow.2, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool26.not.2 = icmp eq i8 %17, 0
  %mul30.2 = select i1 %tobool26.not.2, i32 1, i32 %15
  %tot_csrows.1.2 = mul i32 %mul30.2, %tot_csrows.1.1
  %mul33.2 = select i1 %tobool26.not.2, i32 %15, i32 1
  %tot_channels.1.2 = mul i32 %mul33.2, %tot_channels.1.1
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp36.2 = icmp eq i32 %19, 3
  %per_rank.1.off0.2 = select i1 %cmp36.2, i1 true, i1 %per_rank.1.off0.1
  br label %edac_align_ptr.exit

edac_align_ptr.exit:                              ; preds = %for.body.2, %for.body.1.edac_align_ptr.exit_crit_edge, %for.body.edac_align_ptr.exit_crit_edge
  %mul.lcssa = phi i32 [ %3, %for.body.edac_align_ptr.exit_crit_edge ], [ %mul.1, %for.body.1.edac_align_ptr.exit_crit_edge ], [ %mul.2, %for.body.2 ]
  %tot_csrows.1.lcssa = phi i32 [ %mul30, %for.body.edac_align_ptr.exit_crit_edge ], [ %tot_csrows.1.1, %for.body.1.edac_align_ptr.exit_crit_edge ], [ %tot_csrows.1.2, %for.body.2 ]
  %tot_channels.1.lcssa = phi i32 [ %mul33, %for.body.edac_align_ptr.exit_crit_edge ], [ %tot_channels.1.1, %for.body.1.edac_align_ptr.exit_crit_edge ], [ %tot_channels.1.2, %for.body.2 ]
  %per_rank.1.off0.lcssa = phi i1 [ %cmp36, %for.body.edac_align_ptr.exit_crit_edge ], [ %per_rank.1.off0.1, %for.body.1.edac_align_ptr.exit_crit_edge ], [ %per_rank.1.off0.2, %for.body.2 ]
  %mul.i = mul i32 %n_layers, 12
  %add.ptr.i135 = getelementptr i8, ptr inttoptr (i32 1832 to ptr), i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sz_pvt)
  %cmp.i = icmp ugt i32 %sz_pvt, 4
  br i1 %cmp.i, label %edac_align_ptr.exit.if.end12.i_crit_edge, label %if.else3.i

edac_align_ptr.exit.if.end12.i_crit_edge:         ; preds = %edac_align_ptr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.else3.i:                                       ; preds = %edac_align_ptr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sz_pvt)
  %cmp4.i = icmp ugt i32 %sz_pvt, 2
  br i1 %cmp4.i, label %if.else3.i.if.end12.i_crit_edge, label %if.else6.i

if.else3.i.if.end12.i_crit_edge:                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sz_pvt)
  %cmp7.i = icmp eq i32 %sz_pvt, 2
  br i1 %cmp7.i, label %if.else6.i.if.end12.i_crit_edge, label %if.else6.i.edac_align_ptr.exit154_crit_edge

if.else6.i.edac_align_ptr.exit154_crit_edge:      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_align_ptr.exit154

if.else6.i.if.end12.i_crit_edge:                  ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else6.i.if.end12.i_crit_edge, %if.else3.i.if.end12.i_crit_edge, %edac_align_ptr.exit.if.end12.i_crit_edge
  %align.0.i = phi i32 [ 8, %edac_align_ptr.exit.if.end12.i_crit_edge ], [ 4, %if.else3.i.if.end12.i_crit_edge ], [ 2, %if.else6.i.if.end12.i_crit_edge ]
  %20 = ptrtoint ptr %add.ptr.i135 to i32
  %rem.i146 = urem i32 %20, %align.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i146)
  %cmp13.i147 = icmp eq i32 %rem.i146, 0
  br i1 %cmp13.i147, label %if.end12.i.edac_align_ptr.exit154_crit_edge, label %if.end15.i152

if.end12.i.edac_align_ptr.exit154_crit_edge:      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_align_ptr.exit154

if.end15.i152:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i150 = add i32 %align.0.i, %20
  %sub17.i151 = sub i32 %add.i150, %rem.i146
  %21 = inttoptr i32 %sub17.i151 to ptr
  br label %edac_align_ptr.exit154

edac_align_ptr.exit154:                           ; preds = %if.end15.i152, %if.end12.i.edac_align_ptr.exit154_crit_edge, %if.else6.i.edac_align_ptr.exit154_crit_edge
  %retval.0.i153 = phi ptr [ %21, %if.end15.i152 ], [ %add.ptr.i135, %if.else6.i.edac_align_ptr.exit154_crit_edge ], [ %add.ptr.i135, %if.end12.i.edac_align_ptr.exit154_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i153 to i32
  %add = add i32 %22, %sz_pvt
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %23 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp42 = icmp sgt i32 %23, 0
  br i1 %cmp42, label %do.end46, label %edac_align_ptr.exit154.if.end8.i.i_crit_edge

edac_align_ptr.exit154.if.end8.i.i_crit_edge:     ; preds = %edac_align_ptr.exit154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

do.end46:                                         ; preds = %edac_align_ptr.exit154
  call void @__sanitizer_cov_trace_pc() #14
  %cond = select i1 %per_rank.1.off0.lcssa, ptr @.str.33, ptr @.str.34
  %mul49 = mul i32 %tot_channels.1.lcssa, %tot_csrows.1.lcssa
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %add, i32 noundef %mul.lcssa, ptr noundef nonnull %cond, i32 noundef %mul49) #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end46, %edac_align_ptr.exit154.if.end8.i.i_crit_edge
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %cmp55 = icmp eq ptr %call9.i.i, null
  br i1 %cmp55, label %if.end8.i.i.cleanup_crit_edge, label %if.end57

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %if.end8.i.i
  %release = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 35
  %24 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mci_release, ptr %release, align 4
  tail call void @device_initialize(ptr noundef nonnull %call9.i.i) #12
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 1832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz_pvt)
  %tobool59.not = icmp eq i32 %sz_pvt, 0
  %add.ptr60 = getelementptr i8, ptr %call9.i.i, i32 %22
  %spec.select134 = select i1 %tobool59.not, ptr null, ptr %add.ptr60
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 13
  %25 = ptrtoint ptr %mc_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mc_num, ptr %mc_idx, align 4
  %tot_dimms62 = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 20
  %26 = ptrtoint ptr %tot_dimms62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.lcssa, ptr %tot_dimms62, align 16
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 26
  %27 = ptrtoint ptr %pvt_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spec.select134, ptr %pvt_info, align 8
  %n_layers63 = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %n_layers63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %n_layers, ptr %n_layers63, align 4
  %layers64 = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 18
  %29 = ptrtoint ptr %layers64 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %layers64, align 8
  %30 = call ptr @memcpy(ptr %add.ptr, ptr %layers, i32 %mul.i)
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 15
  %31 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %tot_csrows.1.lcssa, ptr %nr_csrows, align 4
  %num_cschannel = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %num_cschannel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %tot_channels.1.lcssa, ptr %num_cschannel, align 32
  %csbased = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 19
  %frombool = zext i1 %per_rank.1.off0.lcssa to i8
  %33 = ptrtoint ptr %csbased to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %csbased, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %tot_csrows.1.lcssa, i32 4) #12
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !370

kcalloc.exit.thread.i:                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %csrows99.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 14
  br label %cleanup28.sink.split.i

if.end7.i.i.i:                                    ; preds = %if.end57
  %36 = extractvalue { i32, i1 } %34, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #16
  %csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 14
  %37 = ptrtoint ptr %csrows.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i, ptr %csrows.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.error_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.error_crit_edge:                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_csrows.1.lcssa)
  %cmp108.not.i = icmp eq i32 %tot_csrows.1.lcssa, 0
  br i1 %cmp108.not.i, label %for.cond.preheader.i.if.end71_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end71_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %tot_channels.1.lcssa, i32 4) #12
  %39 = extractvalue { i32, i1 } %38, 1
  %40 = extractvalue { i32, i1 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tot_channels.1.lcssa)
  %cmp14106.not.i = icmp eq i32 %tot_channels.1.lcssa, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.critedge.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %row.0109.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc26.i, %for.inc25.critedge.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 968) #17
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %for.body.i.error_crit_edge, label %if.end5.i

for.body.i.error_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end5.i:                                        ; preds = %for.body.i
  %42 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csrows.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %43, i32 %row.0109.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %csrow_idx.i = getelementptr inbounds %struct.csrow_info, ptr %call7.i.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %csrow_idx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %row.0109.i, ptr %csrow_idx.i, align 4
  %mci7.i = getelementptr inbounds %struct.csrow_info, ptr %call7.i.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %mci7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i, ptr %mci7.i, align 8
  %nr_channels.i = getelementptr inbounds %struct.csrow_info, ptr %call7.i.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %nr_channels.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %tot_channels.1.lcssa, ptr %nr_channels.i, align 4
  br i1 %39, label %kcalloc.exit94.thread.i, label %if.end7.i.i92.i, !prof !370

kcalloc.exit94.thread.i:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %channels102.i = getelementptr inbounds %struct.csrow_info, ptr %call7.i.i.i, i32 0, i32 9
  br label %cleanup28.sink.split.i

if.end7.i.i92.i:                                  ; preds = %if.end5.i
  %call8.i.i91.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #16
  %channels.i = getelementptr inbounds %struct.csrow_info, ptr %call7.i.i.i, i32 0, i32 9
  %48 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i91.i, ptr %channels.i, align 8
  %tobool10.not.i = icmp eq ptr %call8.i.i91.i, null
  br i1 %tobool10.not.i, label %if.end7.i.i92.i.error_crit_edge, label %for.cond13.preheader.i

if.end7.i.i92.i.error_crit_edge:                  ; preds = %if.end7.i.i92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

for.cond13.preheader.i:                           ; preds = %if.end7.i.i92.i
  br i1 %cmp14106.not.i, label %for.cond13.preheader.i.for.inc25.critedge.i_crit_edge, label %for.cond13.preheader.i.for.body15.i_crit_edge

for.cond13.preheader.i.for.body15.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body15.i

for.cond13.preheader.i.for.inc25.critedge.i_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.critedge.i

for.body15.i:                                     ; preds = %if.end19.i.for.body15.i_crit_edge, %for.cond13.preheader.i.for.body15.i_crit_edge
  %chn.0107.i = phi i32 [ %inc.i, %if.end19.i.for.body15.i_crit_edge ], [ 0, %for.cond13.preheader.i.for.body15.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i97.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 16) #17
  %tobool17.not.i = icmp eq ptr %call7.i.i97.i, null
  br i1 %tobool17.not.i, label %for.body15.i.error_crit_edge, label %if.end19.i

for.body15.i.error_crit_edge:                     ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end19.i:                                       ; preds = %for.body15.i
  %50 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %channels.i, align 8
  %arrayidx21.i = getelementptr ptr, ptr %51, i32 %chn.0107.i
  %52 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i97.i, ptr %arrayidx21.i, align 4
  %53 = ptrtoint ptr %call7.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %chn.0107.i, ptr %call7.i.i97.i, align 8
  %csrow.i = getelementptr inbounds %struct.rank_info, ptr %call7.i.i97.i, i32 0, i32 1
  %54 = ptrtoint ptr %csrow.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i, ptr %csrow.i, align 4
  %inc.i = add nuw i32 %chn.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %tot_channels.1.lcssa
  br i1 %exitcond.not.i, label %if.end19.i.for.inc25.critedge.i_crit_edge, label %if.end19.i.for.body15.i_crit_edge

if.end19.i.for.body15.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

if.end19.i.for.inc25.critedge.i_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25.critedge.i

for.inc25.critedge.i:                             ; preds = %if.end19.i.for.inc25.critedge.i_crit_edge, %for.cond13.preheader.i.for.inc25.critedge.i_crit_edge
  %inc26.i = add nuw i32 %row.0109.i, 1
  %exitcond117.not.i = icmp eq i32 %inc26.i, %tot_csrows.1.lcssa
  br i1 %exitcond117.not.i, label %for.inc25.critedge.i.if.end71_crit_edge, label %for.inc25.critedge.i.for.body.i_crit_edge

for.inc25.critedge.i.for.body.i_crit_edge:        ; preds = %for.inc25.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc25.critedge.i.if.end71_crit_edge:          ; preds = %for.inc25.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

cleanup28.sink.split.i:                           ; preds = %kcalloc.exit94.thread.i, %kcalloc.exit.thread.i
  %channels102.sink.i = phi ptr [ %channels102.i, %kcalloc.exit94.thread.i ], [ %csrows99.i, %kcalloc.exit.thread.i ]
  %55 = ptrtoint ptr %channels102.sink.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %channels102.sink.i, align 8
  br label %error

if.end71:                                         ; preds = %for.inc25.critedge.i.if.end71_crit_edge, %for.cond.preheader.i.if.end71_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pos.i) #12
  %56 = ptrtoint ptr %tot_dimms62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tot_dimms62, align 16
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 4) #12
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %kcalloc.exit.thread.i156, label %if.end7.i.i.i187, !prof !370

kcalloc.exit.thread.i156:                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %dimms127.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 21
  %60 = ptrtoint ptr %dimms127.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %dimms127.i, align 4
  br label %edac_mc_alloc_dimms.exit.thread

if.end7.i.i.i187:                                 ; preds = %if.end71
  %61 = extractvalue { i32, i1 } %58, 0
  %call8.i.i.i186 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #16
  %dimms.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 21
  %62 = ptrtoint ptr %dimms.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call8.i.i.i186, ptr %dimms.i, align 4
  %tobool.not.i189 = icmp eq ptr %call8.i.i.i186, null
  br i1 %tobool.not.i189, label %if.end7.i.i.i187.edac_mc_alloc_dimms.exit.thread_crit_edge, label %if.end.i

if.end7.i.i.i187.edac_mc_alloc_dimms.exit.thread_crit_edge: ; preds = %if.end7.i.i.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_alloc_dimms.exit.thread

if.end.i:                                         ; preds = %if.end7.i.i.i187
  %63 = call ptr @memset(ptr %pos.i, i32 0, i32 12)
  %csrows.i191 = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 14
  %64 = ptrtoint ptr %tot_dimms62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tot_dimms62, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp143.not.i = icmp eq i32 %65, 0
  br i1 %cmp143.not.i, label %if.end.i.if.end75_crit_edge, label %if.end.i.for.body.i199_crit_edge

if.end.i.for.body.i199_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i199

if.end.i.if.end75_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

for.cond.i:                                       ; preds = %if.end52.i.for.cond.i_crit_edge, %for.body44.i.for.cond.i_crit_edge, %if.end39.i.for.cond.i_crit_edge
  %inc60.i = add nuw i32 %idx.0146.i, 1
  %66 = ptrtoint ptr %tot_dimms62 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tot_dimms62, align 16
  %cmp.i195 = icmp ult i32 %inc60.i, %67
  br i1 %cmp.i195, label %for.cond.i.for.body.i199_crit_edge, label %for.cond.i.if.end75_crit_edge

for.cond.i.if.end75_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

for.cond.i.for.body.i199_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i199

for.body.i199:                                    ; preds = %for.cond.i.for.body.i199_crit_edge, %if.end.i.for.body.i199_crit_edge
  %idx.0146.i = phi i32 [ %inc60.i, %for.cond.i.for.body.i199_crit_edge ], [ 0, %if.end.i.for.body.i199_crit_edge ]
  %chn.0145.i = phi i32 [ %chn.1.i, %for.cond.i.for.body.i199_crit_edge ], [ 0, %if.end.i.for.body.i199_crit_edge ]
  %row.0144.i = phi i32 [ %row.1.i, %for.cond.i.for.body.i199_crit_edge ], [ 0, %if.end.i.for.body.i199_crit_edge ]
  %68 = ptrtoint ptr %csrows.i191 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %csrows.i191, align 8
  %arrayidx.i196 = getelementptr ptr, ptr %69, i32 %row.0144.i
  %70 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i196, align 4
  %channels.i197 = getelementptr inbounds %struct.csrow_info, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %channels.i197 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %channels.i197, align 8
  %arrayidx3.i = getelementptr ptr, ptr %73, i32 %chn.0145.i
  %74 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i198 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 1024) #17
  %tobool5.not.i = icmp eq ptr %call7.i.i.i198, null
  br i1 %tobool5.not.i, label %for.body.i199.edac_mc_alloc_dimms.exit.thread_crit_edge, label %if.end7.i

for.body.i199.edac_mc_alloc_dimms.exit.thread_crit_edge: ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_alloc_dimms.exit.thread

if.end7.i:                                        ; preds = %for.body.i199
  %77 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dimms.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %78, i32 %idx.0146.i
  %79 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i.i198, ptr %arrayidx9.i, align 4
  %mci10.i = getelementptr inbounds %struct.dimm_info, ptr %call7.i.i.i198, i32 0, i32 3
  %80 = ptrtoint ptr %mci10.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call9.i.i, ptr %mci10.i, align 4
  %idx11.i = getelementptr inbounds %struct.dimm_info, ptr %call7.i.i.i198, i32 0, i32 4
  %81 = ptrtoint ptr %idx11.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %idx.0146.i, ptr %idx11.i, align 8
  %label.i = getelementptr inbounds %struct.dimm_info, ptr %call7.i.i.i198, i32 0, i32 1
  %82 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mc_idx, align 4
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %label.i, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %83) #12
  %84 = ptrtoint ptr %n_layers63 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_layers63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp14136.not.i = icmp eq i32 %85, 0
  br i1 %cmp14136.not.i, label %if.end7.i.for.end.i_crit_edge, label %for.body15.preheader.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body15.preheader.i:                           ; preds = %if.end7.i
  %sub.i200 = sub i32 32, %call12.i
  %add.ptr.i201 = getelementptr i8, ptr %label.i, i32 %call12.i
  br label %for.body15.i203

for.body15.i203:                                  ; preds = %for.body15.i203.for.body15.i203_crit_edge, %for.body15.preheader.i
  %len.0139.i = phi i32 [ %sub21.i, %for.body15.i203.for.body15.i203_crit_edge ], [ %sub.i200, %for.body15.preheader.i ]
  %p.0138.i = phi ptr [ %add.ptr20.i, %for.body15.i203.for.body15.i203_crit_edge ], [ %add.ptr.i201, %for.body15.preheader.i ]
  %layer.0137.i = phi i32 [ %inc.i202, %for.body15.i203.for.body15.i203_crit_edge ], [ 0, %for.body15.preheader.i ]
  %86 = ptrtoint ptr %layers64 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %layers64, align 8
  %arrayidx16.i = getelementptr %struct.edac_mc_layer, ptr %87, i32 %layer.0137.i
  %88 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx17.i, align 4
  %arrayidx18.i = getelementptr [3 x i32], ptr %pos.i, i32 0, i32 %layer.0137.i
  %92 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx18.i, align 4
  %call19.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0138.i, i32 noundef %len.0139.i, ptr noundef nonnull @.str.83, ptr noundef %91, i32 noundef %93) #12
  %add.ptr20.i = getelementptr i8, ptr %p.0138.i, i32 %call19.i
  %sub21.i = sub i32 %len.0139.i, %call19.i
  %arrayidx23.i = getelementptr %struct.dimm_info, ptr %call7.i.i.i198, i32 0, i32 2, i32 %layer.0137.i
  %94 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx23.i, align 4
  %inc.i202 = add nuw i32 %layer.0137.i, 1
  %95 = ptrtoint ptr %n_layers63 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_layers63, align 4
  %cmp14.i = icmp ult i32 %inc.i202, %96
  br i1 %cmp14.i, label %for.body15.i203.for.body15.i203_crit_edge, label %for.body15.i203.for.end.i_crit_edge

for.body15.i203.for.end.i_crit_edge:              ; preds = %for.body15.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body15.i203.for.body15.i203_crit_edge:        ; preds = %for.body15.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i203

for.end.i:                                        ; preds = %for.body15.i203.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  %dimm24.i = getelementptr inbounds %struct.rank_info, ptr %75, i32 0, i32 2
  %97 = ptrtoint ptr %dimm24.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i.i198, ptr %dimm24.i, align 4
  %csrow.i204 = getelementptr inbounds %struct.dimm_info, ptr %call7.i.i.i198, i32 0, i32 10
  %98 = ptrtoint ptr %csrow.i204 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %row.0144.i, ptr %csrow.i204, align 8
  %cschannel.i = getelementptr inbounds %struct.dimm_info, ptr %call7.i.i.i198, i32 0, i32 11
  %99 = ptrtoint ptr %cschannel.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %chn.0145.i, ptr %cschannel.i, align 4
  %100 = ptrtoint ptr %layers64 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %layers64, align 8
  %is_virt_csrow.i = getelementptr inbounds %struct.edac_mc_layer, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %is_virt_csrow.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %is_virt_csrow.i, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool27.not.i = icmp eq i8 %103, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc29.i = add i32 %chn.0145.i, 1
  %104 = ptrtoint ptr %num_cschannel to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_cschannel, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc29.i, i32 %105)
  %cmp30.i = icmp eq i32 %inc29.i, %105
  %inc32.i = zext i1 %cmp30.i to i32
  %spec.select.i205 = add i32 %row.0144.i, %inc32.i
  %spec.select121.i = select i1 %cmp30.i, i32 0, i32 %inc29.i
  br label %if.end39.i

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc34.i = add i32 %row.0144.i, 1
  %106 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34.i, i32 %107)
  %cmp35.i = icmp eq i32 %inc34.i, %107
  %spec.select122.i = select i1 %cmp35.i, i32 0, i32 %inc34.i
  %inc37.i = zext i1 %cmp35.i to i32
  %spec.select123.i = add i32 %chn.0145.i, %inc37.i
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %if.then28.i
  %row.1.i = phi i32 [ %spec.select.i205, %if.then28.i ], [ %spec.select122.i, %if.else.i ]
  %chn.1.i = phi i32 [ %spec.select121.i, %if.then28.i ], [ %spec.select123.i, %if.else.i ]
  %108 = ptrtoint ptr %n_layers63 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %n_layers63, align 4
  %layer.1140.i = add i32 %109, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %layer.1140.i)
  %cmp43141.i = icmp sgt i32 %layer.1140.i, -1
  br i1 %cmp43141.i, label %if.end39.i.for.body44.i_crit_edge, label %if.end39.i.for.cond.i_crit_edge

if.end39.i.for.cond.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.end39.i.for.body44.i_crit_edge:                ; preds = %if.end39.i
  br label %for.body44.i

for.body44.i:                                     ; preds = %if.end52.i.for.body44.i_crit_edge, %if.end39.i.for.body44.i_crit_edge
  %layer.1142.i = phi i32 [ %layer.1.i, %if.end52.i.for.body44.i_crit_edge ], [ %layer.1140.i, %if.end39.i.for.body44.i_crit_edge ]
  %arrayidx45.i = getelementptr [3 x i32], ptr %pos.i, i32 0, i32 %layer.1142.i
  %110 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx45.i, align 4
  %inc46.i = add i32 %111, 1
  store i32 %inc46.i, ptr %arrayidx45.i, align 4
  %size.i = getelementptr %struct.edac_mc_layer, ptr %101, i32 %layer.1142.i, i32 1
  %112 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc46.i, i32 %113)
  %cmp50.i = icmp ult i32 %inc46.i, %113
  br i1 %cmp50.i, label %for.body44.i.for.cond.i_crit_edge, label %if.end52.i

for.body44.i.for.cond.i_crit_edge:                ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.end52.i:                                       ; preds = %for.body44.i
  %114 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %arrayidx45.i, align 4
  %layer.1.i = add i32 %layer.1142.i, -1
  %cmp43.i = icmp sgt i32 %layer.1.i, -1
  br i1 %cmp43.i, label %if.end52.i.for.body44.i_crit_edge, label %if.end52.i.for.cond.i_crit_edge

if.end52.i.for.cond.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.end52.i.for.body44.i_crit_edge:                ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body44.i

edac_mc_alloc_dimms.exit.thread:                  ; preds = %for.body.i199.edac_mc_alloc_dimms.exit.thread_crit_edge, %if.end7.i.i.i187.edac_mc_alloc_dimms.exit.thread_crit_edge, %kcalloc.exit.thread.i156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pos.i) #12
  br label %error

if.end75:                                         ; preds = %for.cond.i.if.end75_crit_edge, %if.end.i.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pos.i) #12
  %op_state = getelementptr inbounds %struct.mem_ctl_info, ptr %call9.i.i, i32 0, i32 36
  %115 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 256, ptr %op_state, align 4
  br label %cleanup

error:                                            ; preds = %edac_mc_alloc_dimms.exit.thread, %cleanup28.sink.split.i, %for.body15.i.error_crit_edge, %if.end7.i.i92.i.error_crit_edge, %for.body.i.error_crit_edge, %if.end7.i.i.i.error_crit_edge
  tail call void @put_device(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end75, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %error ], [ %call9.i.i, %if.end75 ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mci_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dimms, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %tot_dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %tot_dimms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tot_dimms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.not = icmp eq i32 %3, 0
  br i1 %cmp49.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dimms, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.050
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #12
  %inc = add nuw i32 %i.050, 1
  %8 = ptrtoint ptr %tot_dimms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tot_dimms, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dimms, align 4
  tail call void @kfree(ptr noundef %11) #12
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 14
  %12 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csrows, align 8
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.end.if.end29_crit_edge, label %for.cond5.preheader

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

for.cond5.preheader:                              ; preds = %if.end
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp653.not = icmp eq i32 %15, 0
  br i1 %cmp653.not, label %for.cond5.preheader.for.end27_crit_edge, label %for.body7.lr.ph

for.cond5.preheader.for.end27_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %num_cschannel = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 16
  br label %for.body7

for.body7:                                        ; preds = %for.inc25.for.body7_crit_edge, %for.body7.lr.ph
  %row.054 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc26, %for.inc25.for.body7_crit_edge ]
  %16 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %csrows, align 8
  %arrayidx9 = getelementptr ptr, ptr %17, i32 %row.054
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %for.body7.for.inc25_crit_edge, label %if.end12

for.body7.for.inc25_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc25

if.end12:                                         ; preds = %for.body7
  %channels = getelementptr inbounds %struct.csrow_info, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channels, align 8
  %tobool13.not = icmp eq ptr %21, null
  br i1 %tobool13.not, label %if.end12.if.end24_crit_edge, label %for.cond15.preheader

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

for.cond15.preheader:                             ; preds = %if.end12
  %22 = ptrtoint ptr %num_cschannel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_cschannel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1651.not = icmp eq i32 %23, 0
  br i1 %cmp1651.not, label %for.cond15.preheader.for.end22_crit_edge, label %for.cond15.preheader.for.body17_crit_edge

for.cond15.preheader.for.body17_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body17

for.cond15.preheader.for.end22_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond15.preheader.for.body17_crit_edge
  %chn.052 = phi i32 [ %inc21, %for.body17.for.body17_crit_edge ], [ 0, %for.cond15.preheader.for.body17_crit_edge ]
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channels, align 8
  %arrayidx19 = getelementptr ptr, ptr %25, i32 %chn.052
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx19, align 4
  tail call void @kfree(ptr noundef %27) #12
  %inc21 = add nuw i32 %chn.052, 1
  %28 = ptrtoint ptr %num_cschannel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_cschannel, align 8
  %cmp16 = icmp ult i32 %inc21, %29
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.end22_crit_edge

for.body17.for.end22_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

for.end22:                                        ; preds = %for.body17.for.end22_crit_edge, %for.cond15.preheader.for.end22_crit_edge
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channels, align 8
  tail call void @kfree(ptr noundef %31) #12
  br label %if.end24

if.end24:                                         ; preds = %for.end22, %if.end12.if.end24_crit_edge
  tail call void @kfree(ptr noundef nonnull %19) #12
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24, %for.body7.for.inc25_crit_edge
  %inc26 = add nuw i32 %row.054, 1
  %32 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_csrows, align 4
  %cmp6 = icmp ult i32 %inc26, %33
  br i1 %cmp6, label %for.inc25.for.body7_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end27

for.inc25.for.body7_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body7

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %for.cond5.preheader.for.end27_crit_edge
  %34 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %csrows, align 8
  tail call void @kfree(ptr noundef %35) #12
  br label %if.end29

if.end29:                                         ; preds = %for.end27, %if.end.if.end29_crit_edge
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_mc_free(ptr noundef %mci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #15
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  tail call void @put_device(ptr noundef %mci) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_has_mcs() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  %0 = load volatile ptr, ptr @mc_devices, align 4
  %cmp.i = icmp ne ptr %0, @mc_devices
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_mci_by_dev(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp.i = icmp sgt i32 %0, 2
  br i1 %cmp.i, label %do.end.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.86) #15
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %item.0.in.i = phi ptr [ %item.0.i, %for.body.i.for.cond.i_crit_edge ], [ @mc_devices, %for.cond.i.preheader ]
  %1 = ptrtoint ptr %item.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %item.0.i = load ptr, ptr %item.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %item.0.i, @mc_devices
  br i1 %cmp.i.not.i, label %for.cond.i.__find_mci_by_dev.exit_crit_edge, label %for.body.i

for.cond.i.__find_mci_by_dev.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__find_mci_by_dev.exit

for.body.i:                                       ; preds = %for.cond.i
  %pdev.i = getelementptr i8, ptr %item.0.i, i32 84
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %cmp6.i = icmp eq ptr %3, %dev
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %item.0.i, i32 -932
  br label %__find_mci_by_dev.exit

__find_mci_by_dev.exit:                           ; preds = %if.then7.i, %for.cond.i.__find_mci_by_dev.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then7.i ], [ null, %for.cond.i.__find_mci_by_dev.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_mc_reset_delay_period(i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  %item.05 = load ptr, ptr @mc_devices, align 4
  %cmp.i.not6 = icmp eq ptr %item.05, @mc_devices
  br i1 %cmp.i.not6, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %item.07 = phi ptr [ %item.0, %for.inc.for.body_crit_edge ], [ %item.05, %entry.for.body_crit_edge ]
  %op_state = getelementptr i8, ptr %item.07, i32 880
  %0 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %1)
  %cmp = icmp eq i32 %1, 513
  br i1 %cmp, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr i8, ptr %item.07, i32 184
  %call1 = tail call zeroext i1 @edac_mod_work(ptr noundef %work, i32 noundef %value) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %item.07 to i32
  call void @__asan_load4_noabort(i32 %2)
  %item.0 = load ptr, ptr %item.07, align 4
  %cmp.i.not = icmp eq ptr %item.0, @mc_devices
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_mod_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @edac_mc_find(i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %item.0.in = phi ptr [ @mc_devices, %entry ], [ %item.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %item.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %item.0 = load ptr, ptr %item.0.in, align 4
  %cmp.i.not = icmp eq ptr %item.0, @mc_devices
  br i1 %cmp.i.not, label %for.cond.unlock_crit_edge, label %for.body

for.cond.unlock_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.body:                                         ; preds = %for.cond
  %mc_idx = getelementptr i8, ptr %item.0, i32 48
  %1 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mc_idx, align 4
  %cmp = icmp eq i32 %2, %idx
  br i1 %cmp, label %unlock.split.loop.exit4, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

unlock.split.loop.exit4:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.le = getelementptr i8, ptr %item.0, i32 -932
  br label %unlock

unlock:                                           ; preds = %unlock.split.loop.exit4, %for.cond.unlock_crit_edge
  %mci.0 = phi ptr [ %add.ptr.le, %unlock.split.loop.exit4 ], [ null, %for.cond.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  ret ptr %mci.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @edac_get_owner() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @edac_mc_owner, align 4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef %mci, ptr noundef %groups) #0 align 64 {
entry:
  %location.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end3, label %entry.if.end51_crit_edge

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end3:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp4 = icmp sgt i32 %.pr, 2
  br i1 %cmp4, label %do.body3.i, label %do.end3.if.end51_crit_edge

do.end3.if.end51_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.body3.i:                                       ; preds = %do.end3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef %mci) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i)
  %cmp4.i = icmp sgt i32 %.pr.i, 2
  br i1 %cmp4.i, label %do.body12.i, label %do.body3.i.do.body39thread-pre-split.i_crit_edge

do.body3.i.do.body39thread-pre-split.i_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39thread-pre-split.i

do.body12.i:                                      ; preds = %do.body3.i
  %mtype_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 4
  %1 = ptrtoint ptr %mtype_cap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mtype_cap.i, align 8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef %2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr97.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr97.i)
  %cmp13.i = icmp sgt i32 %.pr97.i, 2
  br i1 %cmp13.i, label %do.body21.i, label %do.body12.i.do.body39thread-pre-split.i_crit_edge

do.body12.i.do.body39thread-pre-split.i_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39thread-pre-split.i

do.body21.i:                                      ; preds = %do.body12.i
  %edac_ctl_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 5
  %3 = ptrtoint ptr %edac_ctl_cap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %edac_ctl_cap.i, align 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88, i32 noundef %4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr99.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr99.pr.i)
  %cmp22.i = icmp sgt i32 %.pr99.pr.i, 2
  br i1 %cmp22.i, label %do.body30.i, label %do.body21.i.do.body39thread-pre-split.i_crit_edge

do.body21.i.do.body39thread-pre-split.i_crit_edge: ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39thread-pre-split.i

do.body30.i:                                      ; preds = %do.body21.i
  %edac_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 6
  %5 = ptrtoint ptr %edac_cap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %edac_cap.i, align 8
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.88, i32 noundef %6) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr101.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr101.i)
  %cmp31.i = icmp sgt i32 %.pr101.i, 3
  br i1 %cmp31.i, label %do.end34.i, label %do.body30.i.do.body39.i_crit_edge

do.body30.i.do.body39.i_crit_edge:                ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39.i

do.end34.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #14
  %edac_check.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 11
  %7 = ptrtoint ptr %edac_check.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edac_check.i, align 4
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.88, ptr noundef %8) #15
  br label %do.body39thread-pre-split.i

do.body39thread-pre-split.i:                      ; preds = %do.end34.i, %do.body21.i.do.body39thread-pre-split.i_crit_edge, %do.body12.i.do.body39thread-pre-split.i_crit_edge, %do.body3.i.do.body39thread-pre-split.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr103.i = load i32, ptr @edac_debug_level, align 4
  br label %do.body39.i

do.body39.i:                                      ; preds = %do.body39thread-pre-split.i, %do.body30.i.do.body39.i_crit_edge
  %9 = phi i32 [ %.pr103.i, %do.body39thread-pre-split.i ], [ %.pr101.i, %do.body30.i.do.body39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp40.i = icmp sgt i32 %9, 2
  br i1 %cmp40.i, label %do.end43.i, label %do.body39.i.do.body48.i_crit_edge

do.body39.i.do.body48.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48.i

do.end43.i:                                       ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #14
  %nr_csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 15
  %10 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_csrows.i, align 4
  %csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  %12 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %csrows.i, align 8
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.88, i32 noundef %11, ptr noundef %13) #15
  br label %do.body48.i

do.body48.i:                                      ; preds = %do.end43.i, %do.body39.i.do.body48.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %14 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp49.i = icmp sgt i32 %14, 2
  br i1 %cmp49.i, label %do.body57.i, label %do.body48.i.if.end51_crit_edge

do.body48.i.if.end51_crit_edge:                   ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.body57.i:                                      ; preds = %do.body48.i
  %tot_dimms.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 20
  %15 = ptrtoint ptr %tot_dimms.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tot_dimms.i, align 8
  %dimms.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 21
  %17 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dimms.i, align 4
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.88, i32 noundef %16, ptr noundef %18) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr104.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr104.i)
  %cmp58.i = icmp sgt i32 %.pr104.i, 2
  br i1 %cmp58.i, label %do.body66.i, label %do.body57.i.if.end51_crit_edge

do.body57.i.if.end51_crit_edge:                   ; preds = %do.body57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.body66.i:                                      ; preds = %do.body57.i
  %pdev.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.88, ptr noundef %20) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr106.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr106.i)
  %cmp67.i = icmp sgt i32 %.pr106.i, 2
  br i1 %cmp67.i, label %do.body75.i, label %do.body66.i.if.end51_crit_edge

do.body66.i.if.end51_crit_edge:                   ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.body75.i:                                      ; preds = %do.body66.i
  %mod_name.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 23
  %21 = ptrtoint ptr %mod_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mod_name.i, align 4
  %ctl_name.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %23 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl_name.i, align 8
  %call72.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.88, ptr noundef %22, ptr noundef %24) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr108.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr108.pr.i)
  %cmp76.i = icmp sgt i32 %.pr108.pr.i, 2
  br i1 %cmp76.i, label %if.end6, label %do.body75.i.if.end51_crit_edge

do.body75.i.if.end51_crit_edge:                   ; preds = %do.body75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end6:                                          ; preds = %do.body75.i
  %pvt_info.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %25 = ptrtoint ptr %pvt_info.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pvt_info.i, align 8
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.88, ptr noundef %26) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr210 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr210)
  %cmp7 = icmp sgt i32 %.pr210, 3
  br i1 %cmp7, label %for.cond.preheader, label %if.end6.if.end51_crit_edge

if.end6.if.end51_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

for.cond.preheader:                               ; preds = %if.end6
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 15
  %27 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9224.not = icmp eq i32 %28, 0
  br i1 %cmp9224.not, label %for.cond.preheader.for.end38_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end38_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %cleanup.for.body_crit_edge ]
  %29 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csrows, align 8
  %arrayidx = getelementptr ptr, ptr %30, i32 %i.0225
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp11219.not = icmp eq i32 %34, 0
  br i1 %cmp11219.not, label %for.body.cleanup_crit_edge, label %for.body12.lr.ph

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body12.lr.ph:                                 ; preds = %for.body
  %channels = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channels, align 8
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %j.0221 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc, %for.body12.for.body12_crit_edge ]
  %nr_pages.0220 = phi i32 [ 0, %for.body12.lr.ph ], [ %add, %for.body12.for.body12_crit_edge ]
  %arrayidx13 = getelementptr ptr, ptr %36, i32 %j.0221
  %37 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx13, align 4
  %dimm14 = getelementptr inbounds %struct.rank_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dimm14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dimm14, align 4
  %nr_pages15 = getelementptr inbounds %struct.dimm_info, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %nr_pages15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_pages15, align 4
  %add = add i32 %42, %nr_pages.0220
  %inc = add nuw i32 %j.0221, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.end, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12

for.end:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %43 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp.i156 = icmp sgt i32 %43, 3
  br i1 %cmp.i156, label %do.body3.i160, label %if.end17.edac_mc_dump_csrow.exit_crit_edge

if.end17.edac_mc_dump_csrow.exit_crit_edge:       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body3.i160:                                    ; preds = %if.end17
  %csrow_idx.i = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 4
  %44 = ptrtoint ptr %csrow_idx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %csrow_idx.i, align 4
  %call.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %45) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr.i158 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i158)
  %cmp4.i159 = icmp sgt i32 %.pr.i158, 3
  br i1 %cmp4.i159, label %do.body12.i163, label %do.body3.i160.edac_mc_dump_csrow.exit_crit_edge

do.body3.i160.edac_mc_dump_csrow.exit_crit_edge:  ; preds = %do.body3.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body12.i163:                                   ; preds = %do.body3.i160
  %call9.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.117, ptr noundef %32) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr74.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr74.i)
  %cmp13.i162 = icmp sgt i32 %.pr74.i, 3
  br i1 %cmp13.i162, label %do.body21.i166, label %do.body12.i163.edac_mc_dump_csrow.exit_crit_edge

do.body12.i163.edac_mc_dump_csrow.exit_crit_edge: ; preds = %do.body12.i163
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body21.i166:                                   ; preds = %do.body12.i163
  %first_page.i = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 1
  %46 = ptrtoint ptr %first_page.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_page.i, align 8
  %call18.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.117, i32 noundef %47) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr76.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr76.pr.i)
  %cmp22.i165 = icmp sgt i32 %.pr76.pr.i, 3
  br i1 %cmp22.i165, label %do.body30.i169, label %do.body21.i166.edac_mc_dump_csrow.exit_crit_edge

do.body21.i166.edac_mc_dump_csrow.exit_crit_edge: ; preds = %do.body21.i166
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body30.i169:                                   ; preds = %do.body21.i166
  %last_page.i = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 2
  %48 = ptrtoint ptr %last_page.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %last_page.i, align 4
  %call27.i167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.117, i32 noundef %49) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr78.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr78.i)
  %cmp31.i168 = icmp sgt i32 %.pr78.i, 3
  br i1 %cmp31.i168, label %do.body39.i172, label %do.body30.i169.edac_mc_dump_csrow.exit_crit_edge

do.body30.i169.edac_mc_dump_csrow.exit_crit_edge: ; preds = %do.body30.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body39.i172:                                   ; preds = %do.body30.i169
  %page_mask.i = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 3
  %50 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %page_mask.i, align 8
  %call36.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.117, i32 noundef %51) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr80.pr.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr80.pr.pr.i)
  %cmp40.i171 = icmp sgt i32 %.pr80.pr.pr.i, 3
  br i1 %cmp40.i171, label %do.body48.i175, label %do.body39.i172.edac_mc_dump_csrow.exit_crit_edge

do.body39.i172.edac_mc_dump_csrow.exit_crit_edge: ; preds = %do.body39.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body48.i175:                                   ; preds = %do.body39.i172
  %52 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_channels, align 4
  %call45.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.117, i32 noundef %53) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr82.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr82.i)
  %cmp49.i174 = icmp sgt i32 %.pr82.i, 3
  br i1 %cmp49.i174, label %do.body57.i178, label %do.body48.i175.edac_mc_dump_csrow.exit_crit_edge

do.body48.i175.edac_mc_dump_csrow.exit_crit_edge: ; preds = %do.body48.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.body57.i178:                                   ; preds = %do.body48.i175
  %channels.i = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 9
  %54 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %channels.i, align 8
  %call54.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.117, ptr noundef %55) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr84.pr.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr84.pr.pr.i)
  %cmp58.i177 = icmp sgt i32 %.pr84.pr.pr.i, 3
  br i1 %cmp58.i177, label %do.end61.i, label %do.body57.i178.edac_mc_dump_csrow.exit_crit_edge

do.body57.i178.edac_mc_dump_csrow.exit_crit_edge: ; preds = %do.body57.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_csrow.exit

do.end61.i:                                       ; preds = %do.body57.i178
  call void @__sanitizer_cov_trace_pc() #14
  %mci.i = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 7
  %56 = ptrtoint ptr %mci.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mci.i, align 8
  %call63.i179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.117, ptr noundef %57) #15
  br label %edac_mc_dump_csrow.exit

edac_mc_dump_csrow.exit:                          ; preds = %do.end61.i, %do.body57.i178.edac_mc_dump_csrow.exit_crit_edge, %do.body48.i175.edac_mc_dump_csrow.exit_crit_edge, %do.body39.i172.edac_mc_dump_csrow.exit_crit_edge, %do.body30.i169.edac_mc_dump_csrow.exit_crit_edge, %do.body21.i166.edac_mc_dump_csrow.exit_crit_edge, %do.body12.i163.edac_mc_dump_csrow.exit_crit_edge, %do.body3.i160.edac_mc_dump_csrow.exit_crit_edge, %if.end17.edac_mc_dump_csrow.exit_crit_edge
  %58 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp20222.not = icmp eq i32 %59, 0
  br i1 %cmp20222.not, label %edac_mc_dump_csrow.exit.cleanup_crit_edge, label %for.body21.lr.ph

edac_mc_dump_csrow.exit.cleanup_crit_edge:        ; preds = %edac_mc_dump_csrow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body21.lr.ph:                                 ; preds = %edac_mc_dump_csrow.exit
  %channels22 = getelementptr inbounds %struct.csrow_info, ptr %32, i32 0, i32 9
  br label %for.body21

for.body21:                                       ; preds = %for.inc31.for.body21_crit_edge, %for.body21.lr.ph
  %j.1223 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc32, %for.inc31.for.body21_crit_edge ]
  %60 = ptrtoint ptr %channels22 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %channels22, align 8
  %arrayidx23 = getelementptr ptr, ptr %61, i32 %j.1223
  %62 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx23, align 4
  %dimm24 = getelementptr inbounds %struct.rank_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %dimm24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dimm24, align 4
  %nr_pages25 = getelementptr inbounds %struct.dimm_info, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %nr_pages25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr_pages25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool26.not = icmp eq i32 %67, 0
  br i1 %tobool26.not, label %for.body21.for.inc31_crit_edge, label %if.then27

for.body21.for.inc31_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

if.then27:                                        ; preds = %for.body21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %68 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp.i180 = icmp sgt i32 %68, 3
  br i1 %cmp.i180, label %do.body3.i184, label %if.then27.for.inc31_crit_edge

if.then27.for.inc31_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

do.body3.i184:                                    ; preds = %if.then27
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %63, align 4
  %call.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef %70) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr.i182 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i182)
  %cmp4.i183 = icmp sgt i32 %.pr.i182, 3
  br i1 %cmp4.i183, label %do.body12.i187, label %do.body3.i184.for.inc31_crit_edge

do.body3.i184.for.inc31_crit_edge:                ; preds = %do.body3.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

do.body12.i187:                                   ; preds = %do.body3.i184
  %call9.i185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.140, ptr noundef %63) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr34.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr34.i)
  %cmp13.i186 = icmp sgt i32 %.pr34.i, 3
  br i1 %cmp13.i186, label %do.body21.i190, label %do.body12.i187.for.inc31_crit_edge

do.body12.i187.for.inc31_crit_edge:               ; preds = %do.body12.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

do.body21.i190:                                   ; preds = %do.body12.i187
  %csrow.i = getelementptr inbounds %struct.rank_info, ptr %63, i32 0, i32 1
  %71 = ptrtoint ptr %csrow.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %csrow.i, align 4
  %call18.i188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.140, ptr noundef %72) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr36.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr36.pr.i)
  %cmp22.i189 = icmp sgt i32 %.pr36.pr.i, 3
  br i1 %cmp22.i189, label %do.end25.i, label %do.body21.i190.for.inc31_crit_edge

do.body21.i190.for.inc31_crit_edge:               ; preds = %do.body21.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc31

do.end25.i:                                       ; preds = %do.body21.i190
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %dimm24 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dimm24, align 4
  %call27.i191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.140, ptr noundef %74) #15
  br label %for.inc31

for.inc31:                                        ; preds = %do.end25.i, %do.body21.i190.for.inc31_crit_edge, %do.body12.i187.for.inc31_crit_edge, %do.body3.i184.for.inc31_crit_edge, %if.then27.for.inc31_crit_edge, %for.body21.for.inc31_crit_edge
  %inc32 = add nuw i32 %j.1223, 1
  %75 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_channels, align 4
  %cmp20 = icmp ult i32 %inc32, %76
  br i1 %cmp20, label %for.inc31.for.body21_crit_edge, label %for.inc31.cleanup_crit_edge

for.inc31.cleanup_crit_edge:                      ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc31.for.body21_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

cleanup:                                          ; preds = %for.inc31.cleanup_crit_edge, %edac_mc_dump_csrow.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc37 = add nuw i32 %i.0225, 1
  %77 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_csrows, align 4
  %cmp9 = icmp ult i32 %inc37, %78
  br i1 %cmp9, label %cleanup.for.body_crit_edge, label %cleanup.for.end38_crit_edge

cleanup.for.end38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end38

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end38:                                        ; preds = %cleanup.for.end38_crit_edge, %for.cond.preheader.for.end38_crit_edge
  %79 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dimms.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %tobool41.not226 = icmp eq ptr %82, null
  br i1 %tobool41.not226, label %for.end38.if.end51_crit_edge, label %for.end38.for.body42_crit_edge

for.end38.for.body42_crit_edge:                   ; preds = %for.end38
  br label %for.body42

for.end38.if.end51_crit_edge:                     ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

for.body42:                                       ; preds = %cond.end.for.body42_crit_edge, %for.end38.for.body42_crit_edge
  %dimm.0227 = phi ptr [ %124, %cond.end.for.body42_crit_edge ], [ %82, %for.end38.for.body42_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %location.i) #12
  %83 = call ptr @memset(ptr %location.i, i32 255, i32 80)
  %nr_pages.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 9
  %84 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i, label %for.body42.edac_mc_dump_dimm.exit_crit_edge, label %if.end.i192

for.body42.edac_mc_dump_dimm.exit_crit_edge:      ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

if.end.i192:                                      ; preds = %for.body42
  %mci1.i.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 3
  %86 = ptrtoint ptr %mci1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mci1.i.i, align 4
  %n_layers.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %87, i32 0, i32 17
  %88 = ptrtoint ptr %n_layers.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_layers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp14.not.i.i = icmp eq i32 %89, 0
  br i1 %cmp14.not.i.i, label %if.end.i192.edac_dimm_info_location.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i192.edac_dimm_info_location.exit.i_crit_edge: ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_dimm_info_location.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i192
  %layers.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %87, i32 0, i32 18
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %p.018.i.i = phi ptr [ %location.i, %for.body.lr.ph.i.i ], [ %add.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %len.addr.015.i.i = phi i32 [ 80, %for.body.lr.ph.i.i ], [ %sub.i.i193, %for.body.i.i.for.body.i.i_crit_edge ]
  %90 = ptrtoint ptr %layers.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %layers.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.edac_mc_layer, ptr %91, i32 %i.016.i.i
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %93
  %94 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.dimm_info, ptr %dimm.0227, i32 0, i32 2, i32 %i.016.i.i
  %96 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx3.i.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.018.i.i, i32 noundef %len.addr.015.i.i, ptr noundef nonnull @.str, ptr noundef %95, i32 noundef %97) #12
  %add.ptr.i.i = getelementptr i8, ptr %p.018.i.i, i32 %call.i.i
  %sub.i.i193 = sub i32 %len.addr.015.i.i, %call.i.i
  %inc.i.i = add nuw i32 %i.016.i.i, 1
  %98 = ptrtoint ptr %n_layers.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %n_layers.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %99
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.edac_dimm_info_location.exit.i_crit_edge

for.body.i.i.edac_dimm_info_location.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_dimm_info_location.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

edac_dimm_info_location.exit.i:                   ; preds = %for.body.i.i.edac_dimm_info_location.exit.i_crit_edge, %if.end.i192.edac_dimm_info_location.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %100 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %100)
  %cmp.i194 = icmp sgt i32 %100, 3
  br i1 %cmp.i194, label %do.body9.i, label %edac_dimm_info_location.exit.i.edac_mc_dump_dimm.exit_crit_edge

edac_dimm_info_location.exit.i.edac_mc_dump_dimm.exit_crit_edge: ; preds = %edac_dimm_info_location.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

do.body9.i:                                       ; preds = %edac_dimm_info_location.exit.i
  %101 = ptrtoint ptr %mci1.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mci1.i.i, align 4
  %csbased.i = getelementptr inbounds %struct.mem_ctl_info, ptr %102, i32 0, i32 19
  %103 = ptrtoint ptr %csbased.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %csbased.i, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool3.not.i = icmp eq i8 %104, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.77, ptr @.str.76
  %idx.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 4
  %105 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %idx.i, align 8
  %csrow.i195 = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 10
  %107 = ptrtoint ptr %csrow.i195 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %csrow.i195, align 8
  %cschannel.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 11
  %109 = ptrtoint ptr %cschannel.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cschannel.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, ptr noundef nonnull %cond.i, i32 noundef %106, ptr noundef nonnull %location.i, i32 noundef %108, i32 noundef %110) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr.i196 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i196)
  %cmp10.i = icmp sgt i32 %.pr.i196, 3
  br i1 %cmp10.i, label %do.body20.i, label %do.body9.i.edac_mc_dump_dimm.exit_crit_edge

do.body9.i.edac_mc_dump_dimm.exit_crit_edge:      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

do.body20.i:                                      ; preds = %do.body9.i
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.151, ptr noundef nonnull %dimm.0227) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr78.i197 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr78.i197)
  %cmp21.i = icmp sgt i32 %.pr78.i197, 3
  br i1 %cmp21.i, label %do.body32.i, label %do.body20.i.edac_mc_dump_dimm.exit_crit_edge

do.body20.i.edac_mc_dump_dimm.exit_crit_edge:     ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

do.body32.i:                                      ; preds = %do.body20.i
  %label.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 1
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.151, ptr noundef %label.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr80.pr.i = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr80.pr.i)
  %cmp33.i = icmp sgt i32 %.pr80.pr.i, 3
  br i1 %cmp33.i, label %do.body44.i, label %do.body32.i.edac_mc_dump_dimm.exit_crit_edge

do.body32.i.edac_mc_dump_dimm.exit_crit_edge:     ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

do.body44.i:                                      ; preds = %do.body32.i
  %111 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nr_pages.i, align 4
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.151, i32 noundef %112) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr82.i198 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr82.i198)
  %cmp45.i = icmp sgt i32 %.pr82.i198, 3
  br i1 %cmp45.i, label %do.body55.i, label %do.body44.i.edac_mc_dump_dimm.exit_crit_edge

do.body44.i.edac_mc_dump_dimm.exit_crit_edge:     ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

do.body55.i:                                      ; preds = %do.body44.i
  %grain.i = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 5
  %113 = ptrtoint ptr %grain.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %grain.i, align 4
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.151, i32 noundef %114) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %.pr84.pr.pr.i199 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr84.pr.pr.i199)
  %cmp56.i = icmp sgt i32 %.pr84.pr.pr.i199, 3
  br i1 %cmp56.i, label %do.end60.i, label %do.body55.i.edac_mc_dump_dimm.exit_crit_edge

do.body55.i.edac_mc_dump_dimm.exit_crit_edge:     ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_mc_dump_dimm.exit

do.end60.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nr_pages.i, align 4
  %call63.i200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.151, i32 noundef %116) #15
  br label %edac_mc_dump_dimm.exit

edac_mc_dump_dimm.exit:                           ; preds = %do.end60.i, %do.body55.i.edac_mc_dump_dimm.exit_crit_edge, %do.body44.i.edac_mc_dump_dimm.exit_crit_edge, %do.body32.i.edac_mc_dump_dimm.exit_crit_edge, %do.body20.i.edac_mc_dump_dimm.exit_crit_edge, %do.body9.i.edac_mc_dump_dimm.exit_crit_edge, %edac_dimm_info_location.exit.i.edac_mc_dump_dimm.exit_crit_edge, %for.body42.edac_mc_dump_dimm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %location.i) #12
  %idx = getelementptr inbounds %struct.dimm_info, ptr %dimm.0227, i32 0, i32 4
  %117 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %idx, align 8
  %add44 = add i32 %118, 1
  %119 = ptrtoint ptr %tot_dimms.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tot_dimms.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %120)
  %cmp45 = icmp ult i32 %add44, %120
  br i1 %cmp45, label %cond.end, label %edac_mc_dump_dimm.exit.if.end51_crit_edge

edac_mc_dump_dimm.exit.if.end51_crit_edge:        ; preds = %edac_mc_dump_dimm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

cond.end:                                         ; preds = %edac_mc_dump_dimm.exit
  %121 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dimms.i, align 4
  %arrayidx49 = getelementptr ptr, ptr %122, i32 %add44
  %123 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx49, align 4
  %tobool41.not = icmp eq ptr %124, null
  br i1 %tobool41.not, label %cond.end.if.end51_crit_edge, label %cond.end.for.body42_crit_edge

cond.end.for.body42_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body42

cond.end.if.end51_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end51:                                         ; preds = %cond.end.if.end51_crit_edge, %edac_mc_dump_dimm.exit.if.end51_crit_edge, %for.end38.if.end51_crit_edge, %if.end6.if.end51_crit_edge, %do.body75.i.if.end51_crit_edge, %do.body66.i.if.end51_crit_edge, %do.body57.i.if.end51_crit_edge, %do.body48.i.if.end51_crit_edge, %do.end3.if.end51_crit_edge, %entry.if.end51_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  %125 = load ptr, ptr @edac_mc_owner, align 4
  %tobool52.not = icmp eq ptr %125, null
  br i1 %tobool52.not, label %if.end51.if.end55_crit_edge, label %land.lhs.true

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end51
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 23
  %126 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mod_name, align 4
  %cmp53.not = icmp eq ptr %125, %127
  br i1 %cmp53.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true.cleanup109_crit_edge

land.lhs.true.cleanup109_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup109

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %pdev.i201 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %128 = ptrtoint ptr %pdev.i201 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdev.i201, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %130 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp.i.i202 = icmp sgt i32 %130, 2
  br i1 %cmp.i.i202, label %do.end.i.i, label %if.end55.for.cond.i.i.preheader_crit_edge

if.end55.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.preheader

do.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.86) #15
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %do.end.i.i, %if.end55.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i204.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %item.0.in.i.i = phi ptr [ %item.0.i.i, %for.body.i.i204.for.cond.i.i_crit_edge ], [ @mc_devices, %for.cond.i.i.preheader ]
  %131 = ptrtoint ptr %item.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %item.0.i.i = load ptr, ptr %item.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %item.0.i.i, @mc_devices
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.for.cond.preheader.i_crit_edge, label %for.body.i.i204

for.cond.i.i.for.cond.preheader.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.body.i.i204:                                  ; preds = %for.cond.i.i
  %pdev.i.i = getelementptr i8, ptr %item.0.i.i, i32 84
  %132 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pdev.i.i, align 8
  %cmp6.i.i = icmp eq ptr %133, %129
  br i1 %cmp6.i.i, label %__find_mci_by_dev.exit.i, label %for.body.i.i204.for.cond.i.i_crit_edge

for.body.i.i204.for.cond.i.i_crit_edge:           ; preds = %for.body.i.i204
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

__find_mci_by_dev.exit.i:                         ; preds = %for.body.i.i204
  %add.ptr.i.i205 = getelementptr i8, ptr %item.0.i.i, i32 -932
  %cmp.not.i = icmp eq ptr %add.ptr.i.i205, null
  br i1 %cmp.not.i, label %__find_mci_by_dev.exit.i.for.cond.preheader.i_crit_edge, label %do.end.i, !prof !372

__find_mci_by_dev.exit.i.for.cond.preheader.i_crit_edge: ; preds = %__find_mci_by_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %__find_mci_by_dev.exit.i.for.cond.preheader.i_crit_edge, %for.cond.i.i.for.cond.preheader.i_crit_edge
  %mc_idx6.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %item.0.in.i = phi ptr [ %item.0.i, %for.body.i.for.cond.i_crit_edge ], [ @mc_devices, %for.cond.preheader.i ]
  %134 = ptrtoint ptr %item.0.in.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %item.0.i = load ptr, ptr %item.0.in.i, align 4
  %cmp.i49.not.i = icmp eq ptr %item.0.i, @mc_devices
  br i1 %cmp.i49.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %mc_idx.i = getelementptr i8, ptr %item.0.i, i32 48
  %135 = ptrtoint ptr %mc_idx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mc_idx.i, align 4
  %137 = ptrtoint ptr %mc_idx6.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mc_idx6.i, align 4
  %cmp7.not.i = icmp slt i32 %136, %138
  br i1 %cmp7.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then8.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp11.i = icmp eq i32 %136, %138
  br i1 %cmp11.i, label %do.end28.i, label %if.then8.i.for.end.i_crit_edge, !prof !370

if.then8.i.for.end.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %if.then8.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %link.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %item.0.i, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %140, ptr noundef %item.0.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.if.end59_crit_edge

for.end.i.if.end59_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %item.0.i, ptr %link.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 2, i32 1
  %142 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %140, ptr %prev2.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !373
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %link.i, ptr %140, align 4
  %144 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %link.i, ptr %prev.i.i, align 4
  br label %if.end59

do.end.i:                                         ; preds = %__find_mci_by_dev.exit.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %129, i32 0, i32 3
  %145 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %146, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %129, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i50.i = phi ptr [ %148, %if.end.i.i ], [ %146, %do.end.i.dev_name.exit.i_crit_edge ]
  %dev_name.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 25
  %149 = ptrtoint ptr %dev_name.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev_name.i, align 4
  %mod_name.i206 = getelementptr i8, ptr %item.0.i.i, i32 88
  %151 = ptrtoint ptr %mod_name.i206 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mod_name.i206, align 4
  %ctl_name.i207 = getelementptr i8, ptr %item.0.i.i, i32 92
  %153 = ptrtoint ptr %ctl_name.i207 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ctl_name.i207, align 8
  %mc_idx24.i = getelementptr i8, ptr %item.0.i.i, i32 48
  %155 = ptrtoint ptr %mc_idx24.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mc_idx24.i, align 4
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %retval.0.i50.i, ptr noundef %150, ptr noundef %152, ptr noundef %154, i32 noundef %156) #15
  br label %cleanup109

do.end28.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %136, ptr noundef nonnull @.str.167) #15
  br label %cleanup109

if.end59:                                         ; preds = %if.end.i.i.i, %for.end.i.if.end59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %start_time = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 27
  %158 = ptrtoint ptr %start_time to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %start_time, align 4
  %call60 = call ptr @edac_get_sysfs_subsys() #12
  %bus = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 1
  %159 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call60, ptr %bus, align 8
  %call61 = call i32 @edac_create_sysfs_mci_device(ptr noundef %mci, ptr noundef %groups) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %mc_idx6.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mc_idx6.i, align 4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %161) #15
  %call108 = call fastcc i32 @del_mc_from_global_list(ptr noundef %mci)
  br label %cleanup109

if.end69:                                         ; preds = %if.end59
  %edac_check = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 11
  %162 = ptrtoint ptr %edac_check to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %edac_check, align 4
  %tobool70.not = icmp eq ptr %163, null
  %op_state96 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 36
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %164 = ptrtoint ptr %op_state96 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 513, ptr %op_state96, align 4
  %work = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 34
  call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %165 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 34, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.41, ptr noundef nonnull @edac_mc_add_mc_with_groups.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry81 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 34, i32 0, i32 1
  %166 = ptrtoint ptr %entry81 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %entry81, ptr %entry81, align 4
  %prev.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 34, i32 0, i32 1, i32 1
  %167 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %entry81, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 34, i32 0, i32 2
  %168 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @edac_mc_workq_function, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 34, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @edac_mc_add_mc_with_groups.__key.42) #12
  %call93 = call i32 @edac_mc_get_poll_msec() #12
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %call93) #12
  %call95 = call zeroext i1 @edac_queue_work(ptr noundef %work, i32 noundef %call2.i) #12
  br label %do.end100

if.else:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %op_state96 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 514, ptr %op_state96, align 4
  br label %do.end100

do.end100:                                        ; preds = %if.else, %if.then71
  %170 = ptrtoint ptr %mc_idx6.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mc_idx6.i, align 4
  %mod_name103 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 23
  %172 = ptrtoint ptr %mod_name103 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mod_name103, align 4
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %174 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ctl_name, align 8
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 25
  %176 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev_name, align 4
  %op_state104 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 36
  %178 = ptrtoint ptr %op_state104 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %op_state104, align 4
  %call105 = call ptr @edac_op_state_to_string(i32 noundef %179) #12
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %171, ptr noundef %173, ptr noundef %175, ptr noundef %177, ptr noundef %call105) #15
  %180 = ptrtoint ptr %mod_name103 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mod_name103, align 4
  store ptr %181, ptr @edac_mc_owner, align 4
  br label %cleanup109

cleanup109:                                       ; preds = %do.end100, %do.end66, %do.end28.i, %dev_name.exit.i, %land.lhs.true.cleanup109_crit_edge
  %retval.0 = phi i32 [ 0, %do.end100 ], [ -22, %do.end66 ], [ -1, %land.lhs.true.cleanup109_crit_edge ], [ -22, %dev_name.exit.i ], [ -22, %do.end28.i ]
  call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_create_sysfs_mci_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edac_mc_workq_function(ptr noundef %work_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work_req, i32 -1116
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  %op_state = getelementptr i8, ptr %work_req, i32 696
  %0 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %1)
  %cmp.not = icmp eq i32 %1, 513
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %edac_check = getelementptr i8, ptr %work_req, i32 -144
  %3 = ptrtoint ptr %edac_check to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edac_check, align 4
  tail call void %4(ptr noundef %add.ptr) #12
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  %call4 = tail call i32 @edac_mc_get_poll_msec() #12
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %call4) #12
  %call6 = tail call zeroext i1 @edac_queue_work(ptr noundef %work_req, i32 noundef %call2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_queue_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_poll_msec() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_op_state_to_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @del_mc_from_global_list(ptr noundef %mci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %link = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @synchronize_rcu() #12
  %7 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %link, ptr %link, align 4
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %link, ptr %prev.i, align 4
  %9 = load volatile ptr, ptr @mc_devices, align 4
  %cmp.i = icmp eq ptr %9, @mc_devices
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @edac_mc_del_mc(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %0 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47) #15
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @mem_ctls_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %1 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp sgt i32 %1, 2
  br i1 %cmp.i, label %do.end.i, label %do.end3.for.cond.i.preheader_crit_edge

do.end3.for.cond.i.preheader_crit_edge:           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.86) #15
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %do.end3.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %item.0.in.i = phi ptr [ %item.0.i, %for.body.i.for.cond.i_crit_edge ], [ @mc_devices, %for.cond.i.preheader ]
  %2 = ptrtoint ptr %item.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %item.0.i = load ptr, ptr %item.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %item.0.i, @mc_devices
  br i1 %cmp.i.not.i, label %for.cond.i.if.then6_crit_edge, label %for.body.i

for.cond.i.if.then6_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

for.body.i:                                       ; preds = %for.cond.i
  %pdev.i = getelementptr i8, ptr %item.0.i, i32 84
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 8
  %cmp6.i = icmp eq ptr %4, %dev
  br i1 %cmp6.i, label %__find_mci_by_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__find_mci_by_dev.exit:                           ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %item.0.i, i32 -932
  %cmp5 = icmp eq ptr %add.ptr.i, null
  br i1 %cmp5, label %__find_mci_by_dev.exit.if.then6_crit_edge, label %if.end7

__find_mci_by_dev.exit.if.then6_crit_edge:        ; preds = %__find_mci_by_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6

if.then6:                                         ; preds = %__find_mci_by_dev.exit.if.then6_crit_edge, %for.cond.i.if.then6_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  br label %cleanup

if.end7:                                          ; preds = %__find_mci_by_dev.exit
  %op_state = getelementptr i8, ptr %item.0.i, i32 880
  %5 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 768, ptr %op_state, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %item.0.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.del_mc_from_global_list.exit_crit_edge

if.end7.del_mc_from_global_list.exit_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %del_mc_from_global_list.exit

if.end.i.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr i8, ptr %item.0.i, i32 4
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %item.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %item.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %del_mc_from_global_list.exit

del_mc_from_global_list.exit:                     ; preds = %if.end.i.i.i, %if.end7.del_mc_from_global_list.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %item.0.i, i32 4
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @synchronize_rcu() #12
  %13 = ptrtoint ptr %item.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %item.0.i, ptr %item.0.i, align 4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %item.0.i, ptr %prev.i.i, align 4
  %15 = load volatile ptr, ptr @mc_devices, align 4
  %cmp.i.i.not = icmp eq ptr %15, @mc_devices
  br i1 %cmp.i.i.not, label %if.then9, label %del_mc_from_global_list.exit.if.end10_crit_edge

del_mc_from_global_list.exit.if.end10_crit_edge:  ; preds = %del_mc_from_global_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %del_mc_from_global_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @edac_mc_owner, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %del_mc_from_global_list.exit.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mem_ctls_mutex) #12
  %edac_check = getelementptr i8, ptr %item.0.i, i32 40
  %16 = ptrtoint ptr %edac_check to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edac_check, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr i8, ptr %item.0.i, i32 184
  %call13 = tail call zeroext i1 @edac_stop_work(ptr noundef %work) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  tail call void @edac_remove_sysfs_mci_device(ptr noundef nonnull %add.ptr.i) #12
  %mc_idx = getelementptr i8, ptr %item.0.i, i32 48
  %18 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mc_idx, align 4
  %mod_name = getelementptr i8, ptr %item.0.i, i32 88
  %20 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mod_name, align 4
  %ctl_name = getelementptr i8, ptr %item.0.i, i32 92
  %22 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctl_name, align 8
  %dev_name = getelementptr i8, ptr %item.0.i, i32 96
  %24 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_name, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %19, ptr noundef %21, ptr noundef %23, ptr noundef %25) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6
  %retval.0 = phi ptr [ null, %if.then6 ], [ %add.ptr.i, %if.end14 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @edac_stop_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_remove_sysfs_mci_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_mc_find_csrow_by_page(ptr nocapture noundef readonly %mci, i32 noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %csrows1 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  %0 = ptrtoint ptr %csrows1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csrows1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %2 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  %3 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mc_idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %4, i32 noundef %page) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 15
  %5 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp593.not = icmp eq i32 %6, 0
  br i1 %cmp593.not, label %do.end4.do.end45_crit_edge, label %for.body.lr.ph

do.end4.do.end45_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

for.body.lr.ph:                                   ; preds = %do.end4
  %mc_idx21 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc38.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc39, %for.inc38.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.094
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %nr_channels = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp790.not = icmp eq i32 %10, 0
  br i1 %cmp790.not, label %for.body.for.inc38_crit_edge, label %for.body8.lr.ph

for.body.for.inc38_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

for.body8.lr.ph:                                  ; preds = %for.body
  %channels = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 9
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channels, align 8
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.lr.ph
  %j.092 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8.for.body8_crit_edge ]
  %n.091 = phi i32 [ 0, %for.body8.lr.ph ], [ %add, %for.body8.for.body8_crit_edge ]
  %arrayidx9 = getelementptr ptr, ptr %12, i32 %j.092
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx9, align 4
  %dimm10 = getelementptr inbounds %struct.rank_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dimm10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dimm10, align 4
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pages, align 4
  %add = add i32 %18, %n.091
  %inc = add nuw i32 %j.092, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.end, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body8

for.end:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp11 = icmp eq i32 %add, 0
  br i1 %cmp11, label %for.end.for.inc38_crit_edge, label %do.body14

for.end.for.inc38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

do.body14:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %19 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp15 = icmp sgt i32 %19, 2
  br i1 %cmp15, label %do.end19, label %do.body14.do.end25_crit_edge

do.body14.do.end25_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end25

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %mc_idx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mc_idx21, align 4
  %first_page = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %first_page, align 8
  %last_page = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 2
  %24 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %last_page, align 4
  %page_mask = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %page_mask, align 8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52, i32 noundef %21, i32 noundef %23, i32 noundef %page, i32 noundef %25, i32 noundef %27) #15
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %do.body14.do.end25_crit_edge
  %first_page26 = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 1
  %28 = ptrtoint ptr %first_page26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_page26, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %page)
  %cmp27.not = icmp ugt i32 %29, %page
  br i1 %cmp27.not, label %do.end25.for.inc38_crit_edge, label %land.lhs.true

do.end25.for.inc38_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

land.lhs.true:                                    ; preds = %do.end25
  %last_page28 = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 2
  %30 = ptrtoint ptr %last_page28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_page28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %page)
  %cmp29.not = icmp ult i32 %31, %page
  br i1 %cmp29.not, label %land.lhs.true.for.inc38_crit_edge, label %land.lhs.true30

land.lhs.true.for.inc38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

land.lhs.true30:                                  ; preds = %land.lhs.true
  %page_mask31 = getelementptr inbounds %struct.csrow_info, ptr %8, i32 0, i32 3
  %32 = ptrtoint ptr %page_mask31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page_mask31, align 8
  %34 = xor i32 %29, %page
  %35 = and i32 %33, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp35 = icmp eq i32 %35, 0
  br i1 %cmp35, label %for.end40, label %land.lhs.true30.for.inc38_crit_edge

land.lhs.true30.for.inc38_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc38

for.inc38:                                        ; preds = %land.lhs.true30.for.inc38_crit_edge, %land.lhs.true.for.inc38_crit_edge, %do.end25.for.inc38_crit_edge, %for.end.for.inc38_crit_edge, %for.body.for.inc38_crit_edge
  %inc39 = add nuw i32 %i.094, 1
  %36 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_csrows, align 4
  %cmp5 = icmp ult i32 %inc39, %37
  br i1 %cmp5, label %for.inc38.for.body_crit_edge, label %for.inc38.do.end45_crit_edge

for.inc38.do.end45_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

for.inc38.for.body_crit_edge:                     ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end40:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.094)
  %cmp41 = icmp eq i32 %i.094, -1
  br i1 %cmp41, label %for.end40.do.end45_crit_edge, label %for.end40.if.end49_crit_edge

for.end40.if.end49_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

for.end40.do.end45_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

do.end45:                                         ; preds = %for.end40.do.end45_crit_edge, %for.inc38.do.end45_crit_edge, %do.end4.do.end45_crit_edge
  %mc_idx47 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  %38 = ptrtoint ptr %mc_idx47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mc_idx47, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %39, i32 noundef %page) #15
  br label %if.end49

if.end49:                                         ; preds = %do.end45, %for.end40.if.end49_crit_edge
  %row.287 = phi i32 [ -1, %do.end45 ], [ %i.094, %for.end40.if.end49_crit_edge ]
  ret i32 %row.287
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_raw_mc_handle_error(ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %e, i32 -1216
  %grain = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 2
  %0 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %grain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

land.rhs:                                         ; preds = %entry
  %.b71 = load i1, ptr @edac_raw_mc_handle_error.__already_done, align 1
  br i1 %.b71, label %land.rhs.if.then38_crit_edge, label %if.then, !prof !372

land.rhs.if.then38_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @edac_raw_mc_handle_error.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 994, i32 noundef 9, ptr noundef null) #12
  br label %if.then38

if.then38:                                        ; preds = %if.then, %land.rhs.if.then38_crit_edge
  %2 = ptrtoint ptr %grain to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %grain, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %entry.if.end40_crit_edge
  %3 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %grain, align 4
  %sub = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i.i = icmp eq i32 %sub, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #12, !range !374
  %6 = trunc i32 %5 to i8
  %7 = sub nuw nsw i8 32, %6
  %conv = select i1 %tobool.not.i.i, i8 0, i8 %7
  %type = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %msg = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 11
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %label = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 1
  %error_count = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 3
  %12 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %error_count, align 4
  %conv43 = zext i16 %13 to i32
  %mc_idx = getelementptr i8, ptr %e, i32 -236
  %14 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mc_idx, align 4
  %conv44 = trunc i32 %15 to i8
  %top_layer = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 5
  %16 = ptrtoint ptr %top_layer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %top_layer, align 4
  %conv45 = trunc i32 %17 to i8
  %mid_layer = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 6
  %18 = ptrtoint ptr %mid_layer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mid_layer, align 4
  %conv46 = trunc i32 %19 to i8
  %low_layer = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 7
  %20 = ptrtoint ptr %low_layer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %low_layer, align 4
  %conv47 = trunc i32 %21 to i8
  %page_frame_number = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 8
  %22 = ptrtoint ptr %page_frame_number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %page_frame_number, align 4
  %shl = shl i32 %23, 12
  %offset_in_page = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 9
  %24 = ptrtoint ptr %offset_in_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset_in_page, align 4
  %or = or i32 %shl, %25
  %syndrome = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 10
  %26 = ptrtoint ptr %syndrome to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syndrome, align 4
  %other_detail = getelementptr inbounds %struct.edac_raw_error_desc, ptr %e, i32 0, i32 12
  %28 = ptrtoint ptr %other_detail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %other_detail, align 4
  tail call fastcc void @trace_mc_event(i32 noundef %9, ptr noundef %11, ptr noundef %label, i32 noundef %conv43, i8 noundef zeroext %conv44, i8 noundef signext %conv45, i8 noundef signext %conv46, i8 noundef signext %conv47, i32 noundef %or, i8 noundef zeroext %conv, i32 noundef %27, ptr noundef %29)
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp = icmp eq i32 %31, 0
  br i1 %cmp, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end40
  %call1.i = tail call i32 @edac_mc_get_log_ce() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then50.if.end.i_crit_edge, label %do.end.i

if.then50.if.end.i_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mc_idx, align 4
  %34 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %error_count, align 4
  %conv.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msg, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool4.not.i = icmp eq i8 %39, 0
  %cond.i = select i1 %tobool4.not.i, ptr @.str.67, ptr @.str.81
  %40 = ptrtoint ptr %page_frame_number to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_frame_number, align 4
  %42 = ptrtoint ptr %offset_in_page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset_in_page, align 4
  %44 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %grain, align 4
  %46 = ptrtoint ptr %syndrome to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %syndrome, align 4
  %48 = ptrtoint ptr %other_detail to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %other_detail, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool7.not.i = icmp eq i8 %51, 0
  %cond8.i = select i1 %tobool7.not.i, ptr @.str.67, ptr @.str.176
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %33, i32 noundef %conv.i, ptr noundef %37, ptr noundef nonnull %cond.i, ptr noundef %label, ptr noundef %e, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, ptr noundef nonnull %cond8.i, ptr noundef %49) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then50.if.end.i_crit_edge
  %52 = ptrtoint ptr %top_layer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %top_layer, align 4
  %54 = ptrtoint ptr %mid_layer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mid_layer, align 4
  %56 = ptrtoint ptr %low_layer to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %low_layer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i = icmp slt i32 %53, 0
  br i1 %cmp.i.i.i, label %if.end.i.edac_get_dimm.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.edac_get_dimm.exit.thread.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i
  %n_layers.i.i.i = getelementptr i8, ptr %e, i32 -220
  %58 = ptrtoint ptr %n_layers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_layers.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp1.i.i.i = icmp ugt i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp2.i.i.i = icmp slt i32 %55, 0
  %or.cond.i.i.i = and i1 %cmp2.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %lor.lhs.false.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, label %lor.lhs.false3.i.i.i

lor.lhs.false.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i

lor.lhs.false3.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp5.i.i.i = icmp ugt i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp7.i.i.i = icmp slt i32 %57, 0
  %or.cond89.i.i.i = and i1 %cmp7.i.i.i, %cmp5.i.i.i
  br i1 %or.cond89.i.i.i, label %lor.lhs.false3.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false3.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false3.i.i.i
  br i1 %cmp1.i.i.i, label %if.then10.i.i.i, label %if.end.i.i.i.if.end11.i.i.i_crit_edge

if.end.i.i.i.if.end11.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %layers.i.i.i = getelementptr i8, ptr %e, i32 -216
  %60 = ptrtoint ptr %layers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %layers.i.i.i, align 8
  %size.i.i.i = getelementptr %struct.edac_mc_layer, ptr %61, i32 1, i32 1
  %62 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i.i.i, align 4
  %mul.i.i.i = mul i32 %63, %53
  %add.i.i.i = add i32 %mul.i.i.i, %55
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end.i.i.i.if.end11.i.i.i_crit_edge
  %index.0.i.i.i = phi i32 [ %add.i.i.i, %if.then10.i.i.i ], [ %53, %if.end.i.i.i.if.end11.i.i.i_crit_edge ]
  br i1 %cmp5.i.i.i, label %if.then14.i.i.i, label %if.end11.i.i.i.if.end20.i.i.i_crit_edge

if.end11.i.i.i.if.end20.i.i.i_crit_edge:          ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %layers15.i.i.i = getelementptr i8, ptr %e, i32 -216
  %64 = ptrtoint ptr %layers15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %layers15.i.i.i, align 8
  %size17.i.i.i = getelementptr %struct.edac_mc_layer, ptr %65, i32 2, i32 1
  %66 = ptrtoint ptr %size17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size17.i.i.i, align 4
  %mul18.i.i.i = mul i32 %67, %index.0.i.i.i
  %add19.i.i.i = add i32 %mul18.i.i.i, %57
  br label %if.end20.i.i.i

if.end20.i.i.i:                                   ; preds = %if.then14.i.i.i, %if.end11.i.i.i.if.end20.i.i.i_crit_edge
  %index.1.i.i.i = phi i32 [ %add19.i.i.i, %if.then14.i.i.i ], [ %index.0.i.i.i, %if.end11.i.i.i.if.end20.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.i.i.i)
  %cmp21.i.i.i = icmp slt i32 %index.1.i.i.i, 0
  br i1 %cmp21.i.i.i, label %if.end20.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, label %lor.lhs.false22.i.i.i

if.end20.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i

lor.lhs.false22.i.i.i:                            ; preds = %if.end20.i.i.i
  %tot_dimms.i.i.i = getelementptr i8, ptr %e, i32 -208
  %68 = ptrtoint ptr %tot_dimms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tot_dimms.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.i.i.i, i32 %69)
  %cmp23.not.i.i.i = icmp ult i32 %index.1.i.i.i, %69
  br i1 %cmp23.not.i.i.i, label %if.end25.i.i.i, label %lor.lhs.false22.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge

lor.lhs.false22.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i

if.end25.i.i.i:                                   ; preds = %lor.lhs.false22.i.i.i
  %dimms.i.i.i = getelementptr i8, ptr %e, i32 -204
  %70 = ptrtoint ptr %dimms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dimms.i.i.i, align 4
  %arrayidx26.i.i.i = getelementptr ptr, ptr %71, i32 %index.1.i.i.i
  %72 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx26.i.i.i, align 4
  %idx.i.i.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %idx.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %index.1.i.i.i)
  %cmp27.not.i.i.i = icmp eq i32 %75, %index.1.i.i.i
  br i1 %cmp27.not.i.i.i, label %edac_get_dimm.exit.i.i, label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end25.i.i.i
  %.b88.i.i.i = load i1, ptr @edac_get_dimm.__already_done, align 1
  br i1 %.b88.i.i.i, label %land.rhs.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, label %if.then34.i.i.i, !prof !372

land.rhs.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i

if.then34.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @edac_get_dimm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 656, i32 noundef 9, ptr noundef null) #12
  br label %edac_get_dimm.exit.thread.i.i

edac_get_dimm.exit.thread.i.i:                    ; preds = %if.then34.i.i.i, %land.rhs.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, %lor.lhs.false22.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, %if.end20.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, %lor.lhs.false3.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.edac_get_dimm.exit.thread.i.i_crit_edge, %if.end.i.edac_get_dimm.exit.thread.i.i_crit_edge
  %76 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %error_count, align 4
  %conv22.i.i = zext i16 %77 to i32
  %ce_mc23.i.i = getelementptr i8, ptr %e, i32 -164
  %78 = ptrtoint ptr %ce_mc23.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ce_mc23.i.i, align 4
  %add24.i.i = add i32 %79, %conv22.i.i
  store i32 %add24.i.i, ptr %ce_mc23.i.i, align 4
  br label %if.else.i.i

edac_get_dimm.exit.i.i:                           ; preds = %if.end25.i.i.i
  %80 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %error_count, align 4
  %conv.i.i = zext i16 %81 to i32
  %ce_mc.i.i = getelementptr i8, ptr %e, i32 -164
  %82 = ptrtoint ptr %ce_mc.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ce_mc.i.i, align 4
  %add.i.i = add i32 %83, %conv.i.i
  store i32 %add.i.i, ptr %ce_mc.i.i, align 4
  %tobool.not.i.i73 = icmp eq ptr %73, null
  br i1 %tobool.not.i.i73, label %edac_get_dimm.exit.i.i.if.else.i.i_crit_edge, label %if.then.i.i

edac_get_dimm.exit.i.i.if.else.i.i_crit_edge:     ; preds = %edac_get_dimm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %edac_get_dimm.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ce_count.i.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 13
  %84 = ptrtoint ptr %ce_count.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ce_count.i.i, align 4
  %add7.i.i = add i32 %85, %conv.i.i
  store i32 %add7.i.i, ptr %ce_count.i.i, align 4
  br label %edac_inc_ce_error.exit.i

if.else.i.i:                                      ; preds = %edac_get_dimm.exit.i.i.if.else.i.i_crit_edge, %edac_get_dimm.exit.thread.i.i
  %conv26.i.i = phi i32 [ %conv22.i.i, %edac_get_dimm.exit.thread.i.i ], [ %conv.i.i, %edac_get_dimm.exit.i.i.if.else.i.i_crit_edge ]
  %ce_noinfo_count.i.i = getelementptr i8, ptr %e, i32 -176
  %86 = ptrtoint ptr %ce_noinfo_count.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ce_noinfo_count.i.i, align 8
  %add10.i.i = add i32 %87, %conv26.i.i
  store i32 %add10.i.i, ptr %ce_noinfo_count.i.i, align 8
  br label %edac_inc_ce_error.exit.i

edac_inc_ce_error.exit.i:                         ; preds = %if.else.i.i, %if.then.i.i
  %scrub_mode.i = getelementptr i8, ptr %e, i32 -256
  %88 = ptrtoint ptr %scrub_mode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %scrub_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp.i = icmp eq i32 %89, 3
  br i1 %cmp.i, label %if.then12.i, label %edac_inc_ce_error.exit.i.if.end51_crit_edge

edac_inc_ce_error.exit.i.if.end51_crit_edge:      ; preds = %edac_inc_ce_error.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then12.i:                                      ; preds = %edac_inc_ce_error.exit.i
  %ctl_page_to_phys.i = getelementptr i8, ptr %e, i32 -240
  %90 = ptrtoint ptr %ctl_page_to_phys.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctl_page_to_phys.i, align 8
  %tobool13.not.i = icmp eq ptr %91, null
  %92 = ptrtoint ptr %page_frame_number to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %page_frame_number, align 4
  br i1 %tobool13.not.i, label %if.then12.i.cond.end.i_crit_edge, label %cond.true.i

if.then12.i.cond.end.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 %91(ptr noundef %add.ptr.i, i32 noundef %93) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then12.i.cond.end.i_crit_edge
  %cond18.i = phi i32 [ %call16.i, %cond.true.i ], [ %93, %if.then12.i.cond.end.i_crit_edge ]
  %94 = ptrtoint ptr %offset_in_page to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset_in_page, align 4
  %96 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %grain, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %98 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp.i.i = icmp sgt i32 %98, 2
  br i1 %cmp.i.i, label %do.end.i.i, label %cond.end.i.do.end3.i.i_crit_edge

cond.end.i.do.end3.i.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.178) #15
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %cond.end.i.do.end3.i.i_crit_edge
  %call4.i.i = tail call i32 @pfn_valid(i32 noundef %cond18.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i42.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i42.i, label %do.end3.i.i.if.end51_crit_edge, label %if.end6.i.i

do.end3.i.i.if.end51_crit_edge:                   ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end6.i.i:                                      ; preds = %do.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %99 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %100 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i74 = sub i32 %cond18.i, %100
  %add.ptr.i43.i = getelementptr %struct.page, ptr %99, i32 %sub.i.i74
  %101 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr.i43.i, align 4
  %shr.i.i.i = lshr i32 %102, 30
  %103 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.end6.i.i.if.end30.i.i_crit_edge [
    i32 2, label %if.end6.i.i.do.body12.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end6.i.i.do.body12.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i

if.end6.i.i.if.end30.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %104 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp2.i.not.i.i = icmp eq i32 %104, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.do.body12.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.end30.i.i_crit_edge

is_highmem_idx.exit.i.i.if.end30.i.i_crit_edge:   ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i.i

is_highmem_idx.exit.i.i.do.body12.i.i_crit_edge:  ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body12.i.i

do.body12.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.do.body12.i.i_crit_edge, %if.end6.i.i.do.body12.i.i_crit_edge
  %105 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !375
  %and.i.i.i = and i32 %105, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool25.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %do.body12.i.i.if.end30.i.i_crit_edge

do.body12.i.i.if.end30.i.i_crit_edge:             ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i.i

if.then26.i.i:                                    ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then26.i.i, %do.body12.i.i.if.end30.i.i_crit_edge, %is_highmem_idx.exit.i.i.if.end30.i.i_crit_edge, %if.end6.i.i.if.end30.i.i_crit_edge
  %flags.0.i.i = phi i32 [ %105, %do.body12.i.i.if.end30.i.i_crit_edge ], [ %105, %if.then26.i.i ], [ 0, %is_highmem_idx.exit.i.i.if.end30.i.i_crit_edge ], [ 0, %if.end6.i.i.if.end30.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %106 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %106, 512
  %107 = tail call i32 @llvm.read_register.i32(metadata !360) #12
  %and.i.i.i.i.i.i.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %110, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !376
  %111 = tail call i32 @llvm.read_register.i32(metadata !360) #12
  %and.i.i.i1.i.i.i.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 213
  %115 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %116, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !377
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i43.i, i32 noundef %or.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %97)
  %cmp5.not.i.i.i = icmp ult i32 %97, 4
  br i1 %cmp5.not.i.i.i, label %if.end30.i.i.edac_atomic_scrub.exit.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end30.i.i.edac_atomic_scrub.exit.i.i_crit_edge: ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_atomic_scrub.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end30.i.i
  %add.ptr32.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %95
  %div4.i.i.i = lshr i32 %97, 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %virt_addr.06.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr32.i.i, %for.body.preheader.i.i.i ]
  %117 = tail call { i32, i32 } asm sideeffect "\0A1:\09ldrex\09$0, [$2]\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b\0A", "=&r,=&r,r,~{cc}"(ptr %virt_addr.06.i.i.i) #12, !srcloc !378
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr i32, ptr %virt_addr.06.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %div4.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.edac_atomic_scrub.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.edac_atomic_scrub.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_atomic_scrub.exit.i.i

edac_atomic_scrub.exit.i.i:                       ; preds = %for.body.i.i.i.edac_atomic_scrub.exit.i.i_crit_edge, %if.end30.i.i.edac_atomic_scrub.exit.i.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !379
  %118 = tail call i32 @llvm.read_register.i32(metadata !360) #12
  %and.i.i.i1.i.i.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 213
  %122 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %123, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !380
  %124 = tail call i32 @llvm.read_register.i32(metadata !360) #12
  %and.i.i.i.i.i.i = and i32 %124, -16384
  %125 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %127, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %128 = ptrtoint ptr %add.ptr.i43.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i43.i, align 4
  %shr.i83.i.i = lshr i32 %129, 30
  %130 = zext i32 %shr.i83.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %shr.i83.i.i, label %edac_atomic_scrub.exit.i.i.if.end51_crit_edge [
    i32 2, label %edac_atomic_scrub.exit.i.i.do.body43.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit88.i.i
  ]

edac_atomic_scrub.exit.i.i.do.body43.i.i_crit_edge: ; preds = %edac_atomic_scrub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43.i.i

edac_atomic_scrub.exit.i.i.if.end51_crit_edge:    ; preds = %edac_atomic_scrub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

is_highmem_idx.exit88.i.i:                        ; preds = %edac_atomic_scrub.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %131 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp2.i84.not.i.i = icmp eq i32 %131, 2
  br i1 %cmp2.i84.not.i.i, label %is_highmem_idx.exit88.i.i.do.body43.i.i_crit_edge, label %is_highmem_idx.exit88.i.i.if.end51_crit_edge

is_highmem_idx.exit88.i.i.if.end51_crit_edge:     ; preds = %is_highmem_idx.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

is_highmem_idx.exit88.i.i.do.body43.i.i_crit_edge: ; preds = %is_highmem_idx.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43.i.i

do.body43.i.i:                                    ; preds = %is_highmem_idx.exit88.i.i.do.body43.i.i_crit_edge, %edac_atomic_scrub.exit.i.i.do.body43.i.i_crit_edge
  %and.i89.i.i = and i32 %flags.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89.i.i)
  %tobool51.not.i.i = icmp eq i32 %and.i89.i.i, 0
  br i1 %tobool51.not.i.i, label %if.then52.i.i, label %do.body43.i.i.do.body54.i.i_crit_edge

do.body43.i.i.do.body54.i.i_crit_edge:            ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

if.then52.i.i:                                    ; preds = %do.body43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_on() #12
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %if.then52.i.i, %do.body43.i.i.do.body54.i.i_crit_edge
  %132 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !381
  %and.i.i.i.i = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool62.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool62.not.i.i, label %if.then66.i.i, label %do.body54.i.i.do.end69.i.i_crit_edge, !prof !370

do.body54.i.i.do.end69.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end69.i.i

if.then66.i.i:                                    ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end69.i.i

do.end69.i.i:                                     ; preds = %if.then66.i.i, %do.body54.i.i.do.end69.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.0.i.i) #12, !srcloc !382
  br label %if.end51

if.else:                                          ; preds = %if.end40
  %call1.i75 = tail call i32 @edac_mc_get_log_ue() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75)
  %tobool.not.i76 = icmp eq i32 %call1.i75, 0
  br i1 %tobool.not.i76, label %if.else.if.end.i96_crit_edge, label %do.end.i91

if.else.if.end.i96_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i96

do.end.i91:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mc_idx, align 4
  %135 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %error_count, align 4
  %conv.i79 = zext i16 %136 to i32
  %137 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %msg, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool4.not.i81 = icmp eq i8 %140, 0
  %cond.i82 = select i1 %tobool4.not.i81, ptr @.str.67, ptr @.str.81
  %141 = ptrtoint ptr %page_frame_number to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %page_frame_number, align 4
  %143 = ptrtoint ptr %offset_in_page to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %offset_in_page, align 4
  %145 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %grain, align 4
  %147 = ptrtoint ptr %other_detail to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %other_detail, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool7.not.i88 = icmp eq i8 %150, 0
  %cond8.i89 = select i1 %tobool7.not.i88, ptr @.str.67, ptr @.str.176
  %call10.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, i32 noundef %134, i32 noundef %conv.i79, ptr noundef %138, ptr noundef nonnull %cond.i82, ptr noundef %label, ptr noundef %e, i32 noundef %142, i32 noundef %144, i32 noundef %146, ptr noundef nonnull %cond8.i89, ptr noundef %148) #15
  br label %if.end.i96

if.end.i96:                                       ; preds = %do.end.i91, %if.else.if.end.i96_crit_edge
  %151 = ptrtoint ptr %top_layer to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %top_layer, align 4
  %153 = ptrtoint ptr %mid_layer to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mid_layer, align 4
  %155 = ptrtoint ptr %low_layer to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %low_layer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp.i.i.i95 = icmp slt i32 %152, 0
  br i1 %cmp.i.i.i95, label %if.end.i96.edac_get_dimm.exit.thread.i.i136_crit_edge, label %lor.lhs.false.i.i.i101

if.end.i96.edac_get_dimm.exit.thread.i.i136_crit_edge: ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i136

lor.lhs.false.i.i.i101:                           ; preds = %if.end.i96
  %n_layers.i.i.i97 = getelementptr i8, ptr %e, i32 -220
  %157 = ptrtoint ptr %n_layers.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %n_layers.i.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %158)
  %cmp1.i.i.i98 = icmp ugt i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp2.i.i.i99 = icmp slt i32 %154, 0
  %or.cond.i.i.i100 = and i1 %cmp2.i.i.i99, %cmp1.i.i.i98
  br i1 %or.cond.i.i.i100, label %lor.lhs.false.i.i.i101.edac_get_dimm.exit.thread.i.i136_crit_edge, label %lor.lhs.false3.i.i.i105

lor.lhs.false.i.i.i101.edac_get_dimm.exit.thread.i.i136_crit_edge: ; preds = %lor.lhs.false.i.i.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i136

lor.lhs.false3.i.i.i105:                          ; preds = %lor.lhs.false.i.i.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %158)
  %cmp5.i.i.i102 = icmp ugt i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp7.i.i.i103 = icmp slt i32 %156, 0
  %or.cond89.i.i.i104 = and i1 %cmp7.i.i.i103, %cmp5.i.i.i102
  br i1 %or.cond89.i.i.i104, label %lor.lhs.false3.i.i.i105.edac_get_dimm.exit.thread.i.i136_crit_edge, label %if.end.i.i.i106

lor.lhs.false3.i.i.i105.edac_get_dimm.exit.thread.i.i136_crit_edge: ; preds = %lor.lhs.false3.i.i.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i136

if.end.i.i.i106:                                  ; preds = %lor.lhs.false3.i.i.i105
  br i1 %cmp1.i.i.i98, label %if.then10.i.i.i111, label %if.end.i.i.i106.if.end11.i.i.i113_crit_edge

if.end.i.i.i106.if.end11.i.i.i113_crit_edge:      ; preds = %if.end.i.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i113

if.then10.i.i.i111:                               ; preds = %if.end.i.i.i106
  call void @__sanitizer_cov_trace_pc() #14
  %layers.i.i.i107 = getelementptr i8, ptr %e, i32 -216
  %159 = ptrtoint ptr %layers.i.i.i107 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %layers.i.i.i107, align 8
  %size.i.i.i108 = getelementptr %struct.edac_mc_layer, ptr %160, i32 1, i32 1
  %161 = ptrtoint ptr %size.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %size.i.i.i108, align 4
  %mul.i.i.i109 = mul i32 %162, %152
  %add.i.i.i110 = add i32 %mul.i.i.i109, %154
  br label %if.end11.i.i.i113

if.end11.i.i.i113:                                ; preds = %if.then10.i.i.i111, %if.end.i.i.i106.if.end11.i.i.i113_crit_edge
  %index.0.i.i.i112 = phi i32 [ %add.i.i.i110, %if.then10.i.i.i111 ], [ %152, %if.end.i.i.i106.if.end11.i.i.i113_crit_edge ]
  br i1 %cmp5.i.i.i102, label %if.then14.i.i.i118, label %if.end11.i.i.i113.if.end20.i.i.i121_crit_edge

if.end11.i.i.i113.if.end20.i.i.i121_crit_edge:    ; preds = %if.end11.i.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i.i121

if.then14.i.i.i118:                               ; preds = %if.end11.i.i.i113
  call void @__sanitizer_cov_trace_pc() #14
  %layers15.i.i.i114 = getelementptr i8, ptr %e, i32 -216
  %163 = ptrtoint ptr %layers15.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %layers15.i.i.i114, align 8
  %size17.i.i.i115 = getelementptr %struct.edac_mc_layer, ptr %164, i32 2, i32 1
  %165 = ptrtoint ptr %size17.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %size17.i.i.i115, align 4
  %mul18.i.i.i116 = mul i32 %166, %index.0.i.i.i112
  %add19.i.i.i117 = add i32 %mul18.i.i.i116, %156
  br label %if.end20.i.i.i121

if.end20.i.i.i121:                                ; preds = %if.then14.i.i.i118, %if.end11.i.i.i113.if.end20.i.i.i121_crit_edge
  %index.1.i.i.i119 = phi i32 [ %add19.i.i.i117, %if.then14.i.i.i118 ], [ %index.0.i.i.i112, %if.end11.i.i.i113.if.end20.i.i.i121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.1.i.i.i119)
  %cmp21.i.i.i120 = icmp slt i32 %index.1.i.i.i119, 0
  br i1 %cmp21.i.i.i120, label %if.end20.i.i.i121.edac_get_dimm.exit.thread.i.i136_crit_edge, label %lor.lhs.false22.i.i.i124

if.end20.i.i.i121.edac_get_dimm.exit.thread.i.i136_crit_edge: ; preds = %if.end20.i.i.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i136

lor.lhs.false22.i.i.i124:                         ; preds = %if.end20.i.i.i121
  %tot_dimms.i.i.i122 = getelementptr i8, ptr %e, i32 -208
  %167 = ptrtoint ptr %tot_dimms.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tot_dimms.i.i.i122, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %index.1.i.i.i119, i32 %168)
  %cmp23.not.i.i.i123 = icmp ult i32 %index.1.i.i.i119, %168
  br i1 %cmp23.not.i.i.i123, label %if.end25.i.i.i129, label %lor.lhs.false22.i.i.i124.edac_get_dimm.exit.thread.i.i136_crit_edge

lor.lhs.false22.i.i.i124.edac_get_dimm.exit.thread.i.i136_crit_edge: ; preds = %lor.lhs.false22.i.i.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i136

if.end25.i.i.i129:                                ; preds = %lor.lhs.false22.i.i.i124
  %dimms.i.i.i125 = getelementptr i8, ptr %e, i32 -204
  %169 = ptrtoint ptr %dimms.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dimms.i.i.i125, align 4
  %arrayidx26.i.i.i126 = getelementptr ptr, ptr %170, i32 %index.1.i.i.i119
  %171 = ptrtoint ptr %arrayidx26.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx26.i.i.i126, align 4
  %idx.i.i.i127 = getelementptr inbounds %struct.dimm_info, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %idx.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %idx.i.i.i127, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %index.1.i.i.i119)
  %cmp27.not.i.i.i128 = icmp eq i32 %174, %index.1.i.i.i119
  br i1 %cmp27.not.i.i.i128, label %edac_get_dimm.exit.i.i141, label %land.rhs.i.i.i131

land.rhs.i.i.i131:                                ; preds = %if.end25.i.i.i129
  %.b88.i.i.i130 = load i1, ptr @edac_get_dimm.__already_done, align 1
  br i1 %.b88.i.i.i130, label %land.rhs.i.i.i131.edac_get_dimm.exit.thread.i.i136_crit_edge, label %if.then34.i.i.i132, !prof !372

land.rhs.i.i.i131.edac_get_dimm.exit.thread.i.i136_crit_edge: ; preds = %land.rhs.i.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_get_dimm.exit.thread.i.i136

if.then34.i.i.i132:                               ; preds = %land.rhs.i.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @edac_get_dimm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.177, i32 noundef 656, i32 noundef 9, ptr noundef null) #12
  br label %edac_get_dimm.exit.thread.i.i136

edac_get_dimm.exit.thread.i.i136:                 ; preds = %if.then34.i.i.i132, %land.rhs.i.i.i131.edac_get_dimm.exit.thread.i.i136_crit_edge, %lor.lhs.false22.i.i.i124.edac_get_dimm.exit.thread.i.i136_crit_edge, %if.end20.i.i.i121.edac_get_dimm.exit.thread.i.i136_crit_edge, %lor.lhs.false3.i.i.i105.edac_get_dimm.exit.thread.i.i136_crit_edge, %lor.lhs.false.i.i.i101.edac_get_dimm.exit.thread.i.i136_crit_edge, %if.end.i96.edac_get_dimm.exit.thread.i.i136_crit_edge
  %175 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %error_count, align 4
  %conv22.i.i134 = zext i16 %176 to i32
  %ue_mc23.i.i = getelementptr i8, ptr %e, i32 -168
  %177 = ptrtoint ptr %ue_mc23.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ue_mc23.i.i, align 8
  %add24.i.i135 = add i32 %178, %conv22.i.i134
  store i32 %add24.i.i135, ptr %ue_mc23.i.i, align 8
  br label %if.else.i.i146

edac_get_dimm.exit.i.i141:                        ; preds = %if.end25.i.i.i129
  %179 = ptrtoint ptr %error_count to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %error_count, align 4
  %conv.i.i138 = zext i16 %180 to i32
  %ue_mc.i.i = getelementptr i8, ptr %e, i32 -168
  %181 = ptrtoint ptr %ue_mc.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ue_mc.i.i, align 8
  %add.i.i139 = add i32 %182, %conv.i.i138
  store i32 %add.i.i139, ptr %ue_mc.i.i, align 8
  %tobool.not.i.i140 = icmp eq ptr %172, null
  br i1 %tobool.not.i.i140, label %edac_get_dimm.exit.i.i141.if.else.i.i146_crit_edge, label %if.then.i.i143

edac_get_dimm.exit.i.i141.if.else.i.i146_crit_edge: ; preds = %edac_get_dimm.exit.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i146

if.then.i.i143:                                   ; preds = %edac_get_dimm.exit.i.i141
  call void @__sanitizer_cov_trace_pc() #14
  %ue_count.i.i = getelementptr inbounds %struct.dimm_info, ptr %172, i32 0, i32 14
  %183 = ptrtoint ptr %ue_count.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ue_count.i.i, align 8
  %add7.i.i142 = add i32 %184, %conv.i.i138
  store i32 %add7.i.i142, ptr %ue_count.i.i, align 8
  br label %edac_inc_ue_error.exit.i

if.else.i.i146:                                   ; preds = %edac_get_dimm.exit.i.i141.if.else.i.i146_crit_edge, %edac_get_dimm.exit.thread.i.i136
  %conv26.i.i144 = phi i32 [ %conv22.i.i134, %edac_get_dimm.exit.thread.i.i136 ], [ %conv.i.i138, %edac_get_dimm.exit.i.i141.if.else.i.i146_crit_edge ]
  %ue_noinfo_count.i.i = getelementptr i8, ptr %e, i32 -172
  %185 = ptrtoint ptr %ue_noinfo_count.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %ue_noinfo_count.i.i, align 4
  %add10.i.i145 = add i32 %186, %conv26.i.i144
  store i32 %add10.i.i145, ptr %ue_noinfo_count.i.i, align 4
  br label %edac_inc_ue_error.exit.i

edac_inc_ue_error.exit.i:                         ; preds = %if.else.i.i146, %if.then.i.i143
  %call11.i = tail call i32 @edac_mc_get_panic_on_ue() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %edac_inc_ue_error.exit.i.if.end51_crit_edge, label %if.then13.i

edac_inc_ue_error.exit.i.if.end51_crit_edge:      ; preds = %edac_inc_ue_error.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then13.i:                                      ; preds = %edac_inc_ue_error.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %187 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %msg, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %188, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool17.not.i = icmp eq i8 %190, 0
  %cond18.i147 = select i1 %tobool17.not.i, ptr @.str.67, ptr @.str.81
  %191 = ptrtoint ptr %page_frame_number to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %page_frame_number, align 4
  %193 = ptrtoint ptr %offset_in_page to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %offset_in_page, align 4
  %195 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %grain, align 4
  %197 = ptrtoint ptr %other_detail to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %other_detail, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool28.not.i = icmp eq i8 %200, 0
  %cond29.i = select i1 %tobool28.not.i, ptr @.str.67, ptr @.str.176
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.181, ptr noundef %188, ptr noundef nonnull %cond18.i147, ptr noundef %label, ptr noundef %e, i32 noundef %192, i32 noundef %194, i32 noundef %196, ptr noundef nonnull %cond29.i, ptr noundef %198) #18
  unreachable

if.end51:                                         ; preds = %edac_inc_ue_error.exit.i.if.end51_crit_edge, %do.end69.i.i, %is_highmem_idx.exit88.i.i.if.end51_crit_edge, %edac_atomic_scrub.exit.i.i.if.end51_crit_edge, %do.end3.i.i.if.end51_crit_edge, %edac_inc_ce_error.exit.i.if.end51_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mc_event(i32 noundef %err_type, ptr noundef %error_msg, ptr noundef %label, i32 noundef %error_count, i8 noundef zeroext %mc_index, i8 noundef signext %top_layer, i8 noundef signext %mid_layer, i8 noundef signext %low_layer, i32 noundef %address, i8 noundef zeroext %grain_bits, i32 noundef %syndrome, ptr noundef %driver_detail) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mc_event, i32 0, i32 1), ptr blockaddress(@trace_mc_event, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !383

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !360) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !372

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.173, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !360) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !384
  %call42 = tail call i32 @__traceiter_mc_event(ptr noundef null, i32 noundef %err_type, ptr noundef %error_msg, ptr noundef %label, i32 noundef %error_count, i8 noundef zeroext %mc_index, i8 noundef signext %top_layer, i8 noundef signext %mid_layer, i8 noundef signext %low_layer, i32 noundef %address, i8 noundef zeroext %grain_bits, i32 noundef %syndrome, ptr noundef %driver_detail) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !385
  %13 = tail call i32 @llvm.read_register.i32(metadata !360) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !360) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !372

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.173, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !360) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !386
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mc_event, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mc_event, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mc_event.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mc_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.171, i32 noundef 163, ptr noundef nonnull @.str.172) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !387
  %31 = tail call i32 @llvm.read_register.i32(metadata !360) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_mc_handle_error(i32 noundef %type, ptr noundef %mci, i16 noundef zeroext %error_count, i32 noundef %page_frame_number, i32 noundef %offset_in_page, i32 noundef %syndrome, i32 noundef %top_layer, i32 noundef %mid_layer, i32 noundef %low_layer, ptr noundef %msg, ptr noundef %other_detail) #0 align 64 {
entry:
  %pos = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pos) #12
  %0 = getelementptr inbounds [3 x i32], ptr %pos, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %pos, i32 0, i32 2
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %top_layer, ptr %pos, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mid_layer, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %low_layer, ptr %1, align 4
  %error_desc = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %5 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp sgt i32 %5, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  %6 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mc_idx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %7) #15
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %8 = call ptr @memset(ptr %error_desc, i32 0, i32 560)
  %error_count5 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 3
  %9 = ptrtoint ptr %error_count5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %error_count, ptr %error_count5, align 4
  %type6 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 4
  %10 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %type6, align 4
  %top_layer7 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 5
  %11 = ptrtoint ptr %top_layer7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %top_layer, ptr %top_layer7, align 4
  %mid_layer8 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 6
  %12 = ptrtoint ptr %mid_layer8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mid_layer, ptr %mid_layer8, align 4
  %low_layer9 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 7
  %13 = ptrtoint ptr %low_layer9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %low_layer, ptr %low_layer9, align 4
  %page_frame_number10 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 8
  %14 = ptrtoint ptr %page_frame_number10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %page_frame_number, ptr %page_frame_number10, align 4
  %offset_in_page11 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 9
  %15 = ptrtoint ptr %offset_in_page11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %offset_in_page, ptr %offset_in_page11, align 4
  %syndrome12 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 10
  %16 = ptrtoint ptr %syndrome12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %syndrome, ptr %syndrome12, align 4
  %tobool.not = icmp eq ptr %msg, null
  %..str.67 = select i1 %tobool.not, ptr @.str.67, ptr %msg
  %msg13 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 11
  %17 = ptrtoint ptr %msg13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %..str.67, ptr %msg13, align 4
  %tobool14.not = icmp eq ptr %other_detail, null
  %cond18 = select i1 %tobool14.not, ptr @.str.67, ptr %other_detail
  %other_detail19 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 12
  %18 = ptrtoint ptr %other_detail19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond18, ptr %other_detail19, align 4
  %n_layers = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 17
  %19 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp20263.not = icmp eq i32 %20, 0
  br i1 %cmp20263.not, label %do.end4.for.end_crit_edge, label %for.body.lr.ph

do.end4.for.end_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end4
  %layers = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 18
  %mc_idx28 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %for.body.lr.ph
  %any_memory.0.off0266 = phi i1 [ true, %for.body.lr.ph ], [ %spec.select, %if.end39.for.body_crit_edge ]
  %i.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end39.for.body_crit_edge ]
  %arrayidx = getelementptr [3 x i32], ptr %pos, i32 0, i32 %i.0264
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %layers, align 8
  %size = getelementptr %struct.edac_mc_layer, ptr %24, i32 %i.0264, i32 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp22.not = icmp slt i32 %22, %26
  br i1 %cmp22.not, label %for.body.if.end39_crit_edge, label %do.end26

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx21 = getelementptr %struct.edac_mc_layer, ptr %24, i32 %i.0264
  %27 = ptrtoint ptr %mc_idx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mc_idx28, align 4
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx21, align 4
  %arrayidx32 = getelementptr [5 x ptr], ptr @edac_layer_name, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx32, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %28, ptr noundef %32, i32 noundef %22, i32 noundef %26) #15
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %arrayidx, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end26, %for.body.if.end39_crit_edge
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp41 = icmp slt i32 %35, 0
  %spec.select = select i1 %cmp41, i1 %any_memory.0.off0266, i1 false
  %inc = add nuw i32 %i.0264, 1
  %36 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_layers, align 4
  %cmp20 = icmp ult i32 %inc, %37
  br i1 %cmp20, label %if.end39.for.body_crit_edge, label %if.end39.for.end_crit_edge

if.end39.for.end_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end39.for.end_crit_edge, %do.end4.for.end_crit_edge
  %any_memory.0.off0.lcssa = phi i1 [ true, %do.end4.for.end_crit_edge ], [ %spec.select, %if.end39.for.end_crit_edge ]
  %label = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 1
  %38 = ptrtoint ptr %label to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %label, align 1
  %add.ptr = getelementptr %struct.mem_ctl_info, ptr %mci, i32 0, i32 35, i32 2
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 21
  %39 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dimms, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool46.not267 = icmp eq ptr %42, null
  br i1 %tobool46.not267, label %for.end.for.end131_crit_edge, label %for.body47.lr.ph

for.end.for.end131_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.body47.lr.ph:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %top_layer)
  %cmp48 = icmp sgt i32 %top_layer, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mid_layer)
  %cmp53 = icmp sgt i32 %mid_layer, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %low_layer)
  %cmp60 = icmp sgt i32 %low_layer, -1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %csbased = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 19
  %tot_dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 20
  br label %for.body47

for.body47:                                       ; preds = %cond.end129.for.body47_crit_edge, %for.body47.lr.ph
  %dimm.0273 = phi ptr [ %42, %for.body47.lr.ph ], [ %79, %cond.end129.for.body47_crit_edge ]
  %p.0272 = phi ptr [ %label, %for.body47.lr.ph ], [ %p.2, %cond.end129.for.body47_crit_edge ]
  %prefix.0271 = phi ptr [ @.str.67, %for.body47.lr.ph ], [ %prefix.2, %cond.end129.for.body47_crit_edge ]
  %n_labels.0270 = phi i32 [ 0, %for.body47.lr.ph ], [ %n_labels.1, %cond.end129.for.body47_crit_edge ]
  %chan.0269 = phi i32 [ -1, %for.body47.lr.ph ], [ %chan.1, %cond.end129.for.body47_crit_edge ]
  %row.0268 = phi i32 [ -1, %for.body47.lr.ph ], [ %row.2, %cond.end129.for.body47_crit_edge ]
  br i1 %cmp48, label %land.lhs.true, label %for.body47.if.end52_crit_edge

for.body47.if.end52_crit_edge:                    ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true:                                    ; preds = %for.body47
  %location = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 2
  %43 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %top_layer)
  %cmp50.not = icmp eq i32 %44, %top_layer
  br i1 %cmp50.not, label %land.lhs.true.if.end52_crit_edge, label %land.lhs.true.for.inc121_crit_edge

land.lhs.true.for.inc121_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc121

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true.if.end52_crit_edge, %for.body47.if.end52_crit_edge
  br i1 %cmp53, label %land.lhs.true54, label %if.end52.if.end59_crit_edge

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

land.lhs.true54:                                  ; preds = %if.end52
  %arrayidx56 = getelementptr %struct.dimm_info, ptr %dimm.0273, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %mid_layer)
  %cmp57.not = icmp eq i32 %46, %mid_layer
  br i1 %cmp57.not, label %land.lhs.true54.if.end59_crit_edge, label %land.lhs.true54.for.inc121_crit_edge

land.lhs.true54.for.inc121_crit_edge:             ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc121

land.lhs.true54.if.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end59:                                         ; preds = %land.lhs.true54.if.end59_crit_edge, %if.end52.if.end59_crit_edge
  br i1 %cmp60, label %land.lhs.true61, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

land.lhs.true61:                                  ; preds = %if.end59
  %arrayidx63 = getelementptr %struct.dimm_info, ptr %dimm.0273, i32 0, i32 2, i32 2
  %47 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx63, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %low_layer)
  %cmp64.not = icmp eq i32 %48, %low_layer
  br i1 %cmp64.not, label %land.lhs.true61.if.end66_crit_edge, label %land.lhs.true61.for.inc121_crit_edge

land.lhs.true61.for.inc121_crit_edge:             ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc121

land.lhs.true61.if.end66_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true61.if.end66_crit_edge, %if.end59.if.end66_crit_edge
  %grain = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 5
  %49 = ptrtoint ptr %grain to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %grain, align 4
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp68 = icmp ugt i32 %50, %52
  br i1 %cmp68, label %if.then69, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %add.ptr, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 9
  %54 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool73.not = icmp eq i32 %55, 0
  br i1 %tobool73.not, label %if.end72.for.inc121_crit_edge, label %if.end75

if.end72.for.inc121_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc121

if.end75:                                         ; preds = %if.end72
  %inc76 = add i32 %n_labels.0270, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc76)
  %cmp77 = icmp sgt i32 %inc76, 8
  br i1 %cmp77, label %if.then78, label %if.else

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %label to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %label, align 1
  br label %do.body86

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0272 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %label81 = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 1
  %call83 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0272, i32 noundef %sub.ptr.sub, ptr noundef nonnull @.str.71, ptr noundef %prefix.0271, ptr noundef %label81) #12
  %add.ptr84 = getelementptr i8, ptr %p.0272, i32 %call83
  br label %do.body86

do.body86:                                        ; preds = %if.else, %if.then78
  %prefix.1 = phi ptr [ %prefix.0271, %if.then78 ], [ @.str.72, %if.else ]
  %p.1 = phi ptr [ %label, %if.then78 ], [ %add.ptr84, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %57 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp87 = icmp sgt i32 %57, 3
  br i1 %cmp87, label %do.end91, label %do.body86.do.end98_crit_edge

do.body86.do.end98_crit_edge:                     ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end98

do.end91:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %csbased to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %csbased, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool93.not = icmp eq i8 %59, 0
  %cond94 = select i1 %tobool93.not, ptr @.str.77, ptr @.str.76
  %csrow = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 10
  %60 = ptrtoint ptr %csrow to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %csrow, align 8
  %cschannel = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 11
  %62 = ptrtoint ptr %cschannel to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cschannel, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond94, i32 noundef %61, i32 noundef %63) #15
  br label %do.end98

do.end98:                                         ; preds = %do.end91, %do.body86.do.end98_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %row.0268)
  %cmp99 = icmp eq i32 %row.0268, -1
  br i1 %cmp99, label %if.then100, label %if.else102

if.then100:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #14
  %csrow101 = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 10
  %64 = ptrtoint ptr %csrow101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %csrow101, align 8
  br label %if.end109

if.else102:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %row.0268)
  %cmp103 = icmp sgt i32 %row.0268, -1
  br i1 %cmp103, label %land.lhs.true104, label %if.else102.if.end109_crit_edge

if.else102.if.end109_crit_edge:                   ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

land.lhs.true104:                                 ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  %csrow105 = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 10
  %66 = ptrtoint ptr %csrow105 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %csrow105, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %row.0268, i32 %67)
  %cmp106.not = icmp eq i32 %row.0268, %67
  %spec.store.select = select i1 %cmp106.not, i32 %row.0268, i32 -2
  br label %if.end109

if.end109:                                        ; preds = %land.lhs.true104, %if.else102.if.end109_crit_edge, %if.then100
  %row.1 = phi i32 [ %65, %if.then100 ], [ %spec.store.select, %land.lhs.true104 ], [ %row.0268, %if.else102.if.end109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chan.0269)
  %cmp110 = icmp eq i32 %chan.0269, -1
  br i1 %cmp110, label %if.then111, label %if.else113

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %cschannel112 = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 11
  %68 = ptrtoint ptr %cschannel112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cschannel112, align 4
  br label %for.inc121

if.else113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chan.0269)
  %cmp114 = icmp sgt i32 %chan.0269, -1
  br i1 %cmp114, label %land.lhs.true115, label %if.else113.for.inc121_crit_edge

if.else113.for.inc121_crit_edge:                  ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc121

land.lhs.true115:                                 ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #14
  %cschannel116 = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 11
  %70 = ptrtoint ptr %cschannel116 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cschannel116, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %chan.0269, i32 %71)
  %cmp117.not = icmp eq i32 %chan.0269, %71
  %spec.store.select171 = select i1 %cmp117.not, i32 %chan.0269, i32 -2
  br label %for.inc121

for.inc121:                                       ; preds = %land.lhs.true115, %if.else113.for.inc121_crit_edge, %if.then111, %if.end72.for.inc121_crit_edge, %land.lhs.true61.for.inc121_crit_edge, %land.lhs.true54.for.inc121_crit_edge, %land.lhs.true.for.inc121_crit_edge
  %row.2 = phi i32 [ %row.0268, %land.lhs.true.for.inc121_crit_edge ], [ %row.0268, %land.lhs.true54.for.inc121_crit_edge ], [ %row.0268, %land.lhs.true61.for.inc121_crit_edge ], [ %row.1, %if.then111 ], [ %row.1, %land.lhs.true115 ], [ %row.1, %if.else113.for.inc121_crit_edge ], [ %row.0268, %if.end72.for.inc121_crit_edge ]
  %chan.1 = phi i32 [ %chan.0269, %land.lhs.true.for.inc121_crit_edge ], [ %chan.0269, %land.lhs.true54.for.inc121_crit_edge ], [ %chan.0269, %land.lhs.true61.for.inc121_crit_edge ], [ %69, %if.then111 ], [ %spec.store.select171, %land.lhs.true115 ], [ %chan.0269, %if.else113.for.inc121_crit_edge ], [ %chan.0269, %if.end72.for.inc121_crit_edge ]
  %n_labels.1 = phi i32 [ %n_labels.0270, %land.lhs.true.for.inc121_crit_edge ], [ %n_labels.0270, %land.lhs.true54.for.inc121_crit_edge ], [ %n_labels.0270, %land.lhs.true61.for.inc121_crit_edge ], [ %inc76, %if.then111 ], [ %inc76, %land.lhs.true115 ], [ %inc76, %if.else113.for.inc121_crit_edge ], [ %n_labels.0270, %if.end72.for.inc121_crit_edge ]
  %prefix.2 = phi ptr [ %prefix.0271, %land.lhs.true.for.inc121_crit_edge ], [ %prefix.0271, %land.lhs.true54.for.inc121_crit_edge ], [ %prefix.0271, %land.lhs.true61.for.inc121_crit_edge ], [ %prefix.1, %if.then111 ], [ %prefix.1, %land.lhs.true115 ], [ %prefix.1, %if.else113.for.inc121_crit_edge ], [ %prefix.0271, %if.end72.for.inc121_crit_edge ]
  %p.2 = phi ptr [ %p.0272, %land.lhs.true.for.inc121_crit_edge ], [ %p.0272, %land.lhs.true54.for.inc121_crit_edge ], [ %p.0272, %land.lhs.true61.for.inc121_crit_edge ], [ %p.1, %if.then111 ], [ %p.1, %land.lhs.true115 ], [ %p.1, %if.else113.for.inc121_crit_edge ], [ %p.0272, %if.end72.for.inc121_crit_edge ]
  %idx = getelementptr inbounds %struct.dimm_info, ptr %dimm.0273, i32 0, i32 4
  %72 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %idx, align 8
  %add = add i32 %73, 1
  %74 = ptrtoint ptr %tot_dimms to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tot_dimms, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %75)
  %cmp122 = icmp ult i32 %add, %75
  br i1 %cmp122, label %cond.end129, label %for.inc121.for.end131_crit_edge

for.inc121.for.end131_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

cond.end129:                                      ; preds = %for.inc121
  %76 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dimms, align 4
  %arrayidx127 = getelementptr ptr, ptr %77, i32 %add
  %78 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx127, align 4
  %tobool46.not = icmp eq ptr %79, null
  br i1 %tobool46.not, label %cond.end129.for.end131_crit_edge, label %cond.end129.for.body47_crit_edge

cond.end129.for.body47_crit_edge:                 ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

cond.end129.for.end131_crit_edge:                 ; preds = %cond.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end131

for.end131:                                       ; preds = %cond.end129.for.end131_crit_edge, %for.inc121.for.end131_crit_edge, %for.end.for.end131_crit_edge
  %row.0.lcssa = phi i32 [ -1, %for.end.for.end131_crit_edge ], [ %row.2, %cond.end129.for.end131_crit_edge ], [ %row.2, %for.inc121.for.end131_crit_edge ]
  %chan.0.lcssa = phi i32 [ -1, %for.end.for.end131_crit_edge ], [ %chan.1, %cond.end129.for.end131_crit_edge ], [ %chan.1, %for.inc121.for.end131_crit_edge ]
  br i1 %any_memory.0.off0.lcssa, label %for.end131.if.end146.sink.split_crit_edge, label %if.else137

for.end131.if.end146.sink.split_crit_edge:        ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.else137:                                       ; preds = %for.end131
  %80 = ptrtoint ptr %label to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %label, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool140.not = icmp eq i8 %81, 0
  br i1 %tobool140.not, label %if.else137.if.end146.sink.split_crit_edge, label %if.else137.if.end146_crit_edge

if.else137.if.end146_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.else137.if.end146.sink.split_crit_edge:        ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.sink.split

if.end146.sink.split:                             ; preds = %if.else137.if.end146.sink.split_crit_edge, %for.end131.if.end146.sink.split_crit_edge
  %.str.79.sink = phi ptr [ @.str.78, %for.end131.if.end146.sink.split_crit_edge ], [ @.str.79, %if.else137.if.end146.sink.split_crit_edge ]
  %call144 = tail call i32 @strscpy(ptr noundef %label, ptr noundef nonnull %.str.79.sink, i32 noundef 296) #12
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %if.else137.if.end146_crit_edge
  %82 = ptrtoint ptr %type6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type6, align 4
  %84 = ptrtoint ptr %error_count5 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %error_count5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %row.0.lcssa)
  %cmp.i = icmp slt i32 %row.0.lcssa, 0
  br i1 %cmp.i, label %if.end146.edac_inc_csrow.exit_crit_edge, label %do.body.i

if.end146.edac_inc_csrow.exit_crit_edge:          ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_inc_csrow.exit

do.body.i:                                        ; preds = %if.end146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %86 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp2.i = icmp sgt i32 %86, 3
  br i1 %cmp2.i, label %do.end.i, label %do.body.i.do.end8.i_crit_edge

do.body.i.do.end8.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, i32 noundef %row.0.lcssa, i32 noundef %chan.0.lcssa) #15
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %do.body.i.do.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp9.i = icmp eq i32 %83, 0
  %conv.i = zext i16 %85 to i32
  %csrows.i = getelementptr %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  %87 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %csrows.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %88, i32 %row.0.lcssa
  %89 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i, align 4
  br i1 %cmp9.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %do.end8.i
  %ce_count.i = getelementptr inbounds %struct.csrow_info, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %ce_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ce_count.i, align 4
  %add.i = add i32 %92, %conv.i
  store i32 %add.i, ptr %ce_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %chan.0.lcssa)
  %cmp11.i = icmp sgt i32 %chan.0.lcssa, -1
  br i1 %cmp11.i, label %if.then13.i, label %if.then10.i.edac_inc_csrow.exit_crit_edge

if.then10.i.edac_inc_csrow.exit_crit_edge:        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %edac_inc_csrow.exit

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %csrows.i, align 8
  %arrayidx16.i = getelementptr ptr, ptr %94, i32 %row.0.lcssa
  %95 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx16.i, align 4
  %channels.i = getelementptr inbounds %struct.csrow_info, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %channels.i, align 8
  %arrayidx17.i = getelementptr ptr, ptr %98, i32 %chan.0.lcssa
  %99 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx17.i, align 4
  %ce_count18.i = getelementptr inbounds %struct.rank_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %ce_count18.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ce_count18.i, align 4
  %add19.i = add i32 %102, %conv.i
  store i32 %add19.i, ptr %ce_count18.i, align 4
  br label %edac_inc_csrow.exit

if.else.i:                                        ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %ue_count.i = getelementptr inbounds %struct.csrow_info, ptr %90, i32 0, i32 5
  %103 = ptrtoint ptr %ue_count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ue_count.i, align 8
  %add24.i = add i32 %104, %conv.i
  store i32 %add24.i, ptr %ue_count.i, align 8
  br label %edac_inc_csrow.exit

edac_inc_csrow.exit:                              ; preds = %if.else.i, %if.then13.i, %if.then10.i.edac_inc_csrow.exit_crit_edge, %if.end146.edac_inc_csrow.exit_crit_edge
  %105 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %n_layers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp152279.not = icmp eq i32 %106, 0
  br i1 %cmp152279.not, label %edac_inc_csrow.exit.for.end170_crit_edge, label %for.body153.lr.ph

edac_inc_csrow.exit.for.end170_crit_edge:         ; preds = %edac_inc_csrow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end170

for.body153.lr.ph:                                ; preds = %edac_inc_csrow.exit
  %sub.ptr.lhs.cast158 = ptrtoint ptr %label to i32
  %layers161 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 18
  br label %for.body153

for.body153:                                      ; preds = %for.inc168.for.body153_crit_edge, %for.body153.lr.ph
  %p.3282 = phi ptr [ %error_desc, %for.body153.lr.ph ], [ %p.4, %for.inc168.for.body153_crit_edge ]
  %prefix.3281 = phi ptr [ @.str.67, %for.body153.lr.ph ], [ %prefix.4, %for.inc168.for.body153_crit_edge ]
  %i.1280 = phi i32 [ 0, %for.body153.lr.ph ], [ %inc169, %for.inc168.for.body153_crit_edge ]
  %arrayidx154 = getelementptr [3 x i32], ptr %pos, i32 0, i32 %i.1280
  %107 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp155 = icmp slt i32 %108, 0
  br i1 %cmp155, label %for.body153.for.inc168_crit_edge, label %if.end157

for.body153.for.inc168_crit_edge:                 ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc168

if.end157:                                        ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.rhs.cast159 = ptrtoint ptr %p.3282 to i32
  %sub.ptr.sub160 = sub i32 %sub.ptr.lhs.cast158, %sub.ptr.rhs.cast159
  %109 = ptrtoint ptr %layers161 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %layers161, align 8
  %arrayidx162 = getelementptr %struct.edac_mc_layer, ptr %110, i32 %i.1280
  %111 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx162, align 4
  %arrayidx164 = getelementptr [5 x ptr], ptr @edac_layer_name, i32 0, i32 %112
  %113 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx164, align 4
  %call166 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.3282, i32 noundef %sub.ptr.sub160, ptr noundef nonnull @.str.80, ptr noundef %prefix.3281, ptr noundef %114, i32 noundef %108) #12
  %add.ptr167 = getelementptr i8, ptr %p.3282, i32 %call166
  br label %for.inc168

for.inc168:                                       ; preds = %if.end157, %for.body153.for.inc168_crit_edge
  %prefix.4 = phi ptr [ %prefix.3281, %for.body153.for.inc168_crit_edge ], [ @.str.81, %if.end157 ]
  %p.4 = phi ptr [ %p.3282, %for.body153.for.inc168_crit_edge ], [ %add.ptr167, %if.end157 ]
  %inc169 = add nuw i32 %i.1280, 1
  %115 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %n_layers, align 4
  %cmp152 = icmp ult i32 %inc169, %116
  br i1 %cmp152, label %for.inc168.for.body153_crit_edge, label %for.inc168.for.end170_crit_edge

for.inc168.for.end170_crit_edge:                  ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end170

for.inc168.for.body153_crit_edge:                 ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body153

for.end170:                                       ; preds = %for.inc168.for.end170_crit_edge, %edac_inc_csrow.exit.for.end170_crit_edge
  tail call void @edac_raw_mc_handle_error(ptr noundef %error_desc)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pos) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mc_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef signext, i8 noundef signext, i8 noundef signext, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_log_ce() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_log_ue() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_get_panic_on_ue() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !165, !166, !167, !169, !171, !173, !174, !175, !176, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !197, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !320, !321, !322, !323, !325, !326, !327, !329, !330, !331, !332, !334, !335, !337, !338, !339, !340, !341, !343, !344, !346, !347, !348, !350, !351, !352, !353, !355, !357, !358, !359}
!llvm.named.register.sp = !{!360}
!llvm.module.flags = !{!361, !362, !363, !364, !365, !366, !367, !368}
!llvm.ident = !{!369}

!0 = !{ptr @edac_op_state, !1, !"edac_op_state", i1 false, i1 false}
!1 = !{!"../drivers/edac/edac_mc.c", i32 43, i32 5}
!2 = !{ptr @__ksymtab_edac_op_state, !3, !"__ksymtab_edac_op_state", i1 false, i1 false}
!3 = !{!"../drivers/edac/edac_mc.c", i32 44, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/edac/edac_mc.c", i32 69, i32 25}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/edac/edac_mc.c", i32 141, i32 16}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/edac/edac_mc.c", i32 142, i32 19}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/edac_mc.c", i32 143, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/edac/edac_mc.c", i32 144, i32 14}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/edac_mc.c", i32 145, i32 14}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/edac_mc.c", i32 146, i32 15}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/edac/edac_mc.c", i32 147, i32 14}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/edac/edac_mc.c", i32 148, i32 14}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/edac/edac_mc.c", i32 149, i32 14}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/edac/edac_mc.c", i32 150, i32 15}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/edac_mc.c", i32 151, i32 15}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/edac/edac_mc.c", i32 152, i32 15}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/edac/edac_mc.c", i32 153, i32 18}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/edac/edac_mc.c", i32 154, i32 16}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/edac_mc.c", i32 155, i32 14}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/edac/edac_mc.c", i32 156, i32 15}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/edac/edac_mc.c", i32 157, i32 16}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/edac/edac_mc.c", i32 158, i32 17}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/edac/edac_mc.c", i32 159, i32 17}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/edac/edac_mc.c", i32 160, i32 15}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/edac/edac_mc.c", i32 161, i32 16}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/edac/edac_mc.c", i32 163, i32 17}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/edac/edac_mc.c", i32 162, i32 17}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/edac/edac_mc.c", i32 164, i32 15}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/edac/edac_mc.c", i32 165, i32 16}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/edac/edac_mc.c", i32 166, i32 17}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/edac/edac_mc.c", i32 167, i32 17}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/edac/edac_mc.c", i32 168, i32 15}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/edac/edac_mc.c", i32 169, i32 15}
!64 = !{ptr @edac_mem_types, !65, !"edac_mem_types", i1 false, i1 false}
!65 = !{!"../drivers/edac/edac_mc.c", i32 140, i32 20}
!66 = !{ptr @__ksymtab_edac_mem_types, !67, !"__ksymtab_edac_mem_types", i1 false, i1 false}
!67 = !{!"../drivers/edac/edac_mc.c", i32 171, i32 1}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/edac/edac_mc.c", i32 400, i32 6}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/edac_mc.c", i32 429, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @edac_mc_alloc._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @edac_mc_alloc._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__ksymtab_edac_mc_alloc, !78, !"__ksymtab_edac_mc_alloc", i1 false, i1 false}
!78 = !{!"../drivers/edac/edac_mc.c", i32 474, i32 1}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/edac/edac_mc.c", i32 478, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @edac_mc_free._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @edac_mc_free._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @__ksymtab_edac_mc_free, !85, !"__ksymtab_edac_mc_free", i1 false, i1 false}
!85 = !{!"../drivers/edac/edac_mc.c", i32 482, i32 1}
!86 = !{ptr @__ksymtab_edac_has_mcs, !87, !"__ksymtab_edac_has_mcs", i1 false, i1 false}
!87 = !{!"../drivers/edac/edac_mc.c", i32 496, i32 1}
!88 = !{ptr @__ksymtab_find_mci_by_dev, !89, !"__ksymtab_find_mci_by_dev", i1 false, i1 false}
!89 = !{!"../drivers/edac/edac_mc.c", i32 533, i32 1}
!90 = !{ptr @__ksymtab_edac_mc_find, !91, !"__ksymtab_edac_mc_find", i1 false, i1 false}
!91 = !{!"../drivers/edac/edac_mc.c", i32 662, i32 1}
!92 = !{ptr @__ksymtab_edac_get_owner, !93, !"__ksymtab_edac_get_owner", i1 false, i1 false}
!93 = !{!"../drivers/edac/edac_mc.c", i32 668, i32 1}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/edac/edac_mc.c", i32 675, i32 2}
!96 = !{ptr @edac_mc_add_mc_with_groups._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @edac_mc_add_mc_with_groups._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/edac/edac_mc.c", i32 720, i32 3}
!100 = !{ptr @edac_mc_add_mc_with_groups._entry.38, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @edac_mc_add_mc_with_groups._entry_ptr.40, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @edac_mc_add_mc_with_groups.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/edac/edac_mc.c", i32 728, i32 3}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @edac_mc_add_mc_with_groups.__key.42, !103, !"__key", i1 false, i1 false}
!106 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/edac/edac_mc.c", i32 736, i32 2}
!109 = !{ptr @edac_mc_add_mc_with_groups._entry.44, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @edac_mc_add_mc_with_groups._entry_ptr.46, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @__ksymtab_edac_mc_add_mc_with_groups, !112, !"__ksymtab_edac_mc_add_mc_with_groups", i1 false, i1 false}
!112 = !{!"../drivers/edac/edac_mc.c", i32 753, i32 1}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/edac/edac_mc.c", i32 759, i32 2}
!115 = !{ptr @edac_mc_del_mc._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @edac_mc_del_mc._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/edac/edac_mc.c", i32 784, i32 2}
!119 = !{ptr @edac_mc_del_mc._entry.48, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @edac_mc_del_mc._entry_ptr.50, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @__ksymtab_edac_mc_del_mc, !122, !"__ksymtab_edac_mc_del_mc", i1 false, i1 false}
!122 = !{!"../drivers/edac/edac_mc.c", i32 790, i32 1}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/edac/edac_mc.c", i32 829, i32 2}
!125 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @edac_mc_find_csrow_by_page._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @edac_mc_find_csrow_by_page._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/edac/edac_mc.c", i32 842, i32 3}
!130 = !{ptr @edac_mc_find_csrow_by_page._entry.53, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @edac_mc_find_csrow_by_page._entry_ptr.55, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/edac/edac_mc.c", i32 857, i32 3}
!134 = !{ptr @edac_mc_find_csrow_by_page._entry.56, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @edac_mc_find_csrow_by_page._entry_ptr.58, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @__ksymtab_edac_mc_find_csrow_by_page, !137, !"__ksymtab_edac_mc_find_csrow_by_page", i1 false, i1 false}
!137 = !{!"../drivers/edac/edac_mc.c", i32 863, i32 1}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/edac/edac_mc.c", i32 866, i32 27}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/edac/edac_mc.c", i32 867, i32 28}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/edac/edac_mc.c", i32 868, i32 25}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/edac/edac_mc.c", i32 869, i32 32}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/edac/edac_mc.c", i32 870, i32 28}
!148 = !{ptr @edac_layer_name, !149, !"edac_layer_name", i1 false, i1 false}
!149 = !{!"../drivers/edac/edac_mc.c", i32 865, i32 13}
!150 = !{ptr @__ksymtab_edac_layer_name, !151, !"__ksymtab_edac_layer_name", i1 false, i1 false}
!151 = !{!"../drivers/edac/edac_mc.c", i32 872, i32 1}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../drivers/edac/edac_mc.c", i32 994, i32 6}
!154 = !{ptr @__ksymtab_edac_raw_mc_handle_error, !155, !"__ksymtab_edac_raw_mc_handle_error", i1 false, i1 false}
!155 = !{!"../drivers/edac/edac_mc.c", i32 1012, i32 1}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/edac/edac_mc.c", i32 1035, i32 2}
!158 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @edac_mc_handle_error._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @edac_mc_handle_error._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/edac/edac_mc.c", i32 1048, i32 18}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/edac/edac_mc.c", i32 1059, i32 4}
!165 = !{ptr @edac_mc_handle_error._entry.68, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @edac_mc_handle_error._entry_ptr.70, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/edac/edac_mc.c", i32 1117, i32 31}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/edac/edac_mc.c", i32 1118, i32 13}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/edac/edac_mc.c", i32 1125, i32 3}
!173 = !{ptr @edac_mc_handle_error._entry.73, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @edac_mc_handle_error._entry_ptr.75, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/edac/edac_mc.c", i32 1140, i32 21}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/edac/edac_mc.c", i32 1142, i32 21}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/edac/edac_mc.c", i32 1155, i32 30}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/edac/edac_mc.c", i32 1157, i32 12}
!185 = !{ptr @__ksymtab_edac_mc_handle_error, !186, !"__ksymtab_edac_mc_handle_error", i1 false, i1 false}
!186 = !{!"../drivers/edac/edac_mc.c", i32 1162, i32 1}
!187 = !{ptr @edac_mc_owner, !188, !"edac_mc_owner", i1 false, i1 false}
!188 = !{!"../drivers/edac/edac_mc.c", i32 54, i32 20}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/edac/edac_mc.c", i32 344, i32 25}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/edac/edac_mc.c", i32 348, i32 26}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/edac/edac_mc.c", i32 47, i32 8}
!195 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @mem_ctls_mutex, !194, !"mem_ctls_mutex", i1 false, i1 false}
!197 = !{ptr @mc_devices, !198, !"mc_devices", i1 false, i1 false}
!198 = !{!"../drivers/edac/edac_mc.c", i32 48, i32 8}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/edac/edac_mc.c", i32 504, i32 2}
!201 = !{ptr @__find_mci_by_dev._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @__find_mci_by_dev._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.87, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/edac/edac_mc.c", i32 123, i32 2}
!205 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @edac_mc_dump_mci._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @edac_mc_dump_mci._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/edac/edac_mc.c", i32 124, i32 2}
!210 = !{ptr @edac_mc_dump_mci._entry.89, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @edac_mc_dump_mci._entry_ptr.91, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.93, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/edac/edac_mc.c", i32 125, i32 2}
!214 = !{ptr @edac_mc_dump_mci._entry.92, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @edac_mc_dump_mci._entry_ptr.94, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.96, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/edac/edac_mc.c", i32 126, i32 2}
!218 = !{ptr @edac_mc_dump_mci._entry.95, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @edac_mc_dump_mci._entry_ptr.97, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/edac/edac_mc.c", i32 127, i32 2}
!222 = !{ptr @edac_mc_dump_mci._entry.98, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @edac_mc_dump_mci._entry_ptr.100, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.102, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/edac/edac_mc.c", i32 128, i32 2}
!226 = !{ptr @edac_mc_dump_mci._entry.101, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @edac_mc_dump_mci._entry_ptr.103, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/edac/edac_mc.c", i32 130, i32 2}
!230 = !{ptr @edac_mc_dump_mci._entry.104, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @edac_mc_dump_mci._entry_ptr.106, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/edac/edac_mc.c", i32 132, i32 2}
!234 = !{ptr @edac_mc_dump_mci._entry.107, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @edac_mc_dump_mci._entry_ptr.109, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/edac/edac_mc.c", i32 133, i32 2}
!238 = !{ptr @edac_mc_dump_mci._entry.110, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @edac_mc_dump_mci._entry_ptr.112, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/edac/edac_mc.c", i32 135, i32 2}
!242 = !{ptr @edac_mc_dump_mci._entry.113, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @edac_mc_dump_mci._entry_ptr.115, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/edac/edac_mc.c", i32 111, i32 2}
!246 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @edac_mc_dump_csrow._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @edac_mc_dump_csrow._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.119, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/edac/edac_mc.c", i32 112, i32 2}
!251 = !{ptr @edac_mc_dump_csrow._entry.118, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @edac_mc_dump_csrow._entry_ptr.120, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.122, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/edac/edac_mc.c", i32 113, i32 2}
!255 = !{ptr @edac_mc_dump_csrow._entry.121, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @edac_mc_dump_csrow._entry_ptr.123, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/edac/edac_mc.c", i32 114, i32 2}
!259 = !{ptr @edac_mc_dump_csrow._entry.124, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @edac_mc_dump_csrow._entry_ptr.126, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/edac/edac_mc.c", i32 115, i32 2}
!263 = !{ptr @edac_mc_dump_csrow._entry.127, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @edac_mc_dump_csrow._entry_ptr.129, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/edac/edac_mc.c", i32 116, i32 2}
!267 = !{ptr @edac_mc_dump_csrow._entry.130, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @edac_mc_dump_csrow._entry_ptr.132, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.134, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/edac/edac_mc.c", i32 117, i32 2}
!271 = !{ptr @edac_mc_dump_csrow._entry.133, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @edac_mc_dump_csrow._entry_ptr.135, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/edac/edac_mc.c", i32 118, i32 2}
!275 = !{ptr @edac_mc_dump_csrow._entry.136, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @edac_mc_dump_csrow._entry_ptr.138, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/edac/edac_mc.c", i32 84, i32 2}
!279 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @edac_mc_dump_channel._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @edac_mc_dump_channel._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/edac/edac_mc.c", i32 85, i32 2}
!284 = !{ptr @edac_mc_dump_channel._entry.141, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @edac_mc_dump_channel._entry_ptr.143, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/edac/edac_mc.c", i32 86, i32 2}
!288 = !{ptr @edac_mc_dump_channel._entry.144, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @edac_mc_dump_channel._entry_ptr.146, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.148, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/edac/edac_mc.c", i32 87, i32 2}
!292 = !{ptr @edac_mc_dump_channel._entry.147, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @edac_mc_dump_channel._entry_ptr.149, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.150, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/edac/edac_mc.c", i32 99, i32 2}
!296 = !{ptr @.str.151, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @edac_mc_dump_dimm._entry, !295, !"_entry", i1 false, i1 false}
!298 = !{ptr @edac_mc_dump_dimm._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/edac/edac_mc.c", i32 102, i32 2}
!301 = !{ptr @edac_mc_dump_dimm._entry.152, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @edac_mc_dump_dimm._entry_ptr.154, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/edac/edac_mc.c", i32 103, i32 2}
!305 = !{ptr @edac_mc_dump_dimm._entry.155, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @edac_mc_dump_dimm._entry_ptr.157, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.159, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/edac/edac_mc.c", i32 104, i32 2}
!309 = !{ptr @edac_mc_dump_dimm._entry.158, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @edac_mc_dump_dimm._entry_ptr.160, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.162, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/edac/edac_mc.c", i32 105, i32 2}
!313 = !{ptr @edac_mc_dump_dimm._entry.161, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @edac_mc_dump_dimm._entry_ptr.163, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @edac_mc_dump_dimm._entry.164, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/edac/edac_mc.c", i32 106, i32 2}
!317 = !{ptr @edac_mc_dump_dimm._entry_ptr.165, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.166, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/edac/edac_mc.c", i32 619, i32 2}
!320 = !{ptr @.str.167, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @add_mc_to_global_list._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @add_mc_to_global_list._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.169, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/edac/edac_mc.c", i32 625, i32 2}
!325 = !{ptr @add_mc_to_global_list._entry.168, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @add_mc_to_global_list._entry_ptr.170, !324, !"_entry_ptr", i1 false, i1 false}
!327 = distinct !{null, !328, !"__already_done", i1 false, i1 false}
!328 = !{!"../include/ras/ras_event.h", i32 98, i32 1}
!329 = !{ptr @.str.171, !328, !"<string literal>", i1 false, i1 false}
!330 = distinct !{null, !328, !"__warned", i1 false, i1 false}
!331 = !{ptr @.str.172, !328, !"<string literal>", i1 false, i1 false}
!332 = distinct !{null, !333, !"__already_done", i1 false, i1 false}
!333 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!334 = !{ptr @.str.173, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.174, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/edac/edac_mc.c", i32 908, i32 3}
!337 = !{ptr @.str.175, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @edac_ce_error._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @edac_ce_error._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.176, !336, !"<string literal>", i1 false, i1 false}
!341 = distinct !{null, !342, !"__already_done", i1 false, i1 false}
!342 = !{!"../include/linux/edac.h", i32 656, i32 6}
!343 = !{ptr @.str.177, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.178, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/edac/edac_mc.c", i32 799, i32 2}
!346 = !{ptr @edac_mc_scrub_block._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @edac_mc_scrub_block._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.179, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/edac/edac_mc.c", i32 945, i32 3}
!350 = !{ptr @.str.180, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @edac_ue_error._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @edac_ue_error._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.181, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/edac/edac_mc.c", i32 958, i32 9}
!355 = !{ptr @.str.182, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/edac/edac_mc.c", i32 977, i32 2}
!357 = !{ptr @.str.183, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @edac_inc_csrow._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @edac_inc_csrow._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{!"sp"}
!361 = !{i32 1, !"wchar_size", i32 2}
!362 = !{i32 1, !"min_enum_size", i32 4}
!363 = !{i32 8, !"branch-target-enforcement", i32 0}
!364 = !{i32 8, !"sign-return-address", i32 0}
!365 = !{i32 8, !"sign-return-address-all", i32 0}
!366 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!367 = !{i32 7, !"uwtable", i32 1}
!368 = !{i32 7, !"frame-pointer", i32 2}
!369 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!370 = !{!"branch_weights", i32 1, i32 2000}
!371 = !{i8 0, i8 2}
!372 = !{!"branch_weights", i32 2000, i32 1}
!373 = !{i64 2151746689}
!374 = !{i32 0, i32 33}
!375 = !{i64 770952, i64 771013}
!376 = !{i64 2153794128}
!377 = !{i64 2152443591}
!378 = !{i64 7382127, i64 7382136, i64 7382161, i64 7382188, i64 7382207}
!379 = !{i64 2152443798}
!380 = !{i64 2153796899}
!381 = !{i64 773684}
!382 = !{i64 773969}
!383 = !{i64 2148980629, i64 2148980634, i64 2148980647, i64 2148980691, i64 2148980725, i64 2148980746}
!384 = !{i64 2154793428}
!385 = !{i64 2154793871}
!386 = !{i64 2149391970}
!387 = !{i64 2149393006}
