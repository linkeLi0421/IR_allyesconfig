; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_util.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsit_allocate_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_allocate_cmd\09\09\09\09"
module asm "\09.long\09__crc_iscsit_allocate_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_allocate_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_allocate_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_allocate_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iscsit_sequence_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_sequence_cmd\09\09\09\09"
module asm "\09.long\09__crc_iscsit_sequence_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_sequence_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_sequence_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_sequence_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iscsit_find_cmd_from_itt\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_find_cmd_from_itt\09\09\09\09"
module asm "\09.long\09__crc_iscsit_find_cmd_from_itt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_find_cmd_from_itt:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_find_cmd_from_itt\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_find_cmd_from_itt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iscsit_find_cmd_from_itt_or_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_find_cmd_from_itt_or_dump\09\09\09\09"
module asm "\09.long\09__crc_iscsit_find_cmd_from_itt_or_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_find_cmd_from_itt_or_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_find_cmd_from_itt_or_dump\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_find_cmd_from_itt_or_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iscsit_add_cmd_to_immediate_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_add_cmd_to_immediate_queue\09\09\09\09"
module asm "\09.long\09__crc_iscsit_add_cmd_to_immediate_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_add_cmd_to_immediate_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_add_cmd_to_immediate_queue\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_add_cmd_to_immediate_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iscsit_release_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_release_cmd\09\09\09\09"
module asm "\09.long\09__crc_iscsit_release_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_release_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_release_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_release_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iscsit_free_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_free_cmd\09\09\09\09"
module asm "\09.long\09__crc_iscsit_free_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_free_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_free_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_free_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kvec = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iscsi_r2t = type { i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [92 x i8] }
%struct.iscsi_queue_req = type { i32, ptr, %struct.list_head }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.133 }
%union.anon.133 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.sbq_wait = type { ptr, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.115, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
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
%struct.cpumask = type { [1 x i32] }
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
%union.anon.115 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_seq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_data = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.iscsi_tiqn = type { [224 x i8], i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.se_wwn, %struct.iscsi_wwn_stat_grps, i32, [64 x i8], %struct.iscsi_sess_err_stats, %struct.iscsi_login_stats, %struct.iscsi_logout_stats }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.iscsi_wwn_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.iscsi_sess_err_stats = type { %struct.spinlock, i32, i32, i32, i32, [224 x i8], [100 x i8] }
%struct.iscsi_login_stats = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.__kernel_sockaddr_storage, [224 x i8], [72 x i8] }
%struct.iscsi_logout_stats = type { %struct.spinlock, i32, i32, [76 x i8] }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_login = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, i32, i32, i32, i16, i16, [48 x i8], [48 x i8], ptr, ptr, ptr, ptr, [108 x i8] }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/iscsi_target_util.c\00", [55 x i8] zeroinitializer }, align 32
@iscsit_add_r2t_to_list.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lio_r2t_cache = external dso_local local_unnamed_addr global ptr, align 4
@iscsit_add_r2t_to_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to allocate memory for struct iscsi_r2t.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iscsit_add_r2t_to_list\00", [41 x i8] zeroinitializer }, align 32
@iscsit_add_r2t_to_list._entry_ptr = internal global ptr @iscsit_add_r2t_to_list._entry, section ".printk_index", align 4
@iscsit_get_r2t_for_eos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to locate R2T for Offset: %u, Length: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iscsit_get_r2t_for_eos\00", [41 x i8] zeroinitializer }, align 32
@iscsit_get_r2t_for_eos._entry_ptr = internal global ptr @iscsit_get_r2t_for_eos._entry, section ".printk_index", align 4
@iscsit_get_r2t_from_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Unable to locate next R2T to send for ITT: 0x%08x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_get_r2t_from_list\00", [39 x i8] zeroinitializer }, align 32
@iscsit_get_r2t_from_list._entry_ptr = internal global ptr @iscsit_get_r2t_from_list._entry, section ".printk_index", align 4
@iscsit_allocate_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cmd->datain_lock\00", [46 x i8] zeroinitializer }, align 32
@iscsit_allocate_cmd.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&cmd->dataout_timeout_lock\00", [37 x i8] zeroinitializer }, align 32
@iscsit_allocate_cmd.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cmd->istate_lock\00", [46 x i8] zeroinitializer }, align 32
@iscsit_allocate_cmd.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&cmd->error_lock\00", [47 x i8] zeroinitializer }, align 32
@iscsit_allocate_cmd.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cmd->r2t_lock\00", [17 x i8] zeroinitializer }, align 32
@iscsit_allocate_cmd.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&cmd->dataout_timer)\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_iscsit_allocate_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_allocate_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_allocate_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_allocate_cmd to i32), ptr @__kstrtab_iscsit_allocate_cmd, ptr @__kstrtabns_iscsit_allocate_cmd }, section "___ksymtab+iscsit_allocate_cmd", align 4
@iscsit_get_seq_holder_for_r2t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013struct iscsi_cmd->seq_list is NULL!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_get_seq_holder_for_r2t\00", [34 x i8] zeroinitializer }, align 32
@iscsit_get_seq_holder_for_r2t._entry_ptr = internal global ptr @iscsit_get_seq_holder_for_r2t._entry, section ".printk_index", align 4
@__kstrtab_iscsit_sequence_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_sequence_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_sequence_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_sequence_cmd to i32), ptr @__kstrtab_iscsit_sequence_cmd, ptr @__kstrtabns_iscsit_sequence_cmd }, section "___ksymtab+iscsit_sequence_cmd", align 4
@iscsit_check_unsolicited_dataout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013Received unexpected unsolicited data while InitialR2T=Yes, protocol error.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_check_unsolicited_dataout\00", [63 x i8] zeroinitializer }, align 32
@iscsit_check_unsolicited_dataout._entry_ptr = internal global ptr @iscsit_check_unsolicited_dataout._entry, section ".printk_index", align 4
@iscsit_check_unsolicited_dataout._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013Total %u bytes exceeds FirstBurstLength: %u for this Unsolicited DataOut Burst.\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsit_check_unsolicited_dataout._entry_ptr.24 = internal global ptr @iscsit_check_unsolicited_dataout._entry.22, section ".printk_index", align 4
@iscsit_check_unsolicited_dataout._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\013Unsolicited non-immediate data received %u does not equal FirstBurstLength: %u, and does not equal ExpXferLen %u.\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_check_unsolicited_dataout._entry_ptr.27 = internal global ptr @iscsit_check_unsolicited_dataout._entry.25, section ".printk_index", align 4
@iscsit_find_cmd_from_itt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Unable to locate ITT: 0x%08x on CID: %hu\00", [53 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_find_cmd_from_itt\00", [39 x i8] zeroinitializer }, align 32
@iscsit_find_cmd_from_itt._entry_ptr = internal global ptr @iscsit_find_cmd_from_itt._entry, section ".printk_index", align 4
@__kstrtab_iscsit_find_cmd_from_itt = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_find_cmd_from_itt = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_find_cmd_from_itt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_find_cmd_from_itt to i32), ptr @__kstrtab_iscsit_find_cmd_from_itt, ptr @__kstrtabns_iscsit_find_cmd_from_itt }, section "___ksymtab+iscsit_find_cmd_from_itt", align 4
@iscsit_find_cmd_from_itt_or_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Unable to locate ITT: 0x%08x on CID: %hu, dumping payload\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_find_cmd_from_itt_or_dump\00", [63 x i8] zeroinitializer }, align 32
@iscsit_find_cmd_from_itt_or_dump._entry_ptr = internal global ptr @iscsit_find_cmd_from_itt_or_dump._entry, section ".printk_index", align 4
@__kstrtab_iscsit_find_cmd_from_itt_or_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_find_cmd_from_itt_or_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_find_cmd_from_itt_or_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_find_cmd_from_itt_or_dump to i32), ptr @__kstrtab_iscsit_find_cmd_from_itt_or_dump, ptr @__kstrtabns_iscsit_find_cmd_from_itt_or_dump }, section "___ksymtab+iscsit_find_cmd_from_itt_or_dump", align 4
@iscsit_find_cmd_from_ttt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to locate TTT: 0x%08x on CID: %hu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_find_cmd_from_ttt\00", [39 x i8] zeroinitializer }, align 32
@iscsit_find_cmd_from_ttt._entry_ptr = internal global ptr @iscsit_find_cmd_from_ttt._entry, section ".printk_index", align 4
@lio_qr_cache = external dso_local local_unnamed_addr global ptr, align 4
@iscsit_add_cmd_to_immediate_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to allocate memory for struct iscsi_queue_req\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_add_cmd_to_immediate_queue\00", [62 x i8] zeroinitializer }, align 32
@iscsit_add_cmd_to_immediate_queue._entry_ptr = internal global ptr @iscsit_add_cmd_to_immediate_queue._entry, section ".printk_index", align 4
@__kstrtab_iscsit_add_cmd_to_immediate_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_add_cmd_to_immediate_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_add_cmd_to_immediate_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_add_cmd_to_immediate_queue to i32), ptr @__kstrtab_iscsit_add_cmd_to_immediate_queue, ptr @__kstrtabns_iscsit_add_cmd_to_immediate_queue }, section "___ksymtab+iscsit_add_cmd_to_immediate_queue", align 4
@iscsit_add_cmd_to_response_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.36, ptr @.str, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_add_cmd_to_response_queue\00", [63 x i8] zeroinitializer }, align 32
@iscsit_add_cmd_to_response_queue._entry_ptr = internal global ptr @iscsit_add_cmd_to_response_queue._entry, section ".printk_index", align 4
@__kstrtab_iscsit_release_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_release_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_release_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_release_cmd to i32), ptr @__kstrtab_iscsit_release_cmd, ptr @__kstrtabns_iscsit_release_cmd }, section "___ksymtab+iscsit_release_cmd", align 4
@__kstrtab_iscsit_free_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_free_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_free_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_free_cmd to i32), ptr @__kstrtab_iscsit_free_cmd, ptr @__kstrtabns_iscsit_free_cmd }, section "___ksymtab+iscsit_free_cmd", align 4
@iscsit_handle_nopin_response_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013Did not receive response to NOPIN on CID: %hu, failing connection for I_T Nexus %s,i,0x%6phN,%s,t,0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iscsit_handle_nopin_response_timeout\00", [59 x i8] zeroinitializer }, align 32
@iscsit_handle_nopin_response_timeout._entry_ptr = internal global ptr @iscsit_handle_nopin_response_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iscsit_start_nopin_response_timer.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str, ptr @.str.41, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_start_nopin_response_timer\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Started NOPIN Response Timer on CID: %d to %u seconds\0A\00", [41 x i8] zeroinitializer }, align 32
@__iscsit_start_nopin_timer.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.42, ptr @.str, ptr @.str.43, i8 0, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__iscsit_start_nopin_timer\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Started NOPIN Timer on CID: %d at %u second interval\0A\00", [42 x i8] zeroinitializer }, align 32
@iscsit_send_tx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013tx_data() returned -EAGAIN\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iscsit_send_tx_data\00", [44 x i8] zeroinitializer }, align 32
@iscsit_send_tx_data._entry_ptr = internal global ptr @iscsit_send_tx_data._entry, section ".printk_index", align 4
@iscsit_fe_sendpage_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_fe_sendpage_sg\00", [42 x i8] zeroinitializer }, align 32
@iscsit_fe_sendpage_sg._entry_ptr = internal global ptr @iscsit_fe_sendpage_sg._entry, section ".printk_index", align 4
@iscsit_fe_sendpage_sg._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013tcp_sendpage() returned -EAGAIN\0A\00", [61 x i8] zeroinitializer }, align 32
@iscsit_fe_sendpage_sg._entry_ptr.49 = internal global ptr @iscsit_fe_sendpage_sg._entry.47, section ".printk_index", align 4
@iscsit_fe_sendpage_sg._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013tcp_sendpage() failure: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsit_fe_sendpage_sg._entry_ptr.52 = internal global ptr @iscsit_fe_sendpage_sg._entry.50, section ".printk_index", align 4
@iscsit_fe_sendpage_sg._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsit_fe_sendpage_sg._entry_ptr.54 = internal global ptr @iscsit_fe_sendpage_sg._entry.53, section ".printk_index", align 4
@iscsit_fe_sendpage_sg._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.46, ptr @.str, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsit_fe_sendpage_sg._entry_ptr.56 = internal global ptr @iscsit_fe_sendpage_sg._entry.55, section ".printk_index", align 4
@iscsit_print_session_params.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.57, ptr @.str, ptr @.str.58, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsit_print_session_params\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"-----------------------------[Session Params for SID: %u]-----------------------------\0A\00", [40 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.59, ptr @.str, ptr @.str.60, i8 1, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rx_data\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx_loop: %d total_rx: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rx_data.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.59, ptr @.str, ptr @.str.61, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx_loop: %d, total_rx: %d, data: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Data length is: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tx_data\00", [24 x i8] zeroinitializer }, align 32
@tx_data._entry_ptr = internal global ptr @tx_data._entry, section ".printk_index", align 4
@tx_data.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.63, ptr @.str, ptr @.str.64, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tx_loop: %d total_tx %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tx_data.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.63, ptr @.str, ptr @.str.65, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tx_loop: %d, total_tx: %d, data: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InitiatorName\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@iscsit_check_received_cmdsn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013Received CmdSN: 0x%08x is greater than MaxCmdSN: 0x%08x, ignoring.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsit_check_received_cmdsn\00", [36 x i8] zeroinitializer }, align 32
@iscsit_check_received_cmdsn._entry_ptr = internal global ptr @iscsit_check_received_cmdsn._entry, section ".printk_index", align 4
@iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.69, ptr @.str, ptr @.str.70, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Received CmdSN matches ExpCmdSN, incremented ExpCmdSN to: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.69, ptr @.str, ptr @.str.71, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Received CmdSN: 0x%08x is greater than ExpCmdSN: 0x%08x, not acknowledging.\0A\00", [51 x i8] zeroinitializer }, align 32
@iscsit_check_received_cmdsn._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Received CmdSN: 0x%08x is less than ExpCmdSN: 0x%08x, ignoring.\0A\00", [61 x i8] zeroinitializer }, align 32
@iscsit_check_received_cmdsn._entry_ptr.74 = internal global ptr @iscsit_check_received_cmdsn._entry.72, section ".printk_index", align 4
@iscsit_remove_cmd_from_immediate_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ITT: 0x%08x immed_queue_count: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iscsit_remove_cmd_from_immediate_queue\00", [57 x i8] zeroinitializer }, align 32
@iscsit_remove_cmd_from_immediate_queue._entry_ptr = internal global ptr @iscsit_remove_cmd_from_immediate_queue._entry, section ".printk_index", align 4
@iscsit_remove_cmd_from_response_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ITT: 0x%08x response_queue_count: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"iscsit_remove_cmd_from_response_queue\00", [58 x i8] zeroinitializer }, align 32
@iscsit_remove_cmd_from_response_queue._entry_ptr = internal global ptr @iscsit_remove_cmd_from_response_queue._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967285]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 43, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 49, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 84, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 102, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 178, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 179, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 180, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 181, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 182, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 183, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 207, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 344, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 353, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 368, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 395, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 419, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 443, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 509, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 585, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 910, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 954, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1015, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1066, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1097, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1128, i32 5 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1133, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1150, i32 5 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1164, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1205, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1233, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1238, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1258, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1269, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1274, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1322, i32 41 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1325, i32 40 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 254, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 260, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 266, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 272, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 570, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_util.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 647, i32 3 }
@llvm.compiler.used = appending global [121 x ptr] [ptr @__ksymtab_iscsit_add_cmd_to_immediate_queue, ptr @__ksymtab_iscsit_allocate_cmd, ptr @__ksymtab_iscsit_find_cmd_from_itt, ptr @__ksymtab_iscsit_find_cmd_from_itt_or_dump, ptr @__ksymtab_iscsit_free_cmd, ptr @__ksymtab_iscsit_release_cmd, ptr @__ksymtab_iscsit_sequence_cmd, ptr @iscsit_add_cmd_to_immediate_queue._entry, ptr @iscsit_add_cmd_to_immediate_queue._entry_ptr, ptr @iscsit_add_cmd_to_response_queue._entry, ptr @iscsit_add_cmd_to_response_queue._entry_ptr, ptr @iscsit_add_r2t_to_list._entry, ptr @iscsit_add_r2t_to_list._entry_ptr, ptr @iscsit_check_received_cmdsn._entry, ptr @iscsit_check_received_cmdsn._entry.72, ptr @iscsit_check_received_cmdsn._entry_ptr, ptr @iscsit_check_received_cmdsn._entry_ptr.74, ptr @iscsit_check_unsolicited_dataout._entry, ptr @iscsit_check_unsolicited_dataout._entry.22, ptr @iscsit_check_unsolicited_dataout._entry.25, ptr @iscsit_check_unsolicited_dataout._entry_ptr, ptr @iscsit_check_unsolicited_dataout._entry_ptr.24, ptr @iscsit_check_unsolicited_dataout._entry_ptr.27, ptr @iscsit_fe_sendpage_sg._entry, ptr @iscsit_fe_sendpage_sg._entry.47, ptr @iscsit_fe_sendpage_sg._entry.50, ptr @iscsit_fe_sendpage_sg._entry.53, ptr @iscsit_fe_sendpage_sg._entry.55, ptr @iscsit_fe_sendpage_sg._entry_ptr, ptr @iscsit_fe_sendpage_sg._entry_ptr.49, ptr @iscsit_fe_sendpage_sg._entry_ptr.52, ptr @iscsit_fe_sendpage_sg._entry_ptr.54, ptr @iscsit_fe_sendpage_sg._entry_ptr.56, ptr @iscsit_find_cmd_from_itt._entry, ptr @iscsit_find_cmd_from_itt._entry_ptr, ptr @iscsit_find_cmd_from_itt_or_dump._entry, ptr @iscsit_find_cmd_from_itt_or_dump._entry_ptr, ptr @iscsit_find_cmd_from_ttt._entry, ptr @iscsit_find_cmd_from_ttt._entry_ptr, ptr @iscsit_get_r2t_for_eos._entry, ptr @iscsit_get_r2t_for_eos._entry_ptr, ptr @iscsit_get_r2t_from_list._entry, ptr @iscsit_get_r2t_from_list._entry_ptr, ptr @iscsit_get_seq_holder_for_r2t._entry, ptr @iscsit_get_seq_holder_for_r2t._entry_ptr, ptr @iscsit_handle_nopin_response_timeout._entry, ptr @iscsit_handle_nopin_response_timeout._entry_ptr, ptr @iscsit_remove_cmd_from_immediate_queue._entry, ptr @iscsit_remove_cmd_from_immediate_queue._entry_ptr, ptr @iscsit_remove_cmd_from_response_queue._entry, ptr @iscsit_remove_cmd_from_response_queue._entry_ptr, ptr @iscsit_send_tx_data._entry, ptr @iscsit_send_tx_data._entry_ptr, ptr @tx_data._entry, ptr @tx_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iscsit_allocate_cmd.__key, ptr @.str.7, ptr @iscsit_allocate_cmd.__key.8, ptr @.str.9, ptr @iscsit_allocate_cmd.__key.10, ptr @.str.11, ptr @iscsit_allocate_cmd.__key.12, ptr @.str.13, ptr @iscsit_allocate_cmd.__key.14, ptr @.str.15, ptr @iscsit_allocate_cmd.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_add_r2t_to_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_r2t_for_eos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_r2t_from_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_cmd.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_cmd.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_cmd.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_cmd.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_cmd.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_seq_holder_for_r2t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_unsolicited_dataout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_unsolicited_dataout._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_unsolicited_dataout._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_find_cmd_from_itt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_find_cmd_from_itt_or_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_find_cmd_from_ttt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_add_cmd_to_immediate_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_add_cmd_to_response_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_nopin_response_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_send_tx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_fe_sendpage_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_fe_sendpage_sg._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_fe_sendpage_sg._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_fe_sendpage_sg._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_fe_sendpage_sg._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_received_cmdsn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_received_cmdsn._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_remove_cmd_from_immediate_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_remove_cmd_from_response_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_add_r2t_to_list(ptr noundef %cmd, i32 noundef %offset, i32 noundef %xfer_len, i32 noundef %recovery, i32 noundef %r2t_sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer_len)
  %cmp24 = icmp slt i32 %xfer_len, 0
  br i1 %cmp24, label %land.rhs30, label %if.end.if.end68_crit_edge

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.rhs30:                                       ; preds = %if.end
  %.b110 = load i1, ptr @iscsit_add_r2t_to_list.__already_done, align 1
  br i1 %.b110, label %land.rhs30.if.end68_crit_edge, label %if.then41, !prof !192

land.rhs30.if.end68_crit_edge:                    ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then41:                                        ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @iscsit_add_r2t_to_list.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef null) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then41, %land.rhs30.if.end68_crit_edge, %if.end.if.end68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_r2t_cache to i32))
  %1 = load ptr, ptr @lio_r2t_cache, align 4
  %call.i111 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 2848) #10
  %tobool77.not = icmp eq ptr %call.i111, null
  br i1 %tobool77.not, label %do.end81, label %if.end84

