; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/rl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/rl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlx5_rl_is_in_range\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rl_is_in_range\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rl_is_in_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rl_is_in_range:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rl_is_in_range\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rl_is_in_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rl_are_equal\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rl_are_equal\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rl_are_equal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rl_are_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rl_are_equal\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rl_are_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rl_add_rate_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rl_add_rate_raw\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rl_add_rate_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rl_add_rate_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rl_add_rate_raw\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rl_add_rate_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rl_remove_rate_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rl_remove_rate_raw\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rl_remove_rate_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rl_remove_rate_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rl_remove_rate_raw\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rl_remove_rate_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rl_add_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rl_add_rate\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rl_add_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rl_add_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rl_add_rate\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rl_add_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_rl_remove_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_rl_remove_rate\09\09\09\09"
module asm "\09.long\09__crc_mlx5_rl_remove_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_rl_remove_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_rl_remove_rate\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_rl_remove_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_rate_limit = type { i32, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_rl_entry = type { [48 x i8], i64, i16, i16, i8 }

@__kstrtab_mlx5_rl_is_in_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rl_is_in_range = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rl_is_in_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rl_is_in_range to i32), ptr @__kstrtab_mlx5_rl_is_in_range, ptr @__kstrtabns_mlx5_rl_is_in_range }, section "___ksymtab+mlx5_rl_is_in_range", align 4
@__kstrtab_mlx5_rl_are_equal = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rl_are_equal = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rl_are_equal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rl_are_equal to i32), ptr @__kstrtab_mlx5_rl_are_equal, ptr @__kstrtabns_mlx5_rl_are_equal }, section "___ksymtab+mlx5_rl_are_equal", align 4
@mlx5_rl_add_rate_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s:%d:(pid %d): Invalid rate: %u, should be %u to %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_rl_add_rate_raw\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/rl.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_rl_add_rate_raw._entry_ptr = internal global ptr @mlx5_rl_add_rate_raw._entry, section ".printk_index", align 4
@mlx5_rl_add_rate_raw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 267, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s:%d:(pid %d): Max number of %u rates reached\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_rl_add_rate_raw._entry_ptr.7 = internal global ptr @mlx5_rl_add_rate_raw._entry.5, section ".printk_index", align 4
@mlx5_rl_add_rate_raw._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"%s:%d:(pid %d): Failed configuring rate limit(err %d): rate %u, max_burst_sz %u, typical_pkt_sz %u\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_rl_add_rate_raw._entry_ptr.10 = internal global ptr @mlx5_rl_add_rate_raw._entry.8, section ".printk_index", align 4
@__kstrtab_mlx5_rl_add_rate_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rl_add_rate_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rl_add_rate_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rl_add_rate_raw to i32), ptr @__kstrtab_mlx5_rl_add_rate_raw, ptr @__kstrtabns_mlx5_rl_add_rate_raw }, section "___ksymtab+mlx5_rl_add_rate_raw", align 4
@__kstrtab_mlx5_rl_remove_rate_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rl_remove_rate_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rl_remove_rate_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rl_remove_rate_raw to i32), ptr @__kstrtab_mlx5_rl_remove_rate_raw, ptr @__kstrtabns_mlx5_rl_remove_rate_raw }, section "___ksymtab+mlx5_rl_remove_rate_raw", align 4
@__kstrtab_mlx5_rl_add_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rl_add_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rl_add_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rl_add_rate to i32), ptr @__kstrtab_mlx5_rl_add_rate, ptr @__kstrtabns_mlx5_rl_add_rate }, section "___ksymtab+mlx5_rl_add_rate", align 4
@mlx5_rl_remove_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 356, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s:%d:(pid %d): Rate %u, max_burst_sz %u typical_pkt_sz %u are not configured\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx5_rl_remove_rate\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mlx5_rl_remove_rate._entry_ptr = internal global ptr @mlx5_rl_remove_rate._entry, section ".printk_index", align 4
@__kstrtab_mlx5_rl_remove_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_rl_remove_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_rl_remove_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_rl_remove_rate to i32), ptr @__kstrtab_mlx5_rl_remove_rate, ptr @__kstrtabns_mlx5_rl_remove_rate }, section "___ksymtab+mlx5_rl_remove_rate", align 4
@mlx5_init_rl_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&table->rl_lock\00", [16 x i8] zeroinitializer }, align 32
@mlx5_init_rl_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 385, ptr @.str.17, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Rate limit: %u rates are supported, range: %uMbps to %uMbps\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5_init_rl_table\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_init_rl_table._entry_ptr = internal global ptr @mlx5_init_rl_table._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 254, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 266, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 277, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 355, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 375, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [48 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/rl.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 382, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_mlx5_rl_add_rate, ptr @__ksymtab_mlx5_rl_add_rate_raw, ptr @__ksymtab_mlx5_rl_are_equal, ptr @__ksymtab_mlx5_rl_is_in_range, ptr @__ksymtab_mlx5_rl_remove_rate, ptr @__ksymtab_mlx5_rl_remove_rate_raw, ptr @mlx5_init_rl_table._entry, ptr @mlx5_init_rl_table._entry_ptr, ptr @mlx5_rl_add_rate_raw._entry, ptr @mlx5_rl_add_rate_raw._entry.5, ptr @mlx5_rl_add_rate_raw._entry.8, ptr @mlx5_rl_add_rate_raw._entry_ptr, ptr @mlx5_rl_add_rate_raw._entry_ptr.10, ptr @mlx5_rl_add_rate_raw._entry_ptr.7, ptr @mlx5_rl_remove_rate._entry, ptr @mlx5_rl_remove_rate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mlx5_init_rl_table.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rl_add_rate_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rl_add_rate_raw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rl_add_rate_raw._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rl_remove_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_rl_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_init_rl_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_create_scheduling_element_cmd(ptr noundef %dev, i8 noundef zeroext %hierarchy, ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %element_id) local_unnamed_addr #0 align 64 {
entry:
  %out = alloca [32 x i32], align 4
  %in = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %out) #8
  %0 = call ptr @memset(ptr %out, i32 0, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in) #8
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 124)
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 32
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 125960192, ptr %in, align 4
  %conv = zext i8 %hierarchy to i32
  %add.ptr15 = getelementptr inbounds i32, ptr %in, i32 2
  %shl18 = shl nuw i32 %conv, 24
  %4 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl18, ptr %add.ptr15, align 4
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %ctx, i32 64)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %out, i32 noundef 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr27 = getelementptr inbounds i32, ptr %out, i32 4
  %6 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr27, align 4
  %8 = ptrtoint ptr %element_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %element_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %out) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_modify_scheduling_element_cmd(ptr noundef %dev, i8 noundef zeroext %hierarchy, ptr nocapture noundef readonly %ctx, i32 noundef %element_id, i32 noundef %modify_bitmask) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [32 x i32], align 4
  %_out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 124)
  %add.ptr = getelementptr inbounds i8, ptr %in, i32 32
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 126156800, ptr %in, align 4
  %add.ptr15 = getelementptr inbounds i32, ptr %in, i32 3
  %3 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %element_id, ptr %add.ptr15, align 4
  %add.ptr30 = getelementptr inbounds i32, ptr %in, i32 5
  %4 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %modify_bitmask, ptr %add.ptr30, align 4
  %conv = zext i8 %hierarchy to i32
  %add.ptr45 = getelementptr inbounds i32, ptr %in, i32 2
  %shl48 = shl nuw i32 %conv, 24
  %5 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl48, ptr %add.ptr45, align 4
  %6 = call ptr @memcpy(ptr %add.ptr, ptr %ctx, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_out) #8
  %7 = call ptr @memset(ptr %_out, i32 0, i32 64)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 128, ptr noundef nonnull %_out, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %dev, i8 noundef zeroext %hierarchy, i32 noundef %element_id) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [16 x i32], align 4
  %_out = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in) #8
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 60)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 126025728, ptr %in, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %in, i32 3
  %3 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %element_id, ptr %add.ptr13, align 4
  %conv = zext i8 %hierarchy to i32
  %add.ptr28 = getelementptr inbounds i32, ptr %in, i32 2
  %shl31 = shl nuw i32 %conv, 24
  %4 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl31, ptr %add.ptr28, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_out) #8
  %5 = call ptr @memset(ptr %_out, i32 0, i32 64)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 64, ptr noundef nonnull %_out, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_out) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in) #8
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_rl_is_in_range(ptr nocapture noundef readonly %dev, i32 noundef %rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rate = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 2
  %0 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rate, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not = icmp ult i32 %1, %rate
  br i1 %cmp.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %min_rate = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 3
  %2 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp1 = icmp ule i32 %3, %rate
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp1, %land.rhs ]
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_rl_are_equal(ptr nocapture noundef readonly %rl_0, ptr nocapture noundef readonly %rl_1) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rl_0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rl_0, align 4
  %2 = ptrtoint ptr %rl_1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rl_1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %max_burst_sz = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl_0, i32 0, i32 1
  %4 = ptrtoint ptr %max_burst_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_burst_sz, align 4
  %max_burst_sz2 = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl_1, i32 0, i32 1
  %6 = ptrtoint ptr %max_burst_sz2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_burst_sz2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %typical_pkt_sz = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl_0, i32 0, i32 2
  %8 = ptrtoint ptr %typical_pkt_sz to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %typical_pkt_sz, align 4
  %typical_pkt_sz4 = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl_1, i32 0, i32 2
  %10 = ptrtoint ptr %typical_pkt_sz4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %typical_pkt_sz4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp6 = icmp eq i16 %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp6, %land.rhs ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_rl_add_rate_raw(ptr noundef %dev, ptr nocapture noundef readonly %rl_in, i16 noundef zeroext %uid, i1 noundef zeroext %dedicated_entry, ptr nocapture noundef writeonly %index) #0 align 64 {
