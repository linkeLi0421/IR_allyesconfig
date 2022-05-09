; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/debugfs.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_debugfs_root\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_debugfs_root\09\09\09\09"
module asm "\09.long\09__crc_mlx5_debugfs_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_debugfs_root:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_debugfs_root\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_debugfs_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_qp_debugfs_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_qp_debugfs_init\09\09\09\09"
module asm "\09.long\09__crc_mlx5_qp_debugfs_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_qp_debugfs_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_qp_debugfs_init\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_qp_debugfs_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_qp_debugfs_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_qp_debugfs_cleanup\09\09\09\09"
module asm "\09.long\09__crc_mlx5_qp_debugfs_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_qp_debugfs_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_qp_debugfs_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_qp_debugfs_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_debug_qp_add\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_debug_qp_add\09\09\09\09"
module asm "\09.long\09__crc_mlx5_debug_qp_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_debug_qp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_debug_qp_add\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_debug_qp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_debug_qp_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_debug_qp_remove\09\09\09\09"
module asm "\09.long\09__crc_mlx5_debug_qp_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_debug_qp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_debug_qp_remove\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_debug_qp_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.153, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.155, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.153 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.154] }
%struct.anon.154 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.155 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_cmd_stats = type { i64, i64, ptr, %struct.spinlock }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mlx5_rsc_debug = type { ptr, ptr, i32, ptr, [0 x %struct.mlx5_field_desc] }
%struct.mlx5_field_desc = type { i32 }
%struct.mlx5_eq = type { %struct.mlx5_frag_buf_ctrl, %struct.mlx5_frag_buf, ptr, %struct.mlx5_cq_table, ptr, i32, i32, i32, i8, ptr, ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_cq_table = type { %struct.spinlock, %struct.xarray }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.165, i32, %struct.list_head, ptr, i16 }
%struct.anon.165 = type { %struct.list_head, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mlx5_debugfs_root = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mlx5_debugfs_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_debugfs_root = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_debugfs_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_debugfs_root to i32), ptr @__kstrtab_mlx5_debugfs_root, ptr @__kstrtabns_mlx5_debugfs_root }, section "___ksymtab+mlx5_debugfs_root", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QPs\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_qp_debugfs_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_qp_debugfs_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_qp_debugfs_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_qp_debugfs_init to i32), ptr @__kstrtab_mlx5_qp_debugfs_init, ptr @__kstrtabns_mlx5_qp_debugfs_init }, section "___ksymtab+mlx5_qp_debugfs_init", align 4
@__kstrtab_mlx5_qp_debugfs_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_qp_debugfs_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_qp_debugfs_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_qp_debugfs_cleanup to i32), ptr @__kstrtab_mlx5_qp_debugfs_cleanup, ptr @__kstrtabns_mlx5_qp_debugfs_cleanup }, section "___ksymtab+mlx5_qp_debugfs_cleanup", align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EQs\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"commands\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown command opcode\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"average\00", [24 x i8] zeroinitializer }, align 32
@stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @average_read, ptr @average_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CQs\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_debug_qp_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_debug_qp_add = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_debug_qp_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_debug_qp_add to i32), ptr @__kstrtab_mlx5_debug_qp_add, ptr @__kstrtabns_mlx5_debug_qp_add }, section "___ksymtab+mlx5_debug_qp_add", align 4
@__kstrtab_mlx5_debug_qp_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_debug_qp_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_debug_qp_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_debug_qp_remove to i32), ptr @__kstrtab_mlx5_debug_qp_remove, ptr @__kstrtabns_mlx5_debug_qp_remove }, section "___ksymtab+mlx5_debug_qp_remove", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @dbg_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dbg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 385, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s:%d:(pid %d): invalid resource type %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dbg_read\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/debugfs.c\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dbg_read._entry_ptr = internal global ptr @dbg_read._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RST\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTR\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RTS\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SQER\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SQD\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ERR\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SQ_DRAINING\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUSPENDED\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid QP state\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RC\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UD\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XRC\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MLX\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QP0\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QP1\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RAW_ETHERTYPE\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RAW_IPV6\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SNIFFER\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SYNC_UMR\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PTP_1588\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"REG_UMR\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid transport type\00", [41 x i8] zeroinitializer }, align 32
@eq_read_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.12, i32 300, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): failed to query eq\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eq_read_field\00", [18 x i8] zeroinitializer }, align 32
@eq_read_field._entry_ptr = internal global ptr @eq_read_field._entry, section ".printk_index", align 4
@cq_read_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.12, i32 337, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): failed to query cq\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cq_read_field\00", [18 x i8] zeroinitializer }, align 32
@cq_read_field._entry_ptr = internal global ptr @cq_read_field._entry, section ".printk_index", align 4
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"transport\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mtu\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_recv\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rcv_wqe_sz\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_send\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"log2_page_sz\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remote_qpn\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_eqes\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"log_page_size\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"num_cqes\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.59 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.60 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"mlx5_debugfs_root\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 89, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 94, i32 41 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 104, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 116, i32 44 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 172, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 177, i32 21 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 180, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [11 x i8] c"stats_fops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 157, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 182, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 194, i32 44 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 137, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 418, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 397, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 385, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 390, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 392, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 529, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 531, i32 9 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 533, i32 9 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 535, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 537, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 539, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 541, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 543, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 545, i32 9 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 546, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 508, i32 29 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 509, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 510, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 511, i32 30 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 512, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 513, i32 30 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 514, i32 30 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 515, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 516, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 517, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 518, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 519, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 520, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"../include/linux/mlx5/qp.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 521, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 300, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 337, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 54, i32 13 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 55, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 56, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 57, i32 13 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 58, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 59, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 60, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 61, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 62, i32 14 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 72, i32 18 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 73, i32 14 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 74, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 85, i32 18 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__ksymtab_mlx5_debug_qp_add, ptr @__ksymtab_mlx5_debug_qp_remove, ptr @__ksymtab_mlx5_debugfs_root, ptr @__ksymtab_mlx5_qp_debugfs_cleanup, ptr @__ksymtab_mlx5_qp_debugfs_init, ptr @cq_read_field._entry, ptr @cq_read_field._entry_ptr, ptr @dbg_read._entry, ptr @dbg_read._entry_ptr, ptr @eq_read_field._entry, ptr @eq_read_field._entry_ptr, ptr @mlx5_debugfs_root, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stats_fops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_read_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cq_read_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_register_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #9
  store ptr %call, ptr @mlx5_debugfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_unregister_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_qp_debugfs_init(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %0 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg_root, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %1) #9
  %qp_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 12
  %2 = ptrtoint ptr %qp_debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %qp_debugfs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_qp_debugfs_cleanup(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 12
  %0 = ptrtoint ptr %qp_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eq_debugfs_init(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %0 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg_root, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.2, ptr noundef %1) #9
  %eq_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 13
  %2 = ptrtoint ptr %eq_debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %eq_debugfs, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eq_debugfs_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eq_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 13
  %0 = ptrtoint ptr %eq_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq_debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmdif_debugfs_init(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdif_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 15
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %0 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg_root, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %1) #9
  %2 = ptrtoint ptr %cmdif_debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %cmdif_debugfs, align 4
  %stats3 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 7, i32 28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %stats3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stats3, align 4
  %call4 = tail call ptr @mlx5_command_str(i32 noundef %i.021) #9
  %call5 = tail call i32 @strcmp(ptr noundef %call4, ptr noundef nonnull dereferenceable(23) @.str.4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.mlx5_cmd_stats, ptr %4, i32 %i.021
  %5 = ptrtoint ptr %cmdif_debugfs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmdif_debugfs, align 4
  %call6 = tail call ptr @debugfs_create_dir(ptr noundef %call4, ptr noundef %6) #9
  %root = getelementptr %struct.mlx5_cmd_stats, ptr %4, i32 %i.021, i32 2
  %7 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %root, align 8
  %call8 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call6, ptr noundef %arrayidx, ptr noundef nonnull @stats_fops) #9
  %8 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root, align 8
  %n = getelementptr %struct.mlx5_cmd_stats, ptr %4, i32 %i.021, i32 1
  tail call void @debugfs_create_u64(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %9, ptr noundef %n) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 2831
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_command_str(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cmdif_debugfs_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdif_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 15
  %0 = ptrtoint ptr %cmdif_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdif_debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cq_debugfs_init(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg_root = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 20
  %0 = ptrtoint ptr %dbg_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg_root, align 8
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.7, ptr noundef %1) #9
  %cq_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 14
  %2 = ptrtoint ptr %cq_debugfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %cq_debugfs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cq_debugfs_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 14
  %0 = ptrtoint ptr %cq_debugfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_debug_qp_add(ptr noundef %dev, ptr noundef %qp) #0 align 64 {
entry:
  %resn.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %qp_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 12
  %1 = ptrtoint ptr %qp_debugfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qp_debugfs, align 4
  %dbg = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 3
  %qpn = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 2
  %3 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qpn, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resn.i) #9
  %5 = call ptr @memset(ptr %resn.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 52) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then2, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %object.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %qp, ptr %object.i, align 4
  %type3.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %type3.i, align 8
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %resn.i, ptr noundef nonnull @.str.9, i32 noundef %4) #9
  %call6.i = call ptr @debugfs_create_dir(ptr noundef nonnull %resn.i, ptr noundef %2) #9
  %root7.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %root7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.i, ptr %root7.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i, align 8
  %call13.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef %call6.i, ptr noundef %arrayidx.i, ptr noundef nonnull @fops) #9
  %arrayidx.i.1 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx.i.1, align 4
  %13 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root7.i, align 4
  %call13.i.1 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.46, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %arrayidx.i.1, ptr noundef nonnull @fops) #9
  %arrayidx.i.2 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx.i.2, align 8
  %16 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root7.i, align 4
  %call13.i.2 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %arrayidx.i.2, ptr noundef nonnull @fops) #9
  %arrayidx.i.3 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %arrayidx.i.3, align 4
  %19 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %root7.i, align 4
  %call13.i.3 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 256, ptr noundef %20, ptr noundef %arrayidx.i.3, ptr noundef nonnull @fops) #9
  %arrayidx.i.4 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %arrayidx.i.4, align 8
  %22 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root7.i, align 4
  %call13.i.4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 256, ptr noundef %23, ptr noundef %arrayidx.i.4, ptr noundef nonnull @fops) #9
  %arrayidx.i.5 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %arrayidx.i.5, align 4
  %25 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %root7.i, align 4
  %call13.i.5 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %26, ptr noundef %arrayidx.i.5, ptr noundef nonnull @fops) #9
  %arrayidx.i.6 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %arrayidx.i.6, align 8
  %28 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root7.i, align 4
  %call13.i.6 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %arrayidx.i.6, ptr noundef nonnull @fops) #9
  %arrayidx.i.7 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 7
  %30 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %arrayidx.i.7, align 4
  %31 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root7.i, align 4
  %call13.i.7 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 256, ptr noundef %32, ptr noundef %arrayidx.i.7, ptr noundef nonnull @fops) #9
  %arrayidx.i.8 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %arrayidx.i.8, align 8
  %34 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %root7.i, align 4
  %call13.i.8 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 256, ptr noundef %35, ptr noundef %arrayidx.i.8, ptr noundef nonnull @fops) #9
  %36 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i.i, ptr %dbg, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resn.i) #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resn.i) #9
  %37 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dbg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then2 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_debug_qp_remove(ptr nocapture readnone %dev, ptr nocapture noundef readonly %qp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %entry
  %dbg = getelementptr inbounds %struct.mlx5_core_qp, ptr %qp, i32 0, i32 3
  %1 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %root.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 4
  tail call void @debugfs_remove(ptr noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_debug_eq_add(ptr noundef %dev, ptr noundef %eq) local_unnamed_addr #0 align 64 {
entry:
  %resn.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %eq_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 13
  %1 = ptrtoint ptr %eq_debugfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eq_debugfs, align 8
  %dbg = getelementptr inbounds %struct.mlx5_eq, ptr %eq, i32 0, i32 9
  %eqn = getelementptr inbounds %struct.mlx5_eq, ptr %eq, i32 0, i32 8
  %3 = ptrtoint ptr %eqn to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %eqn, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resn.i) #9
  %5 = call ptr @memset(ptr %resn.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then2, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %4 to i32
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %object.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %eq, ptr %object.i, align 4
  %type3.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type3.i, align 8
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %resn.i, ptr noundef nonnull @.str.9, i32 noundef %conv) #9
  %call6.i = call ptr @debugfs_create_dir(ptr noundef nonnull %resn.i, ptr noundef %2) #9
  %root7.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %root7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.i, ptr %root7.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i, align 8
  %call13.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 256, ptr noundef %call6.i, ptr noundef %arrayidx.i, ptr noundef nonnull @fops) #9
  %arrayidx.i.1 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx.i.1, align 4
  %13 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root7.i, align 4
  %call13.i.1 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %arrayidx.i.1, ptr noundef nonnull @fops) #9
  %arrayidx.i.2 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx.i.2, align 8
  %16 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root7.i, align 4
  %call13.i.2 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %arrayidx.i.2, ptr noundef nonnull @fops) #9
  %18 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %dbg, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resn.i) #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resn.i) #9
  %19 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dbg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then2 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_debug_eq_remove(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %eq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %entry
  %dbg = getelementptr inbounds %struct.mlx5_eq, ptr %eq, i32 0, i32 9
  %1 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %root.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 4
  tail call void @debugfs_remove(ptr noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_debug_cq_add(ptr noundef %dev, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  %resn.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq_debugfs = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 14
  %1 = ptrtoint ptr %cq_debugfs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cq_debugfs, align 4
  %dbg = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 13
  %3 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cq, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resn.i) #9
  %5 = call ptr @memset(ptr %resn.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then2, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call7.i.i.i, align 8
  %object.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cq, ptr %object.i, align 4
  %type3.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %type3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %type3.i, align 8
  %call4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %resn.i, ptr noundef nonnull @.str.9, i32 noundef %4) #9
  %call6.i = call ptr @debugfs_create_dir(ptr noundef nonnull %resn.i, ptr noundef %2) #9
  %root7.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %root7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.i, ptr %root7.i, align 4
  %arrayidx.i = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx.i, align 8
  %call13.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 256, ptr noundef %call6.i, ptr noundef %arrayidx.i, ptr noundef nonnull @fops) #9
  %arrayidx.i.1 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx.i.1, align 4
  %13 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root7.i, align 4
  %call13.i.1 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 256, ptr noundef %14, ptr noundef %arrayidx.i.1, ptr noundef nonnull @fops) #9
  %arrayidx.i.2 = getelementptr %struct.mlx5_rsc_debug, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx.i.2, align 8
  %16 = ptrtoint ptr %root7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root7.i, align 4
  %call13.i.2 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %arrayidx.i.2, ptr noundef nonnull @fops) #9
  %18 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %dbg, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resn.i) #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resn.i) #9
  %19 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dbg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then2 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_debug_cq_remove(ptr nocapture noundef readnone %dev, ptr nocapture noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mlx5_debugfs_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end:                                           ; preds = %entry
  %dbg = getelementptr inbounds %struct.mlx5_core_cq, ptr %cq, i32 0, i32 13
  %1 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %root.i = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root.i, align 4
  tail call void @debugfs_remove(ptr noundef %4) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  %5 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %dbg, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @average_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  %tbuf = alloca [22 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %tbuf) #9
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = call ptr @memset(ptr %tbuf, i32 255, i32 22)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.mlx5_cmd_stats, ptr %2, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %n = getelementptr inbounds %struct.mlx5_cmd_stats, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %n, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %2, align 8
  %call = tail call i64 @div64_u64(i64 noundef %6, i64 noundef %4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %field.0 = phi i64 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 22, ptr noundef nonnull @.str.8, i64 noundef %field.0)
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %tbuf, i32 noundef %call3) #9
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %tbuf) #9
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @average_write(ptr nocapture noundef readonly %filp, ptr nocapture noundef readnone %buf, i32 noundef returned %count, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.mlx5_cmd_stats, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %conv = zext i32 %count to i64
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pos, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %pos, align 8
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbg_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr noundef %pos) #0 align 64 {
entry:
  %in.i39 = alloca [4 x i32], align 4
  %in.i = alloca [4 x i32], align 4
  %tbuf = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %tbuf) #9
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = call ptr @memset(ptr %tbuf, i32 255, i32 18)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %idx.neg = sub i32 0, %4
  %add.ptr = getelementptr %struct.mlx5_field_desc, ptr %2, i32 %idx.neg
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -16
  %type = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %add.ptr1, i32 0, i32 2
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %8 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr1, align 4
  %object = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %add.ptr1, i32 0, i32 1
  %10 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %object, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %12 = call ptr @memset(ptr %in.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 272) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.thread71, label %do.body.i