do.end81:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end84:                                         ; preds = %if.end68
  %r2t_list = getelementptr inbounds %struct.iscsi_r2t, ptr %call.i111, i32 0, i32 7
  %2 = ptrtoint ptr %r2t_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %r2t_list, ptr %r2t_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_r2t, ptr %call.i111, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %r2t_list, ptr %prev.i, align 8
  %recovery_r2t = getelementptr inbounds %struct.iscsi_r2t, ptr %call.i111, i32 0, i32 1
  %4 = ptrtoint ptr %recovery_r2t to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %recovery, ptr %recovery_r2t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r2t_sn)
  %tobool85.not = icmp eq i32 %r2t_sn, 0
  br i1 %tobool85.not, label %cond.true, label %if.end84.cond.end_crit_edge

if.end84.cond.end_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %r2t_sn86 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 22
  %5 = ptrtoint ptr %r2t_sn86 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r2t_sn86, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %r2t_sn86, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end84.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ %r2t_sn, %if.end84.cond.end_crit_edge ]
  %r2t_sn87 = getelementptr inbounds %struct.iscsi_r2t, ptr %call.i111, i32 0, i32 3
  %7 = ptrtoint ptr %r2t_sn87 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %r2t_sn87, align 4
  %offset88 = getelementptr inbounds %struct.iscsi_r2t, ptr %call.i111, i32 0, i32 4
  %8 = ptrtoint ptr %offset88 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %offset, ptr %offset88, align 16
  %xfer_len89 = getelementptr inbounds %struct.iscsi_r2t, ptr %call.i111, i32 0, i32 6
  %9 = ptrtoint ptr %xfer_len89 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xfer_len, ptr %xfer_len89, align 8
  %cmd_r2t_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 56
  %prev.i112 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 56, i32 1
  %10 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i112, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %r2t_list, ptr noundef %11, ptr noundef %cmd_r2t_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_add_tail.exit_crit_edge

cond.end.list_add_tail.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i112 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %r2t_list, ptr %prev.i112, align 4
  %13 = ptrtoint ptr %r2t_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd_r2t_list, ptr %r2t_list, align 4
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev.i, align 8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %r2t_list, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end.list_add_tail.exit_crit_edge
  %r2t_lock91 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock91) #10
  %conn = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %16 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn, align 8
  tail call void @iscsit_add_cmd_to_immediate_queue(ptr noundef %cmd, ptr noundef %17, i8 noundef zeroext 21)
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock91) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end81
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -1, %do.end81 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_add_cmd_to_immediate_queue(ptr noundef %cmd, ptr noundef %conn, i8 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_qr_cache to i32))
  %0 = load ptr, ptr @lio_qr_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2848) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qr_list = getelementptr inbounds %struct.iscsi_queue_req, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %qr_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %qr_list, ptr %qr_list, align 8
  %prev.i = getelementptr inbounds %struct.iscsi_queue_req, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qr_list, ptr %prev.i, align 4
  %cmd2 = getelementptr inbounds %struct.iscsi_queue_req, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %cmd2, align 4
  %conv = zext i8 %state to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %call.i, align 8
  %immed_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %immed_queue_lock) #10
  %immed_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 57
  %prev.i16 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 57, i32 1
  %5 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i16, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %qr_list, ptr noundef %6, ptr noundef %immed_queue_list) #10
  br i1 %call.i.i17, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %qr_list, ptr %prev.i16, align 4
  %8 = ptrtoint ptr %qr_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %immed_queue_list, ptr %qr_list, align 8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %qr_list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %immed_queue_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %immed_queue_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %immed_queue_count, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %immed_queue_count, ptr %immed_queue_count, i32 1, ptr elementtype(i32) %immed_queue_count) #10, !srcloc !193
  %check_immediate_queue = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 21
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %check_immediate_queue, i32 noundef 4) #10
  %12 = ptrtoint ptr %check_immediate_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %check_immediate_queue, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %immed_queue_lock) #10
  tail call void @__wake_up(ptr noundef %conn, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_r2t_for_eos(ptr noundef %cmd, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %r2t_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock) #10
  %cmd_r2t_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 56
  %0 = ptrtoint ptr %cmd_r2t_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn28 = load ptr, ptr %cmd_r2t_list, align 4
  %cmp.not29 = icmp eq ptr %.pn28, %cmd_r2t_list
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add5 = add i32 %length, %offset
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn30 = phi ptr [ %.pn28, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %offset2 = getelementptr i8, ptr %.pn30, i32 -12
  %1 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset2, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %offset)
  %cmp3.not = icmp ugt i32 %2, %offset
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %xfer_len = getelementptr i8, ptr %.pn30, i32 -4
  %3 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xfer_len, align 8
  %add = add i32 %4, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add5)
  %cmp6.not = icmp ult i32 %add, %add5
  br i1 %cmp6.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %r2t.0.le = getelementptr i8, ptr %.pn30, i32 -28
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, %cmd_r2t_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %offset, i32 noundef %length) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi ptr [ %r2t.0.le, %if.then ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_r2t_from_list(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %r2t_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock) #10
  %cmd_r2t_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 56
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %cmd_r2t_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %cmd_r2t_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %sent_r2t = getelementptr i8, ptr %.pn, i32 -20
  %1 = ptrtoint ptr %sent_r2t to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sent_r2t, align 8
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %r2t.0.le = getelementptr i8, ptr %.pn, i32 -28
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #10
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %3 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %init_task_tag, align 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi ptr [ %r2t.0.le, %if.then ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_r2t(ptr noundef %r2t, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %r2t_list = getelementptr inbounds %struct.iscsi_r2t, ptr %r2t, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r2t_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.iscsi_r2t, ptr %r2t, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %r2t_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %r2t_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %7 = ptrtoint ptr %r2t_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %r2t_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_r2t, ptr %r2t, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_r2t_cache to i32))
  %9 = load ptr, ptr @lio_r2t_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %r2t) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_r2ts_from_list(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %r2t_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock) #10
  %cmd_r2t_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 56
  %0 = ptrtoint ptr %cmd_r2t_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_r2t_list, align 4
  %cmp.not21 = icmp eq ptr %1, %cmd_r2t_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54, i32 0, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %iscsit_free_r2t.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in22 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %iscsit_free_r2t.exit.for.body_crit_edge ]
  %r2t.0 = getelementptr i8, ptr %.pn.in22, i32 -28
  %2 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in22, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %land.rhs.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %for.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !191

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %for.body.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in22) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.iscsit_free_r2t.exit_crit_edge

if.end.i.iscsit_free_r2t.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsit_free_r2t.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr i8, ptr %.pn.in22, i32 4
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in22, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %iscsit_free_r2t.exit

iscsit_free_r2t.exit:                             ; preds = %if.end.i.i.i, %if.end.i.iscsit_free_r2t.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in22, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in22, i32 4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_r2t_cache to i32))
  %12 = load ptr, ptr @lio_r2t_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %r2t.0) #10
  %cmp.not = icmp eq ptr %.pn, %cmd_r2t_list
  br i1 %cmp.not, label %iscsit_free_r2t.exit.for.end_crit_edge, label %iscsit_free_r2t.exit.for.body_crit_edge

iscsit_free_r2t.exit.for.body_crit_edge:          ; preds = %iscsit_free_r2t.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

iscsit_free_r2t.exit.for.end_crit_edge:           ; preds = %iscsit_free_r2t.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %iscsit_free_r2t.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_allocate_cmd(ptr noundef %conn, i32 noundef %state) #0 align 64 {
entry:
  %wait.i = alloca %struct.sbq_wait, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %se_sess1 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %se_sess1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_sess1, align 4
  %sess_tag_pool = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 14
  %4 = tail call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %7, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !194
  %8 = tail call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu1.i, align 4
  %call2.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !195
  %12 = tail call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i6.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wait.i) #10
  %16 = getelementptr inbounds %struct.sbq_wait, ptr %wait.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.sbq_wait, ptr %wait.i, i32 0, i32 1, i32 1
  %18 = getelementptr inbounds %struct.sbq_wait, ptr %wait.i, i32 0, i32 1, i32 2
  %19 = getelementptr inbounds %struct.sbq_wait, ptr %wait.i, i32 0, i32 1, i32 3
  %20 = getelementptr inbounds %struct.sbq_wait, ptr %wait.i, i32 0, i32 1, i32 3, i32 1
  %21 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %wait.i, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %16, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i54 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i54 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 8
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %17, align 4
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @autoremove_wake_function, ptr %18, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %19, ptr %19, align 4
  %30 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %19, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.i = icmp eq i32 %state, 0
  br i1 %cmp.i, label %if.end.thread62, label %if.end.i

if.end.thread62:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wait.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %ws8.i = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 14, i32 3
  %31 = ptrtoint ptr %ws8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ws8.i, align 4
  %and.i29.i = and i32 %state, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i.i = icmp eq i32 %and.i29.i, 0
  %and4.i.i = and i32 %state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end17.i, %if.end.i
  call void @sbitmap_prepare_to_wait(ptr noundef %sess_tag_pool, ptr noundef %32, ptr noundef nonnull %wait.i, i32 noundef %state) #10
  %33 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i, align 8
  br i1 %tobool.not.i.i, label %for.cond.i.if.end13.i_crit_edge, label %if.end.i.i

for.cond.i.if.end13.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end.i.i:                                       ; preds = %for.cond.i
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, !prof !192

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

signal_pending.exit.i.i:                          ; preds = %if.end.i.i
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %signal_pending.exit.i.i.if.end13.i_crit_edge, label %signal_pending.exit.i.i.if.end3.i.i_crit_edge

signal_pending.exit.i.i.if.end3.i.i_crit_edge:    ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i.i

signal_pending.exit.i.i.if.end13.i_crit_edge:     ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end3.i.i:                                      ; preds = %signal_pending.exit.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  br i1 %tobool5.not.i.i, label %signal_pending_state.exit.i, label %if.end3.i.i.if.end.thread66_crit_edge

if.end3.i.i.if.end.thread66_crit_edge:            ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread66