entry:
  %in.i = alloca [16 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36
  %max_size = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 1
  %0 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rl_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rl_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %max_rate.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 2
  %4 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_rate.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i = icmp ult i32 %5, %3
  br i1 %cmp.not.i, label %lor.lhs.false.do.end_crit_edge, label %mlx5_rl_is_in_range.exit

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

mlx5_rl_is_in_range.exit:                         ; preds = %lor.lhs.false
  %min_rate.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 3
  %6 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_rate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp1.i.not = icmp ugt i32 %7, %3
  br i1 %cmp1.i.not, label %mlx5_rl_is_in_range.exit.do.end_crit_edge, label %if.end5

mlx5_rl_is_in_range.exit.do.end_crit_edge:        ; preds = %mlx5_rl_is_in_range.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %mlx5_rl_is_in_range.exit.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %10 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 68
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 8
  %min_rate = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 3
  %16 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_rate, align 4
  %max_rate = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 2
  %18 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_rate, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef %15, i32 noundef %3, i32 noundef %17, i32 noundef %19) #11
  br label %cleanup

if.end5:                                          ; preds = %mlx5_rl_is_in_range.exit
  tail call void @mutex_lock_nested(ptr noundef %rl_table, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %land.rhs.i86

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i86:                                     ; preds = %if.end5
  %dep_map.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i85 = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i85, label %do.end.i, label %land.rhs.i86.if.end.i_crit_edge, !prof !53

land.rhs.i86.if.end.i_crit_edge:                  ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 182, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i86.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  %rl_entry.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 4
  %21 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rl_entry.i, align 8
  %tobool24.not.i = icmp eq ptr %22, null
  br i1 %tobool24.not.i, label %if.end7.i.i.i, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end7.i.i.i:                                    ; preds = %if.end.i
  %23 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_size, align 4
  %conv.i = zext i16 %24 to i32
  %25 = shl nuw nsw i32 %conv.i, 6
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #12
  %26 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i.i, ptr %rl_entry.i, align 8
  %tobool30.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool30.not.i, label %if.end7.i.i.i.out_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.out_crit_edge:                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %27 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp3557.not.i = icmp eq i16 %28, 0
  br i1 %cmp3557.not.i, label %for.cond.preheader.i.if.end9_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end9_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.058.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.058.i, 1
  %conv37.i = trunc i32 %add.i to i16
  %29 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rl_entry.i, align 8
  %index.i = getelementptr %struct.mlx5_rl_entry, ptr %30, i32 %i.058.i, i32 2
  %31 = ptrtoint ptr %index.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv37.i, ptr %index.i, align 8
  %32 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %max_size, align 4
  %conv34.i = zext i16 %33 to i32
  %cmp35.i = icmp ult i32 %add.i, %conv34.i
  br i1 %cmp35.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end9_crit_edge

for.body.i.if.end9_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end9:                                          ; preds = %for.body.i.if.end9_crit_edge, %for.cond.preheader.i.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %refcount.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 5
  %34 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %refcount.i, align 8
  %inc41.i = add i64 %35, 1
  store i64 %inc41.i, ptr %refcount.i, align 8
  %call11 = tail call fastcc ptr @find_rl_entry(ptr noundef %rl_table, ptr noundef %rl_in, i16 noundef zeroext %uid, i1 noundef zeroext %dedicated_entry)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end22

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %38 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i87 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i87 to ptr
  %task19 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task19, align 8
  %pid20 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 68
  %42 = ptrtoint ptr %pid20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid20, align 8
  %44 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_size, align 4
  %conv = zext i16 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 267, i32 noundef %43, i32 noundef %conv) #11
  br label %rl_err