sw.epilog.thread71:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  br label %if.else

do.body.i:                                        ; preds = %sw.bb
  %14 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in.i, align 4
  %and.i = and i32 %15, 65535
  %or.i = or i32 %and.i, 84606976
  store i32 %or.i, ptr %in.i, align 4
  %qpn.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qpn.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %18 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr13.i, align 4
  %and14.i = and i32 %19, -16777216
  %and15.i = and i32 %17, 16777215
  %or17.i = or i32 %and14.i, %and15.i
  store i32 %or17.i, ptr %add.ptr13.i, align 4
  %call23.i = call i32 @mlx5_cmd_exec(ptr noundef %9, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i, i32 noundef 272) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %do.body.i.sw.epilog.thread76_crit_edge

do.body.i.sw.epilog.thread76_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

if.end26.i:                                       ; preds = %do.body.i
  %add.ptr27.i = getelementptr i8, ptr %call7.i.i.i, i32 24
  %20 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %4, label %if.end26.i.sw.epilog.thread76_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb28.i
    i32 2, label %sw.bb33.i
    i32 3, label %sw.bb39.i
    i32 4, label %sw.bb48.i
    i32 5, label %sw.bb54.i
    i32 6, label %sw.bb60.i
    i32 7, label %sw.bb72.i
    i32 8, label %sw.bb78.i
  ]