signal_pending_state.exit.i:                      ; preds = %if.end3.i.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 116, i32 1
  %42 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %signal.i.i.i, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %signal_pending_state.exit.i.if.end13.i_crit_edge, label %signal_pending_state.exit.i.if.end.thread66_crit_edge

signal_pending_state.exit.i.if.end.thread66_crit_edge: ; preds = %signal_pending_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.thread66

signal_pending_state.exit.i.if.end13.i_crit_edge: ; preds = %signal_pending_state.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %signal_pending_state.exit.i.if.end13.i_crit_edge, %signal_pending.exit.i.i.if.end13.i_crit_edge, %for.cond.i.if.end13.i_crit_edge
  %45 = call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %48, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !194
  %49 = call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu1.i.i, align 4
  %call2.i.i = call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !195
  %53 = call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i6.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i6.i.i to ptr
  %preempt_count.i.i7.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i7.i.i, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i7.i.i, align 4
  %cmp15.i = icmp sgt i32 %call2.i.i, -1
  br i1 %cmp15.i, label %if.end, label %if.end17.i

if.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @schedule() #10
  br label %for.cond.i

if.end.thread66:                                  ; preds = %signal_pending_state.exit.i.if.end.thread66_crit_edge, %if.end3.i.i.if.end.thread66_crit_edge
  call void @sbitmap_finish_wait(ptr noundef %sess_tag_pool, ptr noundef %32, ptr noundef nonnull %wait.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wait.i) #10
  br label %cleanup

if.end:                                           ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @sbitmap_finish_wait(ptr noundef %sess_tag_pool, ptr noundef %32, ptr noundef nonnull %wait.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wait.i) #10
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %tag.061 = phi i32 [ %call2.i.i, %if.end ], [ %call2.i, %entry.if.end5_crit_edge ]
  %cpu.360 = phi i32 [ %52, %if.end ], [ %11, %entry.if.end5_crit_edge ]
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %57 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %conn_transport, align 8
  %priv_size = getelementptr inbounds %struct.iscsit_transport, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %priv_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %priv_size, align 4
  %add = add i32 %60, 1280
  %sess_cmd_map = getelementptr inbounds %struct.se_session, ptr %3, i32 0, i32 13
  %61 = ptrtoint ptr %sess_cmd_map to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sess_cmd_map, align 4
  %mul = mul i32 %add, %tag.061
  %add.ptr = getelementptr i8, ptr %62, i32 %mul
  %63 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add)
  %se_cmd = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 70
  %map_tag = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 8
  %64 = ptrtoint ptr %map_tag to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %tag.061, ptr %map_tag, align 4
  %map_cpu = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 9
  %65 = ptrtoint ptr %map_cpu to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cpu.360, ptr %map_cpu, align 8
  %conn7 = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 66
  %66 = ptrtoint ptr %conn7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %conn, ptr %conn7, align 8
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 46
  %67 = ptrtoint ptr %data_direction to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %data_direction, align 8
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 69
  %68 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %i_conn_node, ptr %i_conn_node, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %i_conn_node, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %i_conn_node, ptr %prev.i, align 4
  %datain_list = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 55
  %70 = ptrtoint ptr %datain_list to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %datain_list, ptr %datain_list, align 4
  %prev.i55 = getelementptr inbounds %struct.list_head, ptr %datain_list, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i55 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %datain_list, ptr %prev.i55, align 4
  %cmd_r2t_list = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 56
  %72 = ptrtoint ptr %cmd_r2t_list to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %cmd_r2t_list, ptr %cmd_r2t_list, align 4
  %prev.i56 = getelementptr inbounds %struct.list_head, ptr %cmd_r2t_list, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i56 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %cmd_r2t_list, ptr %prev.i56, align 4
  %datain_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 50
  call void @__raw_spin_lock_init(ptr noundef %datain_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @iscsit_allocate_cmd.__key, i16 noundef signext 3) #10
  %dataout_timeout_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 51
  call void @__raw_spin_lock_init(ptr noundef %dataout_timeout_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @iscsit_allocate_cmd.__key.8, i16 noundef signext 3) #10
  %istate_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 52
  call void @__raw_spin_lock_init(ptr noundef %istate_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @iscsit_allocate_cmd.__key.10, i16 noundef signext 3) #10
  %error_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 53
  call void @__raw_spin_lock_init(ptr noundef %error_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @iscsit_allocate_cmd.__key.12, i16 noundef signext 3) #10
  %r2t_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 54
  call void @__raw_spin_lock_init(ptr noundef %r2t_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @iscsit_allocate_cmd.__key.14, i16 noundef signext 3) #10
  %dataout_timer = getelementptr inbounds %struct.iscsi_cmd, ptr %add.ptr, i32 0, i32 57
  call void @init_timer_key(ptr noundef %dataout_timer, ptr noundef nonnull @iscsit_handle_dataout_timeout, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @iscsit_allocate_cmd.__key.16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.thread66, %if.end.thread62
  %retval.0 = phi ptr [ %add.ptr, %if.end5 ], [ null, %if.end.thread62 ], [ null, %if.end.thread66 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_handle_dataout_timeout(ptr noundef) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_seq_holder_for_datain(ptr nocapture noundef readonly %cmd, i32 noundef %seq_send_order) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %0 = ptrtoint ptr %seq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %2 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seq_list, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %seq_send_order1 = getelementptr %struct.iscsi_seq, ptr %3, i32 %i.012, i32 13
  %4 = ptrtoint ptr %seq_send_order1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_send_order1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %seq_send_order)
  %cmp2 = icmp eq i32 %5, %seq_send_order
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.iscsi_seq, ptr %3, i32 %i.012
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_seq_holder_for_r2t(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %0 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq_list, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %seq_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %2 = ptrtoint ptr %seq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %seq_send_order7 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 34
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc.for.body_crit_edge ]
  %type = getelementptr %struct.iscsi_seq, ptr %1, i32 %i.027, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp2.not = icmp eq i32 %5, 3
  br i1 %cmp2.not, label %if.end4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %seq_send_order = getelementptr %struct.iscsi_seq, ptr %1, i32 %i.027, i32 13
  %6 = ptrtoint ptr %seq_send_order to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq_send_order, align 4
  %8 = ptrtoint ptr %seq_send_order7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq_send_order7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8 = icmp eq i32 %7, %9
  br i1 %cmp8, label %if.then9, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %7, 1
  %10 = ptrtoint ptr %seq_send_order7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %seq_send_order7, align 8
  %arrayidx12 = getelementptr %struct.iscsi_seq, ptr %1, i32 %i.027
  br label %cleanup

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc14 = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc14, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then9, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx12, %if.then9 ], [ null, %do.end ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_holder_for_r2tsn(ptr noundef %cmd, i32 noundef %r2t_sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %r2t_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock) #10
  %cmd_r2t_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 56
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %cmd_r2t_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %cmd_r2t_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %r2t_sn2 = getelementptr i8, ptr %.pn, i32 -16
  %1 = ptrtoint ptr %r2t_sn2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %r2t_sn2, align 4
  %cmp3 = icmp eq i32 %2, %r2t_sn
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %r2t.0.le = getelementptr i8, ptr %.pn, i32 -28
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %r2t.0.le, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_sequence_cmd(ptr noundef %conn, ptr noundef %cmd, ptr noundef %buf, i32 noundef %cmdsn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 4
  %cmdsn_mutex = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdsn_mutex, i32 noundef 0) #10
  %2 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess, align 4
  %max_cmd_sn.i = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cmd_sn.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %max_cmd_sn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %max_cmd_sn.i, align 4
  %sub.i.i = sub i32 %cmdsn, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %cmdsn, i32 noundef %5) #13
  br label %sw.default

if.else.i:                                        ; preds = %entry
  %exp_cmd_sn.i = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %exp_cmd_sn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exp_cmd_sn.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cmdsn)
  %cmp.i = icmp eq i32 %7, %cmdsn
  br i1 %cmp.i, label %if.then3.i, label %if.else15.i

if.then3.i:                                       ; preds = %if.else.i
  %inc.i = add i32 %cmdsn, 1
  %8 = ptrtoint ptr %exp_cmd_sn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %exp_cmd_sn.i, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_sequence_cmd, %iscsit_check_received_cmdsn.exit.thread43)) #10
          to label %sw.bb [label %iscsit_check_received_cmdsn.exit.thread43], !srcloc !196

iscsit_check_received_cmdsn.exit.thread43:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %exp_cmd_sn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exp_cmd_sn.i, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.70, i32 noundef %10) #10
  br label %sw.bb

if.else15.i:                                      ; preds = %if.else.i
  %sub.i62.i = sub i32 %cmdsn, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i62.i)
  %cmp.i63.i = icmp slt i32 %sub.i62.i, 1
  br i1 %cmp.i63.i, label %do.end40.i, label %do.body20.i

do.body20.i:                                      ; preds = %if.else15.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_sequence_cmd, %iscsit_check_received_cmdsn.exit.thread45)) #10
          to label %sw.epilog [label %iscsit_check_received_cmdsn.exit.thread45], !srcloc !196

iscsit_check_received_cmdsn.exit.thread45:        ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %exp_cmd_sn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %exp_cmd_sn.i, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug505, ptr noundef nonnull @.str.71, i32 noundef %cmdsn, i32 noundef %12) #10
  br label %sw.epilog

do.end40.i:                                       ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #12
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %cmdsn, i32 noundef %7) #13
  br label %sw.default

sw.bb:                                            ; preds = %iscsit_check_received_cmdsn.exit.thread43, %if.then3.i
  %call2 = tail call i32 @iscsit_execute_cmd(ptr noundef %cmd, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp = icmp sgt i32 %call2, -1
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %13 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sess, align 4
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %sess_ooo_cmdsn_list, align 4
  %cmp.i41.not = icmp eq ptr %16, %sess_ooo_cmdsn_list
  br i1 %cmp.i41.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @iscsit_execute_ooo_cmdsns(ptr noundef %14) #10
  br label %sw.epilog.thread

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp7 = icmp slt i32 %call2, 0
  %17 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess, align 4
  %cmdsn_mutex1951 = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %cmdsn_mutex1951) #10
  br i1 %cmp7, label %if.else.if.then21_crit_edge, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else.if.then21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

sw.default:                                       ; preds = %do.end40.i, %do.end.i
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %19 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 41, ptr %i_state, align 4
  tail call void @iscsit_add_cmd_to_immediate_queue(ptr noundef %cmd, ptr noundef %conn, i8 noundef zeroext 41)
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.default, %if.then
  %ret.0.ph = phi i32 [ %call2, %if.then ], [ 1, %sw.default ]
  %20 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sess, align 4
  %cmdsn_mutex1949 = getelementptr inbounds %struct.iscsi_session, ptr %21, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %cmdsn_mutex1949) #10
  br label %if.end23