if.end22:                                         ; preds = %if.end9
  %refcount = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call11, i32 0, i32 1
  %46 = ptrtoint ptr %refcount to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool23.not = icmp eq i64 %47, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end45_crit_edge

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then24:                                        ; preds = %if.end22
  %48 = call ptr @memcpy(ptr %call11, ptr %rl_in, i32 48)
  %uid25 = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call11, i32 0, i32 3
  %49 = ptrtoint ptr %uid25 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %uid, ptr %uid25, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i) #8
  %50 = getelementptr inbounds i8, ptr %in.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 12)
  %52 = ptrtoint ptr %uid25 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %uid25, align 2
  %conv.i88 = zext i16 %53 to i32
  %or20.i = or i32 %conv.i88, 125829120
  %54 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or20.i, ptr %in.i, align 4
  %index.i89 = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call11, i32 0, i32 2
  %55 = ptrtoint ptr %index.i89 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %index.i89, align 8
  %conv27.i = zext i16 %56 to i32
  %add.ptr32.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %57 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv27.i, ptr %add.ptr32.i, align 4
  %add.ptr.i = getelementptr inbounds i8, ptr %in.i, i32 16
  %58 = call ptr @memcpy(ptr %add.ptr.i, ptr %call11, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #8
  %59 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 64, ptr noundef nonnull %_out.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end42, label %do.end31

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %62 = call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i91 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i91 to ptr
  %task34 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task34 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task34, align 8
  %pid35 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 68
  %66 = ptrtoint ptr %pid35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pid35, align 8
  %add.ptr36 = getelementptr i32, ptr %rl_in, i32 1
  %68 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr36, align 4
  %add.ptr39 = getelementptr i32, ptr %rl_in, i32 2
  %70 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr39, align 4
  %and41 = and i32 %71, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef %67, i32 noundef %call.i, i32 noundef %3, i32 noundef %69, i32 noundef %and41) #11
  br label %rl_err