if.end26.i.sw.epilog.thread76_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.bb.i:                                          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %pid.i = getelementptr inbounds %struct.mlx5_core_qp, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid.i, align 4
  %conv.i = sext i32 %22 to i64
  br label %sw.epilog.thread76

sw.bb28.i:                                        ; preds = %if.end26.i
  %23 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr27.i, align 8
  %shr.i = lshr i32 %24, 28
  %25 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr.i, label %sw.default.i.i [
    i32 0, label %sw.bb28.i.if.then_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 4, label %sw.bb4.i.i
    i32 5, label %sw.bb5.i.i
    i32 6, label %sw.bb6.i.i
    i32 7, label %sw.bb7.i.i
    i32 9, label %sw.bb8.i.i
  ]

sw.bb28.i.if.then_crit_edge:                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb1.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb2.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb3.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb4.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb5.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb6.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb7.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb8.i.i:                                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.default.i.i:                                   ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb33.i:                                        ; preds = %if.end26.i
  %26 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr27.i, align 8
  %shr35.i = lshr i32 %27, 16
  %trunc.i = trunc i32 %shr35.i to i8
  %28 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %trunc.i, label %sw.default.i113.i [
    i8 0, label %sw.bb33.i.if.then_crit_edge
    i8 1, label %sw.bb1.i105.i
    i8 2, label %sw.bb2.i106.i
    i8 3, label %sw.bb3.i107.i
    i8 4, label %sw.bb4.i108.i
    i8 7, label %sw.bb5.i109.i
    i8 8, label %sw.bb6.i110.i
    i8 9, label %sw.bb7.i111.i
    i8 10, label %sw.bb8.i112.i
    i8 11, label %sw.bb9.i.i
    i8 14, label %sw.bb10.i.i
    i8 13, label %sw.bb11.i.i
    i8 12, label %sw.bb12.i.i
  ]