sw.epilog:                                        ; preds = %iscsit_check_received_cmdsn.exit.thread45, %do.body20.i
  %22 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sess, align 4
  %call12 = tail call i32 @iscsit_handle_ooo_cmdsn(ptr noundef %23, ptr noundef %cmd, i32 noundef %cmdsn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %24 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sess, align 4
  %cmdsn_mutex19 = getelementptr inbounds %struct.iscsi_session, ptr %25, i32 0, i32 11
  tail call void @mutex_unlock(ptr noundef %cmdsn_mutex19) #10
  br i1 %cmp13, label %sw.epilog.if.then21_crit_edge, label %sw.epilog.if.end23_crit_edge

sw.epilog.if.end23_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

sw.epilog.if.then21_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %sw.epilog.if.then21_crit_edge, %if.else.if.then21_crit_edge
  %call22 = tail call i32 @iscsit_reject_cmd(ptr noundef %cmd, i8 noundef zeroext 10, ptr noundef %buf) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %sw.epilog.if.end23_crit_edge, %sw.epilog.thread, %if.else.if.end23_crit_edge
  %ret.050 = phi i32 [ %ret.0.ph, %sw.epilog.thread ], [ -1, %if.then21 ], [ 2, %sw.epilog.if.end23_crit_edge ], [ %call2, %if.else.if.end23_crit_edge ]
  ret i32 %ret.050
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_execute_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_execute_ooo_cmdsns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_handle_ooo_cmdsn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_reject_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_check_unsolicited_dataout(ptr noundef %cmd, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %se_cmd2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_ops, align 8
  %InitialR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %InitialR2T to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %InitialR2T, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %dlength = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 4
  %8 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dlength, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx4 = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %11 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or = or i32 %shl6, %shl
  %arrayidx8 = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %13 to i32
  %or10 = or i32 %or, %conv9
  %first_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 41
  %14 = ptrtoint ptr %first_burst_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_burst_len, align 4
  %add = add i32 %or10, %15
  %FirstBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %FirstBurstLength to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %FirstBurstLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp = icmp ugt i32 %add, %17
  br i1 %cmp, label %do.end18, label %if.end27

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add, i32 noundef %17) #13
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %tobool29.not = icmp sgt i8 %19, -1
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %20 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %21)
  %cmp35.not = icmp eq i32 %add, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp42.not = icmp eq i32 %add, %17
  %or.cond = select i1 %cmp35.not, i1 true, i1 %cmp42.not
  br i1 %or.cond, label %if.end31.cleanup_crit_edge, label %do.end47

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end47:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %add, i32 noundef %17, i32 noundef %21) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end47, %do.end18, %do.end
  %.sink = phi i32 [ 3, %do.end47 ], [ 3, %do.end18 ], [ 4, %do.end ]
  %call57 = tail call i32 @transport_send_check_condition_and_sense(ptr noundef %se_cmd2, i32 noundef %.sink, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ -1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_send_check_condition_and_sense(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_find_cmd_from_itt(ptr noundef %conn, i32 noundef %init_task_tag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #10
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %conn_cmd_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %conn_cmd_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %init_task_tag2 = getelementptr i8, ptr %.pn, i32 -548
  %1 = ptrtoint ptr %init_task_tag2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %init_task_tag2, align 32
  %cmp3 = icmp eq i32 %2, %init_task_tag
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %cmd.0.le = getelementptr i8, ptr %.pn, i32 -580
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #10
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %3 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cid, align 2
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %init_task_tag, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi ptr [ %cmd.0.le, %if.then ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_find_cmd_from_itt_or_dump(ptr noundef %conn, i32 noundef %init_task_tag, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #10
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  %0 = ptrtoint ptr %conn_cmd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn31 = load ptr, ptr %conn_cmd_list, align 4
  %cmp.not32 = icmp eq ptr %.pn31, %conn_cmd_list
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %entry.for.body_crit_edge ]
  %cmd_flags = getelementptr i8, ptr %.pn33, i32 -552
  %1 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %init_task_tag2 = getelementptr i8, ptr %.pn33, i32 -548
  %3 = ptrtoint ptr %init_task_tag2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %init_task_tag2, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %init_task_tag)
  %cmp3 = icmp eq i32 %4, %init_task_tag
  br i1 %cmp3, label %if.then4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cmd.0.le = getelementptr i8, ptr %.pn33, i32 -580
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %conn_cmd_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #10
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %6 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cid, align 2
  %conv = zext i16 %7 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %init_task_tag, i32 noundef %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool14.not = icmp eq i32 %length, 0
  br i1 %tobool14.not, label %for.end.cleanup_crit_edge, label %if.then15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @iscsit_dump_data_payload(ptr noundef %conn, i32 noundef %length, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.end.cleanup_crit_edge, %if.then4
  %retval.0 = phi ptr [ %cmd.0.le, %if.then4 ], [ null, %if.then15 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_dump_data_payload(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_find_cmd_from_ttt(ptr noundef %conn, i32 noundef %targ_xfer_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #10
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %conn_cmd_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %conn_cmd_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %targ_xfer_tag2 = getelementptr i8, ptr %.pn, i32 -544
  %1 = ptrtoint ptr %targ_xfer_tag2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %targ_xfer_tag2, align 4
  %cmp3 = icmp eq i32 %2, %targ_xfer_tag
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %cmd.0.le = getelementptr i8, ptr %.pn, i32 -580
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #10
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %3 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cid, align 2
  %conv = zext i16 %4 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %targ_xfer_tag, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi ptr [ %cmd.0.le, %if.then ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_find_cmd_for_recovery(ptr noundef %sess, ptr nocapture noundef writeonly %cmd_ptr, ptr nocapture noundef writeonly %cr_ptr, i32 noundef %init_task_tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_i_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock) #10
  %cr_inactive_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 36
  %0 = ptrtoint ptr %cr_inactive_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn115 = load ptr, ptr %cr_inactive_list, align 4
  %cmp.not116 = icmp eq ptr %.pn115, %cr_inactive_list
  br i1 %cmp.not116, label %entry.for.end27_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn117 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn115, %entry.for.body_crit_edge ]
  %conn_recovery_cmd_lock = getelementptr i8, ptr %.pn117, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock) #10
  %conn_recovery_cmd_list = getelementptr i8, ptr %.pn117, i32 -104
  br label %for.cond6

for.cond6:                                        ; preds = %for.body10.for.cond6_crit_edge, %for.body
  %.pn110.in = phi ptr [ %conn_recovery_cmd_list, %for.body ], [ %.pn110, %for.body10.for.cond6_crit_edge ]
  %1 = ptrtoint ptr %.pn110.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn110 = load ptr, ptr %.pn110.in, align 4
  %cmp8.not = icmp eq ptr %.pn110, %conn_recovery_cmd_list
  br i1 %cmp8.not, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.cond6
  %init_task_tag11 = getelementptr i8, ptr %.pn110, i32 -548
  %2 = ptrtoint ptr %init_task_tag11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_task_tag11, align 32
  %cmp12 = icmp eq i32 %3, %init_task_tag
  br i1 %cmp12, label %if.then, label %for.body10.for.cond6_crit_edge

for.body10.for.cond6_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6

if.then:                                          ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #12
  %cr.0.le = getelementptr i8, ptr %.pn117, i32 -124
  %cmd.0.le = getelementptr i8, ptr %.pn110, i32 -580
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #10
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock) #10
  %4 = ptrtoint ptr %cr_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cr.0.le, ptr %cr_ptr, align 4
  %5 = ptrtoint ptr %cmd_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd.0.le, ptr %cmd_ptr, align 4
  br label %cleanup

for.end:                                          ; preds = %for.cond6
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #10
  %6 = ptrtoint ptr %.pn117 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn117, align 4
  %cmp.not = icmp eq ptr %.pn, %cr_inactive_list
  br i1 %cmp.not, label %for.end.for.end27_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27

for.end27:                                        ; preds = %for.end.for.end27_crit_edge, %entry.for.end27_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock) #10
  %cr_a_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %cr_a_lock) #10
  %cr_active_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 35
  %7 = ptrtoint ptr %cr_active_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn108118 = load ptr, ptr %cr_active_list, align 4
  %cmp36.not119 = icmp eq ptr %.pn108118, %cr_active_list
  br i1 %cmp36.not119, label %for.end27.for.end71_crit_edge, label %for.end27.for.body38_crit_edge

for.end27.for.body38_crit_edge:                   ; preds = %for.end27
  br label %for.body38

for.end27.for.end71_crit_edge:                    ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71

for.body38:                                       ; preds = %for.end63.for.body38_crit_edge, %for.end27.for.body38_crit_edge
  %.pn108120 = phi ptr [ %.pn108, %for.end63.for.body38_crit_edge ], [ %.pn108118, %for.end27.for.body38_crit_edge ]
  %conn_recovery_cmd_lock39 = getelementptr i8, ptr %.pn108120, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock39) #10
  %conn_recovery_cmd_list41 = getelementptr i8, ptr %.pn108120, i32 -104
  br label %for.cond45

for.cond45:                                       ; preds = %for.body50.for.cond45_crit_edge, %for.body38
  %.pn109.in = phi ptr [ %conn_recovery_cmd_list41, %for.body38 ], [ %.pn109, %for.body50.for.cond45_crit_edge ]
  %8 = ptrtoint ptr %.pn109.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn109 = load ptr, ptr %.pn109.in, align 4
  %cmp48.not = icmp eq ptr %.pn109, %conn_recovery_cmd_list41
  br i1 %cmp48.not, label %for.end63, label %for.body50

for.body50:                                       ; preds = %for.cond45
  %init_task_tag51 = getelementptr i8, ptr %.pn109, i32 -548
  %9 = ptrtoint ptr %init_task_tag51 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %init_task_tag51, align 32
  %cmp52 = icmp eq i32 %10, %init_task_tag
  br i1 %cmp52, label %if.then53, label %for.body50.for.cond45_crit_edge

for.body50.for.cond45_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond45

if.then53:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  %cr.1.le = getelementptr i8, ptr %.pn108120, i32 -124
  %cmd.1.le = getelementptr i8, ptr %.pn109, i32 -580
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock39) #10
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock) #10
  %11 = ptrtoint ptr %cr_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cr.1.le, ptr %cr_ptr, align 4
  %12 = ptrtoint ptr %cmd_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cmd.1.le, ptr %cmd_ptr, align 4
  br label %cleanup

for.end63:                                        ; preds = %for.cond45
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock39) #10
  %13 = ptrtoint ptr %.pn108120 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn108 = load ptr, ptr %.pn108120, align 4
  %cmp36.not = icmp eq ptr %.pn108, %cr_active_list
  br i1 %cmp36.not, label %for.end63.for.end71_crit_edge, label %for.end63.for.body38_crit_edge

for.end63.for.body38_crit_edge:                   ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.end63.for.end71_crit_edge:                    ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71

for.end71:                                        ; preds = %for.end63.for.end71_crit_edge, %for.end27.for.end71_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end71, %if.then53, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %if.then53 ], [ -1, %for.end71 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_cmd_from_immediate_queue(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %immed_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %immed_queue_lock) #10
  %immed_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 57
  %0 = ptrtoint ptr %immed_queue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %immed_queue_list, align 4
  %cmp.i.not = icmp eq ptr %1, %immed_queue_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i15, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %list_del.exit.cleanup_crit_edge, label %if.then4

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %immed_queue_count = getelementptr inbounds %struct.iscsi_cmd, ptr %11, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %immed_queue_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %immed_queue_count, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %immed_queue_count, ptr %immed_queue_count, i32 1, ptr elementtype(i32) %immed_queue_count) #10, !srcloc !197
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %if.then4 ], [ %add.ptr, %list_del.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %immed_queue_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd, ptr noundef %conn, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_qr_cache to i32))
  %0 = load ptr, ptr @lio_qr_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2848) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %qr_list = getelementptr inbounds %struct.iscsi_queue_req, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %qr_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %qr_list, ptr %qr_list, align 8
  %prev.i = getelementptr inbounds %struct.iscsi_queue_req, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qr_list, ptr %prev.i, align 4
  %cmd2 = getelementptr inbounds %struct.iscsi_queue_req, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %cmd2, align 4
  %conv = zext i8 %state to i32
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %call.i, align 8
  %response_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %response_queue_lock) #10
  %response_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 58
  %prev.i14 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 58, i32 1
  %5 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i14, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef %qr_list, ptr noundef %6, ptr noundef %response_queue_list) #10
  br i1 %call.i.i15, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %qr_list, ptr %prev.i14, align 4
  %8 = ptrtoint ptr %qr_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %response_queue_list, ptr %qr_list, align 8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %qr_list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %response_queue_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %response_queue_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %response_queue_count, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %response_queue_count, ptr %response_queue_count, i32 1, ptr elementtype(i32) %response_queue_count) #10, !srcloc !193
  tail call void @_raw_spin_unlock_bh(ptr noundef %response_queue_lock) #10
  tail call void @__wake_up(ptr noundef %conn, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_cmd_from_response_queue(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %response_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %response_queue_lock) #10
  %response_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 58
  %0 = ptrtoint ptr %response_queue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %response_queue_list, align 4
  %cmp.i.not = icmp eq ptr %1, %response_queue_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i15, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %list_del.exit.cleanup_crit_edge, label %if.then4

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %response_queue_count = getelementptr inbounds %struct.iscsi_cmd, ptr %11, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %response_queue_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %response_queue_count, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %response_queue_count, ptr %response_queue_count, i32 1, ptr elementtype(i32) %response_queue_count) #10, !srcloc !197
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %list_del.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %if.then4 ], [ %add.ptr, %list_del.exit.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %response_queue_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iscsit_conn_all_queues_empty(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %immed_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %immed_queue_lock) #10
  %immed_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 57
  %0 = ptrtoint ptr %immed_queue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %immed_queue_list, align 4
  %cmp.i.not = icmp eq ptr %1, %immed_queue_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %immed_queue_lock) #10
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %response_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %response_queue_lock) #10
  %response_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 58
  %2 = ptrtoint ptr %response_queue_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %response_queue_list, align 4
  %cmp.i16 = icmp eq ptr %3, %response_queue_list
  tail call void @_raw_spin_unlock_bh(ptr noundef %response_queue_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i16, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_queue_reqs_for_conn(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %immed_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %immed_queue_lock) #10
  %immed_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 57
  %0 = ptrtoint ptr %immed_queue_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %immed_queue_list, align 64
  %cmp.not79 = icmp eq ptr %1, %immed_queue_list
  br i1 %cmp.not79, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in80 = phi ptr [ %.pn83, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %qr.082 = getelementptr i8, ptr %.pn.in80, i32 -8
  %2 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn83 = load ptr, ptr %.pn.in80, align 4
  %call.i.i70 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in80) #10
  br i1 %call.i.i70, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in80, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in80 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in80, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in80, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmd = getelementptr i8, ptr %.pn.in80, i32 -4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %immed_queue_count = getelementptr inbounds %struct.iscsi_cmd, ptr %12, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %immed_queue_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %immed_queue_count, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %immed_queue_count, ptr %immed_queue_count, i32 1, ptr elementtype(i32) %immed_queue_count) #10, !srcloc !197
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_qr_cache to i32))
  %14 = load ptr, ptr @lio_qr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %qr.082) #10
  %cmp.not = icmp eq ptr %.pn83, %immed_queue_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %immed_queue_lock) #10
  %response_queue_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %response_queue_lock) #10
  %response_queue_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 58
  %15 = ptrtoint ptr %response_queue_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %response_queue_list, align 8
  %cmp27.not86 = icmp eq ptr %16, %response_queue_list
  br i1 %cmp27.not86, label %for.end.for.end42_crit_edge, label %for.end.for.body29_crit_edge

for.end.for.body29_crit_edge:                     ; preds = %for.end
  br label %for.body29

for.end.for.end42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

for.body29:                                       ; preds = %if.end35.for.body29_crit_edge, %for.end.for.body29_crit_edge
  %.pn66.in87 = phi ptr [ %.pn6690, %if.end35.for.body29_crit_edge ], [ %16, %for.end.for.body29_crit_edge ]
  %qr.189 = getelementptr i8, ptr %.pn66.in87, i32 -8
  %17 = ptrtoint ptr %.pn66.in87 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn6690 = load ptr, ptr %.pn66.in87, align 4
  %call.i.i71 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn66.in87) #10
  br i1 %call.i.i71, label %if.end.i.i74, label %for.body29.list_del.exit76_crit_edge

for.body29.list_del.exit76_crit_edge:             ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit76

if.end.i.i74:                                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i72 = getelementptr inbounds %struct.list_head, ptr %.pn66.in87, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i72 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i72, align 4
  %20 = ptrtoint ptr %.pn66.in87 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn66.in87, align 4
  %prev1.i.i.i73 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i73 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i73, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit76

list_del.exit76:                                  ; preds = %if.end.i.i74, %for.body29.list_del.exit76_crit_edge
  %24 = ptrtoint ptr %.pn66.in87 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn66.in87, align 4
  %prev.i75 = getelementptr inbounds %struct.list_head, ptr %.pn66.in87, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i75, align 4
  %cmd31 = getelementptr i8, ptr %.pn66.in87, i32 -4
  %26 = ptrtoint ptr %cmd31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd31, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %list_del.exit76.if.end35_crit_edge, label %if.then33

list_del.exit76.if.end35_crit_edge:               ; preds = %list_del.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then33:                                        ; preds = %list_del.exit76
  call void @__sanitizer_cov_trace_pc() #12
  %response_queue_count = getelementptr inbounds %struct.iscsi_cmd, ptr %27, i32 0, i32 49
  %call.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %response_queue_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %response_queue_count, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %response_queue_count, ptr %response_queue_count, i32 1, ptr elementtype(i32) %response_queue_count) #10, !srcloc !197
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %list_del.exit76.if.end35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_qr_cache to i32))
  %29 = load ptr, ptr @lio_qr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %qr.189) #10
  %cmp27.not = icmp eq ptr %.pn6690, %response_queue_list
  br i1 %cmp27.not, label %if.end35.for.end42_crit_edge, label %if.end35.for.body29_crit_edge

if.end35.for.body29_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

if.end35.for.end42_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end42

for.end42:                                        ; preds = %if.end35.for.end42_crit_edge, %for.end.for.end42_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %response_queue_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_release_cmd(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69
  %0 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %i_conn_node, align 4
  %cmp.i.not = icmp eq ptr %1, %i_conn_node
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !192

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 702, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conn = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %2 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn, align 8
  %tobool22.not = icmp eq ptr %3, null
  %sess25 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 68
  %sess26 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 68
  %sess.0.in = select i1 %tobool22.not, ptr %sess26, ptr %sess25
  %4 = ptrtoint ptr %sess.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %sess.0 = load ptr, ptr %sess.0.in, align 4
  %tobool29.not = icmp eq ptr %sess.0, null
  br i1 %tobool29.not, label %if.end.do.body40_crit_edge, label %lor.rhs, !prof !191

if.end.do.body40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

lor.rhs:                                          ; preds = %if.end
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %sess.0, i32 0, i32 48
  %5 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se_sess, align 4
  %tobool30.not = icmp eq ptr %6, null
  br i1 %tobool30.not, label %lor.rhs.do.body40_crit_edge, label %do.end48, !prof !191

lor.rhs.do.body40_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

do.body40:                                        ; preds = %lor.rhs.do.body40_crit_edge, %if.end.do.body40_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/iscsi/iscsi_target_util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 709, 0\0A.popsection", ""() #10, !srcloc !198
  unreachable

do.end48:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %buf_ptr = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 44
  %7 = ptrtoint ptr %buf_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf_ptr, align 16
  tail call void @kfree(ptr noundef %8) #10
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %9 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdu_list, align 4
  tail call void @kfree(ptr noundef %10) #10
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %11 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %seq_list, align 4
  tail call void @kfree(ptr noundef %12) #10
  %tmr_req = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 65
  %13 = ptrtoint ptr %tmr_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tmr_req, align 4
  tail call void @kfree(ptr noundef %14) #10
  %overflow_buf = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 59
  %15 = ptrtoint ptr %overflow_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %overflow_buf, align 8
  tail call void @kfree(ptr noundef %16) #10
  %iov_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 58
  %17 = ptrtoint ptr %iov_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iov_data, align 4
  tail call void @kfree(ptr noundef %18) #10
  %text_in_ptr = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 45
  %19 = ptrtoint ptr %text_in_ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %text_in_ptr, align 4
  tail call void @kfree(ptr noundef %20) #10
  %21 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %se_sess, align 4
  %sess_tag_pool.i = getelementptr inbounds %struct.se_session, ptr %22, i32 0, i32 14
  %map_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 8
  %23 = ptrtoint ptr %map_tag.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %map_tag.i, align 4
  %map_cpu.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 9
  %25 = ptrtoint ptr %map_cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %map_cpu.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i, i32 noundef %24, i32 noundef %26) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__iscsit_free_cmd(ptr noundef %cmd, i1 noundef zeroext %check_queues) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69
  %2 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %i_conn_node, align 4
  %cmp.i.not = icmp eq ptr %3, %i_conn_node
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !192

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 727, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 46
  %4 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then22, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iscsit_stop_dataout_timer(ptr noundef %cmd) #10
  tail call void @iscsit_free_r2ts_from_list(ptr noundef %cmd)
  %6 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %data_direction, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %7 = phi i32 [ %.pr, %if.then22 ], [ %5, %if.end.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp25 = icmp eq i32 %7, 2
  br i1 %cmp25, label %if.then26, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iscsit_free_all_datain_reqs(ptr noundef %cmd) #10
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %tobool28.not = icmp eq ptr %1, null
  %check_queues.not = xor i1 %check_queues, true
  %brmerge = or i1 %tobool28.not, %check_queues.not
  br i1 %brmerge, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  %immed_queue_lock.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %immed_queue_lock.i) #10
  %immed_queue_count.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 48
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %immed_queue_count.i, i32 noundef 4) #10
  %8 = ptrtoint ptr %immed_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %immed_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %immed_queue_lock.i) #10
  br label %iscsit_remove_cmd_from_immediate_queue.exit