if.end42:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %dedicated = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call11, i32 0, i32 4
  %72 = ptrtoint ptr %dedicated to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %dedicated, align 4
  %bf.shl = select i1 %dedicated_entry, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %dedicated, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.end22.if.end45_crit_edge
  %73 = ptrtoint ptr %refcount to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %refcount, align 8
  %inc.i = add i64 %74, 1
  store i64 %inc.i, ptr %refcount, align 8
  %index46 = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call11, i32 0, i32 2
  %75 = ptrtoint ptr %index46 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %index46, align 8
  %77 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %index, align 2
  call void @mutex_unlock(ptr noundef %rl_table) #8
  br label %cleanup

rl_err:                                           ; preds = %do.end31, %do.end16
  %err.0 = phi i32 [ %call.i, %do.end31 ], [ -28, %do.end16 ]
  call fastcc void @mlx5_rl_table_put(ptr noundef %rl_table)
  br label %out

out:                                              ; preds = %rl_err, %if.end7.i.i.i.out_crit_edge
  %err.1 = phi i32 [ %err.0, %rl_err ], [ -12, %if.end7.i.i.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %rl_table) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end45, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ 0, %if.end45 ], [ -22, %do.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_rl_entry(ptr noundef %table, ptr nocapture noundef readonly %rl_in, i16 noundef zeroext %uid, i1 noundef zeroext %dedicated) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %table, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !53

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rl_entry = getelementptr inbounds %struct.mlx5_rl_table, ptr %table, i32 0, i32 4
  %1 = ptrtoint ptr %rl_entry to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rl_entry, align 8
  %tobool25.not = icmp eq ptr %2, null
  br i1 %tobool25.not, label %do.end43, label %if.end.if.end49_crit_edge, !prof !53

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 121, i32 noundef 9, ptr noundef null) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end.if.end49_crit_edge
  %max_size = getelementptr inbounds %struct.mlx5_rl_table, ptr %table, i32 0, i32 1
  %3 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_size, align 4
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp57119.not = icmp eq i16 %4, 0
  br i1 %cmp57119.not, label %if.end49.cleanup_crit_edge, label %for.body.preheader

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end49
  %5 = ptrtoint ptr %rl_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rl_entry, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ret_entry.0123 = phi ptr [ %ret_entry.1, %for.inc.for.body_crit_edge ], [ null, %for.body.preheader ]
  %i.0121 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %empty_found.0.off0120 = phi i1 [ %empty_found.1.off0, %for.inc.for.body_crit_edge ], [ false, %for.body.preheader ]
  br i1 %dedicated, label %if.then60, label %if.end67

if.then60:                                        ; preds = %for.body
  %refcount = getelementptr %struct.mlx5_rl_entry, ptr %6, i32 %i.0121, i32 1
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool62.not = icmp eq i64 %8, 0
  br i1 %tobool62.not, label %if.then63, label %if.then60.for.inc_crit_edge