sw.bb33.i.if.then_crit_edge:                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb1.i105.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb2.i106.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb3.i107.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb4.i108.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb5.i109.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb6.i110.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb7.i111.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb8.i112.i:                                    ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb9.i.i:                                       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb10.i.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb11.i.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb12.i.i:                                      ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.default.i113.i:                                ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb39.i:                                        ; preds = %if.end26.i
  %add.ptr40.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %29 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr40.i, align 8
  %shr41.i = lshr i32 %30, 29
  %31 = zext i32 %shr41.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %shr41.i, label %sw.default.i [
    i32 1, label %sw.bb39.i.sw.epilog.thread76_crit_edge
    i32 2, label %sw.bb44.i
    i32 3, label %sw.bb45.i
    i32 4, label %sw.bb46.i
    i32 5, label %sw.bb47.i
  ]

sw.bb39.i.sw.epilog.thread76_crit_edge:           ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.bb44.i:                                        ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.bb45.i:                                        ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.bb46.i:                                        ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.bb47.i:                                        ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.default.i:                                     ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

sw.bb48.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr49.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %32 = ptrtoint ptr %add.ptr49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr49.i, align 8
  %shr50.i = lshr i32 %33, 19
  %and51.i = and i32 %shr50.i, 15
  %shl52.i = shl nuw nsw i32 1, %and51.i
  %34 = zext i32 %shl52.i to i64
  br label %sw.epilog.thread76