if.end.i:                                         ; preds = %if.then30
  %immed_queue_list.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 57
  %10 = ptrtoint ptr %immed_queue_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %immed_queue_list.i, align 64
  %cmp.not52.i = icmp eq ptr %11, %immed_queue_list.i
  br i1 %cmp.not52.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn.in53.i = phi ptr [ %.pn56.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %if.end.i.for.body.i_crit_edge ]
  %qr.055.i = getelementptr i8, ptr %.pn.in53.i, i32 -8
  %12 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn56.i = load ptr, ptr %.pn.in53.i, align 4
  %cmd8.i = getelementptr i8, ptr %.pn.in53.i, i32 -4
  %13 = ptrtoint ptr %cmd8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd8.i, align 4
  %cmp9.not.i = icmp eq ptr %14, %cmd
  br i1 %cmp9.not.i, label %if.end11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  %call.i.i46.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %immed_queue_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %immed_queue_count.i, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %immed_queue_count.i, ptr %immed_queue_count.i, i32 1, ptr elementtype(i32) %immed_queue_count.i) #10, !srcloc !197
  %call.i.i49.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53.i) #10
  br i1 %call.i.i49.i, label %if.end.i.i.i, label %if.end11.i.list_del.exit.i_crit_edge

if.end11.i.list_del.exit.i_crit_edge:             ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in53.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end11.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %.pn.in53.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in53.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_qr_cache to i32))
  %24 = load ptr, ptr @lio_qr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %qr.055.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn56.i, %immed_queue_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %immed_queue_lock.i) #10
  %call.i.i47.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %immed_queue_count.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %immed_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %immed_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool23.not.i = icmp eq i32 %26, 0
  br i1 %tobool23.not.i, label %for.end.i.iscsit_remove_cmd_from_immediate_queue.exit_crit_edge, label %do.end.i

for.end.i.iscsit_remove_cmd_from_immediate_queue.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsit_remove_cmd_from_immediate_queue.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %init_task_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %27 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %init_task_tag.i, align 32
  %call.i.i48.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %immed_queue_count.i, i32 noundef 4) #10
  %29 = ptrtoint ptr %immed_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %immed_queue_count.i, align 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %28, i32 noundef %30) #13
  br label %iscsit_remove_cmd_from_immediate_queue.exit

iscsit_remove_cmd_from_immediate_queue.exit:      ; preds = %do.end.i, %for.end.i.iscsit_remove_cmd_from_immediate_queue.exit_crit_edge, %if.then.i
  %response_queue_lock.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 50
  tail call void @_raw_spin_lock_bh(ptr noundef %response_queue_lock.i) #10
  %response_queue_count.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 49
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_read(ptr noundef %response_queue_count.i, i32 noundef 4) #10
  %31 = ptrtoint ptr %response_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %response_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i57 = icmp eq i32 %32, 0
  br i1 %tobool.not.i57, label %if.then.i58, label %if.end.i60

if.then.i58:                                      ; preds = %iscsit_remove_cmd_from_immediate_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %response_queue_lock.i) #10
  br label %if.end31

if.end.i60:                                       ; preds = %iscsit_remove_cmd_from_immediate_queue.exit
  %response_queue_list.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 58
  %33 = ptrtoint ptr %response_queue_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %response_queue_list.i, align 8
  %cmp.not52.i59 = icmp eq ptr %34, %response_queue_list.i
  br i1 %cmp.not52.i59, label %if.end.i60.for.end.i79_crit_edge, label %if.end.i60.for.body.i66_crit_edge

if.end.i60.for.body.i66_crit_edge:                ; preds = %if.end.i60
  br label %for.body.i66

if.end.i60.for.end.i79_crit_edge:                 ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i79

for.body.i66:                                     ; preds = %for.inc.i76.for.body.i66_crit_edge, %if.end.i60.for.body.i66_crit_edge
  %.pn.in53.i61 = phi ptr [ %.pn56.i63, %for.inc.i76.for.body.i66_crit_edge ], [ %34, %if.end.i60.for.body.i66_crit_edge ]
  %qr.055.i62 = getelementptr i8, ptr %.pn.in53.i61, i32 -8
  %35 = ptrtoint ptr %.pn.in53.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn56.i63 = load ptr, ptr %.pn.in53.i61, align 4
  %cmd8.i64 = getelementptr i8, ptr %.pn.in53.i61, i32 -4
  %36 = ptrtoint ptr %cmd8.i64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cmd8.i64, align 4
  %cmp9.not.i65 = icmp eq ptr %37, %cmd
  br i1 %cmp9.not.i65, label %if.end11.i69, label %for.body.i66.for.inc.i76_crit_edge

for.body.i66.for.inc.i76_crit_edge:               ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i76

if.end11.i69:                                     ; preds = %for.body.i66
  %call.i.i46.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %response_queue_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %response_queue_count.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %response_queue_count.i, ptr %response_queue_count.i, i32 1, ptr elementtype(i32) %response_queue_count.i) #10, !srcloc !197
  %call.i.i49.i68 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53.i61) #10
  br i1 %call.i.i49.i68, label %if.end.i.i.i72, label %if.end11.i69.list_del.exit.i74_crit_edge

if.end11.i69.list_del.exit.i74_crit_edge:         ; preds = %if.end11.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i74

if.end.i.i.i72:                                   ; preds = %if.end11.i69
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %.pn.in53.i61, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i70, align 4
  %41 = ptrtoint ptr %.pn.in53.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %.pn.in53.i61, align 4
  %prev1.i.i.i.i71 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i71, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i74

list_del.exit.i74:                                ; preds = %if.end.i.i.i72, %if.end11.i69.list_del.exit.i74_crit_edge
  %45 = ptrtoint ptr %.pn.in53.i61 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in53.i61, align 4
  %prev.i.i73 = getelementptr inbounds %struct.list_head, ptr %.pn.in53.i61, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i73, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_qr_cache to i32))
  %47 = load ptr, ptr @lio_qr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %47, ptr noundef %qr.055.i62) #10
  br label %for.inc.i76

for.inc.i76:                                      ; preds = %list_del.exit.i74, %for.body.i66.for.inc.i76_crit_edge
  %cmp.not.i75 = icmp eq ptr %.pn56.i63, %response_queue_list.i
  br i1 %cmp.not.i75, label %for.inc.i76.for.end.i79_crit_edge, label %for.inc.i76.for.body.i66_crit_edge

for.inc.i76.for.body.i66_crit_edge:               ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i66

for.inc.i76.for.end.i79_crit_edge:                ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i79

for.end.i79:                                      ; preds = %for.inc.i76.for.end.i79_crit_edge, %if.end.i60.for.end.i79_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %response_queue_lock.i) #10
  %call.i.i47.i77 = tail call zeroext i1 @__kasan_check_read(ptr noundef %response_queue_count.i, i32 noundef 4) #10
  %48 = ptrtoint ptr %response_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %response_queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool23.not.i78 = icmp eq i32 %49, 0
  br i1 %tobool23.not.i78, label %for.end.i79.if.end31_crit_edge, label %do.end.i83

for.end.i79.if.end31_crit_edge:                   ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end.i83:                                       ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  %init_task_tag.i80 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %50 = ptrtoint ptr %init_task_tag.i80 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %init_task_tag.i80, align 32
  %call.i.i48.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %response_queue_count.i, i32 noundef 4) #10
  %52 = ptrtoint ptr %response_queue_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %response_queue_count.i, align 4
  %call28.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %51, i32 noundef %53) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end.i83, %for.end.i79.if.end31_crit_edge, %if.then.i58, %if.end27.if.end31_crit_edge
  br i1 %tobool28.not, label %if.end31.if.end38_crit_edge, label %land.lhs.true33

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end31
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %54 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %conn_transport, align 8
  %iscsit_unmap_cmd = getelementptr inbounds %struct.iscsit_transport, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %iscsit_unmap_cmd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iscsit_unmap_cmd, align 4
  %tobool34.not = icmp eq ptr %57, null
  br i1 %tobool34.not, label %land.lhs.true33.if.end38_crit_edge, label %if.then35

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %57(ptr noundef nonnull %1, ptr noundef %cmd) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true33.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_stop_dataout_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_free_all_datain_reqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_cmd(ptr noundef %cmd, i1 noundef zeroext %shutdown) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tfo = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 26
  %0 = ptrtoint ptr %se_tfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tfo, align 16
  %tobool.not = icmp eq ptr %1, null
  %se_cmd1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %spec.select = select i1 %tobool.not, ptr null, ptr %se_cmd1
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69
  %2 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %i_conn_node, align 4
  %cmp.i.not = icmp eq ptr %3, %i_conn_node
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !192

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 750, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @__iscsit_free_cmd(ptr noundef %cmd, i1 noundef zeroext %shutdown)
  %tobool25.not = icmp eq ptr %spec.select, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %conv = zext i1 %shutdown to i32
  %call28 = tail call i32 @transport_generic_free_cmd(ptr noundef nonnull %spec.select, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  %4 = and i1 %tobool29.not, %shutdown
  br i1 %4, label %land.lhs.true32, label %if.then26.if.end38_crit_edge

if.then26.if.end38_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true32:                                  ; preds = %if.then26
  %se_sess = getelementptr inbounds %struct.se_cmd, ptr %spec.select, i32 0, i32 21
  %5 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %se_sess, align 4
  %tobool33.not = icmp eq ptr %6, null
  br i1 %tobool33.not, label %land.lhs.true32.if.end38_crit_edge, label %if.then34

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__iscsit_free_cmd(ptr noundef %cmd, i1 noundef zeroext true)
  %call36 = tail call i32 @target_put_sess_cmd(ptr noundef nonnull %spec.select) #10
  br label %if.end38

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iscsit_release_cmd(ptr noundef %cmd)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then34, %land.lhs.true32.if.end38_crit_edge, %if.then26.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iscsit_check_session_usage_count(ptr noundef %sess, i1 noundef zeroext %can_sleep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session_usage_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %session_usage_lock) #10
  %session_usage_count = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 18
  %0 = ptrtoint ptr %session_usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %session_usage_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %session_waiting_on_uc = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 19
  %2 = ptrtoint ptr %session_waiting_on_uc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %session_waiting_on_uc, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_usage_lock) #10
  br i1 %can_sleep, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %session_waiting_on_uc_comp = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 45
  tail call void @wait_for_completion(ptr noundef %session_waiting_on_uc_comp) #10
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_usage_lock) #10
  br label %return

return:                                           ; preds = %if.end3, %if.end, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ false, %if.end3 ], [ true, %if.then.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_dec_session_usage_count(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session_usage_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %session_usage_lock) #10
  %session_usage_count = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 18
  %0 = ptrtoint ptr %session_usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %session_usage_count, align 32
  %dec = add i32 %1, -1
  store i32 %dec, ptr %session_usage_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %session_waiting_on_uc = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 19
  %2 = ptrtoint ptr %session_waiting_on_uc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %session_waiting_on_uc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %session_waiting_on_uc_comp = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 45
  tail call void @complete(ptr noundef %session_waiting_on_uc_comp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_usage_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_inc_session_usage_count(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %session_usage_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %session_usage_lock) #10
  %session_usage_count = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 18
  %0 = ptrtoint ptr %session_usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %session_usage_count, align 32
  %inc = add i32 %1, 1
  store i32 %inc, ptr %session_usage_count, align 32
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_usage_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_conn_from_cid(ptr noundef %sess, i16 noundef zeroext %cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #10
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 34
  %0 = ptrtoint ptr %sess_conn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn27 = load ptr, ptr %sess_conn_list, align 4
  %cmp.not28 = icmp eq ptr %.pn27, %sess_conn_list
  br i1 %cmp.not28, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn29 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn27, %entry.for.body_crit_edge ]
  %cid2 = getelementptr i8, ptr %.pn29, i32 -1410
  %1 = ptrtoint ptr %cid2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cid2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %cid)
  %cmp4 = icmp eq i16 %2, %cid
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %conn_state = getelementptr i8, ptr %.pn29, i32 -1423
  %3 = ptrtoint ptr %conn_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %conn_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp7 = icmp eq i8 %4, 5
  br i1 %cmp7, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conn.0.le = getelementptr i8, ptr %.pn29, i32 -1476
  %conn_usage_lock.i = getelementptr i8, ptr %.pn29, i32 -376
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %conn_usage_count.i = getelementptr i8, ptr %.pn29, i32 -1120
  %5 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %conn_usage_count.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %conn_usage_count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock.i) #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn29, align 4
  %cmp.not = icmp eq ptr %.pn, %sess_conn_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %conn.0.le, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_inc_conn_usage_count(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_usage_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 47
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock) #10
  %conn_usage_count = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 19
  %0 = ptrtoint ptr %conn_usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_usage_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %conn_usage_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_conn_from_cid_rcfr(ptr noundef %sess, i16 noundef zeroext %cid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #10
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 34
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %sess_conn_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %sess_conn_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cid2 = getelementptr i8, ptr %.pn, i32 -1410
  %1 = ptrtoint ptr %cid2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cid2, align 2
  %cmp4 = icmp eq i16 %2, %cid
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conn.0.le = getelementptr i8, ptr %.pn, i32 -1476
  %conn_usage_lock.i = getelementptr i8, ptr %.pn, i32 -376
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %conn_usage_count.i = getelementptr i8, ptr %.pn, i32 -1120
  %3 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %conn_usage_count.i, align 4
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %conn_usage_count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock.i) #10
  %state_lock = getelementptr i8, ptr %.pn, i32 -200
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #10
  %connection_wait_rcfr = getelementptr i8, ptr %.pn, i32 -1092
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connection_wait_rcfr, i32 noundef 4) #10
  %5 = ptrtoint ptr %connection_wait_rcfr to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %connection_wait_rcfr, align 4
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %conn.0.le, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_check_conn_usage_count(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_usage_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 47
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock) #10
  %conn_usage_count = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 19
  %0 = ptrtoint ptr %conn_usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conn_waiting_on_uc = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 20
  %2 = ptrtoint ptr %conn_waiting_on_uc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %conn_waiting_on_uc, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock) #10
  %conn_waiting_on_uc_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 32
  tail call void @wait_for_completion(ptr noundef %conn_waiting_on_uc_comp) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock) #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_dec_conn_usage_count(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_usage_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 47
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock) #10
  %conn_usage_count = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 19
  %0 = ptrtoint ptr %conn_usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_usage_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %conn_usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conn_waiting_on_uc = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 20
  %2 = ptrtoint ptr %conn_waiting_on_uc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conn_waiting_on_uc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %conn_waiting_on_uc_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 32
  tail call void @complete(ptr noundef %conn_waiting_on_uc_comp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_handle_nopin_response_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -956
  %sess1 = getelementptr i8, ptr %t, i32 440
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %conn_usage_lock.i = getelementptr i8, ptr %t, i32 144
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %conn_usage_count.i = getelementptr i8, ptr %t, i32 -600
  %2 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conn_usage_count.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %conn_usage_count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock.i) #10
  %nopin_timer_lock = getelementptr i8, ptr %t, i32 232
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_response_timer_flags = getelementptr i8, ptr %t, i32 -896
  %4 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nopin_response_timer_flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %6 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conn_usage_count.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %conn_usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %conn_waiting_on_uc.i = getelementptr i8, ptr %t, i32 -596
  %8 = ptrtoint ptr %conn_waiting_on_uc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %conn_waiting_on_uc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %cid = getelementptr i8, ptr %t, i32 -890
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cid, align 2
  %conv = zext i16 %11 to i32
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 47
  %12 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess_ops, align 8
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 1
  %tpg = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 49
  %14 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tpg, align 16
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tpg_tiqn, align 16
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tpgt, align 8
  %conv7 = zext i16 %19 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %conv, ptr noundef %13, ptr noundef %isid, ptr noundef %17, i32 noundef %conv7) #13
  %20 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nopin_response_timer_flags, align 4
  %and9 = and i32 %21, -2
  store i32 %and9, ptr %nopin_response_timer_flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  %22 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tpg, align 16
  %tpg_tiqn.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %tpg_tiqn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tpg_tiqn.i, align 16
  %tobool.not.i28 = icmp eq ptr %25, null
  br i1 %tobool.not.i28, label %do.end.iscsit_fill_cxn_timeout_err_stats.exit_crit_edge, label %if.end.i