if.then60.for.inc_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then63:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.mlx5_rl_entry, ptr %6, i32 %i.0121
  br label %cleanup

if.end67:                                         ; preds = %for.body
  %arrayidx69 = getelementptr %struct.mlx5_rl_entry, ptr %6, i32 %i.0121
  %refcount70 = getelementptr %struct.mlx5_rl_entry, ptr %6, i32 %i.0121, i32 1
  %9 = ptrtoint ptr %refcount70 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %refcount70, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool71.not = icmp eq i64 %10, 0
  br i1 %tobool71.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end67
  %dedicated75 = getelementptr %struct.mlx5_rl_entry, ptr %6, i32 %i.0121, i32 4
  %11 = ptrtoint ptr %dedicated75 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %dedicated75, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool76.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool76.not, label %if.end78, label %if.then72.for.inc_crit_edge

if.then72.for.inc_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end78:                                         ; preds = %if.then72
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(48) %arrayidx69, ptr noundef dereferenceable(48) %rl_in, i32 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %mlx5_rl_are_equal_raw.exit, label %if.end78.for.inc_crit_edge

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

mlx5_rl_are_equal_raw.exit:                       ; preds = %if.end78
  %uid2.i = getelementptr %struct.mlx5_rl_entry, ptr %6, i32 %i.0121, i32 3
  %12 = ptrtoint ptr %uid2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %uid2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %uid)
  %cmp.i = icmp eq i16 %13, %uid
  br i1 %cmp.i, label %mlx5_rl_are_equal_raw.exit.cleanup_crit_edge, label %mlx5_rl_are_equal_raw.exit.for.inc_crit_edge

mlx5_rl_are_equal_raw.exit.for.inc_crit_edge:     ; preds = %mlx5_rl_are_equal_raw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

mlx5_rl_are_equal_raw.exit.cleanup_crit_edge:     ; preds = %mlx5_rl_are_equal_raw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select117 = select i1 %empty_found.0.off0120, ptr %ret_entry.0123, ptr %arrayidx69
  br label %for.inc

for.inc:                                          ; preds = %if.else, %mlx5_rl_are_equal_raw.exit.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %if.then72.for.inc_crit_edge, %if.then60.for.inc_crit_edge
  %empty_found.1.off0 = phi i1 [ %empty_found.0.off0120, %if.then60.for.inc_crit_edge ], [ %empty_found.0.off0120, %if.then72.for.inc_crit_edge ], [ %empty_found.0.off0120, %mlx5_rl_are_equal_raw.exit.for.inc_crit_edge ], [ true, %if.else ], [ %empty_found.0.off0120, %if.end78.for.inc_crit_edge ]
  %ret_entry.1 = phi ptr [ %ret_entry.0123, %if.then60.for.inc_crit_edge ], [ %ret_entry.0123, %if.then72.for.inc_crit_edge ], [ %ret_entry.0123, %mlx5_rl_are_equal_raw.exit.for.inc_crit_edge ], [ %spec.select117, %if.else ], [ %ret_entry.0123, %if.end78.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0121, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mlx5_rl_are_equal_raw.exit.cleanup_crit_edge, %if.then63, %if.end49.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.then63 ], [ null, %if.end49.cleanup_crit_edge ], [ %ret_entry.1, %for.inc.cleanup_crit_edge ], [ %arrayidx69, %mlx5_rl_are_equal_raw.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_rl_table_put(ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %table, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !53

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %refcount = getelementptr inbounds %struct.mlx5_rl_table, ptr %table, i32 0, i32 5
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %refcount, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool24.not = icmp eq i64 %dec, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rl_entry = getelementptr inbounds %struct.mlx5_rl_table, ptr %table, i32 0, i32 4
  %3 = ptrtoint ptr %rl_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rl_entry, align 8
  tail call void @kfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %rl_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %rl_entry, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rl_remove_rate_raw(ptr noundef %dev, i16 noundef zeroext %index) #0 align 64 {
entry:
  %in.i.i = alloca [16 x i32], align 4
  %_out.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36
  tail call void @mutex_lock_nested(ptr noundef %rl_table, i32 noundef 0) #8
  %rl_entry = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 4
  %0 = ptrtoint ptr %rl_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rl_entry, align 8
  %conv = zext i16 %index to i32
  %sub = add nsw i32 %conv, -1
  %refcount.i = getelementptr %struct.mlx5_rl_entry, ptr %1, i32 %sub, i32 1
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %refcount.i, align 8
  %dec.i = add i64 %3, -1
  store i64 %dec.i, ptr %refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.mlx5_rl_entry_put.exit_crit_edge

entry.mlx5_rl_entry_put.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rl_entry_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i.i) #8
  %4 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 60)
  %uid.i.i = getelementptr %struct.mlx5_rl_entry, ptr %1, i32 %sub, i32 3
  %6 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %uid.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %or20.i.i = or i32 %conv.i.i, 125829120
  %8 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or20.i.i, ptr %in.i.i, align 4
  %index.i.i = getelementptr %struct.mlx5_rl_entry, ptr %1, i32 %sub, i32 2
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %index.i.i, align 8
  %conv27.i.i = zext i16 %10 to i32
  %add.ptr32.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %11 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv27.i.i, ptr %add.ptr32.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i) #8
  %12 = call ptr @memset(ptr %_out.i.i, i32 0, i32 16)
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i.i, i32 noundef 64, ptr noundef nonnull %_out.i.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i.i) #8
  br label %mlx5_rl_entry_put.exit