sw.bb54.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr55.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %35 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr55.i, align 8
  %shr56.i = lshr i32 %36, 16
  %and57.i = and i32 %shr56.i, 7
  %shl58.i = shl nuw nsw i32 16, %and57.i
  %37 = zext i32 %shl58.i to i64
  br label %sw.epilog.thread76

sw.bb60.i:                                        ; preds = %if.end26.i
  %add.ptr61.i = getelementptr i8, ptr %call7.i.i.i, i32 32
  %38 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr61.i, align 8
  %40 = and i32 %39, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool64.not.i = icmp eq i32 %40, 0
  br i1 %tobool64.not.i, label %if.then65.i, label %sw.bb60.i.sw.epilog.thread76_crit_edge

sw.bb60.i.sw.epilog.thread76_crit_edge:           ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread76

if.then65.i:                                      ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr67.i = lshr i32 %39, 11
  %and68.i = and i32 %shr67.i, 15
  %shl69.i = shl nuw nsw i32 1, %and68.i
  %41 = zext i32 %shl69.i to i64
  br label %sw.epilog.thread76

sw.bb72.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr73.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %42 = ptrtoint ptr %add.ptr73.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr73.i, align 4
  %shr74.i = lshr i32 %43, 24
  %and75.i = and i32 %shr74.i, 31
  %add76.i = add nuw nsw i32 %and75.i, 12
  %conv77.i = zext i32 %add76.i to i64
  br label %sw.epilog.thread76

sw.bb78.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr79.i = getelementptr i8, ptr %call7.i.i.i, i32 44
  %44 = ptrtoint ptr %add.ptr79.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr79.i, align 4
  %and81.i = and i32 %45, 16777215
  %conv82.i = zext i32 %and81.i to i64
  br label %sw.epilog.thread76

sw.bb3:                                           ; preds = %entry
  %46 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr1, align 4
  %object5 = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %add.ptr1, i32 0, i32 1
  %48 = ptrtoint ptr %object5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %object5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i39) #9
  %50 = call ptr @memset(ptr %in.i39, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 272) #13
  %tobool.not.i41 = icmp eq ptr %call7.i.i.i40, null
  br i1 %tobool.not.i41, label %sw.bb3.eq_read_field.exit_crit_edge, label %do.body.i50

sw.bb3.eq_read_field.exit_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %eq_read_field.exit