do.end.iscsit_fill_cxn_timeout_err_stats.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsit_fill_cxn_timeout_err_stats.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %sess_err_stats.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %25, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sess_err_stats.i) #10
  %last_sess_fail_rem_name.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %25, i32 0, i32 15, i32 5
  %26 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sess_ops, align 8
  %call.i = tail call i32 @strlcpy(ptr noundef %last_sess_fail_rem_name.i, ptr noundef %27, i32 noundef 224) #10
  %last_sess_failure_type.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %25, i32 0, i32 15, i32 4
  %28 = ptrtoint ptr %last_sess_failure_type.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %last_sess_failure_type.i, align 8
  %cxn_timeout_errors.i = getelementptr inbounds %struct.iscsi_tiqn, ptr %25, i32 0, i32 15, i32 2
  %29 = ptrtoint ptr %cxn_timeout_errors.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cxn_timeout_errors.i, align 16
  %inc.i29 = add i32 %30, 1
  store i32 %inc.i29, ptr %cxn_timeout_errors.i, align 16
  %conn_timeout_errors.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 25
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_timeout_errors.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %conn_timeout_errors.i, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_timeout_errors.i, ptr %conn_timeout_errors.i, i32 1, ptr elementtype(i32) %conn_timeout_errors.i) #10, !srcloc !193
  tail call void @_raw_spin_unlock_bh(ptr noundef %sess_err_stats.i) #10
  br label %iscsit_fill_cxn_timeout_err_stats.exit

iscsit_fill_cxn_timeout_err_stats.exit:           ; preds = %if.end.i, %do.end.iscsit_fill_cxn_timeout_err_stats.exit_crit_edge
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %add.ptr, i32 noundef 0) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %32 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %conn_usage_count.i, align 4
  %dec.i32 = add i32 %33, -1
  store i32 %dec.i32, ptr %conn_usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i32)
  %tobool.not.i33 = icmp eq i32 %dec.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i36, label %iscsit_fill_cxn_timeout_err_stats.exit.cleanup_crit_edge

iscsit_fill_cxn_timeout_err_stats.exit.cleanup_crit_edge: ; preds = %iscsit_fill_cxn_timeout_err_stats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i36:                                ; preds = %iscsit_fill_cxn_timeout_err_stats.exit
  %conn_waiting_on_uc.i34 = getelementptr i8, ptr %t, i32 -596
  %34 = ptrtoint ptr %conn_waiting_on_uc.i34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %conn_waiting_on_uc.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i35 = icmp eq i32 %35, 0
  br i1 %tobool2.not.i35, label %land.lhs.true.i36.cleanup_crit_edge, label %land.lhs.true.i36.cleanup.sink.split_crit_edge

land.lhs.true.i36.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.i36.cleanup_crit_edge:              ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.i36.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge
  %conn_waiting_on_uc_comp.i37 = getelementptr i8, ptr %t, i32 -392
  tail call void @complete(ptr noundef %conn_waiting_on_uc_comp.i37) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i36.cleanup_crit_edge, %iscsit_fill_cxn_timeout_err_stats.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_fill_cxn_timeout_err_stats(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg1 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 49
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 16
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg_tiqn, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sess_err_stats = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %sess_err_stats) #10
  %last_sess_fail_rem_name = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 15, i32 5
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 47
  %4 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_ops, align 8
  %call = tail call i32 @strlcpy(ptr noundef %last_sess_fail_rem_name, ptr noundef %5, i32 noundef 224) #10
  %last_sess_failure_type = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 15, i32 4
  %6 = ptrtoint ptr %last_sess_failure_type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %last_sess_failure_type, align 8
  %cxn_timeout_errors = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 15, i32 2
  %7 = ptrtoint ptr %cxn_timeout_errors to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cxn_timeout_errors, align 16
  %inc = add i32 %8, 1
  store i32 %inc, ptr %cxn_timeout_errors, align 16
  %conn_timeout_errors = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conn_timeout_errors, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %conn_timeout_errors, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conn_timeout_errors, ptr %conn_timeout_errors, i32 1, ptr elementtype(i32) %conn_timeout_errors) #10, !srcloc !193
  tail call void @_raw_spin_unlock_bh(ptr noundef %sess_err_stats) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_cause_connection_reinstatement(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_mod_nopin_response_timer(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #10
  %nopin_timer_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 49
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_response_timer_flags = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 6
  %2 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nopin_response_timer_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nopin_response_timer = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 43
  %call3 = tail call i64 @get_jiffies_64() #10
  %nopin_response_timeout = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %nopin_response_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nopin_response_timeout, align 4
  %mul = mul i32 %5, 100
  %6 = trunc i64 %call3 to i32
  %conv4 = add i32 %mul, %6
  %call5 = tail call i32 @mod_timer(ptr noundef %nopin_response_timer, i32 noundef %conv4) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_get_node_attrib(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_start_nopin_response_timer(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #10
  %nopin_timer_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 49
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_response_timer_flags = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 6
  %2 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nopin_response_timer_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and4 = and i32 %3, -4
  %or = or i32 %and4, 1
  %4 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %nopin_response_timer_flags, align 4
  %nopin_response_timer = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %nopin_response_timeout = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %nopin_response_timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nopin_response_timeout, align 4
  %mul = mul i32 %7, 100
  %add = add i32 %mul, %5
  %call6 = tail call i32 @mod_timer(ptr noundef %nopin_response_timer, i32 noundef %add) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_start_nopin_response_timer.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_start_nopin_response_timer, %if.then11)) #10
          to label %cleanup [label %if.then11], !srcloc !196

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cid, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %nopin_response_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nopin_response_timeout, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_start_nopin_response_timer.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %11) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_stop_nopin_response_timer(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nopin_timer_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 49
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_response_timer_flags = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 6
  %0 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nopin_response_timer_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %1, 2
  %2 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %nopin_response_timer_flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_response_timer = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 43
  %call = tail call i32 @del_timer_sync(ptr noundef %nopin_response_timer) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %3 = ptrtoint ptr %nopin_response_timer_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nopin_response_timer_flags, align 4
  %and6 = and i32 %4, -2
  store i32 %and6, ptr %nopin_response_timer_flags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_handle_nopin_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -908
  %conn_usage_lock.i = getelementptr i8, ptr %t, i32 192
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %conn_usage_count.i = getelementptr i8, ptr %t, i32 -552
  %0 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn_usage_count.i, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr %conn_usage_count.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock.i) #10
  %nopin_timer_lock = getelementptr i8, ptr %t, i32 280
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_timer_flags = getelementptr i8, ptr %t, i32 -852
  %2 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nopin_timer_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %4 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %conn_usage_count.i, align 4
  %dec.i = add i32 %5, -1
  store i32 %dec.i, ptr %conn_usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %conn_waiting_on_uc.i = getelementptr i8, ptr %t, i32 -548
  %6 = ptrtoint ptr %conn_waiting_on_uc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %conn_waiting_on_uc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %3, -2
  %8 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3, ptr %nopin_timer_flags, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  %call.i = tail call ptr @iscsit_allocate_cmd(ptr noundef %add.ptr, i32 noundef 0) #10
  %tobool.not.i15 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i15, label %if.end.iscsit_add_nopin.exit_crit_edge, label %if.end.i

if.end.iscsit_add_nopin.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsit_add_nopin.exit

if.end.i:                                         ; preds = %if.end
  %iscsi_opcode.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %iscsi_opcode.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 32, ptr %iscsi_opcode.i, align 2
  %init_task_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %init_task_tag.i, align 32
  %sess.i = getelementptr i8, ptr %t, i32 488
  %11 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess.i, align 4
  %ttt_lock.i.i = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 41
  tail call void @_raw_spin_lock_bh(ptr noundef %ttt_lock.i.i) #10
  %targ_xfer_tag.i.i = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %targ_xfer_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %targ_xfer_tag.i.i, align 4
  %inc.i.i = add i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.i = icmp eq i32 %14, -1
  %spec.select.i.i = select i1 %cmp.i.i, i32 1, i32 %inc.i.i
  %spec.select8.i.i = select i1 %cmp.i.i, i32 0, i32 %14
  %15 = ptrtoint ptr %targ_xfer_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i.i, ptr %targ_xfer_tag.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ttt_lock.i.i) #10
  %targ_xfer_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i, i32 0, i32 17
  %16 = ptrtoint ptr %targ_xfer_tag.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select8.i.i, ptr %targ_xfer_tag.i, align 4
  %cmd_lock.i = getelementptr i8, ptr %t, i32 148
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock.i) #10
  %i_conn_node.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i, i32 0, i32 69
  %conn_cmd_list.i = getelementptr i8, ptr %t, i32 428
  %prev.i.i = getelementptr i8, ptr %t, i32 432
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_conn_node.i, ptr noundef %18, ptr noundef %conn_cmd_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %i_conn_node.i, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %i_conn_node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %conn_cmd_list.i, ptr %i_conn_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call.i, i32 0, i32 69, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %i_conn_node.i, ptr %18, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock.i) #10
  tail call void @iscsit_start_nopin_response_timer(ptr noundef %add.ptr) #10
  tail call void @iscsit_add_cmd_to_immediate_queue(ptr noundef nonnull %call.i, ptr noundef %add.ptr, i8 noundef zeroext 38) #10
  br label %iscsit_add_nopin.exit

iscsit_add_nopin.exit:                            ; preds = %list_add_tail.exit.i, %if.end.iscsit_add_nopin.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_usage_lock.i) #10
  %23 = ptrtoint ptr %conn_usage_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %conn_usage_count.i, align 4
  %dec.i18 = add i32 %24, -1
  store i32 %dec.i18, ptr %conn_usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i18)
  %tobool.not.i19 = icmp eq i32 %dec.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i22, label %iscsit_add_nopin.exit.cleanup_crit_edge

iscsit_add_nopin.exit.cleanup_crit_edge:          ; preds = %iscsit_add_nopin.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i22:                                ; preds = %iscsit_add_nopin.exit
  %conn_waiting_on_uc.i20 = getelementptr i8, ptr %t, i32 -548
  %25 = ptrtoint ptr %conn_waiting_on_uc.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %conn_waiting_on_uc.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not.i21 = icmp eq i32 %26, 0
  br i1 %tobool2.not.i21, label %land.lhs.true.i22.cleanup_crit_edge, label %land.lhs.true.i22.cleanup.sink.split_crit_edge

land.lhs.true.i22.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.i22.cleanup_crit_edge:              ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.i22.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge
  %conn_waiting_on_uc_comp.i23 = getelementptr i8, ptr %t, i32 -344
  tail call void @complete(ptr noundef %conn_waiting_on_uc_comp.i23) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i22.cleanup_crit_edge, %iscsit_add_nopin.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_usage_lock.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__iscsit_start_nopin_timer(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 49, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1000, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nopin_timeout = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %nopin_timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nopin_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool26.not = icmp eq i32 %4, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %nopin_timer_flags = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 5
  %5 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nopin_timer_flags, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %and33 = and i32 %6, -4
  %or = or i32 %and33, 1
  %7 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %nopin_timer_flags, align 8
  %nopin_timer = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %nopin_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nopin_timeout, align 4
  %mul = mul i32 %10, 100
  %add = add i32 %mul, %8
  %call36 = tail call i32 @mod_timer(ptr noundef %nopin_timer, i32 noundef %add) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsit_start_nopin_timer.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__iscsit_start_nopin_timer, %if.then47)) #10
          to label %cleanup [label %if.then47], !srcloc !196