mlx5_rl_entry_put.exit:                           ; preds = %if.then.i, %entry.mlx5_rl_entry_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i7 = icmp eq i32 %13, 0
  br i1 %tobool.not.i7, label %mlx5_rl_entry_put.exit.if.end.i_crit_edge, label %land.rhs.i

mlx5_rl_entry_put.exit.if.end.i_crit_edge:        ; preds = %mlx5_rl_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %mlx5_rl_entry_put.exit
  %dep_map.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 0, i32 5
  %call.i.i8 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %cmp.not.i = icmp eq i32 %call.i.i8, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !53

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %mlx5_rl_entry_put.exit.if.end.i_crit_edge
  %refcount.i9 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 5
  %14 = ptrtoint ptr %refcount.i9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %refcount.i9, align 8
  %dec.i10 = add i64 %15, -1
  store i64 %dec.i10, ptr %refcount.i9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i10)
  %tobool24.not.i = icmp eq i64 %dec.i10, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end.i.mlx5_rl_table_put.exit_crit_edge

if.end.i.mlx5_rl_table_put.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rl_table_put.exit

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %rl_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rl_entry, align 8
  call void @kfree(ptr noundef %17) #8
  %18 = ptrtoint ptr %rl_entry to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rl_entry, align 8
  br label %mlx5_rl_table_put.exit

mlx5_rl_table_put.exit:                           ; preds = %if.end26.i, %if.end.i.mlx5_rl_table_put.exit_crit_edge
  call void @mutex_unlock(ptr noundef %rl_table) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_rl_add_rate(ptr noundef %dev, ptr nocapture noundef writeonly %index, ptr nocapture noundef readonly %rl) #0 align 64 {
entry:
  %rl_raw = alloca [48 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rl_raw) #8
  %0 = getelementptr inbounds i8, ptr %rl_raw, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 36)
  %2 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rl, align 4
  %4 = ptrtoint ptr %rl_raw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rl_raw, align 4
  %max_burst_sz = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl, i32 0, i32 1
  %5 = ptrtoint ptr %max_burst_sz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_burst_sz, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %rl_raw, i32 1
  %7 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr13, align 4
  %typical_pkt_sz = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl, i32 0, i32 2
  %8 = ptrtoint ptr %typical_pkt_sz to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %typical_pkt_sz, align 4
  %conv = zext i16 %9 to i32
  %add.ptr28 = getelementptr inbounds i32, ptr %rl_raw, i32 2
  %10 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %add.ptr28, align 4
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = shl i32 %14, 11
  %sext = ashr i32 %15, 31
  %conv41 = trunc i32 %sext to i16
  %call = call i32 @mlx5_rl_add_rate_raw(ptr noundef %dev, ptr noundef nonnull %rl_raw, i16 noundef zeroext %conv41, i1 noundef zeroext false, ptr noundef %index)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rl_raw) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_rl_remove_rate(ptr noundef %dev, ptr nocapture noundef readonly %rl) #0 align 64 {