do.body.i50:                                      ; preds = %sw.bb3
  %52 = ptrtoint ptr %in.i39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %in.i39, align 4
  %and.i42 = and i32 %53, 65535
  %or.i43 = or i32 %and.i42, 50528256
  store i32 %or.i43, ptr %in.i39, align 4
  %eqn.i = getelementptr inbounds %struct.mlx5_eq, ptr %49, i32 0, i32 8
  %54 = ptrtoint ptr %eqn.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %eqn.i, align 4
  %conv.i44 = zext i8 %55 to i32
  %add.ptr13.i45 = getelementptr inbounds i32, ptr %in.i39, i32 2
  %56 = ptrtoint ptr %add.ptr13.i45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr13.i45, align 4
  %and14.i46 = and i32 %57, -256
  %or17.i47 = or i32 %and14.i46, %conv.i44
  store i32 %or17.i47, ptr %add.ptr13.i45, align 4
  %call23.i48 = call i32 @mlx5_cmd_exec(ptr noundef %47, ptr noundef nonnull %in.i39, i32 noundef 16, ptr noundef nonnull %call7.i.i.i40, i32 noundef 272) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i48)
  %tobool24.not.i49 = icmp eq i32 %call23.i48, 0
  br i1 %tobool24.not.i49, label %if.end30.i, label %do.end28.i

do.end28.i:                                       ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %47, align 8
  %60 = call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i, align 8
  %pid.i51 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 68
  %64 = ptrtoint ptr %pid.i51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pid.i51, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 300, i32 noundef %65) #14
  br label %out46.i

if.end30.i:                                       ; preds = %do.body.i50
  %66 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %4, label %if.end30.i.out46.i_crit_edge [
    i32 0, label %sw.bb.i53
    i32 1, label %sw.bb36.i
    i32 2, label %sw.bb41.i
  ]

if.end30.i.out46.i_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out46.i

sw.bb.i53:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr32.i = getelementptr i8, ptr %call7.i.i.i40, i32 28
  %67 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr32.i, align 4
  %shr.i52 = lshr i32 %68, 24
  %and33.i = and i32 %shr.i52, 31
  %shl34.i = shl nuw i32 1, %and33.i
  %conv35.i = sext i32 %shl34.i to i64
  br label %out46.i

sw.bb36.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr37.i = getelementptr i8, ptr %call7.i.i.i40, i32 36
  %69 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr37.i, align 4
  %and39.i = and i32 %70, 4095
  %conv40.i = zext i32 %and39.i to i64
  br label %out46.i

sw.bb41.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr42.i = getelementptr i8, ptr %call7.i.i.i40, i32 40
  %71 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr42.i, align 8
  %shr43.i = lshr i32 %72, 24
  %and44.i = and i32 %shr43.i, 31
  %add.i = add nuw nsw i32 %and44.i, 12
  %conv45.i = zext i32 %add.i to i64
  br label %out46.i

out46.i:                                          ; preds = %sw.bb41.i, %sw.bb36.i, %sw.bb.i53, %if.end30.i.out46.i_crit_edge, %do.end28.i
  %param.0.i54 = phi i64 [ 0, %do.end28.i ], [ 0, %if.end30.i.out46.i_crit_edge ], [ %conv45.i, %sw.bb41.i ], [ %conv40.i, %sw.bb36.i ], [ %conv35.i, %sw.bb.i53 ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i40) #9
  br label %eq_read_field.exit

eq_read_field.exit:                               ; preds = %out46.i, %sw.bb3.eq_read_field.exit_crit_edge
  %retval.0.i55 = phi i64 [ %param.0.i54, %out46.i ], [ 0, %sw.bb3.eq_read_field.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i39) #9
  br label %if.else

sw.bb8:                                           ; preds = %entry
  %73 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr1, align 4
  %object10 = getelementptr inbounds %struct.mlx5_rsc_debug, ptr %add.ptr1, i32 0, i32 1
  %75 = ptrtoint ptr %object10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %object10, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #15
  %tobool.not.i56 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i56, label %sw.bb8.if.else_crit_edge, label %if.end.i

sw.bb8.if.else_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %sw.bb8
  %call1.i = tail call i32 @mlx5_core_query_cq(ptr noundef %74, ptr noundef %76, ptr noundef nonnull %call.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 8
  %79 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i.i57 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i57 to ptr
  %task.i58 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i58 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i58, align 8
  %pid.i59 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 68
  %83 = ptrtoint ptr %pid.i59 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %pid.i59, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 337, i32 noundef %84) #14
  br label %out15.i

if.end5.i:                                        ; preds = %if.end.i
  %85 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %4, label %if.end5.i.out15.i_crit_edge [
    i32 0, label %sw.bb.i61
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb10.i
  ]

if.end5.i.out15.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out15.i

sw.bb.i61:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %pid6.i = getelementptr inbounds %struct.mlx5_core_cq, ptr %76, i32 0, i32 14
  %86 = ptrtoint ptr %pid6.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pid6.i, align 4
  %conv.i60 = sext i32 %87 to i64
  br label %out15.i