if.then47:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %11 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cid, align 2
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %nopin_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nopin_timeout, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsit_start_nopin_timer.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end31, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_start_nopin_timer(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nopin_timer_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 49
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  tail call void @__iscsit_start_nopin_timer(ptr noundef %conn)
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_stop_nopin_timer(ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nopin_timer_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 49
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_timer_flags = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 5
  %0 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nopin_timer_flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %1, 2
  %2 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %nopin_timer_flags, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  %nopin_timer = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 42
  %call = tail call i32 @del_timer_sync(ptr noundef %nopin_timer) #10
  tail call void @_raw_spin_lock_bh(ptr noundef %nopin_timer_lock) #10
  %3 = ptrtoint ptr %nopin_timer_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nopin_timer_flags, align 8
  %and6 = and i32 %4, -2
  store i32 %and6, ptr %nopin_timer_flags, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %nopin_timer_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_send_tx_data(ptr noundef %cmd, ptr noundef %conn, i32 noundef %use_misc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_size1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_misc)
  %tobool.not = icmp eq i32 %use_misc, 0
  %iov_misc = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 60
  %iov_misc_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 30
  %iov_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 58
  %iov_data_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 28
  br label %send_data

send_data:                                        ; preds = %do.end, %entry
  %0 = ptrtoint ptr %tx_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_size1, align 4
  br i1 %tobool.not, label %if.then, label %send_data.if.end_crit_edge

send_data.if.end_crit_edge:                       ; preds = %send_data
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %send_data
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %iov_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %send_data.if.end_crit_edge
  %iov_count.0.in = phi ptr [ %iov_data_count, %if.then ], [ %iov_misc_count, %send_data.if.end_crit_edge ]
  %iov.0 = phi ptr [ %3, %if.then ], [ %iov_misc, %send_data.if.end_crit_edge ]
  %4 = ptrtoint ptr %iov_count.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %iov_count.0 = load i32, ptr %iov_count.0.in, align 8
  %call = tail call i32 @tx_data(ptr noundef %conn, ptr noundef %iov.0, i32 noundef %iov_count.0, i32 noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp.not = icmp eq i32 %1, %call
  br i1 %cmp.not, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.end
  %cmp5 = icmp eq i32 %call, -11
  br i1 %cmp5, label %do.end, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %send_data

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %tx_size1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tx_size1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -1, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tx_data(ptr noundef readonly %conn, ptr noundef %iov, i32 noundef %iov_count, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  %tobool.not = icmp eq ptr %conn, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %lor.lhs.false

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

lor.lhs.false:                                    ; preds = %entry
  %sock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup39_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %2 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_ops, align 16
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup39_crit_edge, label %if.end

lor.lhs.false2.cleanup39_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data)
  %cmp = icmp slt i32 %data, 1
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %data) #13
  br label %cleanup39

if.end5:                                          ; preds = %if.end
  %4 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 1, ptr noundef %iov, i32 noundef %iov_count, i32 noundef %data) #10
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end5
  %total_tx.0 = phi i32 [ 0, %if.end5 ], [ %total_tx.1, %cleanup.while.cond_crit_edge ]
  %retval.0 = phi i32 [ undef, %if.end5 ], [ %retval.1, %cleanup.while.cond_crit_edge ]
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %while.cond.cleanup39_crit_edge, label %while.body

while.cond.cleanup39_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

while.body:                                       ; preds = %while.cond
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock, align 4
  %call9 = call i32 @sock_sendmsg(ptr noundef %8, ptr noundef nonnull %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 1
  br i1 %cmp10, label %do.body12, label %if.end22

do.body12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_data.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_data, %cleanup.thread)) #10
          to label %cleanup [label %cleanup.thread], !srcloc !196

cleanup.thread:                                   ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_data.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.64, i32 noundef %call9, i32 noundef %total_tx.0) #10
  br label %cleanup39

if.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %call9, %total_tx.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_data.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_data, %if.then35)) #10
          to label %cleanup [label %if.then35], !srcloc !196

if.then35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tx_data.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.65, i32 noundef %call9, i32 noundef %add, i32 noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end22, %do.body12
  %total_tx.1 = phi i32 [ %add, %if.then35 ], [ %total_tx.0, %do.body12 ], [ %add, %if.end22 ]
  %retval.1 = phi i32 [ %retval.0, %if.then35 ], [ %call9, %do.body12 ], [ %retval.0, %if.end22 ]
  br i1 %cmp10, label %cleanup.cleanup39_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup.cleanup39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

cleanup39:                                        ; preds = %cleanup.cleanup39_crit_edge, %cleanup.thread, %while.cond.cleanup39_crit_edge, %do.end, %lor.lhs.false2.cleanup39_crit_edge, %lor.lhs.false.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.2 = phi i32 [ -1, %do.end ], [ -1, %lor.lhs.false2.cleanup39_crit_edge ], [ -1, %lor.lhs.false.cleanup39_crit_edge ], [ -1, %entry.cleanup39_crit_edge ], [ %call9, %cleanup.thread ], [ %total_tx.0, %while.cond.cleanup39_crit_edge ], [ %retval.1, %cleanup.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_fe_sendpage_sg(ptr noundef %cmd, ptr noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %first_data_sg = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 74
  %0 = ptrtoint ptr %first_data_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_data_sg, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #10
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %first_data_sg_off = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 75
  %3 = ptrtoint ptr %first_data_sg_off to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_data_sg_off, align 8
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %pdu = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 47
  %5 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn_ops, align 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not163 = icmp eq i8 %8, 0
  %spec.select164.neg = select i1 %tobool.not163, i32 -48, i32 -52
  %spec.select164 = select i1 %tobool.not163, i32 48, i32 52
  %9 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdu, ptr %iov, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select164, ptr %2, align 4
  %call165 = call i32 @tx_data(ptr noundef %conn, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %spec.select164)
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select164, i32 %call165)
  %cmp.not166 = icmp eq i32 %spec.select164, %call165
  br i1 %cmp.not166, label %entry.if.end6_crit_edge, label %entry.if.then1_crit_edge

entry.if.then1_crit_edge:                         ; preds = %entry
  br label %if.then1

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then1:                                         ; preds = %do.end.if.then1_crit_edge, %entry.if.then1_crit_edge
  %call167 = phi i32 [ %call, %do.end.if.then1_crit_edge ], [ %call165, %entry.if.then1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call167)
  %cmp2 = icmp eq i32 %call167, -11
  br i1 %cmp2, label %do.end, label %if.then1.cleanup94_crit_edge

if.then1.cleanup94_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

do.end:                                           ; preds = %if.then1
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  %11 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn_ops, align 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool.not, i32 48, i32 52
  %15 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pdu, ptr %iov, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %2, align 4
  %call = call i32 @tx_data(ptr noundef %conn, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %spec.select)
  %cmp.not = icmp eq i32 %spec.select, %call
  br i1 %cmp.not, label %if.end6.loopexit, label %do.end.if.then1_crit_edge

do.end.if.then1_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.end6.loopexit:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select.neg182 = select i1 %tobool.not, i32 -48, i32 -52
  br label %if.end6

if.end6:                                          ; preds = %if.end6.loopexit, %entry.if.end6_crit_edge
  %spec.select.lcssa.neg = phi i32 [ %spec.select164.neg, %entry.if.end6_crit_edge ], [ %spec.select.neg182, %if.end6.loopexit ]
  %tx_size = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 43
  %17 = ptrtoint ptr %tx_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_size, align 4
  %padding = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 72
  %19 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %padding, align 4
  %.neg157 = add i32 %18, %spec.select.lcssa.neg
  %sub7 = sub i32 %.neg157, %20
  %21 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %conn_ops, align 16
  %DataDigest = getelementptr inbounds %struct.iscsi_conn_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %DataDigest to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %DataDigest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %if.else19, label %if.then10

if.then10:                                        ; preds = %if.end6
  %sub11 = add i32 %sub7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  %iov_data_count16 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 28
  %25 = ptrtoint ptr %iov_data_count16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iov_data_count16, align 16
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %sub15 = add i32 %26, -2
  br label %if.end22

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %sub17 = add i32 %26, -1
  br label %if.end22

if.else19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %iov_data_count20 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 28
  %27 = ptrtoint ptr %iov_data_count20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iov_data_count20, align 16
  %sub21 = add i32 %28, -1
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.else, %if.then14
  %iov_off.0 = phi i32 [ %sub15, %if.then14 ], [ %sub17, %if.else ], [ %sub21, %if.else19 ]
  %data_len.0 = phi i32 [ %sub11, %if.then14 ], [ %sub11, %if.else ], [ %sub7, %if.else19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0)
  %tobool23.not170 = icmp eq i32 %data_len.0, 0
  br i1 %tobool23.not170, label %if.end22.send_padding.preheader_crit_edge, label %while.body.lr.ph

if.end22.send_padding.preheader_crit_edge:        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_padding.preheader

while.body.lr.ph:                                 ; preds = %if.end22
  %sock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  br label %while.body

send_padding.preheader:                           ; preds = %cleanup.send_padding.preheader_crit_edge, %if.end22.send_padding.preheader_crit_edge
  %29 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %padding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool52.not174 = icmp eq i32 %30, 0
  br i1 %tobool52.not174, label %send_padding.preheader.if.end71_crit_edge, label %if.then53.lr.ph

send_padding.preheader.if.end71_crit_edge:        ; preds = %send_padding.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then53.lr.ph:                                  ; preds = %send_padding.preheader
  %iov_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 58
  br label %if.then53

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sg.0173 = phi ptr [ %1, %while.body.lr.ph ], [ %call49, %cleanup.while.body_crit_edge ]
  %data_len.1172 = phi i32 [ %data_len.0, %while.body.lr.ph ], [ %sub48, %cleanup.while.body_crit_edge ]
  %offset.0171 = phi i32 [ %4, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0173, i32 0, i32 2
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 4
  %sub24 = sub i32 %32, %offset.0171
  %33 = call i32 @llvm.umin.i32(i32 %data_len.1172, i32 %sub24)
  %34 = ptrtoint ptr %sg.0173 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg.0173, align 4
  %and.i.i168 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.i.not.i169 = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.i.not.i169, label %sg_page.exit.lr.ph, label %while.body.do.body2.i_crit_edge, !prof !192

while.body.do.body2.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

sg_page.exit.lr.ph:                               ; preds = %while.body
  %offset29 = getelementptr inbounds %struct.scatterlist, ptr %sg.0173, i32 0, i32 1
  br label %sg_page.exit

do.body2.i:                                       ; preds = %do.end38.do.body2.i_crit_edge, %while.body.do.body2.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !199
  unreachable

sg_page.exit:                                     ; preds = %do.end38.sg_page.exit_crit_edge, %sg_page.exit.lr.ph
  %36 = phi i32 [ %35, %sg_page.exit.lr.ph ], [ %47, %do.end38.sg_page.exit_crit_edge ]
  %37 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sock, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %sendpage = getelementptr inbounds %struct.proto_ops, ptr %40, i32 0, i32 19
  %41 = ptrtoint ptr %sendpage to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sendpage, align 4
  %and.i = and i32 %36, -4
  %43 = inttoptr i32 %and.i to ptr
  %44 = ptrtoint ptr %offset29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset29, align 4
  %add30 = add i32 %45, %offset.0171
  %call31 = call i32 %42(ptr noundef %38, ptr noundef %43, i32 noundef %add30, i32 noundef %33, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %33)
  %cmp32.not = icmp eq i32 %call31, %33
  br i1 %cmp32.not, label %cleanup, label %if.then33

if.then33:                                        ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call31)
  %cmp34 = icmp eq i32 %call31, -11
  br i1 %cmp34, label %do.end38, label %cleanup.thread

do.end38:                                         ; preds = %if.then33
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #13
  %46 = ptrtoint ptr %sg.0173 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg.0173, align 4
  %and.i.i = and i32 %47, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end38.sg_page.exit_crit_edge, label %do.end38.do.body2.i_crit_edge, !prof !192

do.end38.do.body2.i_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

do.end38.sg_page.exit_crit_edge:                  ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sg_page.exit

cleanup.thread:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %call31) #13
  br label %cleanup94

cleanup:                                          ; preds = %sg_page.exit
  %sub48 = sub i32 %data_len.1172, %33
  %call49 = call ptr @sg_next(ptr noundef %sg.0173) #10
  %tobool23.not = icmp eq i32 %sub48, 0
  br i1 %tobool23.not, label %cleanup.send_padding.preheader_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.send_padding.preheader_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %send_padding.preheader

if.then53:                                        ; preds = %cleanup68.if.then53_crit_edge, %if.then53.lr.ph
  %48 = phi i32 [ %30, %if.then53.lr.ph ], [ %54, %cleanup68.if.then53_crit_edge ]
  %iov_off.1175 = phi i32 [ %iov_off.0, %if.then53.lr.ph ], [ %inc, %cleanup68.if.then53_crit_edge ]
  %49 = ptrtoint ptr %iov_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iov_data, align 4
  %inc = add i32 %iov_off.1175, 1
  %arrayidx = getelementptr %struct.kvec, ptr %50, i32 %iov_off.1175
  %call55 = call i32 @tx_data(ptr noundef %conn, ptr noundef %arrayidx, i32 noundef 1, i32 noundef %48)
  %51 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %padding, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %call55)
  %cmp57.not = icmp eq i32 %52, %call55
  br i1 %cmp57.not, label %if.then53.if.end71_crit_edge, label %if.then58

if.then53.if.end71_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then58:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call55)
  %cmp59 = icmp eq i32 %call55, -11
  br i1 %cmp59, label %cleanup68, label %if.then58.cleanup94_crit_edge

if.then58.cleanup94_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

cleanup68:                                        ; preds = %if.then58
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  %53 = ptrtoint ptr %padding to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %padding, align 4
  %tobool52.not = icmp eq i32 %54, 0
  br i1 %tobool52.not, label %cleanup68.if.end71_crit_edge, label %cleanup68.if.then53_crit_edge

cleanup68.if.then53_crit_edge:                    ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then53

cleanup68.if.end71_crit_edge:                     ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.end71:                                         ; preds = %cleanup68.if.end71_crit_edge, %if.then53.if.end71_crit_edge, %send_padding.preheader.if.end71_crit_edge
  %iov_off.2 = phi i32 [ %iov_off.0, %send_padding.preheader.if.end71_crit_edge ], [ %inc, %if.then53.if.end71_crit_edge ], [ %inc, %cleanup68.if.end71_crit_edge ]
  %55 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %conn_ops, align 16
  %DataDigest73178 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %DataDigest73178 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %DataDigest73178, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool74.not179 = icmp eq i8 %58, 0
  br i1 %tobool74.not179, label %if.end71.cleanup94_crit_edge, label %if.then75.lr.ph

if.end71.cleanup94_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.then75.lr.ph:                                  ; preds = %if.end71
  %iov_data76 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 58
  br label %if.then75

if.then75:                                        ; preds = %cleanup90.if.then75_crit_edge, %if.then75.lr.ph
  %59 = ptrtoint ptr %iov_data76 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iov_data76, align 4
  %arrayidx77 = getelementptr %struct.kvec, ptr %60, i32 %iov_off.2
  %call78 = call i32 @tx_data(ptr noundef %conn, ptr noundef %arrayidx77, i32 noundef 1, i32 noundef 4)
  %61 = zext i32 %call78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call78, label %if.then75.cleanup94.loopexit_crit_edge [
    i32 4, label %if.then75.cleanup94_crit_edge
    i32 -11, label %cleanup90
  ]

if.then75.cleanup94_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94

if.then75.cleanup94.loopexit_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94.loopexit

cleanup90:                                        ; preds = %if.then75
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  %62 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %conn_ops, align 16
  %DataDigest73 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %DataDigest73 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %DataDigest73, align 1
  %tobool74.not = icmp eq i8 %65, 0
  br i1 %tobool74.not, label %cleanup90.cleanup94.loopexit_crit_edge, label %cleanup90.if.then75_crit_edge

cleanup90.if.then75_crit_edge:                    ; preds = %cleanup90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75

cleanup90.cleanup94.loopexit_crit_edge:           ; preds = %cleanup90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup94.loopexit

cleanup94.loopexit:                               ; preds = %cleanup90.cleanup94.loopexit_crit_edge, %if.then75.cleanup94.loopexit_crit_edge
  %retval.7.ph = phi i32 [ -1, %if.then75.cleanup94.loopexit_crit_edge ], [ 0, %cleanup90.cleanup94.loopexit_crit_edge ]
  br label %cleanup94