entry:
  %in.i.i = alloca [16 x i32], align 4
  %_out.i.i = alloca [4 x i32], align 4
  %rl_raw = alloca [48 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rl_raw) #8
  %0 = getelementptr inbounds i8, ptr %rl_raw, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %rl_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36
  %2 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %4 = ptrtoint ptr %rl_raw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rl_raw, align 4
  %max_burst_sz = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl, i32 0, i32 1
  %5 = ptrtoint ptr %max_burst_sz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_burst_sz, align 4
  %add.ptr15 = getelementptr inbounds i32, ptr %rl_raw, i32 1
  %7 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr15, align 4
  %typical_pkt_sz = getelementptr inbounds %struct.mlx5_rate_limit, ptr %rl, i32 0, i32 2
  %8 = ptrtoint ptr %typical_pkt_sz to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %typical_pkt_sz, align 4
  %conv = zext i16 %9 to i32
  %add.ptr30 = getelementptr inbounds i32, ptr %rl_raw, i32 2
  %10 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr30, align 4
  %and31 = and i32 %11, -65536
  %or34 = or i32 %and31, %conv
  store i32 %or34, ptr %add.ptr30, align 4
  tail call void @mutex_lock_nested(ptr noundef %rl_table, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = shl i32 %15, 11
  %sext = ashr i32 %16, 31
  %conv43 = trunc i32 %sext to i16
  %call = call fastcc ptr @find_rl_entry(ptr noundef %rl_table, ptr noundef nonnull %rl_raw, i16 noundef zeroext %conv43, i1 noundef zeroext false)
  %tobool44.not = icmp eq ptr %call, null
  br i1 %tobool44.not, label %do.body.do.end49_crit_edge, label %lor.lhs.false

do.body.do.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

lor.lhs.false:                                    ; preds = %do.body
  %refcount = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %refcount to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool45.not = icmp eq i64 %18, 0
  br i1 %tobool45.not, label %lor.lhs.false.do.end49_crit_edge, label %if.end55

lor.lhs.false.do.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end49:                                         ; preds = %lor.lhs.false.do.end49_crit_edge, %do.body.do.end49_crit_edge
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  %27 = ptrtoint ptr %rl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rl, align 4
  %29 = ptrtoint ptr %max_burst_sz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_burst_sz, align 4
  %31 = ptrtoint ptr %typical_pkt_sz to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %typical_pkt_sz, align 4
  %conv54 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 356, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %conv54) #11
  br label %out

if.end55:                                         ; preds = %lor.lhs.false
  %dec.i = add i64 %18, -1
  %33 = ptrtoint ptr %refcount to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %dec.i, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end55.mlx5_rl_entry_put.exit_crit_edge

if.end55.mlx5_rl_entry_put.exit_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rl_entry_put.exit

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i.i) #8
  %34 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 60)
  %uid.i.i = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call, i32 0, i32 3
  %36 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %uid.i.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %or20.i.i = or i32 %conv.i.i, 125829120
  %38 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or20.i.i, ptr %in.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.mlx5_rl_entry, ptr %call, i32 0, i32 2
  %39 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %index.i.i, align 8
  %conv27.i.i = zext i16 %40 to i32
  %add.ptr32.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  %41 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv27.i.i, ptr %add.ptr32.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i) #8
  %42 = call ptr @memset(ptr %_out.i.i, i32 0, i32 16)
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i.i, i32 noundef 64, ptr noundef nonnull %_out.i.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i.i) #8
  br label %mlx5_rl_entry_put.exit

mlx5_rl_entry_put.exit:                           ; preds = %if.then.i, %if.end55.mlx5_rl_entry_put.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %43 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i73 = icmp eq i32 %43, 0
  br i1 %tobool.not.i73, label %mlx5_rl_entry_put.exit.if.end.i_crit_edge, label %land.rhs.i

mlx5_rl_entry_put.exit.if.end.i_crit_edge:        ; preds = %mlx5_rl_entry_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %mlx5_rl_entry_put.exit
  %dep_map.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 0, i32 5
  %call.i.i74 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %cmp.not.i = icmp eq i32 %call.i.i74, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !53

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %mlx5_rl_entry_put.exit.if.end.i_crit_edge
  %refcount.i75 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 5
  %44 = ptrtoint ptr %refcount.i75 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %refcount.i75, align 8
  %dec.i76 = add i64 %45, -1
  store i64 %dec.i76, ptr %refcount.i75, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i76)
  %tobool24.not.i = icmp eq i64 %dec.i76, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rl_entry.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 4
  %46 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rl_entry.i, align 8
  call void @kfree(ptr noundef %47) #8
  %48 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rl_entry.i, align 8
  br label %out