sw.bb7.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr8.i = getelementptr i8, ptr %call.i.i.i, i32 28
  %88 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr8.i, align 4
  %shr.i62 = lshr i32 %89, 24
  %and.i63 = and i32 %shr.i62, 31
  %shl.i = shl nuw i32 1, %and.i63
  %conv9.i = sext i32 %shl.i to i64
  br label %out15.i

sw.bb10.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr11.i = getelementptr i8, ptr %call.i.i.i, i32 40
  %90 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr11.i, align 4
  %shr12.i = lshr i32 %91, 24
  %and13.i = and i32 %shr12.i, 31
  %conv14.i = zext i32 %and13.i to i64
  br label %out15.i

out15.i:                                          ; preds = %sw.bb10.i, %sw.bb7.i, %sw.bb.i61, %if.end5.i.out15.i_crit_edge, %do.end.i
  %param.0.i64 = phi i64 [ 0, %do.end.i ], [ 0, %if.end5.i.out15.i_crit_edge ], [ %conv14.i, %sw.bb10.i ], [ %conv9.i, %sw.bb7.i ], [ %conv.i60, %sw.bb.i61 ]
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #9
  br label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr1, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %96 = tail call i32 @llvm.read_register.i32(metadata !138) #9
  %and.i66 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i66 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 68
  %100 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 385, i32 noundef %101, i32 noundef %6) #14
  br label %cleanup

sw.epilog.thread76:                               ; preds = %sw.bb78.i, %sw.bb72.i, %if.then65.i, %sw.bb60.i.sw.epilog.thread76_crit_edge, %sw.bb54.i, %sw.bb48.i, %sw.default.i, %sw.bb47.i, %sw.bb46.i, %sw.bb45.i, %sw.bb44.i, %sw.bb39.i.sw.epilog.thread76_crit_edge, %sw.bb.i, %if.end26.i.sw.epilog.thread76_crit_edge, %do.body.i.sw.epilog.thread76_crit_edge
  %param.0.i.ph = phi i64 [ 256, %sw.bb39.i.sw.epilog.thread76_crit_edge ], [ %conv.i, %sw.bb.i ], [ 512, %sw.bb44.i ], [ 1024, %sw.bb45.i ], [ 2048, %sw.bb46.i ], [ 4096, %sw.bb47.i ], [ 0, %sw.default.i ], [ %34, %sw.bb48.i ], [ %37, %sw.bb54.i ], [ %41, %if.then65.i ], [ 0, %sw.bb60.i.sw.epilog.thread76_crit_edge ], [ %conv77.i, %sw.bb72.i ], [ %conv82.i, %sw.bb78.i ], [ 0, %if.end26.i.sw.epilog.thread76_crit_edge ], [ 0, %do.body.i.sw.epilog.thread76_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  br label %if.else

if.then:                                          ; preds = %sw.default.i113.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i112.i, %sw.bb7.i111.i, %sw.bb6.i110.i, %sw.bb5.i109.i, %sw.bb4.i108.i, %sw.bb3.i107.i, %sw.bb2.i106.i, %sw.bb1.i105.i, %sw.bb33.i.if.then_crit_edge, %sw.default.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb28.i.if.then_crit_edge
  %param.0.i.in = phi i32 [ ptrtoint (ptr @.str.26 to i32), %sw.default.i.i ], [ ptrtoint (ptr @.str.25 to i32), %sw.bb8.i.i ], [ ptrtoint (ptr @.str.24 to i32), %sw.bb7.i.i ], [ ptrtoint (ptr @.str.23 to i32), %sw.bb6.i.i ], [ ptrtoint (ptr @.str.22 to i32), %sw.bb5.i.i ], [ ptrtoint (ptr @.str.21 to i32), %sw.bb4.i.i ], [ ptrtoint (ptr @.str.20 to i32), %sw.bb3.i.i ], [ ptrtoint (ptr @.str.19 to i32), %sw.bb2.i.i ], [ ptrtoint (ptr @.str.18 to i32), %sw.bb1.i.i ], [ ptrtoint (ptr @.str.17 to i32), %sw.bb28.i.if.then_crit_edge ], [ ptrtoint (ptr @.str.40 to i32), %sw.default.i113.i ], [ ptrtoint (ptr @.str.39 to i32), %sw.bb12.i.i ], [ ptrtoint (ptr @.str.38 to i32), %sw.bb11.i.i ], [ ptrtoint (ptr @.str.37 to i32), %sw.bb10.i.i ], [ ptrtoint (ptr @.str.36 to i32), %sw.bb9.i.i ], [ ptrtoint (ptr @.str.35 to i32), %sw.bb8.i112.i ], [ ptrtoint (ptr @.str.34 to i32), %sw.bb7.i111.i ], [ ptrtoint (ptr @.str.33 to i32), %sw.bb6.i110.i ], [ ptrtoint (ptr @.str.32 to i32), %sw.bb5.i109.i ], [ ptrtoint (ptr @.str.31 to i32), %sw.bb4.i108.i ], [ ptrtoint (ptr @.str.30 to i32), %sw.bb3.i107.i ], [ ptrtoint (ptr @.str.29 to i32), %sw.bb2.i106.i ], [ ptrtoint (ptr @.str.28 to i32), %sw.bb1.i105.i ], [ ptrtoint (ptr @.str.27 to i32), %sw.bb33.i.if.then_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  %102 = inttoptr i32 %param.0.i.in to ptr
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 18, ptr noundef nonnull @.str.15, ptr noundef nonnull %102)
  br label %if.end

if.else:                                          ; preds = %sw.epilog.thread76, %out15.i, %sw.bb8.if.else_crit_edge, %eq_read_field.exit, %sw.epilog.thread71
  %field.070 = phi i64 [ 0, %sw.epilog.thread71 ], [ %param.0.i.ph, %sw.epilog.thread76 ], [ 0, %sw.bb8.if.else_crit_edge ], [ %param.0.i64, %out15.i ], [ %retval.0.i55, %eq_read_field.exit ]
  %call18 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 18, ptr noundef nonnull @.str.16, i64 noundef %field.070)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call16, %if.then ], [ %call18, %if.else ]
  %call20 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %count, ptr noundef %pos, ptr noundef nonnull %tbuf, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call20, %if.end ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %tbuf) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_cq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__ksymtab_mlx5_debugfs_root, !1, !"__ksymtab_mlx5_debugfs_root", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 90, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 94, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 104, i32 44}