cleanup94:                                        ; preds = %cleanup94.loopexit, %if.then75.cleanup94_crit_edge, %if.end71.cleanup94_crit_edge, %if.then58.cleanup94_crit_edge, %cleanup.thread, %if.then1.cleanup94_crit_edge
  %retval.7 = phi i32 [ -1, %cleanup.thread ], [ 0, %if.end71.cleanup94_crit_edge ], [ %retval.7.ph, %cleanup94.loopexit ], [ 0, %if.then75.cleanup94_crit_edge ], [ -1, %if.then58.cleanup94_crit_edge ], [ -1, %if.then1.cleanup94_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #10
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext %status_class, i8 noundef zeroext %status_detail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_login = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 60
  %0 = ptrtoint ptr %conn_login to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_login, align 4
  %login_failed = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %login_failed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %login_failed, align 8
  tail call void @iscsit_collect_login_stats(ptr noundef %conn, i8 noundef zeroext %status_class, i8 noundef zeroext %status_detail)
  %rsp = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 18
  %3 = call ptr @memset(ptr %rsp, i32 0, i32 48)
  %4 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 35, ptr %rsp, align 4
  %status_class3 = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 18, i32 36
  %5 = ptrtoint ptr %status_class3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %status_class, ptr %status_class3, align 4
  %status_detail4 = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 18, i32 37
  %6 = ptrtoint ptr %status_detail4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %status_detail, ptr %status_detail4, align 1
  %login_itt = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 14
  %7 = ptrtoint ptr %login_itt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %login_itt, align 8
  %itt = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 18, i32 16
  %9 = ptrtoint ptr %itt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %itt, align 4
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %10 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conn_transport, align 8
  %iscsit_put_login_tx = getelementptr inbounds %struct.iscsit_transport, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %iscsit_put_login_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iscsit_put_login_tx, align 4
  %call = tail call i32 %13(ptr noundef %conn, ptr noundef %1, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_collect_login_stats(ptr noundef readonly %conn, i8 noundef zeroext %status_class, i8 noundef zeroext %status_detail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %conn, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tpg1.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %0 = ptrtoint ptr %tpg1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1.i, align 4
  %tobool2.not.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %iscsit_snmp_get_tiqn.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

iscsit_snmp_get_tiqn.exit:                        ; preds = %if.end.i
  %tpg_tiqn.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tpg_tiqn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg_tiqn.i, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %iscsit_snmp_get_tiqn.exit.cleanup_crit_edge, label %if.end

iscsit_snmp_get_tiqn.exit.cleanup_crit_edge:      ; preds = %iscsit_snmp_get_tiqn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %iscsit_snmp_get_tiqn.exit
  %login_stats = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #10
  %4 = zext i8 %status_class to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %status_class, label %if.else8 [
    i8 0, label %if.end47
    i8 1, label %if.then6
  ]

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %redirects = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 3
  %5 = ptrtoint ptr %redirects to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %redirects, align 4
  %inc7 = add i32 %6, 1
  store i32 %inc7, ptr %redirects, align 4
  br label %if.then51

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %status_class)
  %cmp10 = icmp eq i8 %status_class, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %status_detail)
  %cmp13 = icmp eq i8 %status_detail, 1
  %or.cond = and i1 %cmp10, %cmp13
  br i1 %or.cond, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  %authenticate_fails = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 5
  %7 = ptrtoint ptr %authenticate_fails to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %authenticate_fails, align 4
  %inc16 = add i32 %8, 1
  store i32 %inc16, ptr %authenticate_fails, align 4
  br label %if.then51

if.else18:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %status_detail)
  %cmp24 = icmp eq i8 %status_detail, 2
  %or.cond93 = and i1 %cmp10, %cmp24
  br i1 %or.cond93, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  %authorize_fails = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 4
  %9 = ptrtoint ptr %authorize_fails to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %authorize_fails, align 8
  %inc27 = add i32 %10, 1
  store i32 %inc27, ptr %authorize_fails, align 8
  br label %if.then51

if.else29:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status_detail)
  %cmp35 = icmp eq i8 %status_detail, 0
  %or.cond94 = and i1 %cmp10, %cmp35
  br i1 %or.cond94, label %if.then37, label %if.else40

if.then37:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  %negotiate_fails = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 6
  %11 = ptrtoint ptr %negotiate_fails to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %negotiate_fails, align 64
  %inc38 = add i32 %12, 1
  store i32 %inc38, ptr %negotiate_fails, align 64
  br label %if.then51

if.else40:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  %other_fails = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 2
  %13 = ptrtoint ptr %other_fails to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %other_fails, align 16
  %inc41 = add i32 %14, 1
  store i32 %inc41, ptr %other_fails, align 16
  br label %if.then51

if.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %accepts = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %accepts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %accepts, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %accepts, align 4
  br label %if.end60

if.then51:                                        ; preds = %if.else40, %if.then37, %if.then26, %if.then15, %if.then6
  %.sink = phi i32 [ 3, %if.then6 ], [ 4, %if.then26 ], [ 2, %if.else40 ], [ 6, %if.then37 ], [ 5, %if.then15 ]
  %last_fail_type = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 8
  %17 = ptrtoint ptr %last_fail_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %last_fail_type, align 16
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %18 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %param_list, align 4
  %tobool52.not = icmp eq ptr %19, null
  br i1 %tobool52.not, label %if.then51.cond.end_crit_edge, label %if.end56

if.then51.cond.end_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

if.end56:                                         ; preds = %if.then51
  %call55 = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.66, ptr noundef nonnull %19) #10
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %if.end56.cond.end_crit_edge, label %cond.true

if.end56.cond.end_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call55, i32 0, i32 1
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end56.cond.end_crit_edge, %if.then51.cond.end_crit_edge
  %cond = phi ptr [ %21, %cond.true ], [ @.str.67, %if.end56.cond.end_crit_edge ], [ @.str.67, %if.then51.cond.end_crit_edge ]
  %last_intr_fail_name104 = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 11
  %call58 = tail call i32 @strlcpy(ptr noundef %last_intr_fail_name104, ptr noundef %cond, i32 noundef 224) #10
  %login_family = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 11
  %22 = ptrtoint ptr %login_family to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %login_family, align 4
  %last_intr_fail_ip_family = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 9
  %24 = ptrtoint ptr %last_intr_fail_ip_family to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_intr_fail_ip_family, align 4
  %last_intr_fail_sockaddr = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 10
  %login_sockaddr = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 17
  %25 = call ptr @memcpy(ptr %last_intr_fail_sockaddr, ptr %login_sockaddr, i32 128)
  %call59 = tail call i64 @get_jiffies_64() #10
  %last_fail_time = getelementptr inbounds %struct.iscsi_tiqn, ptr %3, i32 0, i32 16, i32 7
  %26 = ptrtoint ptr %last_fail_time to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call59, ptr %last_fail_time, align 8
  br label %if.end60

if.end60:                                         ; preds = %cond.end, %if.end47
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %iscsit_snmp_get_tiqn.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_print_session_params(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_print_session_params.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_print_session_params, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !196

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sid, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_print_session_params.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.58, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 37
  tail call void @_raw_spin_lock_bh(ptr noundef %conn_lock) #10
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 34
  %2 = ptrtoint ptr %sess_conn_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn21 = load ptr, ptr %sess_conn_list, align 4
  %cmp.not22 = icmp eq ptr %.pn21, %sess_conn_list
  br i1 %cmp.not22, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn21, %do.end.for.body_crit_edge ]
  %conn_ops = getelementptr i8, ptr %.pn23, i32 -116
  %3 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conn_ops, align 16
  tail call void @iscsi_dump_conn_ops(ptr noundef %4) #10
  %5 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, %sess_conn_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %conn_lock) #10
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 47
  %6 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sess_ops, align 8
  tail call void @iscsi_dump_sess_ops(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_dump_conn_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_dump_sess_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rx_data(ptr noundef readonly %conn, ptr noundef %iov, i32 noundef %iov_count, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #10
  %tobool.not = icmp eq ptr %conn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %2 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_ops, align 16
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %4 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter, i32 noundef 0, ptr noundef %iov, i32 noundef %iov_count, i32 noundef %data) #10
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not50 = icmp eq i32 %6, 0
  br i1 %tobool4.not50, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %do.end30.while.body_crit_edge, %if.end.while.body_crit_edge
  %total_rx.051 = phi i32 [ %add, %do.end30.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock, align 4
  %call6 = call i32 @sock_recvmsg(ptr noundef %8, ptr noundef nonnull %msg, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %do.body, label %if.end14

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then12)) #10
          to label %cleanup [label %if.then12], !srcloc !196

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.60, i32 noundef %call6, i32 noundef %total_rx.051) #10
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %add = add i32 %call6, %total_rx.051
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_data.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_data, %if.then27)) #10
          to label %do.end30 [label %if.then27], !srcloc !196

if.then27:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rx_data.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.61, i32 noundef %call6, i32 noundef %add, i32 noundef %data) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %if.end14
  %9 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i, align 8
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %do.end30.cleanup_crit_edge, label %do.end30.while.body_crit_edge

do.end30.while.body_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30.cleanup_crit_edge, %if.then12, %do.body, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false2.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call6, %if.then12 ], [ %call6, %do.body ], [ 0, %if.end.cleanup_crit_edge ], [ %add, %do.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_sendmsg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iscsit_snmp_get_tiqn(ptr noundef readonly %conn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %conn, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tpg1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg_tiqn, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %3, %if.end4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_find_param_from_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_prepare_to_wait(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_finish_wait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !151, !152, !154, !156, !158, !159, !160, !161, !163, !164, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180}
!llvm.named.register.sp = !{!181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 43, i32 2}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 45, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 49, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @iscsit_add_r2t_to_list._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @iscsit_add_r2t_to_list._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 84, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @iscsit_get_r2t_for_eos._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @iscsit_get_r2t_for_eos._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 102, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @iscsit_get_r2t_from_list._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @iscsit_get_r2t_from_list._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @iscsit_allocate_cmd.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 178, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @iscsit_allocate_cmd.__key.8, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 179, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @iscsit_allocate_cmd.__key.10, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 180, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @iscsit_allocate_cmd.__key.12, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 181, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @iscsit_allocate_cmd.__key.14, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 182, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iscsit_allocate_cmd.__key.16, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 183, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__ksymtab_iscsit_allocate_cmd, !38, !"__ksymtab_iscsit_allocate_cmd", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 187, i32 1}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 207, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iscsit_get_seq_holder_for_r2t._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @iscsit_get_seq_holder_for_r2t._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_iscsit_sequence_cmd, !45, !"__ksymtab_iscsit_sequence_cmd", i1 false, i1 false}
!45 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 334, i32 1}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 344, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @iscsit_check_unsolicited_dataout._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @iscsit_check_unsolicited_dataout._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 353, i32 3}
!53 = !{ptr @iscsit_check_unsolicited_dataout._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @iscsit_check_unsolicited_dataout._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 368, i32 3}
!57 = !{ptr @iscsit_check_unsolicited_dataout._entry.25, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @iscsit_check_unsolicited_dataout._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 395, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @iscsit_find_cmd_from_itt._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @iscsit_find_cmd_from_itt._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @__ksymtab_iscsit_find_cmd_from_itt, !65, !"__ksymtab_iscsit_find_cmd_from_itt", i1 false, i1 false}
!65 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 399, i32 1}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 419, i32 2}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iscsit_find_cmd_from_itt_or_dump._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @iscsit_find_cmd_from_itt_or_dump._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @__ksymtab_iscsit_find_cmd_from_itt_or_dump, !72, !"__ksymtab_iscsit_find_cmd_from_itt_or_dump", i1 false, i1 false}
!72 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 426, i32 1}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 443, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @iscsit_find_cmd_from_ttt._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @iscsit_find_cmd_from_ttt._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 509, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @iscsit_add_cmd_to_immediate_queue._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @iscsit_add_cmd_to_immediate_queue._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @__ksymtab_iscsit_add_cmd_to_immediate_queue, !84, !"__ksymtab_iscsit_add_cmd_to_immediate_queue", i1 false, i1 false}
!84 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 525, i32 1}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 585, i32 3}
!87 = !{ptr @iscsit_add_cmd_to_response_queue._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @iscsit_add_cmd_to_response_queue._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @__ksymtab_iscsit_release_cmd, !90, !"__ksymtab_iscsit_release_cmd", i1 false, i1 false}
!90 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 721, i32 1}
!91 = !{ptr @__ksymtab_iscsit_free_cmd, !92, !"__ksymtab_iscsit_free_cmd", i1 false, i1 false}
!92 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 763, i32 1}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 910, i32 2}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @iscsit_handle_nopin_response_timeout._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @iscsit_handle_nopin_response_timeout._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 954, i32 2}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @iscsit_start_nopin_response_timer.__UNIQUE_ID_ddebug506, !99, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1015, i32 2}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__iscsit_start_nopin_timer.__UNIQUE_ID_ddebug507, !104, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1066, i32 4}
!109 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @iscsit_send_tx_data._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @iscsit_send_tx_data._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1097, i32 4}
!114 = !{ptr @iscsit_fe_sendpage_sg._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @iscsit_fe_sendpage_sg._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1128, i32 5}
!118 = !{ptr @iscsit_fe_sendpage_sg._entry.47, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @iscsit_fe_sendpage_sg._entry_ptr.49, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1133, i32 4}
!122 = !{ptr @iscsit_fe_sendpage_sg._entry.50, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @iscsit_fe_sendpage_sg._entry_ptr.52, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @iscsit_fe_sendpage_sg._entry.53, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1150, i32 5}
!126 = !{ptr @iscsit_fe_sendpage_sg._entry_ptr.54, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @iscsit_fe_sendpage_sg._entry.55, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1164, i32 5}
!129 = !{ptr @iscsit_fe_sendpage_sg._entry_ptr.56, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1205, i32 2}
!132 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @iscsit_print_session_params.__UNIQUE_ID_ddebug510, !131, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1233, i32 4}
!136 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @rx_data.__UNIQUE_ID_ddebug511, !135, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1238, i32 3}
!140 = !{ptr @rx_data.__UNIQUE_ID_ddebug512, !139, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1258, i32 3}
!143 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @tx_data._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @tx_data._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1269, i32 4}
!148 = !{ptr @tx_data.__UNIQUE_ID_ddebug513, !147, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1274, i32 3}
!151 = !{ptr @tx_data.__UNIQUE_ID_ddebug514, !150, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1322, i32 41}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 1325, i32 40}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 254, i32 3}
!158 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @iscsit_check_received_cmdsn._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @iscsit_check_received_cmdsn._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 260, i32 3}
!163 = !{ptr @iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug504, !162, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 266, i32 3}
!166 = !{ptr @iscsit_check_received_cmdsn.__UNIQUE_ID_ddebug505, !165, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!167 = !{ptr @.str.73, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 272, i32 3}
!169 = !{ptr @iscsit_check_received_cmdsn._entry.72, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @iscsit_check_received_cmdsn._entry_ptr.74, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 570, i32 3}
!173 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @iscsit_remove_cmd_from_immediate_queue._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @iscsit_remove_cmd_from_immediate_queue._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/target/iscsi/iscsi_target_util.c", i32 647, i32 3}
!178 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @iscsit_remove_cmd_from_response_queue._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @iscsit_remove_cmd_from_response_queue._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{!"sp"}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{i64 2148349518, i64 2148349544, i64 2148349573, i64 2148349607, i64 2148349638, i64 2148349661}
!194 = !{i64 2157198568}
!195 = !{i64 2157198735}
!196 = !{i64 2148814997, i64 2148815002, i64 2148815015, i64 2148815059, i64 2148815093, i64 2148815114}
!197 = !{i64 2148351983, i64 2148352009, i64 2148352038, i64 2148352072, i64 2148352103, i64 2148352126}
!198 = !{i64 2157711048, i64 2157711553, i64 2157711085, i64 2157711141, i64 2157711175, i64 2157711199, i64 2157711240, i64 2157711261, i64 2157711289, i64 2157711323}
!199 = !{i64 2154431414, i64 2154431906, i64 2154431451, i64 2154431507, i64 2154431541, i64 2154431565, i64 2154431606, i64 2154431627, i64 2154431655, i64 2154431689}