out:                                              ; preds = %if.end26.i, %if.end.i.out_crit_edge, %do.end49
  call void @mutex_unlock(ptr noundef %rl_table) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rl_raw) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_init_rl_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool9.not = icmp sgt i32 %8, -1
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %do.body

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %max_size = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 1
  %9 = ptrtoint ptr %max_size to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %max_size, align 4
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mutex_init(ptr noundef %rl_table, ptr noundef nonnull @.str.14, ptr noundef nonnull @mlx5_init_rl_table.__key) #8
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 8
  %add.ptr15 = getelementptr i32, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr15, align 4
  %14 = trunc i32 %13 to i16
  %conv = add i16 %14, -1
  %max_size18 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 1
  %15 = ptrtoint ptr %max_size18 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %max_size18, align 4
  %add.ptr24 = getelementptr i32, ptr %11, i32 2
  %16 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr24, align 4
  %max_rate = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 2
  %18 = ptrtoint ptr %max_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %max_rate, align 8
  %add.ptr32 = getelementptr i32, ptr %11, i32 3
  %19 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr32, align 4
  %min_rate = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 3
  %21 = ptrtoint ptr %min_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %min_rate, align 4
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 8
  %conv39 = zext i16 %conv to i32
  %shr41 = lshr i32 %20, 10
  %shr43 = lshr i32 %17, 10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef %conv39, i32 noundef %shr41, i32 noundef %shr43) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_cleanup_rl_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in.i.i = alloca [16 x i32], align 4
  %_out.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_table = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 12
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool9.not = icmp sgt i32 %8, -1
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rl_entry.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 4
  %9 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rl_entry.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.mlx5_rl_table_free.exit_crit_edge, label %for.cond.preheader.i

if.end.mlx5_rl_table_free.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5_rl_table_free.exit

for.cond.preheader.i:                             ; preds = %if.end
  %max_size.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 36, i32 1
  %11 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp17.not.i = icmp eq i16 %12, 0
  br i1 %cmp17.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %13 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %add.ptr32.i.i = getelementptr inbounds i32, ptr %in.i.i, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rl_entry.i, align 8
  %refcount.i = getelementptr %struct.mlx5_rl_entry, ptr %15, i32 %i.018.i, i32 1
  %16 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool3.not.i = icmp eq i64 %17, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i.i) #8
  %18 = call ptr @memset(ptr %13, i32 0, i32 60)
  %uid.i.i = getelementptr %struct.mlx5_rl_entry, ptr %15, i32 %i.018.i, i32 3
  %19 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %uid.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  %or20.i.i = or i32 %conv.i.i, 125829120
  %21 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or20.i.i, ptr %in.i.i, align 4
  %index.i.i = getelementptr %struct.mlx5_rl_entry, ptr %15, i32 %i.018.i, i32 2
  %22 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %index.i.i, align 8
  %conv27.i.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %add.ptr32.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv27.i.i, ptr %add.ptr32.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i.i) #8
  %25 = call ptr @memset(ptr %_out.i.i, i32 0, i32 16)
  %call.i.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i.i, i32 noundef 64, ptr noundef nonnull %_out.i.i, i32 noundef 16) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %26 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %max_size.i, align 4
  %conv.i = zext i16 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %28 = ptrtoint ptr %rl_entry.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rl_entry.i, align 8
  call void @kfree(ptr noundef %29) #8
  br label %mlx5_rl_table_free.exit

mlx5_rl_table_free.exit:                          ; preds = %for.end.i, %if.end.mlx5_rl_table_free.exit_crit_edge
  call void @mutex_destroy(ptr noundef %rl_table) #8
  br label %cleanup

cleanup:                                          ; preds = %mlx5_rl_table_free.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !37, !39, !40, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__ksymtab_mlx5_rl_is_in_range, !1, !"__ksymtab_mlx5_rl_is_in_range", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 167, i32 1}
!2 = !{ptr @__ksymtab_mlx5_rl_are_equal, !3, !"__ksymtab_mlx5_rl_are_equal", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 176, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 254, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mlx5_rl_add_rate_raw._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5_rl_add_rate_raw._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 266, i32 3}
!14 = !{ptr @mlx5_rl_add_rate_raw._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx5_rl_add_rate_raw._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 277, i32 4}
!18 = !{ptr @mlx5_rl_add_rate_raw._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx5_rl_add_rate_raw._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_mlx5_rl_add_rate_raw, !21, !"__ksymtab_mlx5_rl_add_rate_raw", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 301, i32 1}
!22 = !{ptr @__ksymtab_mlx5_rl_remove_rate_raw, !23, !"__ksymtab_mlx5_rl_remove_rate_raw", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 314, i32 1}
!24 = !{ptr @__ksymtab_mlx5_rl_add_rate, !25, !"__ksymtab_mlx5_rl_add_rate", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 332, i32 1}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 355, i32 3}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mlx5_rl_remove_rate._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx5_rl_remove_rate._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_mlx5_rl_remove_rate, !33, !"__ksymtab_mlx5_rl_remove_rate", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 364, i32 1}
!34 = !{ptr @mlx5_init_rl_table.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 375, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/rl.c", i32 382, i32 2}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlx5_init_rl_table._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5_init_rl_table._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 1, i32 2000}