!6 = !{ptr @__ksymtab_mlx5_qp_debugfs_init, !7, !"__ksymtab_mlx5_qp_debugfs_init", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 106, i32 1}
!8 = !{ptr @__ksymtab_mlx5_qp_debugfs_cleanup, !9, !"__ksymtab_mlx5_qp_debugfs_cleanup", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 112, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 116, i32 44}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 172, i32 28}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 177, i32 21}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 180, i32 24}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 182, i32 23}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 194, i32 44}
!22 = !{ptr @__ksymtab_mlx5_debug_qp_add, !23, !"__ksymtab_mlx5_debug_qp_add", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 452, i32 1}
!24 = !{ptr @__ksymtab_mlx5_debug_qp_remove, !25, !"__ksymtab_mlx5_debug_qp_remove", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 462, i32 1}
!26 = !{ptr @mlx5_debugfs_root, !27, !"mlx5_debugfs_root", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 89, i32 16}
!28 = !{ptr @stats_fops, !29, !"stats_fops", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 157, i32 37}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 137, i32 37}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 418, i32 16}
!34 = !{ptr @fops, !35, !"fops", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 397, i32 37}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 385, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dbg_read._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @dbg_read._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 390, i32 38}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 392, i32 38}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/mlx5/qp.h", i32 529, i32 9}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/mlx5/qp.h", i32 531, i32 9}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/mlx5/qp.h", i32 533, i32 9}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/mlx5/qp.h", i32 535, i32 9}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/mlx5/qp.h", i32 537, i32 9}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/mlx5/qp.h", i32 539, i32 9}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/mlx5/qp.h", i32 541, i32 9}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/mlx5/qp.h", i32 543, i32 9}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/mlx5/qp.h", i32 545, i32 9}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/mlx5/qp.h", i32 546, i32 18}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/mlx5/qp.h", i32 508, i32 29}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/mlx5/qp.h", i32 509, i32 29}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/mlx5/qp.h", i32 510, i32 29}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/mlx5/qp.h", i32 511, i32 30}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/mlx5/qp.h", i32 512, i32 30}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/mlx5/qp.h", i32 513, i32 30}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/mlx5/qp.h", i32 514, i32 30}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/mlx5/qp.h", i32 515, i32 40}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/mlx5/qp.h", i32 516, i32 35}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/mlx5/qp.h", i32 517, i32 34}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/mlx5/qp.h", i32 518, i32 35}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/mlx5/qp.h", i32 519, i32 35}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/mlx5/qp.h", i32 520, i32 34}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../include/linux/mlx5/qp.h", i32 521, i32 18}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 300, i32 3}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @eq_read_field._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @eq_read_field._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 337, i32 3}
!103 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @cq_read_field._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @cq_read_field._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 54, i32 13}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 55, i32 15}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 56, i32 15}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 57, i32 13}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 58, i32 16}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 59, i32 17}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 60, i32 16}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 61, i32 19}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 62, i32 14}
!124 = distinct !{null, !125, !"qp_fields", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 53, i32 14}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 72, i32 18}
!128 = !{ptr @.str.55, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 73, i32 14}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 74, i32 19}
!132 = distinct !{null, !133, !"eq_fields", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 71, i32 14}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 85, i32 18}
!136 = distinct !{null, !137, !"cq_fields", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/debugfs.c", i32 83, i32 14}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
