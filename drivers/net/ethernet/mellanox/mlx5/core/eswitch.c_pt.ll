; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx5_eswitch_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_eswitch_mode\09\09\09\09"
module asm "\09.long\09__crc_mlx5_eswitch_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_eswitch_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_eswitch_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_eswitch_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_eswitch_get_encap_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_eswitch_get_encap_mode\09\09\09\09"
module asm "\09.long\09__crc_mlx5_eswitch_get_encap_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_eswitch_get_encap_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_eswitch_get_encap_mode\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_eswitch_get_encap_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_eswitch_get_total_vports\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_eswitch_get_total_vports\09\09\09\09"
module asm "\09.long\09__crc_mlx5_eswitch_get_total_vports\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_eswitch_get_total_vports:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_eswitch_get_total_vports\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_eswitch_get_total_vports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlx5_eswitch_get_core_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_eswitch_get_core_dev\09\09\09\09"
module asm "\09.long\09__crc_mlx5_eswitch_get_core_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_eswitch_get_core_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_eswitch_get_core_dev\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_eswitch_get_core_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
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
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.143] }
%struct.anon.143 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.175, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.177, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.173, i32 }
%union.anon.173 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.174, ptr }
%struct.anon.174 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.175 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.177 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.119, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.119 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_vport = type { ptr, [256 x %struct.hlist_head], [256 x %struct.hlist_head], ptr, ptr, %struct.work_struct, %struct.vport_ingress, %struct.vport_egress, i32, i32, %struct.mlx5_vport_info, %struct.anon.187, i16, i8, i32, i32, ptr }
%struct.vport_ingress = type { ptr, ptr, %struct.anon.182, %struct.anon.183 }
%struct.anon.182 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.183 = type { ptr, ptr, ptr, ptr }
%struct.vport_egress = type { ptr, ptr, ptr, %union.anon.184 }
%union.anon.184 = type { %struct.anon.186 }
%struct.anon.186 = type { ptr, ptr, ptr, ptr }
%struct.mlx5_vport_info = type { [6 x i8], i16, i64, i32, i8, i8 }
%struct.anon.187 = type { i8, i32, i32, i32, i32, ptr }
%struct.vport_addr = type { %struct.l2addr_node, i8, i16, ptr, i8, i8 }
%struct.mlx5_esw_event_info = type { i16 }
%union.devlink_param_value = type { i32, [28 x i8] }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.mlx5_vport_drop_stats = type { i64, i64 }
%struct.ifla_vf_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.189, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.189 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_destination = type { i32, %union.anon.140 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_eqe = type { i8, i8, i8, i8, [7 x i32], %union.ev_data, i16, i8, i8 }
%union.ev_data = type <{ %struct.mlx5_eqe_gpio, [12 x i8] }>
%struct.mlx5_eqe_gpio = type { [2 x i32], i64 }
%struct.mlx5_eqe_vport_change = type { [2 x i8], i16, [6 x i32] }

@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_eswitch_get_vport\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/eswitch.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:(pid %d): vport out of range: num(0x%x)\0A\00", [49 x i8] zeroinitializer }, align 32
@esw_vport_change_handle_locked.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"esw_vport_change_handle_locked\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s:%d:(pid %d): vport[%d] Context Changed: perm mac: %pM\0A\00", [38 x i8] zeroinitializer }, align 32
@esw_vport_change_handle_locked.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s:%d:(pid %d): vport[%d] Context Changed: Done\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_esw_vport_enable.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_esw_vport_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:(pid %d): Enabling VPORT(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx5_esw_vport_enable.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s:%d:(pid %d): Enabled VPORT(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_esw_vport_disable.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5_esw_vport_disable\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:(pid %d): Disabling vport(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mlx5_eswitch_enable_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1248, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"E-Switch: FDB is not supported, aborting ...\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_eswitch_enable_locked\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_eswitch_enable_locked._entry_ptr = internal global ptr @mlx5_eswitch_enable_locked._entry, section ".printk_index", align 4
@mlx5_eswitch_enable_locked._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 1276, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"E-Switch: Enable: mode(%s), nvfs(%d), active vports(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_eswitch_enable_locked._entry_ptr.19 = internal global ptr @mlx5_eswitch_enable_locked._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LEGACY\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFFLOADS\00", [23 x i8] zeroinitializer }, align 32
@mlx5_eswitch_disable_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1345, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: Disable: mode(%s), nvfs(%d), active vports(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx5_eswitch_disable_locked\00", [36 x i8] zeroinitializer }, align 32
@mlx5_eswitch_disable_locked._entry_ptr = internal global ptr @mlx5_eswitch_disable_locked._entry, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx5_esw_wq\00", [20 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&esw->offloads.encap_tbl_lock\00", [34 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&esw->offloads.decap_tbl_lock\00", [34 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&esw->state_lock\00", [47 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&esw->mode_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&esw->mode_lock_key\00", [44 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&esw->n_head)->rwsem\00", [41 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1593, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"E-Switch: Total vports %d, per vport: max uc(%d) max mc(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mlx5_eswitch_init\00", [46 x i8] zeroinitializer }, align 32
@mlx5_eswitch_init._entry_ptr = internal global ptr @mlx5_eswitch_init._entry, section ".printk_index", align 4
@mlx5_eswitch_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 1610, ptr @.str.18, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"E-Switch: cleanup\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5_eswitch_cleanup\00", [43 x i8] zeroinitializer }, align 32
@mlx5_eswitch_cleanup._entry_ptr = internal global ptr @mlx5_eswitch_cleanup._entry, section ".printk_index", align 4
@mlx5_eswitch_set_vport_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1731, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): Failed to set vport %d link state, opmod = %d, err = %d\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_eswitch_set_vport_state\00", [35 x i8] zeroinitializer }, align 32
@mlx5_eswitch_set_vport_state._entry_ptr = internal global ptr @mlx5_eswitch_set_vport_state._entry, section ".printk_index", align 4
@__kstrtab_mlx5_eswitch_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_eswitch_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_eswitch_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_eswitch_mode to i32), ptr @__kstrtab_mlx5_eswitch_mode, ptr @__kstrtabns_mlx5_eswitch_mode }, section "___ksymtab_gpl+mlx5_eswitch_mode", align 4
@__kstrtab_mlx5_eswitch_get_encap_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_eswitch_get_encap_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_eswitch_get_encap_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_eswitch_get_encap_mode to i32), ptr @__kstrtab_mlx5_eswitch_get_encap_mode, ptr @__kstrtabns_mlx5_eswitch_get_encap_mode }, section "___ksymtab+mlx5_eswitch_get_encap_mode", align 4
@__kstrtab_mlx5_eswitch_get_total_vports = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_eswitch_get_total_vports = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_eswitch_get_total_vports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_eswitch_get_total_vports to i32), ptr @__kstrtab_mlx5_eswitch_get_total_vports, ptr @__kstrtabns_mlx5_eswitch_get_total_vports }, section "___ksymtab_gpl+mlx5_eswitch_get_total_vports", align 4
@__kstrtab_mlx5_eswitch_get_core_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_eswitch_get_core_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_eswitch_get_core_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_eswitch_get_core_dev to i32), ptr @__kstrtab_mlx5_eswitch_get_core_dev, ptr @__kstrtabns_mlx5_eswitch_get_core_dev }, section "___ksymtab+mlx5_eswitch_get_core_dev", align 4
@esw_update_vport_addr_list.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"esw_update_vport_addr_list\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:(pid %d): vport[%d] context update %s list size (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UC\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@esw_update_vport_addr_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.2, i32 567, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"E-Switch: Failed to MAC(%pM) in mcast DB\0A\00", [54 x i8] zeroinitializer }, align 32
@esw_update_vport_addr_list._entry_ptr = internal global ptr @esw_update_vport_addr_list._entry, section ".printk_index", align 4
@esw_update_vport_addr_list._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.42, ptr @.str.2, i32 581, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"E-Switch: Failed to add MAC(%pM) to vport[%d] DB\0A\00", [46 x i8] zeroinitializer }, align 32
@esw_update_vport_addr_list._entry_ptr.49 = internal global ptr @esw_update_vport_addr_list._entry.47, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@esw_add_uc_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 298, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"E-Switch: Failed to add L2 table mac(%pM) for vport(0x%x), err(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esw_add_uc_addr\00", [16 x i8] zeroinitializer }, align 32
@esw_add_uc_addr._entry_ptr = internal global ptr @esw_add_uc_addr._entry, section ".printk_index", align 4
@esw_add_uc_addr.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): \09ADDED UC MAC: vport[%d] %pM fr(%p)\0A\00", [43 x i8] zeroinitializer }, align 32
@__esw_fdb_set_vport_rule.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__esw_fdb_set_vport_rule\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): \09FDB add rule dmac_v(%pM) dmac_c(%pM) -> vport(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__esw_fdb_set_vport_rule._entry = internal constant %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 237, ptr @.str.14, ptr @.str.15 }, align 1
@.str.55 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"E-Switch: FDB: Failed to add flow rule: dmac_v(%pM) dmac_c(%pM) -> vport(%d), err(%ld)\0A\00", [40 x i8] zeroinitializer }, align 32
@__esw_fdb_set_vport_rule._entry_ptr = internal global ptr @__esw_fdb_set_vport_rule._entry, section ".printk_index", align 4
@esw_add_mc_addr.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esw_add_mc_addr\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): \09ADDED MC MAC: vport[%d] %pM fr(%p) refcnt(%d) uplinkfr(%p)\0A\00", [51 x i8] zeroinitializer }, align 32
@update_allmulti_vports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 370, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"E-Switch: ALL-MULTI: Failed to add MAC(%pM) to vport[%d] DB\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"update_allmulti_vports\00", [41 x i8] zeroinitializer }, align 32
@update_allmulti_vports._entry_ptr = internal global ptr @update_allmulti_vports._entry, section ".printk_index", align 4
@esw_del_uc_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 330, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"E-Switch: Failed to del L2 table mac(%pM) for vport(%d), err(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esw_del_uc_addr\00", [16 x i8] zeroinitializer }, align 32
@esw_del_uc_addr._entry_ptr = internal global ptr @esw_del_uc_addr._entry, section ".printk_index", align 4
@esw_del_mc_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 444, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"E-Switch: Failed to find eswitch MC addr for MAC(%pM) vport(%d)\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esw_del_mc_addr\00", [16 x i8] zeroinitializer }, align 32
@esw_del_mc_addr._entry_ptr = internal global ptr @esw_del_mc_addr._entry, section ".printk_index", align 4
@esw_del_mc_addr.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): \09DELETE MC MAC: vport[%d] %pM fr(%p) refcnt(%d) uplinkfr(%p)\0A\00", [50 x i8] zeroinitializer }, align 32
@esw_update_vport_rx_mode.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"esw_update_vport_rx_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s:%d:(pid %d): vport[%d] context update rx mode promisc_all=%d, all_multi=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@esw_update_vport_mc_promisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 619, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"E-Switch: Failed to add allmulti MAC(%pM) to vport[%d] DB\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"esw_update_vport_mc_promisc\00", [36 x i8] zeroinitializer }, align 32
@esw_update_vport_mc_promisc._entry_ptr = internal global ptr @esw_update_vport_mc_promisc._entry, section ".printk_index", align 4
@mlx5_eswitch_get_devlink_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 1145, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"E-Switch: Devlink can't get param fdb_large_groups, uses default (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_eswitch_get_devlink_param\00", [33 x i8] zeroinitializer }, align 32
@mlx5_eswitch_get_devlink_param._entry_ptr = internal global ptr @mlx5_eswitch_get_devlink_param._entry, section ".printk_index", align 4
@mlx5_esw_acls_ns_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1196, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"E-Switch: engress ACL is not supported by FW\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5_esw_acls_ns_init\00", [42 x i8] zeroinitializer }, align 32
@mlx5_esw_acls_ns_init._entry_ptr = internal global ptr @mlx5_esw_acls_ns_init._entry, section ".printk_index", align 4
@mlx5_esw_acls_ns_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 1204, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"E-Switch: ingress ACL is not supported by FW\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5_esw_acls_ns_init._entry_ptr.75 = internal global ptr @mlx5_esw_acls_ns_init._entry.73, section ".printk_index", align 4
@mlx5_eswitch_update_num_of_vfs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_esw_vport_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&vport->vport_change_handler)\00", [48 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mlx5_esw_set_vport_mac_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1643, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s:%d:(pid %d): Set invalid MAC while spoofchk is on, vport(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_esw_set_vport_mac_locked\00", [34 x i8] zeroinitializer }, align 32
@mlx5_esw_set_vport_mac_locked._entry_ptr = internal global ptr @mlx5_esw_set_vport_mac_locked._entry, section ".printk_index", align 4
@mlx5_esw_set_vport_mac_locked._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1649, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s:%d:(pid %d): Failed to mlx5_modify_nic_vport_mac vport(%d) err=(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx5_esw_set_vport_mac_locked._entry_ptr.82 = internal global ptr @mlx5_esw_set_vport_mac_locked._entry.80, section ".printk_index", align 4
@mlx5_esw_set_vport_mac_locked._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 1658, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"%s:%d:(pid %d): Failed to set vport %d node guid, err = %d. RDMA_CM will not function properly for this VF.\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_esw_set_vport_mac_locked._entry_ptr.85 = internal global ptr @mlx5_esw_set_vport_mac_locked._entry.83, section ".printk_index", align 4
@modify_esw_vport_cvlan.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"modify_esw_vport_cvlan\00", [41 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Set Vport[%d] VLAN %d qos %d set=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 100, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 707, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 727, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 836, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 869, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 892, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1248, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1274, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1343, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1549, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1563, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1565, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1571, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1573, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1574, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1587, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1589, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1610, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1730, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 542, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 565, i32 6 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 579, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 296, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 308, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 226, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 235, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 423, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 368, i32 5 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 328, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 442, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 447, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 687, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 617, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1143, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1196, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1204, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1442, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 378, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1641, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1647, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 1656, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.390 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 155, i32 2 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__esw_fdb_set_vport_rule._entry, ptr @__esw_fdb_set_vport_rule._entry_ptr, ptr @__ksymtab_mlx5_eswitch_get_core_dev, ptr @__ksymtab_mlx5_eswitch_get_encap_mode, ptr @__ksymtab_mlx5_eswitch_get_total_vports, ptr @__ksymtab_mlx5_eswitch_mode, ptr @esw_add_uc_addr._entry, ptr @esw_add_uc_addr._entry_ptr, ptr @esw_del_mc_addr._entry, ptr @esw_del_mc_addr._entry_ptr, ptr @esw_del_uc_addr._entry, ptr @esw_del_uc_addr._entry_ptr, ptr @esw_update_vport_addr_list._entry, ptr @esw_update_vport_addr_list._entry.47, ptr @esw_update_vport_addr_list._entry_ptr, ptr @esw_update_vport_addr_list._entry_ptr.49, ptr @esw_update_vport_mc_promisc._entry, ptr @esw_update_vport_mc_promisc._entry_ptr, ptr @mlx5_esw_acls_ns_init._entry, ptr @mlx5_esw_acls_ns_init._entry.73, ptr @mlx5_esw_acls_ns_init._entry_ptr, ptr @mlx5_esw_acls_ns_init._entry_ptr.75, ptr @mlx5_esw_set_vport_mac_locked._entry, ptr @mlx5_esw_set_vport_mac_locked._entry.80, ptr @mlx5_esw_set_vport_mac_locked._entry.83, ptr @mlx5_esw_set_vport_mac_locked._entry_ptr, ptr @mlx5_esw_set_vport_mac_locked._entry_ptr.82, ptr @mlx5_esw_set_vport_mac_locked._entry_ptr.85, ptr @mlx5_eswitch_cleanup._entry, ptr @mlx5_eswitch_cleanup._entry_ptr, ptr @mlx5_eswitch_disable_locked._entry, ptr @mlx5_eswitch_disable_locked._entry_ptr, ptr @mlx5_eswitch_enable_locked._entry, ptr @mlx5_eswitch_enable_locked._entry.16, ptr @mlx5_eswitch_enable_locked._entry_ptr, ptr @mlx5_eswitch_enable_locked._entry_ptr.19, ptr @mlx5_eswitch_get_devlink_param._entry, ptr @mlx5_eswitch_get_devlink_param._entry_ptr, ptr @mlx5_eswitch_init._entry, ptr @mlx5_eswitch_init._entry_ptr, ptr @mlx5_eswitch_set_vport_state._entry, ptr @mlx5_eswitch_set_vport_state._entry_ptr, ptr @update_allmulti_vports._entry, ptr @update_allmulti_vports._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mlx5_eswitch_init.__key, ptr @.str.26, ptr @mlx5_eswitch_init.__key.27, ptr @.str.28, ptr @mlx5_eswitch_init.__key.29, ptr @.str.30, ptr @mlx5_eswitch_init.__key.31, ptr @.str.32, ptr @.str.33, ptr @mlx5_eswitch_init.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @mlx5_esw_vport_alloc.__key, ptr @.str.76, ptr @xa_init_flags.__key, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_enable_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_enable_locked._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_disable_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_init.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_set_vport_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_update_vport_addr_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_update_vport_addr_list._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_add_uc_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_allmulti_vports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_del_uc_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_del_mc_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_update_vport_mc_promisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_eswitch_get_devlink_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_acls_ns_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_acls_ns_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_vport_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_set_vport_mac_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_set_vport_mac_locked._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_set_vport_mac_locked._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_devlink_eswitch_get(ptr noundef %devlink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #9
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %4 = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 256
  %5 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %..i = select i1 %tobool.not.i, i32 -95, i32 0
  %retval.0.i = select i1 %cmp.not.i, i32 %..i, i32 -95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = inttoptr i32 %retval.0.i to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %7 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eswitch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %6, %if.then ], [ %8, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %esw, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not = icmp sgt i32 %5, -1
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv = zext i16 %vport_num to i32
  %call2 = tail call ptr @xa_load(ptr noundef %vports, i32 noundef %conv) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.body8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_eswitch_get_vport, %if.then13)) #9
          to label %cleanup [label %if.then13], !srcloc !196

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body8, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8 ], [ inttoptr (i32 -22 to ptr), %if.then13 ], [ inttoptr (i32 -22 to ptr), %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_modify_esw_vport_context(ptr noundef %dev, i16 noundef zeroext %vport, i1 noundef zeroext %other_vport, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  %_out = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %in, align 4
  %and = and i32 %1, 65535
  %or = or i32 %and, 122880000
  store i32 %or, ptr %in, align 4
  %conv = zext i16 %vport to i32
  %add.ptr11 = getelementptr i32, ptr %in, i32 2
  %2 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr11, align 4
  %and12 = and i32 %3, 2147418112
  %shl28 = select i1 %other_vport, i32 -2147483648, i32 0
  %or15 = or i32 %shl28, %conv
  %or29 = or i32 %or15, %and12
  store i32 %or29, ptr %add.ptr11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out) #9
  %4 = call ptr @memset(ptr %_out, i32 0, i32 16)
  %call = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef %in, i32 noundef 272, ptr noundef nonnull %_out, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esw_vport_change_handle_locked(ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [128 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #9
  %vport2 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %4 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %5 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vport2, align 8
  %call = call i32 @mlx5_query_nic_vport_mac_address(ptr noundef %1, i16 noundef zeroext %6, i1 noundef zeroext true, ptr noundef nonnull %mac) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %7 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.body3

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_vport_change_handle_locked.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_vport_change_handle_locked, %if.then8)) #9
          to label %do.end14 [label %if.then8], !srcloc !196

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = call i32 @llvm.read_register.i32(metadata !186) #9
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
  %16 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport2, align 8
  %conv = zext i16 %17 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_vport_change_handle_locked.__UNIQUE_ID_ddebug704, ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef 708, i32 noundef %15, i32 noundef %conv, ptr noundef nonnull %mac) #9
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body3, %entry.do.end14_crit_edge
  %enabled_events = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 14
  %18 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %enabled_events, align 4
  %and15 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.end14.if.end18_crit_edge, label %if.then17

do.end14.if.end18_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %do.end14
  call fastcc void @esw_update_vport_addr_list(ptr noundef %3, ptr noundef %vport, i32 noundef 0)
  %uc_list.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 1
  %manager_vport.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc37.i.for.body.i_crit_edge, %if.then17
  %hi.058.i = phi i32 [ 0, %if.then17 ], [ %inc.i, %for.inc37.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %uc_list.i, i32 %hi.058.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool15.not56.i = icmp eq ptr %21, null
  br i1 %tobool15.not56.i, label %for.body.i.for.inc37.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc37.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %node.057.i = phi ptr [ %23, %for.inc.i.land.rhs.i_crit_edge ], [ %21, %for.body.i.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %node.057.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.057.i, align 4
  %action.i = getelementptr inbounds %struct.vport_addr, ptr %node.057.i, i32 0, i32 1
  %24 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %action.i, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %land.rhs.i.for.inc.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb23.i
  ]

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb.i:                                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call fastcc i32 @esw_add_uc_addr(ptr noundef %3, ptr noundef nonnull %node.057.i) #9, !callees !197
  %27 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %action.i, align 4
  br label %for.inc.i

sw.bb23.i:                                        ; preds = %land.rhs.i
  %addr.i = getelementptr inbounds %struct.l2addr_node, ptr %node.057.i, i32 0, i32 1
  %vport1.i = getelementptr inbounds %struct.vport_addr, ptr %node.057.i, i32 0, i32 2
  %28 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vport1.i, align 2
  %mpfs.i = getelementptr inbounds %struct.vport_addr, ptr %node.057.i, i32 0, i32 4
  %30 = ptrtoint ptr %mpfs.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mpfs.i, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i136 = icmp eq i8 %31, 0
  br i1 %tobool.not.i136, label %sw.bb23.i.fdb_del.i_crit_edge, label %lor.lhs.false.i

sw.bb23.i.fdb_del.i_crit_edge:                    ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fdb_del.i

lor.lhs.false.i:                                  ; preds = %sw.bb23.i
  %32 = ptrtoint ptr %manager_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %manager_vport.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %29)
  %cmp.i.i137 = icmp eq i16 %33, %29
  br i1 %cmp.i.i137, label %lor.lhs.false.i.fdb_del.i_crit_edge, label %if.end.i

lor.lhs.false.i.fdb_del.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fdb_del.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %call2.i = call i32 @mlx5_mpfs_del_mac(ptr noundef %35, ptr noundef %addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %do.end.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %conv.i138 = zext i16 %29 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.60, ptr noundef %addr.i, i32 noundef %conv.i138, i32 noundef %call2.i) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %do.end.i, %if.end.i.if.end6.i_crit_edge
  %40 = ptrtoint ptr %mpfs.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %mpfs.i, align 4
  br label %fdb_del.i

fdb_del.i:                                        ; preds = %if.end6.i, %lor.lhs.false.i.fdb_del.i_crit_edge, %sw.bb23.i.fdb_del.i_crit_edge
  %flow_rule.i = getelementptr inbounds %struct.vport_addr, ptr %node.057.i, i32 0, i32 3
  %41 = ptrtoint ptr %flow_rule.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %flow_rule.i, align 4
  %tobool8.not.i = icmp eq ptr %42, null
  br i1 %tobool8.not.i, label %fdb_del.i.esw_del_uc_addr.exit_crit_edge, label %if.then9.i

fdb_del.i.esw_del_uc_addr.exit_crit_edge:         ; preds = %fdb_del.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %esw_del_uc_addr.exit

if.then9.i:                                       ; preds = %fdb_del.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_del_flow_rules(ptr noundef nonnull %42) #9
  br label %esw_del_uc_addr.exit

esw_del_uc_addr.exit:                             ; preds = %if.then9.i, %fdb_del.i.esw_del_uc_addr.exit_crit_edge
  %43 = ptrtoint ptr %flow_rule.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %flow_rule.i, align 4
  %44 = ptrtoint ptr %node.057.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %node.057.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %node.057.i, i32 0, i32 1
  %46 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pprev2.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %45, ptr %47, align 4
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %esw_del_uc_addr.exit.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

esw_del_uc_addr.exit.hlist_del.exit.i_crit_edge:  ; preds = %esw_del_uc_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %esw_del_uc_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %esw_del_uc_addr.exit.hlist_del.exit.i_crit_edge
  %50 = ptrtoint ptr %node.057.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %node.057.i, align 4
  %51 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %node.057.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %hlist_del.exit.i, %sw.bb.i, %land.rhs.i.for.inc.i_crit_edge
  %tobool15.not.i = icmp eq ptr %23, null
  br i1 %tobool15.not.i, label %for.inc.i.for.inc37.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.for.inc37.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %for.inc.i.for.inc37.i_crit_edge, %for.body.i.for.inc37.i_crit_edge
  %inc.i = add nuw nsw i32 %hi.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc37.i.if.end18_crit_edge, label %for.inc37.i.for.body.i_crit_edge

for.inc37.i.for.body.i_crit_edge:                 ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc37.i.if.end18_crit_edge:                   ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.end18:                                         ; preds = %for.inc37.i.if.end18_crit_edge, %do.end14.if.end18_crit_edge
  %52 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %enabled_events, align 4
  %and20 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @esw_update_vport_addr_list(ptr noundef %3, ptr noundef %vport, i32 noundef 1)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %54 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %enabled_events, align 4
  %and25 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end31_crit_edge, label %if.then27

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then27:                                        ; preds = %if.end23
  call fastcc void @esw_update_vport_rx_mode(ptr noundef %3, ptr noundef %vport)
  %allmulti_rule = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 4
  %56 = ptrtoint ptr %allmulti_rule to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %allmulti_rule, align 8
  %tobool.not.i = icmp eq ptr %57, null
  %cmp.i = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then27.if.end31_crit_edge, label %if.then29

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.then27
  %mc_list.i102 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 2
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.inc90.i.for.body.i104_crit_edge, %if.then29
  %hi.0131.i = phi i32 [ 0, %if.then29 ], [ %inc.i107, %for.inc90.i.for.body.i104_crit_edge ]
  %arrayidx.i103 = getelementptr %struct.mlx5_eswitch, ptr %3, i32 0, i32 3, i32 %hi.0131.i
  %58 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i103, align 4
  %tobool4.not129.i = icmp eq ptr %59, null
  br i1 %tobool4.not129.i, label %for.body.i104.for.inc90.i_crit_edge, label %for.body.i104.land.rhs.i105_crit_edge

for.body.i104.land.rhs.i105_crit_edge:            ; preds = %for.body.i104
  br label %land.rhs.i105

for.body.i104.for.inc90.i_crit_edge:              ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.i

land.rhs.i105:                                    ; preds = %cleanup.i.land.rhs.i105_crit_edge, %for.body.i104.land.rhs.i105_crit_edge
  %node.0130.i = phi ptr [ %61, %cleanup.i.land.rhs.i105_crit_edge ], [ %59, %for.body.i104.land.rhs.i105_crit_edge ]
  %60 = ptrtoint ptr %node.0130.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %node.0130.i, align 4
  %addr8.i = getelementptr inbounds %struct.l2addr_node, ptr %node.0130.i, i32 0, i32 1
  %arrayidx10.i = getelementptr %struct.l2addr_node, ptr %node.0130.i, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx10.i, align 1
  %conv.i = zext i8 %63 to i32
  %arrayidx12.i = getelementptr %struct.hlist_head, ptr %mc_list.i102, i32 %conv.i
  %add.ptr1.i.i = getelementptr %struct.l2addr_node, ptr %node.0130.i, i32 0, i32 1, i32 4
  br label %for.cond23.i

for.cond23.i:                                     ; preds = %for.body25.i.for.cond23.i_crit_edge, %land.rhs.i105
  %ptr.0.in.i = phi ptr [ %arrayidx12.i, %land.rhs.i105 ], [ %ptr.0.i, %for.body25.i.for.cond23.i_crit_edge ]
  %64 = ptrtoint ptr %ptr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %ptr.0.i = load ptr, ptr %ptr.0.in.i, align 4
  %tobool24.not.i = icmp eq ptr %ptr.0.i, null
  br i1 %tobool24.not.i, label %if.end54.i, label %for.body25.i

for.body25.i:                                     ; preds = %for.cond23.i
  %addr27.i = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0.i, i32 0, i32 1
  %65 = ptrtoint ptr %addr27.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr27.i, align 4
  %67 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr8.i, align 4
  %xor.i.i = xor i32 %68, %66
  %add.ptr.i.i = getelementptr %struct.l2addr_node, ptr %ptr.0.i, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i, align 2
  %71 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %72, %70
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then47.i, label %for.body25.i.for.cond23.i_crit_edge

for.body25.i.for.cond23.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond23.i

if.then47.i:                                      ; preds = %for.body25.i
  %action.i106 = getelementptr inbounds %struct.vport_addr, ptr %ptr.0.i, i32 0, i32 1
  %73 = ptrtoint ptr %action.i106 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %action.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp49.i = icmp eq i8 %74, 2
  br i1 %cmp49.i, label %if.then51.i, label %if.then47.i.cleanup.i_crit_edge

if.then47.i.cleanup.i_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then51.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %action.i106 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %action.i106, align 4
  br label %cleanup.i

if.end54.i:                                       ; preds = %for.cond23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 3520, i32 noundef 28) #13
  %tobool60.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool60.not.i, label %do.end.critedge.i, label %if.then61.i

if.then61.i:                                      ; preds = %if.end54.i
  %addr63.i = getelementptr inbounds %struct.l2addr_node, ptr %call7.i.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr8.i, align 4
  %79 = ptrtoint ptr %addr63.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %addr63.i, align 8
  %80 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr1.i.i, align 2
  %add.ptr1.i127.i = getelementptr %struct.l2addr_node, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %82 = ptrtoint ptr %add.ptr1.i127.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %add.ptr1.i127.i, align 4
  %83 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx12.i, align 4
  %85 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %84, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %if.then61.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.then61.i.hlist_add_head.exit.i_crit_edge:      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %84, i32 0, i32 1
  %86 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %call7.i.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.then61.i.hlist_add_head.exit.i_crit_edge
  %87 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call7.i.i.i, ptr %arrayidx12.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %arrayidx12.i, ptr %pprev34.i.i, align 4
  %89 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vport2, align 8
  %vport76.i = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %vport76.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %vport76.i, align 2
  %action77.i = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %action77.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %action77.i, align 8
  %mc_promisc.i = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i.i, i32 0, i32 5
  %93 = ptrtoint ptr %mc_promisc.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %mc_promisc.i, align 1
  br label %cleanup.i

do.end.critedge.i:                                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %3, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %98 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vport2, align 8
  %conv73.i = zext i16 %99 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.67, ptr noundef %addr8.i, i32 noundef %conv73.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.critedge.i, %hlist_add_head.exit.i, %if.then51.i, %if.then47.i.cleanup.i_crit_edge
  %tobool4.not.i = icmp eq ptr %61, null
  br i1 %tobool4.not.i, label %cleanup.i.for.inc90.i_crit_edge, label %cleanup.i.land.rhs.i105_crit_edge

cleanup.i.land.rhs.i105_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i105

cleanup.i.for.inc90.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %cleanup.i.for.inc90.i_crit_edge, %for.body.i104.for.inc90.i_crit_edge
  %inc.i107 = add nuw nsw i32 %hi.0131.i, 1
  %exitcond.not.i108 = icmp eq i32 %inc.i107, 256
  br i1 %exitcond.not.i108, label %for.inc90.i.if.end31_crit_edge, label %for.inc90.i.for.body.i104_crit_edge

for.inc90.i.for.body.i104_crit_edge:              ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i104

for.inc90.i.if.end31_crit_edge:                   ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %for.inc90.i.if.end31_crit_edge, %if.then27.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %100 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %enabled_events, align 4
  %and33 = and i32 %101, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.do.body37_crit_edge, label %if.then35

if.end31.do.body37_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.then35:                                        ; preds = %if.end31
  %mc_list.i110 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 2
  br label %for.body.i114

for.body.i114:                                    ; preds = %for.inc37.i131.for.body.i114_crit_edge, %if.then35
  %hi.058.i111 = phi i32 [ 0, %if.then35 ], [ %inc.i129, %for.inc37.i131.for.body.i114_crit_edge ]
  %arrayidx.i112 = getelementptr %struct.hlist_head, ptr %mc_list.i110, i32 %hi.058.i111
  %102 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i112, align 4
  %tobool15.not56.i113 = icmp eq ptr %103, null
  br i1 %tobool15.not56.i113, label %for.body.i114.for.inc37.i131_crit_edge, label %for.body.i114.land.rhs.i117_crit_edge

for.body.i114.land.rhs.i117_crit_edge:            ; preds = %for.body.i114
  br label %land.rhs.i117

for.body.i114.for.inc37.i131_crit_edge:           ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i131

land.rhs.i117:                                    ; preds = %for.inc.i128.land.rhs.i117_crit_edge, %for.body.i114.land.rhs.i117_crit_edge
  %node.057.i115 = phi ptr [ %105, %for.inc.i128.land.rhs.i117_crit_edge ], [ %103, %for.body.i114.land.rhs.i117_crit_edge ]
  %104 = ptrtoint ptr %node.057.i115 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %node.057.i115, align 4
  %action.i116 = getelementptr inbounds %struct.vport_addr, ptr %node.057.i115, i32 0, i32 1
  %106 = ptrtoint ptr %action.i116 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %action.i116, align 4
  %108 = zext i8 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %107, label %land.rhs.i117.for.inc.i128_crit_edge [
    i8 1, label %sw.bb.i119
    i8 2, label %sw.bb23.i123
  ]

land.rhs.i117.for.inc.i128_crit_edge:             ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i128

sw.bb.i119:                                       ; preds = %land.rhs.i117
  call void @__sanitizer_cov_trace_pc() #11
  %call.i118 = call fastcc i32 @esw_add_mc_addr(ptr noundef %3, ptr noundef nonnull %node.057.i115) #9, !callees !197
  %109 = ptrtoint ptr %action.i116 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %action.i116, align 4
  br label %for.inc.i128

sw.bb23.i123:                                     ; preds = %land.rhs.i117
  %call24.i120 = call fastcc i32 @esw_del_mc_addr(ptr noundef %3, ptr noundef nonnull %node.057.i115) #9, !callees !199
  %110 = ptrtoint ptr %node.057.i115 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %node.057.i115, align 4
  %pprev2.i.i.i121 = getelementptr inbounds %struct.hlist_node, ptr %node.057.i115, i32 0, i32 1
  %112 = ptrtoint ptr %pprev2.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pprev2.i.i.i121, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %111, ptr %113, align 4
  %tobool.not.i.i.i122 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i122, label %sw.bb23.i123.hlist_del.exit.i126_crit_edge, label %do.body13.i.i.i125

sw.bb23.i123.hlist_del.exit.i126_crit_edge:       ; preds = %sw.bb23.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit.i126

do.body13.i.i.i125:                               ; preds = %sw.bb23.i123
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i124 = getelementptr inbounds %struct.hlist_node, ptr %111, i32 0, i32 1
  %115 = ptrtoint ptr %pprev14.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %pprev14.i.i.i124, align 4
  br label %hlist_del.exit.i126

hlist_del.exit.i126:                              ; preds = %do.body13.i.i.i125, %sw.bb23.i123.hlist_del.exit.i126_crit_edge
  %116 = ptrtoint ptr %node.057.i115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 256 to ptr), ptr %node.057.i115, align 4
  %117 = ptrtoint ptr %pprev2.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i121, align 4
  call void @kfree(ptr noundef nonnull %node.057.i115) #9
  br label %for.inc.i128

for.inc.i128:                                     ; preds = %hlist_del.exit.i126, %sw.bb.i119, %land.rhs.i117.for.inc.i128_crit_edge
  %tobool15.not.i127 = icmp eq ptr %105, null
  br i1 %tobool15.not.i127, label %for.inc.i128.for.inc37.i131_crit_edge, label %for.inc.i128.land.rhs.i117_crit_edge

for.inc.i128.land.rhs.i117_crit_edge:             ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i117

for.inc.i128.for.inc37.i131_crit_edge:            ; preds = %for.inc.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i131

for.inc37.i131:                                   ; preds = %for.inc.i128.for.inc37.i131_crit_edge, %for.body.i114.for.inc37.i131_crit_edge
  %inc.i129 = add nuw nsw i32 %hi.058.i111, 1
  %exitcond.not.i130 = icmp eq i32 %inc.i129, 256
  br i1 %exitcond.not.i130, label %for.inc37.i131.do.body37_crit_edge, label %for.inc37.i131.for.body.i114_crit_edge

for.inc37.i131.for.body.i114_crit_edge:           ; preds = %for.inc37.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i114

for.inc37.i131.do.body37_crit_edge:               ; preds = %for.inc37.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

do.body37:                                        ; preds = %for.inc37.i131.do.body37_crit_edge, %if.end31.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %118 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and38 = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body37.do.end66_crit_edge, label %do.body41

do.body37.do.end66_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end66

do.body41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_vport_change_handle_locked.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_vport_change_handle_locked, %if.then53)) #9
          to label %do.end66 [label %if.then53], !srcloc !196

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %3, align 8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %123 = call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i133 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i133 to ptr
  %task57 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task57 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task57, align 8
  %pid58 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 68
  %127 = ptrtoint ptr %pid58 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pid58, align 8
  %129 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %vport2, align 8
  %conv60 = zext i16 %130 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_vport_change_handle_locked.__UNIQUE_ID_ddebug705, ptr noundef %122, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 727, i32 noundef %128, i32 noundef %conv60) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then53, %do.body41, %do.body37.do.end66_crit_edge
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 13
  %131 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool67.not = icmp eq i8 %132, 0
  br i1 %tobool67.not, label %do.end66.if.end72_crit_edge, label %if.then68

do.end66.if.end72_crit_edge:                      ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then68:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %vport2, align 8
  %135 = ptrtoint ptr %enabled_events to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %enabled_events, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %in.i) #9
  %137 = getelementptr inbounds i8, ptr %in.i, i32 4
  %138 = call ptr @memset(ptr %137, i32 0, i32 508)
  %139 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 123011072, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %140 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 32, ptr %add.ptr13.i, align 4
  %conv.i134 = zext i16 %134 to i32
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %or47.i = or i32 %conv.i134, -2147483648
  %141 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or47.i, ptr %add.ptr28.i, align 4
  %add.ptr59.i = getelementptr inbounds i8, ptr %in.i, i32 260
  %142 = and i32 %136, 3
  %and98.i = and i32 %136, 8
  %143 = or i32 %and98.i, -2147483648
  %spec.select = or i32 %142, %143
  %144 = ptrtoint ptr %add.ptr59.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %spec.select, ptr %add.ptr59.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %145 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i135 = call i32 @mlx5_cmd_exec(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 512, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %in.i) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %do.end66.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_nic_vport_mac_address(ptr noundef, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esw_update_vport_addr_list(ptr nocapture noundef readonly %esw, ptr noundef %vport, i32 noundef %list_type) unnamed_addr #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_type)
  %cmp = icmp eq i32 %list_type, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 31
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %shr8 = lshr i32 %5, 8
  %and.pn.in = select i1 %cmp, i32 %5, i32 %shr8
  %and.pn = and i32 %and.pn.in, 31
  %cond = shl nuw i32 1, %and.pn
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %size, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond, i32 6) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %entry.cleanup245_crit_edge, label %if.end7.i.i, !prof !200

entry.cleanup245_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup245

if.end7.i.i:                                      ; preds = %entry
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #14
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.cleanup245_crit_edge, label %if.end

if.end7.i.i.cleanup245_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup245

if.end:                                           ; preds = %if.end7.i.i
  %uc_list = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 1
  %mc_list = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 2
  %cond18 = select i1 %cmp, ptr %uc_list, ptr %mc_list
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %if.end
  %hi.0360 = phi i32 [ 0, %if.end ], [ %inc, %for.inc47.for.body_crit_edge ]
  %arrayidx20 = getelementptr %struct.hlist_head, ptr %cond18, i32 %hi.0360
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx20, align 4
  %tobool30.not358 = icmp eq ptr %11, null
  br i1 %tobool30.not358, label %for.body.for.inc47_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.inc47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %node.0359 = phi ptr [ %13, %land.rhs.land.rhs_crit_edge ], [ %11, %for.body.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %node.0359 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node.0359, align 4
  %action = getelementptr inbounds %struct.vport_addr, ptr %node.0359, i32 0, i32 1
  %14 = ptrtoint ptr %action to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %action, align 4
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %land.rhs.for.inc47_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs.for.inc47_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc47

for.inc47:                                        ; preds = %land.rhs.for.inc47_crit_edge, %for.body.for.inc47_crit_edge
  %inc = add nuw nsw i32 %hi.0360, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end48, label %for.inc47.for.body_crit_edge

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end48:                                        ; preds = %for.inc47
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 13
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool49.not = icmp eq i8 %16, 0
  br i1 %tobool49.not, label %for.end48.out_crit_edge, label %if.end51

for.end48.out_crit_edge:                          ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end51:                                         ; preds = %for.end48
  %17 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esw, align 8
  %vport53 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %19 = ptrtoint ptr %vport53 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vport53, align 8
  %call54 = call i32 @mlx5_query_nic_vport_mac_list(ptr noundef %18, i16 noundef zeroext %20, i32 noundef %list_type, ptr noundef nonnull %call8.i.i, ptr noundef nonnull %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body, label %if.end51.out_crit_edge

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body:                                          ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %21 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and58 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body.do.end78_crit_edge, label %do.body61

do.body.do.end78_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end78

do.body61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_update_vport_addr_list.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_update_vport_addr_list, %if.then68)) #9
          to label %do.end78 [label %if.then68], !srcloc !196

if.then68:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %esw, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid, align 8
  %32 = ptrtoint ptr %vport53 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vport53, align 8
  %conv = zext i16 %33 to i32
  %cond74 = select i1 %cmp, ptr @.str.44, ptr @.str.45
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_update_vport_addr_list.__UNIQUE_ID_ddebug702, ptr noundef %25, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 543, i32 noundef %31, i32 noundef %conv, ptr noundef nonnull %cond74, i32 noundef %35) #9
  br label %do.end78

do.end78:                                         ; preds = %if.then68, %do.body61, %do.body.do.end78_crit_edge
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp80361 = icmp sgt i32 %37, 0
  br i1 %cmp80361, label %do.end78.for.body82_crit_edge, label %do.end78.out_crit_edge

do.end78.out_crit_edge:                           ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end78.for.body82_crit_edge:                    ; preds = %do.end78
  br label %for.body82

for.body82:                                       ; preds = %for.inc242.for.body82_crit_edge, %do.end78.for.body82_crit_edge
  %i.0362 = phi i32 [ %inc243, %for.inc242.for.body82_crit_edge ], [ 0, %do.end78.for.body82_crit_edge ]
  %arrayidx85 = getelementptr [6 x i8], ptr %call8.i.i, i32 %i.0362
  %38 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx85, align 4
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true91.critedge

land.lhs.true:                                    ; preds = %for.body82
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %land.lhs.true.for.inc242_crit_edge

land.lhs.true.for.inc242_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc242

is_valid_ether_addr.exit:                         ; preds = %land.lhs.true
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx85, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %or.i.i = or i32 %39, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.for.inc242_crit_edge, label %is_valid_ether_addr.exit.if.end96_crit_edge

is_valid_ether_addr.exit.if.end96_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

is_valid_ether_addr.exit.for.inc242_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc242

land.lhs.true91.critedge:                         ; preds = %for.body82
  br i1 %tobool.i.not.i, label %land.lhs.true91.critedge.for.inc242_crit_edge, label %land.lhs.true91.critedge.if.end96_crit_edge

land.lhs.true91.critedge.if.end96_crit_edge:      ; preds = %land.lhs.true91.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

land.lhs.true91.critedge.for.inc242_crit_edge:    ; preds = %land.lhs.true91.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc242

if.end96:                                         ; preds = %land.lhs.true91.critedge.if.end96_crit_edge, %is_valid_ether_addr.exit.if.end96_crit_edge
  %arrayidx97 = getelementptr [6 x i8], ptr %call8.i.i, i32 %i.0362
  %arrayidx98 = getelementptr [6 x i8], ptr %call8.i.i, i32 %i.0362, i32 5
  %43 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %44 to i32
  %arrayidx101 = getelementptr %struct.hlist_head, ptr %cond18, i32 %conv99
  %add.ptr1.i = getelementptr i8, ptr %arrayidx97, i32 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.body114.for.cond112_crit_edge, %if.end96
  %ptr.0.in = phi ptr [ %arrayidx101, %if.end96 ], [ %ptr.0, %for.body114.for.cond112_crit_edge ]
  %45 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %tobool113.not = icmp eq ptr %ptr.0, null
  br i1 %tobool113.not, label %if.end208, label %for.body114

for.body114:                                      ; preds = %for.cond112
  %addr116 = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1
  %46 = ptrtoint ptr %addr116 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr116, align 4
  %48 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx97, align 4
  %xor.i = xor i32 %49, %47
  %add.ptr.i = getelementptr %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i, align 2
  %52 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %53, %51
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then143, label %for.body114.for.cond112_crit_edge

for.body114.for.cond112_crit_edge:                ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond112

if.then143:                                       ; preds = %for.body114
  %action144 = getelementptr inbounds %struct.vport_addr, ptr %ptr.0, i32 0, i32 1
  %54 = ptrtoint ptr %action144 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %action144, align 4
  %mc_promisc = getelementptr inbounds %struct.vport_addr, ptr %ptr.0, i32 0, i32 5
  %55 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mc_promisc, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool145.not = icmp eq i8 %56, 0
  br i1 %tobool145.not, label %if.then143.for.inc242_crit_edge, label %if.then146

if.then143.for.inc242_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc242

if.then146:                                       ; preds = %if.then143
  %57 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx98, align 1
  %conv150 = zext i8 %58 to i32
  %arrayidx154 = getelementptr %struct.mlx5_eswitch, ptr %esw, i32 0, i32 3, i32 %conv150
  br label %for.cond165

for.cond165:                                      ; preds = %for.body167.for.cond165_crit_edge, %if.then146
  %ptr152.0.in = phi ptr [ %arrayidx154, %if.then146 ], [ %ptr152.0, %for.body167.for.cond165_crit_edge ]
  %59 = ptrtoint ptr %ptr152.0.in to i32
  call void @__asan_load4_noabort(i32 %59)
  %ptr152.0 = load ptr, ptr %ptr152.0.in, align 4
  %tobool166.not = icmp eq ptr %ptr152.0, null
  br i1 %tobool166.not, label %do.end199, label %for.body167

for.body167:                                      ; preds = %for.cond165
  %addr169 = getelementptr inbounds %struct.l2addr_node, ptr %ptr152.0, i32 0, i32 1
  %60 = ptrtoint ptr %addr169 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr169, align 4
  %62 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx97, align 4
  %xor.i337 = xor i32 %63, %61
  %add.ptr.i338 = getelementptr %struct.l2addr_node, ptr %ptr152.0, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %add.ptr.i338 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr.i338, align 2
  %66 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i340 = xor i16 %67, %65
  %xor3.i341 = zext i16 %xor37.i340 to i32
  %or.i342 = or i32 %xor.i337, %xor3.i341
  %cmp.i343 = icmp eq i32 %or.i342, 0
  br i1 %cmp.i343, label %if.end204, label %for.body167.for.cond165_crit_edge

for.body167.for.cond165_crit_edge:                ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond165

do.end199:                                        ; preds = %for.cond165
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %esw, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.46, ptr noundef %arrayidx97) #12
  br label %for.inc242

if.end204:                                        ; preds = %for.body167
  call void @__sanitizer_cov_trace_pc() #11
  %refcnt = getelementptr inbounds %struct.esw_mc_addr, ptr %ptr152.0, i32 0, i32 2
  %72 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %refcnt, align 4
  %inc205 = add i32 %73, 1
  store i32 %inc205, ptr %refcnt, align 4
  %74 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %mc_promisc, align 1
  br label %for.inc242

if.end208:                                        ; preds = %for.cond112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 28) #13
  %tobool215.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool215.not, label %do.end231.critedge, label %if.then216

if.then216:                                       ; preds = %if.end208
  %addr218 = getelementptr inbounds %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx97, align 4
  %78 = ptrtoint ptr %addr218 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %addr218, align 8
  %79 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i347 = getelementptr %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %81 = ptrtoint ptr %add.ptr1.i347 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %add.ptr1.i347, align 4
  %82 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx101, align 4
  %84 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %83, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %83, null
  br i1 %tobool.not.i, label %if.then216.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then216.hlist_add_head.exit_crit_edge:         ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %83, i32 0, i32 1
  %85 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then216.hlist_add_head.exit_crit_edge
  %86 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %call7.i.i, ptr %arrayidx101, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %arrayidx101, ptr %pprev34.i, align 4
  %88 = ptrtoint ptr %vport53 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vport53, align 8
  %vport240 = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %vport240 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %vport240, align 2
  %action241 = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %action241 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %action241, align 8
  br label %for.inc242

do.end231.critedge:                               ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %esw, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %96 = ptrtoint ptr %vport53 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vport53, align 8
  %conv237 = zext i16 %97 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.48, ptr noundef %arrayidx97, i32 noundef %conv237) #12
  br label %for.inc242

for.inc242:                                       ; preds = %do.end231.critedge, %hlist_add_head.exit, %if.end204, %do.end199, %if.then143.for.inc242_crit_edge, %land.lhs.true91.critedge.for.inc242_crit_edge, %is_valid_ether_addr.exit.for.inc242_crit_edge, %land.lhs.true.for.inc242_crit_edge
  %inc243 = add nuw nsw i32 %i.0362, 1
  %98 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size, align 4
  %cmp80 = icmp slt i32 %inc243, %99
  br i1 %cmp80, label %for.inc242.for.body82_crit_edge, label %for.inc242.out_crit_edge

for.inc242.out_crit_edge:                         ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc242.for.body82_crit_edge:                  ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body82

out:                                              ; preds = %for.inc242.out_crit_edge, %do.end78.out_crit_edge, %if.end51.out_crit_edge, %for.end48.out_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup245

cleanup245:                                       ; preds = %out, %if.end7.i.i.cleanup245_crit_edge, %entry.cleanup245_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esw_update_vport_rx_mode(ptr nocapture noundef %esw, ptr nocapture noundef %vport) unnamed_addr #0 align 64 {
entry:
  %mac_c.i85.i = alloca [6 x i8], align 1
  %mac_v.i86.i = alloca [6 x i8], align 1
  %mac_c.i79.i = alloca [6 x i8], align 1
  %mac_v.i80.i = alloca [6 x i8], align 1
  %mac_c.i.i = alloca [6 x i8], align 1
  %mac_v.i.i = alloca [6 x i8], align 1
  %promisc_all = alloca i32, align 4
  %promisc_uc = alloca i32, align 4
  %promisc_mc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %promisc_all) #9
  %0 = ptrtoint ptr %promisc_all to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %promisc_all, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %promisc_uc) #9
  %1 = ptrtoint ptr %promisc_uc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %promisc_uc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %promisc_mc) #9
  %2 = ptrtoint ptr %promisc_mc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %promisc_mc, align 4
  %3 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %esw, align 8
  %vport1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %5 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vport1, align 8
  %call = call i32 @mlx5_query_nic_vport_promisc(ptr noundef %4, i16 noundef zeroext %6, ptr noundef nonnull %promisc_uc, ptr noundef nonnull %promisc_mc, ptr noundef nonnull %promisc_all) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %7 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.do.end16_crit_edge, label %do.body4

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_update_vport_rx_mode.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_update_vport_rx_mode, %if.then9)) #9
          to label %do.end16 [label %if.then9], !srcloc !196

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %18 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vport1, align 8
  %conv = zext i16 %19 to i32
  %20 = ptrtoint ptr %promisc_all to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %promisc_all, align 4
  %22 = ptrtoint ptr %promisc_mc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %promisc_mc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_update_vport_rx_mode.__UNIQUE_ID_ddebug703, ptr noundef %11, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef 688, i32 noundef %17, i32 noundef %conv, i32 noundef %21, i32 noundef %23) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then9, %do.body4, %do.body.do.end16_crit_edge
  %trusted = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 10, i32 5
  %24 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %trusted, align 1
  %25 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool17.not = icmp eq i8 %25, 0
  br i1 %tobool17.not, label %do.end16.if.end20.thread_crit_edge, label %lor.lhs.false

do.end16.if.end20.thread_crit_edge:               ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.thread

lor.lhs.false:                                    ; preds = %do.end16
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 13
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool18.not = icmp eq i8 %27, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end20.thread_crit_edge, label %if.end20

lor.lhs.false.if.end20.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %lor.lhs.false.if.end20.thread_crit_edge, %do.end16.if.end20.thread_crit_edge
  %28 = ptrtoint ptr %promisc_uc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %promisc_uc, align 4
  %29 = ptrtoint ptr %promisc_mc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %promisc_mc, align 4
  %30 = ptrtoint ptr %promisc_all to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %promisc_all, align 4
  %allmulti_rule.i74 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 4
  %31 = ptrtoint ptr %allmulti_rule.i74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %allmulti_rule.i74, align 8
  %tobool.not.i.i75 = icmp eq ptr %32, null
  %cmp.i.i76 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i77 = or i1 %tobool.not.i.i75, %cmp.i.i76
  br i1 %spec.select.i.i77, label %if.end20.thread.promisc33.i.thr_comm_crit_edge, label %if.end20.thread.if.then17.i_crit_edge

if.end20.thread.if.then17.i_crit_edge:            ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.end20.thread.promisc33.i.thr_comm_crit_edge:   ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %promisc33.i.thr_comm

if.end20:                                         ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %promisc_all to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %promisc_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool21.not = icmp eq i32 %.pr, 0
  br i1 %tobool21.not, label %lor.end, label %if.end20.lor.end_crit_edge

if.end20.lor.end_crit_edge:                       ; preds = %if.end20
  %allmulti_rule.i37 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 4
  %34 = ptrtoint ptr %allmulti_rule.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %allmulti_rule.i37, align 8
  %tobool.not.i.i38 = icmp ne ptr %35, null
  %cmp.i.i39 = icmp ule ptr %35, inttoptr (i32 -4096 to ptr)
  %36 = and i1 %tobool.not.i.i38, %cmp.i.i39
  br i1 %36, label %if.end20.lor.end_crit_edge.promisc33.i_crit_edge, label %if.end20.lor.end_crit_edge.if.then6.i_crit_edge

if.end20.lor.end_crit_edge.if.then6.i_crit_edge:  ; preds = %if.end20.lor.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end20.lor.end_crit_edge.promisc33.i_crit_edge: ; preds = %if.end20.lor.end_crit_edge
  %promisc_rule.i57 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 3
  %37 = ptrtoint ptr %promisc_rule.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %promisc_rule.i57, align 4
  %tobool.not.i82.i58 = icmp ne ptr %38, null
  %cmp.i83.i59 = icmp ule ptr %38, inttoptr (i32 -4096 to ptr)
  %39 = and i1 %tobool.not.i82.i58, %cmp.i83.i59
  br i1 %39, label %if.end20.lor.end_crit_edge.promisc33.i_crit_edge.cleanup_crit_edge, label %if.end20.lor.end_crit_edge.promisc33.i_crit_edge.if.then43.i_crit_edge

if.end20.lor.end_crit_edge.promisc33.i_crit_edge.if.then43.i_crit_edge: ; preds = %if.end20.lor.end_crit_edge.promisc33.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43.i

if.end20.lor.end_crit_edge.promisc33.i_crit_edge.cleanup_crit_edge: ; preds = %if.end20.lor.end_crit_edge.promisc33.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.end:                                          ; preds = %if.end20
  %40 = ptrtoint ptr %promisc_mc to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr73 = load i32, ptr %promisc_mc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr73)
  %tobool23 = icmp ne i32 %.pr73, 0
  %allmulti_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 4
  %41 = ptrtoint ptr %allmulti_rule.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %allmulti_rule.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  %cmp.i.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %43 = xor i1 %tobool23, %spec.select.i.i
  br i1 %43, label %lor.end.promisc33.i.thr_comm_crit_edge, label %if.end.i

lor.end.promisc33.i.thr_comm_crit_edge:           ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %promisc33.i.thr_comm

if.end.i:                                         ; preds = %lor.end
  br i1 %tobool23, label %if.end.i.if.then6.i_crit_edge, label %if.else.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i.if.then6.i_crit_edge, %if.end20.lor.end_crit_edge.if.then6.i_crit_edge
  %allmulti_rule.i4348 = phi ptr [ %allmulti_rule.i, %if.end.i.if.then6.i_crit_edge ], [ %allmulti_rule.i37, %if.end20.lor.end_crit_edge.if.then6.i_crit_edge ]
  %44 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vport1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i.i) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_v.i.i) #9
  %46 = getelementptr inbounds i8, ptr %mac_c.i.i, i32 1
  %47 = call ptr @memset(ptr %46, i32 0, i32 5)
  %48 = getelementptr inbounds i8, ptr %mac_v.i.i, i32 1
  %49 = call ptr @memset(ptr %48, i32 0, i32 5)
  %50 = ptrtoint ptr %mac_c.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %mac_c.i.i, align 1
  %51 = ptrtoint ptr %mac_v.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %mac_v.i.i, align 1
  %call.i.i = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext %45, i1 noundef zeroext false, ptr noundef nonnull %mac_c.i.i, ptr noundef nonnull %mac_v.i.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_v.i.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i.i) #9
  %52 = ptrtoint ptr %allmulti_rule.i4348 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i.i, ptr %allmulti_rule.i4348, align 8
  %uplink_rule.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %uplink_rule.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %uplink_rule.i, align 4
  %tobool10.not.i = icmp eq ptr %54, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then6.i.promisc33.i_crit_edge

if.then6.i.promisc33.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %promisc33.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i79.i) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_v.i80.i) #9
  %55 = getelementptr inbounds i8, ptr %mac_c.i79.i, i32 1
  %56 = call ptr @memset(ptr %55, i32 0, i32 5)
  %57 = getelementptr inbounds i8, ptr %mac_v.i80.i, i32 1
  %58 = call ptr @memset(ptr %57, i32 0, i32 5)
  %59 = ptrtoint ptr %mac_c.i79.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %mac_c.i79.i, align 1
  %60 = ptrtoint ptr %mac_v.i80.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %mac_v.i80.i, align 1
  %call.i81.i = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext -1, i1 noundef zeroext false, ptr noundef nonnull %mac_c.i79.i, ptr noundef nonnull %mac_v.i80.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_v.i80.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i79.i) #9
  %61 = ptrtoint ptr %uplink_rule.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i81.i, ptr %uplink_rule.i, align 4
  br label %promisc33.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i.i, label %if.else.i.promisc33.i.thr_comm_crit_edge, label %if.else.i.if.then17.i_crit_edge

if.else.i.if.then17.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.else.i.promisc33.i.thr_comm_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %promisc33.i.thr_comm

if.then17.i:                                      ; preds = %if.else.i.if.then17.i_crit_edge, %if.end20.thread.if.then17.i_crit_edge
  %62 = phi ptr [ %42, %if.else.i.if.then17.i_crit_edge ], [ %32, %if.end20.thread.if.then17.i_crit_edge ]
  %allmulti_rule.i798586 = phi ptr [ %allmulti_rule.i, %if.else.i.if.then17.i_crit_edge ], [ %allmulti_rule.i74, %if.end20.thread.if.then17.i_crit_edge ]
  call void @mlx5_del_flow_rules(ptr noundef nonnull %62) #9
  %63 = ptrtoint ptr %allmulti_rule.i798586 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %allmulti_rule.i798586, align 8
  %refcnt20.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 4, i32 2
  %64 = ptrtoint ptr %refcnt20.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %refcnt20.i, align 4
  %dec.i = add i32 %65, -1
  store i32 %dec.i, ptr %refcnt20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp21.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp21.not.i, label %if.end24.i, label %if.then17.i.promisc33.i.thr_comm_crit_edge

if.then17.i.promisc33.i.thr_comm_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %promisc33.i.thr_comm

if.end24.i:                                       ; preds = %if.then17.i
  %uplink_rule25.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %uplink_rule25.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %uplink_rule25.i, align 4
  %tobool26.not.i = icmp eq ptr %67, null
  br i1 %tobool26.not.i, label %if.end24.i.if.end29.i_crit_edge, label %if.then27.i

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_del_flow_rules(ptr noundef nonnull %67) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end29.i_crit_edge
  %68 = ptrtoint ptr %uplink_rule25.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %uplink_rule25.i, align 4
  br label %promisc33.i.thr_comm

promisc33.i.thr_comm:                             ; preds = %if.end29.i, %if.then17.i.promisc33.i.thr_comm_crit_edge, %if.else.i.promisc33.i.thr_comm_crit_edge, %lor.end.promisc33.i.thr_comm_crit_edge, %if.end20.thread.promisc33.i.thr_comm_crit_edge
  %promisc_rule.i50 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 3
  %69 = ptrtoint ptr %promisc_rule.i50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %promisc_rule.i50, align 4
  %tobool.not.i82.i51 = icmp eq ptr %70, null
  %cmp.i83.i52 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  %spec.select.i84.i53 = or i1 %tobool.not.i82.i51, %cmp.i83.i52
  br i1 %spec.select.i84.i53, label %promisc33.i.thr_comm.cleanup_crit_edge, label %promisc33.i.thr_comm.if.then50.i_crit_edge

promisc33.i.thr_comm.if.then50.i_crit_edge:       ; preds = %promisc33.i.thr_comm
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

promisc33.i.thr_comm.cleanup_crit_edge:           ; preds = %promisc33.i.thr_comm
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

promisc33.i:                                      ; preds = %if.then11.i, %if.then6.i.promisc33.i_crit_edge
  %refcnt.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %refcnt.i, align 4
  %inc.i = add i32 %72, 1
  store i32 %inc.i, ptr %refcnt.i, align 4
  %promisc_rule.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 3
  %73 = ptrtoint ptr %promisc_rule.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %promisc_rule.i, align 4
  %tobool.not.i82.i = icmp eq ptr %74, null
  %cmp.i83.i = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %spec.select.i84.i = or i1 %tobool.not.i82.i, %cmp.i83.i
  %75 = xor i1 %tobool21.not, %spec.select.i84.i
  br i1 %75, label %if.end41.i, label %promisc33.i.cleanup_crit_edge

promisc33.i.cleanup_crit_edge:                    ; preds = %promisc33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.i:                                       ; preds = %promisc33.i
  br i1 %tobool21.not, label %if.else47.i, label %if.end41.i.if.then43.i_crit_edge

if.end41.i.if.then43.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.end41.i.if.then43.i_crit_edge, %if.end20.lor.end_crit_edge.promisc33.i_crit_edge.if.then43.i_crit_edge
  %promisc_rule.i5565 = phi ptr [ %promisc_rule.i, %if.end41.i.if.then43.i_crit_edge ], [ %promisc_rule.i57, %if.end20.lor.end_crit_edge.promisc33.i_crit_edge.if.then43.i_crit_edge ]
  %76 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vport1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i85.i) #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_v.i86.i) #9
  %78 = call ptr @memset(ptr %mac_c.i85.i, i32 0, i32 6)
  %79 = call ptr @memset(ptr %mac_v.i86.i, i32 0, i32 6)
  %call.i87.i = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext %77, i1 noundef zeroext true, ptr noundef nonnull %mac_c.i85.i, ptr noundef nonnull %mac_v.i86.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_v.i86.i) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i85.i) #9
  br label %cleanup.sink.split.i

if.else47.i:                                      ; preds = %if.end41.i
  br i1 %tobool.not.i82.i, label %if.else47.i.cleanup_crit_edge, label %if.else47.i.if.then50.i_crit_edge

if.else47.i.if.then50.i_crit_edge:                ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.else47.i.cleanup_crit_edge:                    ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50.i:                                      ; preds = %if.else47.i.if.then50.i_crit_edge, %promisc33.i.thr_comm.if.then50.i_crit_edge
  %80 = phi ptr [ %74, %if.else47.i.if.then50.i_crit_edge ], [ %70, %promisc33.i.thr_comm.if.then50.i_crit_edge ]
  %promisc_rule.i557172 = phi ptr [ %promisc_rule.i, %if.else47.i.if.then50.i_crit_edge ], [ %promisc_rule.i50, %promisc33.i.thr_comm.if.then50.i_crit_edge ]
  call void @mlx5_del_flow_rules(ptr noundef nonnull %80) #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then50.i, %if.then43.i
  %promisc_rule.i5564 = phi ptr [ %promisc_rule.i5565, %if.then43.i ], [ %promisc_rule.i557172, %if.then50.i ]
  %call.i87.sink.i = phi ptr [ %call.i87.i, %if.then43.i ], [ null, %if.then50.i ]
  %81 = ptrtoint ptr %promisc_rule.i5564 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i87.sink.i, ptr %promisc_rule.i5564, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.else47.i.cleanup_crit_edge, %promisc33.i.cleanup_crit_edge, %promisc33.i.thr_comm.cleanup_crit_edge, %if.end20.lor.end_crit_edge.promisc33.i_crit_edge.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %promisc_mc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %promisc_uc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %promisc_all) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_vport_enable(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef %enabled_events) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport_num to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.then_crit_edge, label %do.body8.i

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_vport_enable, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %if.then

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i154 = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i154, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.if.then_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.if.then_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mlx5_eswitch_get_vport.exit.if.then_crit_edge, %if.then13.i, %do.body.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i154176 = phi ptr [ %retval.0.i154, %mlx5_eswitch_get_vport.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.i ], [ inttoptr (i32 -1 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i154176 to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 13
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !201

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 834, i32 noundef 9, ptr noundef null) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %20 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end17.do.end44_crit_edge, label %do.body27

if.end17.do.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

do.body27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_esw_vport_enable.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_vport_enable, %if.then37)) #9
          to label %do.end44 [label %if.then37], !srcloc !196

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %esw, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_esw_vport_enable.__UNIQUE_ID_ddebug706, ptr noundef %24, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 836, i32 noundef %30, i32 noundef %conv.i) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body27, %if.end17.do.end44_crit_edge
  %vport1.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 12
  %31 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vport1.i, align 8
  %mode.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %33 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @esw_legacy_vport_acl_setup(ptr noundef nonnull %esw, ptr noundef %retval.0.i154) #9
  br label %esw_vport_setup_acl.exit.i

if.else.i.i:                                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call i32 @esw_vport_create_offloads_acl_tables(ptr noundef nonnull %esw, ptr noundef %retval.0.i154) #9
  br label %esw_vport_setup_acl.exit.i

esw_vport_setup_acl.exit.i:                       ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i155 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i155, label %if.end.i156, label %esw_vport_setup_acl.exit.i.done_crit_edge

esw_vport_setup_acl.exit.i.done_crit_edge:        ; preds = %esw_vport_setup_acl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end.i156:                                      ; preds = %esw_vport_setup_acl.exit.i
  %manager_vport.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 17
  %35 = ptrtoint ptr %manager_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %manager_vport.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %32)
  %cmp.i49.i = icmp eq i16 %36, %32
  br i1 %cmp.i49.i, label %if.end.i156.if.end48_crit_edge, label %if.end4.i

if.end.i156.if.end48_crit_edge:                   ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end4.i:                                        ; preds = %if.end.i156
  %37 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %esw, align 8
  %link_state.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %link_state.i, align 8
  %conv.i157 = trunc i32 %40 to i8
  %call5.i = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %38, i8 noundef zeroext 1, i16 noundef zeroext %32, i8 noundef zeroext 1, i8 noundef zeroext %conv.i157) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool6.not.i158 = icmp eq i16 %32, 0
  br i1 %tobool6.not.i158, label %if.end4.i.if.end14.i_crit_edge, label %if.then7.i

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %info.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10
  %41 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %esw, align 8
  %call10.i = tail call i32 @mlx5_modify_nic_vport_mac_address(ptr noundef %42, i16 noundef zeroext %32, ptr noundef %info.i) #9
  %43 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %esw, align 8
  %node_guid.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10, i32 2
  %45 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %node_guid.i, align 8
  %call13.i = tail call i32 @mlx5_modify_nic_vport_node_guid(ptr noundef %44, i16 noundef zeroext %32, i64 noundef %46) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then7.i, %if.end4.i.if.end14.i_crit_edge
  %vlan.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vlan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool17.not.i = icmp eq i16 %48, 0
  br i1 %tobool17.not.i, label %lor.rhs.i, label %if.end14.i.lor.end.i_crit_edge

if.end14.i.lor.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %qos.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10, i32 4
  %49 = ptrtoint ptr %qos.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %qos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool20.not.i = icmp eq i8 %50, 0
  %phi.cast.i = select i1 %tobool20.not.i, i8 0, i8 3
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end14.i.lor.end.i_crit_edge
  %51 = phi i8 [ 3, %if.end14.i.lor.end.i_crit_edge ], [ %phi.cast.i, %lor.rhs.i ]
  %52 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %esw, align 8
  %qos25.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10, i32 4
  %54 = ptrtoint ptr %qos25.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %qos25.i, align 4
  %call27.i = tail call fastcc i32 @modify_esw_vport_cvlan(ptr noundef %53, i16 noundef zeroext %32, i16 noundef zeroext %48, i8 noundef zeroext %55, i8 noundef zeroext %51) #9
  br label %if.end48

if.end48:                                         ; preds = %lor.end.i, %if.end.i156.if.end48_crit_edge
  %enabled_events49 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 14
  %56 = ptrtoint ptr %enabled_events49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %enabled_events, ptr %enabled_events49, align 4
  %57 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %enabled, align 2
  %58 = ptrtoint ptr %manager_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %manager_vport.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %59, i16 %vport_num)
  %cmp.i159 = icmp eq i16 %59, %vport_num
  br i1 %cmp.i159, label %if.end48.if.then57_crit_edge, label %lor.lhs.false

if.end48.if.then57_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vport_num)
  %tobool53.not = icmp eq i16 %vport_num, 0
  br i1 %tobool53.not, label %land.lhs.true, label %lor.lhs.false.if.end58_crit_edge

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

land.lhs.true:                                    ; preds = %lor.lhs.false
  %60 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %esw, align 8
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %61, i32 0, i32 8, i32 5
  %62 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %embedded_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.i.not = icmp eq i8 %63, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end58_crit_edge, label %land.lhs.true.if.then57_crit_edge

land.lhs.true.if.then57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %land.lhs.true.if.then57_crit_edge, %if.end48.if.then57_crit_edge
  %trusted = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10, i32 5
  %64 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load = load i8, ptr %trusted, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %trusted, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %land.lhs.true.if.end58_crit_edge, %lor.lhs.false.if.end58_crit_edge
  %65 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vport1.i, align 8
  %67 = ptrtoint ptr %manager_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %manager_vport.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %66)
  %cmp.i161 = icmp eq i16 %68, %66
  br i1 %cmp.i161, label %if.end58.if.end70_crit_edge, label %land.lhs.true61

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true61:                                  ; preds = %if.end58
  %69 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %caps, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %and63 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %land.lhs.true61.if.end70_crit_edge, label %if.then65

land.lhs.true61.if.end70_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then65:                                        ; preds = %land.lhs.true61
  %call66 = tail call i32 @mlx5_esw_vport_vhca_id_set(ptr noundef nonnull %esw, i16 noundef zeroext %vport_num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end70_crit_edge, label %err_vhca_mapping

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %land.lhs.true61.if.end70_crit_edge, %if.end58.if.end70_crit_edge
  %75 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %esw, align 8
  %embedded_cpu.i162 = getelementptr inbounds %struct.mlx5_core_dev, ptr %76, i32 0, i32 8, i32 5
  %77 = ptrtoint ptr %embedded_cpu.i162 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %embedded_cpu.i162, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.i163 = icmp ne i8 %78, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vport_num)
  %cmp = icmp eq i16 %vport_num, 0
  %or.cond = and i1 %cmp, %tobool.i163
  br i1 %or.cond, label %if.then77, label %if.end70.if.end82_crit_edge

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then77:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %info79 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i154, i32 0, i32 10
  %call81 = tail call i32 @mlx5_query_nic_vport_mac_address(ptr noundef %76, i16 noundef zeroext 0, i1 noundef zeroext true, ptr noundef %info79) #9
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end70.if.end82_crit_edge
  tail call void @esw_vport_change_handle_locked(ptr noundef %retval.0.i154)
  %enabled_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 9
  %79 = ptrtoint ptr %enabled_vports to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %enabled_vports, align 4
  %inc = add i32 %80, 1
  store i32 %inc, ptr %enabled_vports, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %81 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and84 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.done_crit_edge, label %do.body87

if.end82.done_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_esw_vport_enable.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_vport_enable, %if.then99)) #9
          to label %done [label %if.then99], !srcloc !196

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %esw, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 8
  %86 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i164 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i164 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task103, align 8
  %pid104 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 68
  %90 = ptrtoint ptr %pid104 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pid104, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_esw_vport_enable.__UNIQUE_ID_ddebug707, ptr noundef %85, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 869, i32 noundef %91, i32 noundef %conv.i) #9
  br label %done

done:                                             ; preds = %if.then99, %do.body87, %if.end82.done_crit_edge, %esw_vport_setup_acl.exit.i.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

err_vhca_mapping:                                 ; preds = %if.then65
  %92 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vport1.i, align 8
  %94 = ptrtoint ptr %manager_vport.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %manager_vport.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %93)
  %cmp.i.i167 = icmp eq i16 %95, %93
  br i1 %cmp.i.i167, label %err_vhca_mapping.if.end.i170_crit_edge, label %if.then.i

err_vhca_mapping.if.end.i170_crit_edge:           ; preds = %err_vhca_mapping
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i170

if.then.i:                                        ; preds = %err_vhca_mapping
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %esw, align 8
  %call2.i168 = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %97, i8 noundef zeroext 1, i16 noundef zeroext %93, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %if.end.i170

if.end.i170:                                      ; preds = %if.then.i, %err_vhca_mapping.if.end.i170_crit_edge
  tail call void @mlx5_esw_qos_vport_disable(ptr noundef nonnull %esw, ptr noundef %retval.0.i154) #9
  %98 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i9.i = icmp eq i32 %99, 1
  br i1 %cmp.i9.i, label %if.then.i.i171, label %if.else.i.i172

if.then.i.i171:                                   ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @esw_legacy_vport_acl_cleanup(ptr noundef nonnull %esw, ptr noundef %retval.0.i154) #9
  br label %esw_vport_cleanup.exit

if.else.i.i172:                                   ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @esw_vport_destroy_offloads_acl_tables(ptr noundef nonnull %esw, ptr noundef %retval.0.i154) #9
  br label %esw_vport_cleanup.exit

esw_vport_cleanup.exit:                           ; preds = %if.else.i.i172, %if.then.i.i171
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %esw_vport_cleanup.exit, %done, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ %retval.0.i.i, %done ], [ %call66, %esw_vport_cleanup.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_vport_vhca_id_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [128 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport_num to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.cleanup_crit_edge, label %do.body8.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_vport_disable, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %cleanup

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i47 = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.cleanup_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.cleanup_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i47, i32 0, i32 13
  %17 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.end.done_crit_edge, label %do.body

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %19 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end16_crit_edge, label %do.body6

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_esw_vport_disable.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_vport_disable, %if.then11)) #9
          to label %do.end16 [label %if.then11], !srcloc !196

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %esw, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_esw_vport_disable.__UNIQUE_ID_ddebug708, ptr noundef %23, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 892, i32 noundef %29, i32 noundef %conv.i) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then11, %do.body6, %do.body.do.end16_crit_edge
  %30 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %enabled, align 2
  %31 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %esw, align 8
  %vport19 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i47, i32 0, i32 12
  %33 = ptrtoint ptr %vport19 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vport19, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %in.i) #9
  %35 = getelementptr inbounds i8, ptr %in.i, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 508)
  %37 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 123011072, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %38 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 32, ptr %add.ptr13.i, align 4
  %conv.i48 = zext i16 %34 to i32
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %or47.i = or i32 %conv.i48, -2147483648
  %39 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or47.i, ptr %add.ptr28.i, align 4
  %add.ptr59.i = getelementptr inbounds i8, ptr %in.i, i32 260
  %40 = ptrtoint ptr %add.ptr59.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -2147483648, ptr %add.ptr59.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %41 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %32, ptr noundef nonnull %in.i, i32 noundef 512, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %in.i) #9
  %42 = ptrtoint ptr %vport19 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vport19, align 8
  %manager_vport.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 17
  %44 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %manager_vport.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %43)
  %cmp.i49 = icmp eq i16 %45, %43
  br i1 %cmp.i49, label %do.end16.if.end27_crit_edge, label %land.lhs.true

do.end16.if.end27_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %do.end16
  %46 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %caps, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %and24 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end27_crit_edge, label %if.then26

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_esw_vport_vhca_id_clear(ptr noundef nonnull %esw, i16 noundef zeroext %vport_num) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true.if.end27_crit_edge, %do.end16.if.end27_crit_edge
  call void @esw_vport_change_handle_locked(ptr noundef %retval.0.i47)
  %enabled_events = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i47, i32 0, i32 14
  %52 = ptrtoint ptr %enabled_events to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %enabled_events, align 4
  %53 = ptrtoint ptr %vport19 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vport19, align 8
  %55 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %manager_vport.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %54)
  %cmp.i.i = icmp eq i16 %56, %54
  br i1 %cmp.i.i, label %if.end27.if.end.i51_crit_edge, label %if.then.i

if.end27.if.end.i51_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i51

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %esw, align 8
  %call2.i50 = call i32 @mlx5_modify_vport_admin_state(ptr noundef %58, i8 noundef zeroext 1, i16 noundef zeroext %54, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.then.i, %if.end27.if.end.i51_crit_edge
  call void @mlx5_esw_qos_vport_disable(ptr noundef nonnull %esw, ptr noundef %retval.0.i47) #9
  %mode.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %59 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp.i9.i = icmp eq i32 %60, 1
  br i1 %cmp.i9.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  call void @esw_legacy_vport_acl_cleanup(ptr noundef nonnull %esw, ptr noundef %retval.0.i47) #9
  br label %esw_vport_cleanup.exit

if.else.i.i:                                      ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  call void @esw_vport_destroy_offloads_acl_tables(ptr noundef nonnull %esw, ptr noundef %retval.0.i47) #9
  br label %esw_vport_cleanup.exit

esw_vport_cleanup.exit:                           ; preds = %if.else.i.i, %if.then.i.i
  %enabled_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 9
  %61 = ptrtoint ptr %enabled_vports to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enabled_vports, align 4
  %dec = add i32 %62, -1
  store i32 %dec, ptr %enabled_vports, align 4
  br label %done

done:                                             ; preds = %esw_vport_cleanup.exit, %if.end.done_crit_edge
  call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %mlx5_eswitch_get_vport.exit.cleanup_crit_edge, %if.then13.i, %do.body.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_vport_vhca_id_clear(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_esw_query_functions(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 128, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in, align 4
  %and = and i32 %2, 65535
  %or = or i32 %and, 121634816
  store i32 %or, ptr %in, align 4
  %call9 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %call.i.i, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %if.end12

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef nonnull %call.i.i) #9
  %3 = inttoptr i32 %call9 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %if.end12 ], [ %call.i.i, %do.body.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_load_vport(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef %enabled_events) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5_esw_vport_enable(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef %enabled_events)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @esw_offloads_load_rep(ptr noundef %esw, i16 noundef zeroext %vport_num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_rep

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_rep:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %vport_num)
  br label %cleanup

cleanup:                                          ; preds = %err_rep, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_rep ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_offloads_load_rep(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_unload_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext %vport_num) #9
  tail call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %vport_num)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_offloads_unload_rep(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_unload_vf_vports(ptr noundef %esw, i16 noundef zeroext %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv = zext i16 %num_vfs to i32
  %call = call ptr @xa_find(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef %conv, i32 noundef 1) #9
  %tobool.not11 = icmp eq ptr %call, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vport.012 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %vport.012, i32 0, i32 13
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %vport2 = getelementptr inbounds %struct.mlx5_vport, ptr %vport.012, i32 0, i32 12
  %3 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vport2, align 8
  call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext %4) #9
  call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %4) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %call5 = call ptr @xa_find_after(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef %conv, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_load_vf_vports(ptr noundef %esw, i16 noundef zeroext %num_vfs, i32 noundef %enabled_events) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv = zext i16 %num_vfs to i32
  %call = call ptr @xa_find(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef %conv, i32 noundef 1) #9
  %tobool.not24 = icmp eq ptr %call, null
  br i1 %tobool.not24, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %vport.025 = phi ptr [ %call6, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %vport1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport.025, i32 0, i32 12
  %1 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vport1, align 8
  %call.i = call i32 @mlx5_esw_vport_enable(ptr noundef %esw, i16 noundef zeroext %2, i32 noundef %enabled_events) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.vf_err_crit_edge

for.body.vf_err_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %vf_err

if.end.i:                                         ; preds = %for.body
  %call1.i = call i32 @esw_offloads_load_rep(ptr noundef %esw, i16 noundef zeroext %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %err_rep.i

err_rep.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %2) #9
  br label %vf_err

for.inc:                                          ; preds = %if.end.i
  %call6 = call ptr @xa_find_after(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef %conv, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vf_err:                                           ; preds = %err_rep.i, %for.body.vf_err_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %err_rep.i ], [ %call.i, %for.body.vf_err_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %3 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %i.i, align 4
  %call.i16 = call ptr @xa_find(ptr noundef %vports, ptr noundef nonnull %i.i, i32 noundef %conv, i32 noundef 1) #9
  %tobool.not11.i = icmp eq ptr %call.i16, null
  br i1 %tobool.not11.i, label %vf_err.mlx5_eswitch_unload_vf_vports.exit_crit_edge, label %vf_err.for.body.i_crit_edge

vf_err.for.body.i_crit_edge:                      ; preds = %vf_err
  br label %for.body.i

vf_err.mlx5_eswitch_unload_vf_vports.exit_crit_edge: ; preds = %vf_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_unload_vf_vports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %vf_err.for.body.i_crit_edge
  %vport.012.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i16, %vf_err.for.body.i_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.012.i, i32 0, i32 13
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled.i, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i17

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i17:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %vport2.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.012.i, i32 0, i32 12
  %6 = ptrtoint ptr %vport2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport2.i, align 8
  call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext %7) #9
  call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %7) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i17, %for.body.i.for.inc.i_crit_edge
  %call5.i = call ptr @xa_find_after(ptr noundef %vports, ptr noundef nonnull %i.i, i32 noundef %conv, i32 noundef 1) #9
  %tobool.not.i18 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i18, label %for.inc.i.mlx5_eswitch_unload_vf_vports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mlx5_eswitch_unload_vf_vports.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_unload_vf_vports.exit

mlx5_eswitch_unload_vf_vports.exit:               ; preds = %for.inc.i.mlx5_eswitch_unload_vf_vports.exit_crit_edge, %vf_err.mlx5_eswitch_unload_vf_vports.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mlx5_eswitch_unload_vf_vports.exit, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %mlx5_eswitch_unload_vf_vports.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_enable_pf_vf_vports(ptr noundef %esw, i32 noundef %enabled_events) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mlx5_esw_vport_enable(ptr noundef %esw, i16 noundef zeroext 0, i32 noundef %enabled_events) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @esw_offloads_load_rep(ptr noundef %esw, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not.i = icmp eq i8 %3, 0
  br i1 %tobool.i.not.i, label %if.end.if.end4_crit_edge, label %host_pf_enable_hca.exit

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

host_pf_enable_hca.exit:                          ; preds = %if.end
  %call1.i38 = tail call i32 @mlx5_cmd_host_pf_enable_hca(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not, label %host_pf_enable_hca.exit.if.end4_crit_edge, label %host_pf_enable_hca.exit.pf_hca_err_crit_edge

host_pf_enable_hca.exit.pf_hca_err_crit_edge:     ; preds = %host_pf_enable_hca.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_hca_err

host_pf_enable_hca.exit.if.end4_crit_edge:        ; preds = %host_pf_enable_hca.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %host_pf_enable_hca.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esw, align 8
  %coredev_type.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %coredev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coredev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %mlx5_ecpf_vport_exists.exit, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

mlx5_ecpf_vport_exists.exit:                      ; preds = %if.end4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 0, i32 9
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %mlx5_ecpf_vport_exists.exit.if.end12_crit_edge, label %if.then7

mlx5_ecpf_vport_exists.exit.if.end12_crit_edge:   ; preds = %mlx5_ecpf_vport_exists.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %mlx5_ecpf_vport_exists.exit
  %call.i41 = tail call i32 @mlx5_esw_vport_enable(ptr noundef %esw, i16 noundef zeroext -2, i32 noundef %enabled_events) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.end.i45, label %if.then7.ecpf_err_crit_edge

if.then7.ecpf_err_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecpf_err

if.end.i45:                                       ; preds = %if.then7
  %call1.i43 = tail call i32 @esw_offloads_load_rep(ptr noundef %esw, i16 noundef zeroext -2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool2.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool2.not.i44, label %if.end.i45.if.end12_crit_edge, label %if.end.i45.ecpf_err.sink.split_crit_edge

if.end.i45.ecpf_err.sink.split_crit_edge:         ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecpf_err.sink.split

if.end.i45.if.end12_crit_edge:                    ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %if.end.i45.if.end12_crit_edge, %mlx5_ecpf_vport_exists.exit.if.end12_crit_edge, %if.end4.if.end12_crit_edge
  %num_vfs = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_vfs, align 8
  %call13 = tail call i32 @mlx5_eswitch_load_vf_vports(ptr noundef %esw, i16 noundef zeroext %14, i32 noundef %enabled_events)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %vf_err

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vf_err:                                           ; preds = %if.end12
  %15 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %esw, align 8
  %coredev_type.i.i49 = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %coredev_type.i.i49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %coredev_type.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i50 = icmp eq i32 %18, 0
  br i1 %cmp.i.i50, label %mlx5_ecpf_vport_exists.exit54, label %vf_err.ecpf_err_crit_edge

vf_err.ecpf_err_crit_edge:                        ; preds = %vf_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecpf_err

mlx5_ecpf_vport_exists.exit54:                    ; preds = %vf_err
  %arrayidx.i51 = getelementptr %struct.mlx5_core_dev, ptr %16, i32 0, i32 8, i32 0, i32 9
  %19 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i51, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i52.not = icmp eq i32 %23, 0
  br i1 %tobool.i52.not, label %mlx5_ecpf_vport_exists.exit54.ecpf_err_crit_edge, label %if.then19

mlx5_ecpf_vport_exists.exit54.ecpf_err_crit_edge: ; preds = %mlx5_ecpf_vport_exists.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %ecpf_err

if.then19:                                        ; preds = %mlx5_ecpf_vport_exists.exit54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext -2) #9
  br label %ecpf_err.sink.split

ecpf_err.sink.split:                              ; preds = %if.then19, %if.end.i45.ecpf_err.sink.split_crit_edge
  %ret.0.ph = phi i32 [ %call13, %if.then19 ], [ %call1.i43, %if.end.i45.ecpf_err.sink.split_crit_edge ]
  tail call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext -2) #9
  br label %ecpf_err

ecpf_err:                                         ; preds = %ecpf_err.sink.split, %mlx5_ecpf_vport_exists.exit54.ecpf_err_crit_edge, %vf_err.ecpf_err_crit_edge, %if.then7.ecpf_err_crit_edge
  %ret.0 = phi i32 [ %call13, %mlx5_ecpf_vport_exists.exit54.ecpf_err_crit_edge ], [ %call.i41, %if.then7.ecpf_err_crit_edge ], [ %call13, %vf_err.ecpf_err_crit_edge ], [ %ret.0.ph, %ecpf_err.sink.split ]
  %24 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i55 = getelementptr inbounds %struct.mlx5_core_dev, ptr %25, i32 0, i32 8, i32 5
  %26 = ptrtoint ptr %embedded_cpu.i.i55 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %embedded_cpu.i.i55, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not.i56 = icmp eq i8 %27, 0
  br i1 %tobool.i.not.i56, label %ecpf_err.pf_hca_err_crit_edge, label %if.end.i58

ecpf_err.pf_hca_err_crit_edge:                    ; preds = %ecpf_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %pf_hca_err

if.end.i58:                                       ; preds = %ecpf_err
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i57 = tail call i32 @mlx5_cmd_host_pf_disable_hca(ptr noundef %25) #9
  br label %pf_hca_err

pf_hca_err:                                       ; preds = %if.end.i58, %ecpf_err.pf_hca_err_crit_edge, %host_pf_enable_hca.exit.pf_hca_err_crit_edge
  %ret.1 = phi i32 [ %call1.i38, %host_pf_enable_hca.exit.pf_hca_err_crit_edge ], [ %ret.0, %ecpf_err.pf_hca_err_crit_edge ], [ %ret.0, %if.end.i58 ]
  tail call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext 0) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %pf_hca_err, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.1, %pf_hca_err ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_disable_pf_vf_vports(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_vfs = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_vfs, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %2 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i.i, align 4
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %1 to i32
  %call.i = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef %conv.i, i32 noundef 1) #9
  %tobool.not11.i = icmp eq ptr %call.i, null
  br i1 %tobool.not11.i, label %entry.mlx5_eswitch_unload_vf_vports.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlx5_eswitch_unload_vf_vports.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_unload_vf_vports.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %vport.012.i = phi ptr [ %call5.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.012.i, i32 0, i32 13
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %vport2.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.012.i, i32 0, i32 12
  %5 = ptrtoint ptr %vport2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vport2.i, align 8
  call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext %6) #9
  call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext %6) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %call5.i = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef %conv.i, i32 noundef 1) #9
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %for.inc.i.mlx5_eswitch_unload_vf_vports.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.mlx5_eswitch_unload_vf_vports.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_unload_vf_vports.exit

mlx5_eswitch_unload_vf_vports.exit:               ; preds = %for.inc.i.mlx5_eswitch_unload_vf_vports.exit_crit_edge, %entry.mlx5_eswitch_unload_vf_vports.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %coredev_type.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %coredev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %coredev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %mlx5_ecpf_vport_exists.exit, label %mlx5_eswitch_unload_vf_vports.exit.if.end_crit_edge

mlx5_eswitch_unload_vf_vports.exit.if.end_crit_edge: ; preds = %mlx5_eswitch_unload_vf_vports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mlx5_ecpf_vport_exists.exit:                      ; preds = %mlx5_eswitch_unload_vf_vports.exit
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %8, i32 0, i32 8, i32 0, i32 9
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %mlx5_ecpf_vport_exists.exit.if.end_crit_edge, label %if.then

mlx5_ecpf_vport_exists.exit.if.end_crit_edge:     ; preds = %mlx5_ecpf_vport_exists.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_ecpf_vport_exists.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext -2) #9
  call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext -2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_ecpf_vport_exists.exit.if.end_crit_edge, %mlx5_eswitch_unload_vf_vports.exit.if.end_crit_edge
  %16 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 8, i32 5
  %18 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.not.i = icmp eq i8 %19, 0
  br i1 %tobool.i.not.i, label %if.end.host_pf_disable_hca.exit_crit_edge, label %if.end.i7

if.end.host_pf_disable_hca.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %host_pf_disable_hca.exit

if.end.i7:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = call i32 @mlx5_cmd_host_pf_disable_hca(ptr noundef %17) #9
  br label %host_pf_disable_hca.exit

host_pf_disable_hca.exit:                         ; preds = %if.end.i7, %if.end.host_pf_disable_hca.exit_crit_edge
  call void @esw_offloads_unload_rep(ptr noundef %esw, i16 noundef zeroext 0) #9
  call void @mlx5_esw_vport_disable(ptr noundef %esw, i16 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_enable_locked(ptr noundef %esw, i32 noundef %mode, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.mlx5_esw_event_info, align 2
  %in.i.i = alloca [4 x i32], align 4
  %val.i = alloca %union.devlink_param_value, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !200

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1245, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 16
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool24.not = icmp sgt i32 %6, -1
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call.i86 = tail call ptr @priv_to_devlink(ptr noundef %2) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i) #9
  %9 = call ptr @memset(ptr %val.i, i32 255, i32 32)
  %call1.i = call i32 @devlink_param_driverinit_value_get(ptr noundef %call.i86, i32 noundef 18, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  br label %mlx5_eswitch_get_devlink_param.exit

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %esw, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.69, i32 noundef 15) #12
  br label %mlx5_eswitch_get_devlink_param.exit

mlx5_eswitch_get_devlink_param.exit:              ; preds = %do.end.i, %if.then.i
  %.sink.i = phi i32 [ %11, %if.then.i ], [ 15, %do.end.i ]
  %16 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 20
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i) #9
  %18 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %esw, align 8
  %eswitch.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %19, i32 0, i32 17, i32 28
  %20 = ptrtoint ptr %eswitch.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eswitch.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %mlx5_eswitch_get_devlink_param.exit.mlx5_eswitch_get_total_vports.exit.i_crit_edge, label %mlx5_esw_allowed.exit.i.i

mlx5_eswitch_get_devlink_param.exit.mlx5_eswitch_get_total_vports.exit.i_crit_edge: ; preds = %mlx5_eswitch_get_devlink_param.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_total_vports.exit.i

mlx5_esw_allowed.exit.i.i:                        ; preds = %mlx5_eswitch_get_devlink_param.exit
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %25, i32 13
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i.i, align 4
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.i.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool1.i.not.i.i, label %mlx5_esw_allowed.exit.i.i.mlx5_eswitch_get_total_vports.exit.i_crit_edge, label %cond.true.i.i

mlx5_esw_allowed.exit.i.i.mlx5_eswitch_get_total_vports.exit.i_crit_edge: ; preds = %mlx5_esw_allowed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_total_vports.exit.i

cond.true.i.i:                                    ; preds = %mlx5_esw_allowed.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %total_vports.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %21, i32 0, i32 8
  %29 = ptrtoint ptr %total_vports.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_vports.i.i, align 8
  %phi.cast.i = and i32 %30, 65535
  br label %mlx5_eswitch_get_total_vports.exit.i

mlx5_eswitch_get_total_vports.exit.i:             ; preds = %cond.true.i.i, %mlx5_esw_allowed.exit.i.i.mlx5_eswitch_get_total_vports.exit.i_crit_edge, %mlx5_eswitch_get_devlink_param.exit.mlx5_eswitch_get_total_vports.exit.i_crit_edge
  %cond.i.i = phi i32 [ %phi.cast.i, %cond.true.i.i ], [ 0, %mlx5_esw_allowed.exit.i.i.mlx5_eswitch_get_total_vports.exit.i_crit_edge ], [ 0, %mlx5_eswitch_get_devlink_param.exit.mlx5_eswitch_get_total_vports.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %19, i32 0, i32 8, i32 0, i32 8
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr i32, ptr %32, i32 48
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool.not.i87 = icmp sgt i32 %34, -1
  br i1 %tobool.not.i87, label %do.end.i89, label %if.then.i88

if.then.i88:                                      ; preds = %mlx5_eswitch_get_total_vports.exit.i
  %call2.i = call i32 @mlx5_fs_egress_acls_init(ptr noundef %19, i32 noundef %cond.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then.i88.if.end5.i_crit_edge, label %if.then.i88.cleanup_crit_edge

if.then.i88.cleanup_crit_edge:                    ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i88.if.end5.i_crit_edge:                  ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

do.end.i89:                                       ; preds = %mlx5_eswitch_get_total_vports.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %19, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.71) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i89, %if.then.i88.if.end5.i_crit_edge
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr11.i = getelementptr i32, ptr %38, i32 32
  %39 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %tobool14.not.i = icmp sgt i32 %40, -1
  br i1 %tobool14.not.i, label %do.end23.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end5.i
  %call16.i = call i32 @mlx5_fs_ingress_acls_init(ptr noundef %19, i32 noundef %cond.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then15.i.if.end34_crit_edge, label %err26.i

if.then15.i.if.end34_crit_edge:                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end23.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %19, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.74) #12
  br label %if.end34

err26.i:                                          ; preds = %if.then15.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr32.i = getelementptr i32, ptr %44, i32 48
  %45 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %tobool35.not.i = icmp sgt i32 %46, -1
  br i1 %tobool35.not.i, label %err26.i.cleanup_crit_edge, label %if.then36.i

err26.i.cleanup_crit_edge:                        ; preds = %err26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36.i:                                      ; preds = %err26.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_fs_egress_acls_cleanup(ptr noundef %19) #9
  br label %cleanup

if.end34:                                         ; preds = %do.end23.i, %if.then15.i.if.end34_crit_edge
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %47 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i, label %if.end34.if.end27.i_crit_edge, label %land.rhs.i

if.end34.if.end27.i_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

land.rhs.i:                                       ; preds = %if.end34
  %.b58.i = load i1, ptr @mlx5_eswitch_update_num_of_vfs.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.if.end27.i_crit_edge, label %if.then.i90, !prof !201

land.rhs.i.if.end27.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then.i90:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mlx5_eswitch_update_num_of_vfs.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1155, i32 noundef 9, ptr noundef null) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i90, %land.rhs.i.if.end27.i_crit_edge, %if.end34.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs)
  %cmp35.i = icmp slt i32 %num_vfs, 0
  br i1 %cmp35.i, label %if.end27.i.mlx5_eswitch_update_num_of_vfs.exit_crit_edge, label %if.end37.i

if.end27.i.mlx5_eswitch_update_num_of_vfs.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_update_num_of_vfs.exit

if.end37.i:                                       ; preds = %if.end27.i
  %49 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %50, i32 0, i32 8, i32 5
  %51 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i, label %if.end37.i.if.then38.i_crit_edge, label %mlx5_core_is_ecpf_esw_manager.exit.i

if.end37.i.if.then38.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

mlx5_core_is_ecpf_esw_manager.exit.i:             ; preds = %if.end37.i
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %50, i32 0, i32 8
  %53 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %54, i32 13
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i, align 4
  %57 = and i32 %56, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.i.not.i = icmp eq i32 %57, 0
  br i1 %tobool2.i.not.i, label %mlx5_core_is_ecpf_esw_manager.exit.i.if.then38.i_crit_edge, label %if.end40.i

mlx5_core_is_ecpf_esw_manager.exit.i.if.then38.i_crit_edge: ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then38.i:                                      ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i.if.then38.i_crit_edge, %if.end37.i.if.then38.i_crit_edge
  %conv.i = trunc i32 %num_vfs to i16
  %num_vfs39.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %58 = ptrtoint ptr %num_vfs39.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %num_vfs39.i, align 8
  br label %mlx5_eswitch_update_num_of_vfs.exit

if.end40.i:                                       ; preds = %mlx5_core_is_ecpf_esw_manager.exit.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i) #9
  %59 = call ptr @memset(ptr %in.i.i, i32 0, i32 16)
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 128, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i59.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i59.i, label %mlx5_esw_query_functions.exit.thread.i, label %do.body.i.i

mlx5_esw_query_functions.exit.thread.i:           ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #9
  br label %mlx5_eswitch_update_num_of_vfs.exit

do.body.i.i:                                      ; preds = %if.end40.i
  %60 = ptrtoint ptr %in.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %in.i.i, align 4
  %and.i.i = and i32 %61, 65535
  %or.i.i = or i32 %and.i.i, 121634816
  store i32 %or.i.i, ptr %in.i.i, align 4
  %call9.i.i = call i32 @mlx5_cmd_exec(ptr noundef %50, ptr noundef nonnull %in.i.i, i32 noundef 16, ptr noundef nonnull %call.i.i.i.i, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %do.body.i.i.mlx5_esw_query_functions.exit.i_crit_edge, label %if.end12.i.i

do.body.i.i.mlx5_esw_query_functions.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_query_functions.exit.i

if.end12.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #9
  %62 = inttoptr i32 %call9.i.i to ptr
  br label %mlx5_esw_query_functions.exit.i

mlx5_esw_query_functions.exit.i:                  ; preds = %if.end12.i.i, %do.body.i.i.mlx5_esw_query_functions.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %62, %if.end12.i.i ], [ %call.i.i.i.i, %do.body.i.i.mlx5_esw_query_functions.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i) #9
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_esw_query_functions.exit.i.mlx5_eswitch_update_num_of_vfs.exit_crit_edge, label %if.end45.i

mlx5_esw_query_functions.exit.i.mlx5_eswitch_update_num_of_vfs.exit_crit_edge: ; preds = %mlx5_esw_query_functions.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_update_num_of_vfs.exit

if.end45.i:                                       ; preds = %mlx5_esw_query_functions.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i91 = getelementptr i32, ptr %retval.0.i.i, i32 4
  %63 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i91, align 4
  %conv46.i = trunc i32 %64 to i16
  %num_vfs48.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %65 = ptrtoint ptr %num_vfs48.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv46.i, ptr %num_vfs48.i, align 8
  call void @kvfree(ptr noundef %retval.0.i.i) #9
  br label %mlx5_eswitch_update_num_of_vfs.exit

mlx5_eswitch_update_num_of_vfs.exit:              ; preds = %if.end45.i, %mlx5_esw_query_functions.exit.i.mlx5_eswitch_update_num_of_vfs.exit_crit_edge, %mlx5_esw_query_functions.exit.thread.i, %if.then38.i, %if.end27.i.mlx5_eswitch_update_num_of_vfs.exit_crit_edge
  %66 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mode, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp36 = icmp eq i32 %mode, 1
  br i1 %cmp36, label %if.end42.thread, label %if.end42

if.end42:                                         ; preds = %mlx5_eswitch_update_num_of_vfs.exit
  %67 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %esw, align 8
  call void @mlx5_dev_list_lock() #9
  %call.i92 = call i32 @mlx5_rescan_drivers_locked(ptr noundef %68) #9
  call void @mlx5_dev_list_unlock() #9
  %call41 = call i32 @esw_offloads_enable(ptr noundef %esw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end42.if.end45_crit_edge, label %abort

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end42.thread:                                  ; preds = %mlx5_eswitch_update_num_of_vfs.exit
  %call38 = call i32 @esw_legacy_enable(ptr noundef %esw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool43.not107 = icmp eq i32 %call38, 0
  br i1 %tobool43.not107, label %if.end42.thread.if.end45_crit_edge, label %abort.thread

if.end42.thread.if.end45_crit_edge:               ; preds = %if.end42.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

abort.thread:                                     ; preds = %if.end42.thread
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %mode.i, align 8
  br label %if.end60

if.end45:                                         ; preds = %if.end42.thread.if.end45_crit_edge, %if.end42.if.end45_crit_edge
  %nb.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 1
  %70 = ptrtoint ptr %nb.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @eswitch_vport_event, ptr %nb.i, align 4
  %event_type.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %event_type.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 13, ptr %event_type.i, align 4
  %72 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %esw, align 8
  %call.i93 = call i32 @mlx5_eq_notifier_register(ptr noundef %73, ptr noundef %nb.i) #9
  %74 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp.i = icmp eq i32 %75, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end45.mlx5_eswitch_event_handlers_register.exit_crit_edge

if.end45.mlx5_eswitch_event_handlers_register.exit_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_event_handlers_register.exit

land.lhs.true.i:                                  ; preds = %if.end45
  %76 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %77, i32 0, i32 8, i32 5
  %78 = ptrtoint ptr %embedded_cpu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %embedded_cpu.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i.i.i95 = icmp eq i8 %79, 0
  br i1 %tobool.not.i.i.i95, label %land.lhs.true.i.mlx5_eswitch_event_handlers_register.exit_crit_edge, label %mlx5_eswitch_is_funcs_handler.exit.i

land.lhs.true.i.mlx5_eswitch_event_handlers_register.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_event_handlers_register.exit

mlx5_eswitch_is_funcs_handler.exit.i:             ; preds = %land.lhs.true.i
  %caps.i.i.i96 = getelementptr inbounds %struct.mlx5_core_dev, ptr %77, i32 0, i32 8
  %80 = ptrtoint ptr %caps.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %caps.i.i.i96, align 8
  %add.ptr.i.i.i97 = getelementptr i32, ptr %81, i32 13
  %82 = ptrtoint ptr %add.ptr.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i.i97, align 4
  %84 = and i32 %83, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool2.i.i.not.i = icmp eq i32 %84, 0
  br i1 %tobool2.i.i.not.i, label %mlx5_eswitch_is_funcs_handler.exit.i.mlx5_eswitch_event_handlers_register.exit_crit_edge, label %do.body6.i

mlx5_eswitch_is_funcs_handler.exit.i.mlx5_eswitch_event_handlers_register.exit_crit_edge: ; preds = %mlx5_eswitch_is_funcs_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_event_handlers_register.exit

do.body6.i:                                       ; preds = %mlx5_eswitch_is_funcs_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %esw_funcs.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19
  %85 = ptrtoint ptr %esw_funcs.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @mlx5_esw_funcs_changed_handler, ptr %esw_funcs.i, align 8
  %event_type12.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 0, i32 1
  %86 = ptrtoint ptr %event_type12.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 14, ptr %event_type12.i, align 4
  %call17.i = call i32 @mlx5_eq_notifier_register(ptr noundef %77, ptr noundef %esw_funcs.i) #9
  br label %mlx5_eswitch_event_handlers_register.exit

mlx5_eswitch_event_handlers_register.exit:        ; preds = %do.body6.i, %mlx5_eswitch_is_funcs_handler.exit.i.mlx5_eswitch_event_handlers_register.exit_crit_edge, %land.lhs.true.i.mlx5_eswitch_event_handlers_register.exit_crit_edge, %if.end45.mlx5_eswitch_event_handlers_register.exit_crit_edge
  %87 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %esw, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %cond = select i1 %cmp36, ptr @.str.20, ptr @.str.21
  %num_vfs52 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %91 = ptrtoint ptr %num_vfs52 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num_vfs52, align 8
  %conv = zext i16 %92 to i32
  %enabled_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 9
  %93 = ptrtoint ptr %enabled_vports to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %enabled_vports, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %90, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %94) #12
  %conv53 = trunc i32 %mode to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %info.i) #9
  %95 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv53, ptr %info.i, align 2
  %n_head.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 21
  %call.i98 = call i32 @blocking_notifier_call_chain(ptr noundef %n_head.i, i32 noundef 0, ptr noundef nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %info.i) #9
  br label %cleanup

abort:                                            ; preds = %if.end42
  %96 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp55 = icmp eq i32 %mode, 2
  br i1 %cmp55, label %if.then57, label %abort.if.end60_crit_edge

abort.if.end60_crit_edge:                         ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %esw, align 8
  call void @mlx5_dev_list_lock() #9
  %call.i99 = call i32 @mlx5_rescan_drivers_locked(ptr noundef %98) #9
  call void @mlx5_dev_list_unlock() #9
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %abort.if.end60_crit_edge, %abort.thread
  %err.0108111 = phi i32 [ %call38, %abort.thread ], [ %call41, %if.then57 ], [ %call41, %abort.if.end60_crit_edge ]
  %99 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %esw, align 8
  %arrayidx.i100 = getelementptr %struct.mlx5_core_dev, ptr %100, i32 0, i32 8, i32 0, i32 8
  %101 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i100, align 8
  %add.ptr.i101 = getelementptr i32, ptr %102, i32 32
  %103 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %tobool.not.i102 = icmp sgt i32 %104, -1
  br i1 %tobool.not.i102, label %if.end60.if.end.i_crit_edge, label %if.then.i103

if.end60.if.end.i_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i103:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_fs_ingress_acls_cleanup(ptr noundef %100) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i103, %if.end60.if.end.i_crit_edge
  %105 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i100, align 8
  %add.ptr7.i = getelementptr i32, ptr %106, i32 48
  %107 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %tobool10.not.i = icmp sgt i32 %108, -1
  br i1 %tobool10.not.i, label %if.end.i.cleanup_crit_edge, label %if.then11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_fs_egress_acls_cleanup(ptr noundef %100) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i, %if.end.i.cleanup_crit_edge, %mlx5_eswitch_event_handlers_register.exit, %if.then36.i, %err26.i.cleanup_crit_edge, %if.then.i88.cleanup_crit_edge, %do.end28
  %retval.0 = phi i32 [ 0, %mlx5_eswitch_event_handlers_register.exit ], [ -95, %do.end28 ], [ %err.0108111, %if.end.i.cleanup_crit_edge ], [ %err.0108111, %if.then11.i ], [ %call16.i, %err26.i.cleanup_crit_edge ], [ %call16.i, %if.then36.i ], [ %call2.i, %if.then.i88.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_legacy_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_offloads_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_enable(ptr noundef %esw, i32 noundef %num_vfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esw, align 8
  tail call void @mlx5_lag_disable_change(ptr noundef %10) #9
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11
  tail call void @down_write(ptr noundef %mode_lock) #9
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @mlx5_eswitch_enable_locked(ptr noundef nonnull %esw, i32 noundef 1, i32 noundef %num_vfs)
  br label %if.end15

if.else:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8 = icmp eq i32 %12, 1
  %cond = select i1 %cmp8, i32 11, i32 1
  %conv = trunc i32 %num_vfs to i16
  %call9 = tail call i32 @mlx5_eswitch_load_vf_vports(ptr noundef nonnull %esw, i16 noundef zeroext %conv, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %num_vfs13 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %num_vfs13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %num_vfs13, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.then11 ], [ %call9, %if.else.if.end15_crit_edge ]
  tail call void @up_write(ptr noundef %mode_lock) #9
  br i1 %cmp, label %if.then18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esw, align 8
  tail call void @mlx5_lag_enable_change(ptr noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ %ret.0, %if.then18 ], [ %ret.0, %if.end15.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_lag_disable_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_lag_enable_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_disable_locked(ptr noundef %esw, i1 noundef zeroext %clear_vf) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca i32, align 4
  %info.i = alloca %struct.mlx5_esw_event_info, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11, i32 6
  %call1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !200

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1338, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end30:                                         ; preds = %if.end
  %5 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esw, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp33 = icmp eq i32 %4, 1
  %cond = select i1 %cmp33, ptr @.str.20, ptr @.str.21
  %num_vfs = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_vfs, align 8
  %conv = zext i16 %10 to i32
  %enabled_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 9
  %11 = ptrtoint ptr %enabled_vports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enabled_vports, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond, i32 noundef %conv, i32 noundef %12) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %info.i) #9
  %13 = ptrtoint ptr %info.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %info.i, align 2
  %n_head.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 21
  %call.i = call i32 @blocking_notifier_call_chain(ptr noundef %n_head.i, i32 noundef 0, ptr noundef nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %info.i) #9
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end30.mlx5_eswitch_event_handlers_unregister.exit_crit_edge

do.end30.mlx5_eswitch_event_handlers_unregister.exit_crit_edge: ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_event_handlers_unregister.exit

land.lhs.true.i:                                  ; preds = %do.end30
  %16 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %esw, align 8
  %embedded_cpu.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 8, i32 5
  %18 = ptrtoint ptr %embedded_cpu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %embedded_cpu.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.mlx5_eswitch_event_handlers_unregister.exit_crit_edge, label %mlx5_eswitch_is_funcs_handler.exit.i

land.lhs.true.i.mlx5_eswitch_event_handlers_unregister.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_event_handlers_unregister.exit

mlx5_eswitch_is_funcs_handler.exit.i:             ; preds = %land.lhs.true.i
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %21, i32 13
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 4
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.i.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool2.i.i.not.i, label %mlx5_eswitch_is_funcs_handler.exit.i.mlx5_eswitch_event_handlers_unregister.exit_crit_edge, label %if.then.i

mlx5_eswitch_is_funcs_handler.exit.i.mlx5_eswitch_event_handlers_unregister.exit_crit_edge: ; preds = %mlx5_eswitch_is_funcs_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_event_handlers_unregister.exit

if.then.i:                                        ; preds = %mlx5_eswitch_is_funcs_handler.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %esw_funcs.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19
  %call2.i = call i32 @mlx5_eq_notifier_unregister(ptr noundef %17, ptr noundef %esw_funcs.i) #9
  br label %mlx5_eswitch_event_handlers_unregister.exit

mlx5_eswitch_event_handlers_unregister.exit:      ; preds = %if.then.i, %mlx5_eswitch_is_funcs_handler.exit.i.mlx5_eswitch_event_handlers_unregister.exit_crit_edge, %land.lhs.true.i.mlx5_eswitch_event_handlers_unregister.exit_crit_edge, %do.end30.mlx5_eswitch_event_handlers_unregister.exit_crit_edge
  %25 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %esw, align 8
  %nb4.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 1
  %call5.i = call i32 @mlx5_eq_notifier_unregister(ptr noundef %26, ptr noundef %nb4.i) #9
  %work_queue.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 5
  %27 = ptrtoint ptr %work_queue.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %work_queue.i, align 4
  call void @flush_workqueue(ptr noundef %28) #9
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %30, label %if.end43.thread [
    i32 1, label %if.then37
    i32 2, label %if.then41
  ]

if.end43.thread:                                  ; preds = %mlx5_eswitch_event_handlers_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %mode, align 8
  br label %if.end51

if.then37:                                        ; preds = %mlx5_eswitch_event_handlers_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @esw_legacy_disable(ptr noundef %esw) #9
  br label %if.end43

if.then41:                                        ; preds = %mlx5_eswitch_event_handlers_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @esw_offloads_disable(ptr noundef %esw) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then37
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %mode, align 8
  store i32 0, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp46 = icmp eq i32 %.pr, 2
  br i1 %cmp46, label %if.then48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %esw, align 8
  call void @mlx5_dev_list_lock() #9
  %call.i75 = call i32 @mlx5_rescan_drivers_locked(ptr noundef %35) #9
  call void @mlx5_dev_list_unlock() #9
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.if.end51_crit_edge, %if.end43.thread
  call void @devlink_rate_nodes_destroy(ptr noundef %call) #9
  %36 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %esw, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %37, i32 0, i32 8, i32 0, i32 8
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr i32, ptr %39, i32 32
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %tobool.not.i = icmp sgt i32 %41, -1
  br i1 %tobool.not.i, label %if.end51.if.end.i_crit_edge, label %if.then.i76

if.end51.if.end.i_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i76:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_fs_ingress_acls_cleanup(ptr noundef %37) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i76, %if.end51.if.end.i_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr7.i = getelementptr i32, ptr %43, i32 48
  %44 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %tobool10.not.i = icmp sgt i32 %45, -1
  br i1 %tobool10.not.i, label %if.end.i.mlx5_esw_acls_ns_cleanup.exit_crit_edge, label %if.then11.i

if.end.i.mlx5_esw_acls_ns_cleanup.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_acls_ns_cleanup.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_fs_egress_acls_cleanup(ptr noundef %37) #9
  br label %mlx5_esw_acls_ns_cleanup.exit

mlx5_esw_acls_ns_cleanup.exit:                    ; preds = %if.then11.i, %if.end.i.mlx5_esw_acls_ns_cleanup.exit_crit_edge
  br i1 %clear_vf, label %if.then53, label %mlx5_esw_acls_ns_cleanup.exit.cleanup_crit_edge

mlx5_esw_acls_ns_cleanup.exit.cleanup_crit_edge:  ; preds = %mlx5_esw_acls_ns_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %mlx5_esw_acls_ns_cleanup.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %46 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %i.i, align 4
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %47 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_vfs, align 8
  %conv.i = zext i16 %48 to i32
  %call.i77 = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef %conv.i, i32 noundef 1) #9
  %tobool.not13.i = icmp eq ptr %call.i77, null
  br i1 %tobool.not13.i, label %if.then53.mlx5_eswitch_clear_vf_vports_info.exit_crit_edge, label %if.then53.for.body.i_crit_edge

if.then53.for.body.i_crit_edge:                   ; preds = %if.then53
  br label %for.body.i

if.then53.mlx5_eswitch_clear_vf_vports_info.exit_crit_edge: ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_clear_vf_vports_info.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then53.for.body.i_crit_edge
  %vport.014.i = phi ptr [ %call6.i, %for.body.i.for.body.i_crit_edge ], [ %call.i77, %if.then53.for.body.i_crit_edge ]
  %info.i78 = getelementptr inbounds %struct.mlx5_vport, ptr %vport.014.i, i32 0, i32 10
  %link_state.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.014.i, i32 0, i32 10, i32 3
  %49 = call ptr @memset(ptr %info.i78, i32 0, i32 48)
  %50 = ptrtoint ptr %link_state.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %link_state.i, align 8
  %51 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %num_vfs, align 8
  %conv5.i = zext i16 %52 to i32
  %call6.i = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef %conv5.i, i32 noundef 1) #9
  %tobool.not.i79 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i79, label %for.body.i.mlx5_eswitch_clear_vf_vports_info.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.mlx5_eswitch_clear_vf_vports_info.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_clear_vf_vports_info.exit

mlx5_eswitch_clear_vf_vports_info.exit:           ; preds = %for.body.i.mlx5_eswitch_clear_vf_vports_info.exit_crit_edge, %if.then53.mlx5_eswitch_clear_vf_vports_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mlx5_eswitch_clear_vf_vports_info.exit, %mlx5_esw_acls_ns_cleanup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_legacy_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_offloads_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_rate_nodes_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_disable(ptr noundef %esw, i1 noundef zeroext %clear_vf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %mlx5_esw_allowed.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.return_crit_edge, label %if.end

mlx5_esw_allowed.exit.return_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  tail call void @mlx5_lag_disable_change(ptr noundef %8) #9
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11
  tail call void @down_write(ptr noundef %mode_lock) #9
  tail call void @mlx5_eswitch_disable_locked(ptr noundef nonnull %esw, i1 noundef zeroext %clear_vf)
  %num_vfs = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %num_vfs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %num_vfs, align 8
  tail call void @up_write(ptr noundef %mode_lock) #9
  %10 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %esw, align 8
  tail call void @mlx5_lag_enable_change(ptr noundef %11) #9
  br label %return

return:                                           ; preds = %if.end, %mlx5_esw_allowed.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_sf_max_hpf_functions(ptr noundef %dev, ptr nocapture noundef writeonly %max_sfs, ptr nocapture noundef writeonly %sf_base_id) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %embedded_cpu.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %embedded_cpu.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %embedded_cpu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %max_sfs to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %max_sfs, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4112) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #9
  %4 = getelementptr inbounds i8, ptr %in.i, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %6 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %7 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %add.ptr13.i, align 4
  %add.ptr28.i = getelementptr inbounds i32, ptr %in.i, i32 2
  %8 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2147483648, ptr %add.ptr28.i, align 4
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %call7.i.i, i32 noundef 4112) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_free_crit_edge

if.end3.out_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr8 = getelementptr i8, ptr %call7.i.i, i32 216
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr8, align 8
  %shr = lshr i32 %10, 16
  %conv = trunc i32 %shr to i16
  %11 = ptrtoint ptr %max_sfs to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %max_sfs, align 2
  %add.ptr9 = getelementptr i8, ptr %call7.i.i, i32 236
  %12 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr9, align 4
  %conv12 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %sf_base_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv12, ptr %sf_base_id, align 2
  br label %out_free

out_free:                                         ; preds = %if.end7, %if.end3.out_free_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %out_free ], [ 0, %if.then ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca i32, align 4
  %i.i.i = alloca i32, align 4
  %in.i.i.i = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, -2147482880
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483392, i32 %4)
  %5 = icmp eq i32 %4, -2147483392
  br i1 %5, label %land.lhs.true9, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true9:                                   ; preds = %entry
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.end, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 7456) #13
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call7.i.i, align 8
  %embedded_cpu.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 5
  %10 = ptrtoint ptr %embedded_cpu.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %embedded_cpu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %mlx5_eswitch_manager_vport.exit.thread, label %land.rhs.i.i

mlx5_eswitch_manager_vport.exit.thread:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %manager_vport180 = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 17
  %12 = ptrtoint ptr %manager_vport180 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %manager_vport180, align 4
  br label %mlx5_eswitch_first_host_vport_num.exit

land.rhs.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %caps, align 8
  %add.ptr.i.i = getelementptr i32, ptr %14, i32 13
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.i.not.i = icmp eq i32 %17, 0
  %spec.select.i = select i1 %tobool2.i.not.i, i16 0, i16 -2
  %manager_vport = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 17
  %18 = ptrtoint ptr %manager_vport to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %spec.select.i, ptr %manager_vport, align 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.i.i = icmp eq i32 %21, 0
  br label %mlx5_eswitch_first_host_vport_num.exit

mlx5_eswitch_first_host_vport_num.exit:           ; preds = %land.rhs.i.i, %mlx5_eswitch_manager_vport.exit.thread
  %22 = phi i1 [ %tobool2.i.i, %land.rhs.i.i ], [ true, %mlx5_eswitch_manager_vport.exit.thread ]
  %conv.i = zext i1 %22 to i16
  %first_host_vport = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 18
  %23 = ptrtoint ptr %first_host_vport to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %first_host_vport, align 2
  %call17 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.24, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.25) #9
  %work_queue = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call17, ptr %work_queue, align 4
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %mlx5_eswitch_first_host_vport_num.exit.if.end110_crit_edge, label %if.end21

mlx5_eswitch_first_host_vport_num.exit.if.end110_crit_edge: ; preds = %mlx5_eswitch_first_host_vport_num.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.end21:                                         ; preds = %mlx5_eswitch_first_host_vport_num.exit
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %vports.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %call.i = tail call fastcc i32 @mlx5_esw_vport_alloc(ptr noundef nonnull %call7.i.i, i32 noundef 0, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.err74.i_crit_edge

if.end21.err74.i_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end.i:                                         ; preds = %if.end21
  %29 = ptrtoint ptr %first_host_vport to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %first_host_vport, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i167 = icmp eq i16 %30, 0
  br i1 %cmp.i167, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xa_set_mark(ptr noundef %vports.i, i32 noundef 0, i32 noundef 0) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %max_vfs.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %26, i32 0, i32 17, i32 29, i32 2
  %31 = ptrtoint ptr %max_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_vfs.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp8156.not.i = icmp eq i16 %32, 0
  br i1 %cmp8156.not.i, label %if.end5.i.for.end.i_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %if.end14.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %i.0158.i = phi i32 [ %inc18.i, %if.end14.i.for.body.i_crit_edge ], [ 0, %if.end5.i.for.body.i_crit_edge ]
  %idx.0157.i = phi i32 [ %inc17.i, %if.end14.i.for.body.i_crit_edge ], [ 1, %if.end5.i.for.body.i_crit_edge ]
  %conv10.i = trunc i32 %idx.0157.i to i16
  %call11.i = tail call fastcc i32 @mlx5_esw_vport_alloc(ptr noundef %call7.i.i, i32 noundef %idx.0157.i, i16 noundef zeroext %conv10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %for.body.i.err74.i_crit_edge

for.body.i.err74.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end14.i:                                       ; preds = %for.body.i
  tail call void @xa_set_mark(ptr noundef %vports.i, i32 noundef %idx.0157.i, i32 noundef 1) #9
  tail call void @xa_set_mark(ptr noundef %vports.i, i32 noundef %idx.0157.i, i32 noundef 0) #9
  %inc17.i = add nuw nsw i32 %idx.0157.i, 1
  %inc18.i = add nuw nsw i32 %i.0158.i, 1
  %33 = ptrtoint ptr %max_vfs.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_vfs.i.i, align 8
  %conv7.i = zext i16 %34 to i32
  %cmp8.i = icmp ult i32 %inc18.i, %conv7.i
  br i1 %cmp8.i, label %if.end14.i.for.body.i_crit_edge, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end14.i.for.body.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end14.i.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 1, %if.end5.i.for.end.i_crit_edge ], [ %inc17.i, %if.end14.i.for.end.i_crit_edge ]
  %caps.i.i168 = getelementptr inbounds %struct.mlx5_core_dev, ptr %26, i32 0, i32 8
  %35 = ptrtoint ptr %caps.i.i168 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %caps.i.i168, align 8
  %add.ptr.i.i169 = getelementptr i32, ptr %36, i32 55
  %37 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i169, align 4
  %conv.i.i = trunc i32 %38 to i16
  %conv33.i = and i32 %38, 65535
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %if.end31.i, %for.end.i
  %idx.1.i = phi i32 [ %idx.0.lcssa.i, %for.end.i ], [ %inc35.i, %if.end31.i ]
  %i.1.i = phi i32 [ 0, %for.end.i ], [ %inc37.i, %if.end31.i ]
  %39 = ptrtoint ptr %caps.i.i168 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %caps.i.i168, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %40, i32 52
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.i.i = icmp slt i32 %42, 0
  br i1 %tobool.i.i.i, label %if.end.i.i, label %for.cond20.i.mlx5_sf_max_functions.exit.i_crit_edge

for.cond20.i.mlx5_sf_max_functions.exit.i_crit_edge: ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_sf_max_functions.exit.i

if.end.i.i:                                       ; preds = %for.cond20.i
  %add.ptr.i134.i = getelementptr i32, ptr %40, i32 50
  %43 = ptrtoint ptr %add.ptr.i134.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i134.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %44)
  %tobool.not.i.i170 = icmp ult i32 %44, 65536
  br i1 %tobool.not.i.i170, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i = lshr i32 %44, 16
  br label %mlx5_sf_max_functions.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr16.i.i = lshr i32 %42, 24
  %and17.i.i = and i32 %shr16.i.i, 31
  %shl.i.i = shl nuw i32 1, %and17.i.i
  br label %mlx5_sf_max_functions.exit.i

mlx5_sf_max_functions.exit.i:                     ; preds = %if.else.i.i, %if.then1.i.i, %for.cond20.i.mlx5_sf_max_functions.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shr.i.i, %if.then1.i.i ], [ %shl.i.i, %if.else.i.i ], [ 0, %for.cond20.i.mlx5_sf_max_functions.exit.i_crit_edge ]
  %conv22.i = and i32 %retval.0.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %conv22.i)
  %cmp23.i = icmp ult i32 %i.1.i, %conv22.i
  br i1 %cmp23.i, label %for.body25.i, label %for.end38.i

for.body25.i:                                     ; preds = %mlx5_sf_max_functions.exit.i
  %45 = trunc i32 %i.1.i to i16
  %conv27.i = add i16 %45, %conv.i.i
  %call28.i = tail call fastcc i32 @mlx5_esw_vport_alloc(ptr noundef %call7.i.i, i32 noundef %idx.1.i, i16 noundef zeroext %conv27.i) #9
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %for.body25.i.err74.i_crit_edge

for.body25.i.err74.i_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end31.i:                                       ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  %add34.i = add nuw nsw i32 %i.1.i, %conv33.i
  tail call void @xa_set_mark(ptr noundef %vports.i, i32 noundef %add34.i, i32 noundef 2) #9
  %inc35.i = add nuw nsw i32 %idx.1.i, 1
  %inc37.i = add nuw nsw i32 %i.1.i, 1
  br label %for.cond20.i

for.end38.i:                                      ; preds = %mlx5_sf_max_functions.exit.i
  %embedded_cpu.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %26, i32 0, i32 8, i32 5
  %46 = ptrtoint ptr %embedded_cpu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %embedded_cpu.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i.not.i.i = icmp eq i8 %47, 0
  br i1 %tobool.i.not.i.i, label %for.end38.i.for.end61.i_crit_edge, label %if.end.i137.i

for.end38.i.for.end61.i_crit_edge:                ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61.i

if.end.i137.i:                                    ; preds = %for.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 4112) #13
  %tobool.not.i136.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i136.i, label %if.end.i137.i.err74.i_crit_edge, label %if.end3.i.i

if.end.i137.i.err74.i_crit_edge:                  ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end3.i.i:                                      ; preds = %if.end.i137.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i.i.i) #9
  %49 = getelementptr inbounds i8, ptr %in.i.i.i, i32 12
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %49, align 4
  %51 = ptrtoint ptr %in.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 16777216, ptr %in.i.i.i, align 4
  %add.ptr13.i.i.i = getelementptr inbounds i32, ptr %in.i.i.i, i32 1
  %52 = ptrtoint ptr %add.ptr13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %add.ptr13.i.i.i, align 4
  %add.ptr28.i.i.i = getelementptr inbounds i32, ptr %in.i.i.i, i32 2
  %53 = ptrtoint ptr %add.ptr28.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -2147483648, ptr %add.ptr28.i.i.i, align 4
  %call.i.i.i = call i32 @mlx5_cmd_exec(ptr noundef %26, ptr noundef nonnull %in.i.i.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4112) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i.i, label %for.cond43.preheader.i, label %mlx5_esw_sf_max_hpf_functions.exit.i

mlx5_esw_sf_max_hpf_functions.exit.i:             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %err74.i

for.cond43.preheader.i:                           ; preds = %if.end3.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 216
  %54 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr8.i.i, align 8
  %shr.i138.i = lshr i32 %55, 16
  %add.ptr9.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 236
  %56 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr9.i.i, align 4
  %conv12.i.i = trunc i32 %57 to i16
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %55)
  %cmp45159.not.i = icmp ult i32 %55, 65536
  br i1 %cmp45159.not.i, label %for.cond43.preheader.i.for.end61.i_crit_edge, label %for.body47.lr.ph.i

for.cond43.preheader.i.for.end61.i_crit_edge:     ; preds = %for.cond43.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61.i

for.body47.lr.ph.i:                               ; preds = %for.cond43.preheader.i
  %conv56.i = and i32 %57, 65535
  br label %for.body47.i

for.body47.i:                                     ; preds = %if.end54.i.for.body47.i_crit_edge, %for.body47.lr.ph.i
  %i.2161.i = phi i32 [ 0, %for.body47.lr.ph.i ], [ %inc60.i, %if.end54.i.for.body47.i_crit_edge ]
  %idx.2160.i = phi i32 [ %idx.1.i, %for.body47.lr.ph.i ], [ %inc58.i, %if.end54.i.for.body47.i_crit_edge ]
  %58 = trunc i32 %i.2161.i to i16
  %conv50.i = add i16 %58, %conv12.i.i
  %call51.i = call fastcc i32 @mlx5_esw_vport_alloc(ptr noundef %call7.i.i, i32 noundef %idx.2160.i, i16 noundef zeroext %conv50.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %for.body47.i.err74.i_crit_edge

for.body47.i.err74.i_crit_edge:                   ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end54.i:                                       ; preds = %for.body47.i
  %add57.i = add nuw nsw i32 %i.2161.i, %conv56.i
  call void @xa_set_mark(ptr noundef %vports.i, i32 noundef %add57.i, i32 noundef 2) #9
  %inc58.i = add nuw nsw i32 %idx.2160.i, 1
  %inc60.i = add nuw nsw i32 %i.2161.i, 1
  %exitcond.not.i = icmp eq i32 %inc60.i, %shr.i138.i
  br i1 %exitcond.not.i, label %if.end54.i.for.end61.i_crit_edge, label %if.end54.i.for.body47.i_crit_edge

if.end54.i.for.body47.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47.i

if.end54.i.for.end61.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61.i

for.end61.i:                                      ; preds = %if.end54.i.for.end61.i_crit_edge, %for.cond43.preheader.i.for.end61.i_crit_edge, %for.end38.i.for.end61.i_crit_edge
  %idx.2.lcssa.i = phi i32 [ %idx.1.i, %for.cond43.preheader.i.for.end61.i_crit_edge ], [ %idx.1.i, %for.end38.i.for.end61.i_crit_edge ], [ %inc58.i, %if.end54.i.for.end61.i_crit_edge ]
  %coredev_type.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %26, i32 0, i32 1
  %59 = ptrtoint ptr %coredev_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %coredev_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i, label %mlx5_ecpf_vport_exists.exit.i, label %for.end61.i.if.end69.i_crit_edge

for.end61.i.if.end69.i_crit_edge:                 ; preds = %for.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

mlx5_ecpf_vport_exists.exit.i:                    ; preds = %for.end61.i
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %26, i32 0, i32 8, i32 0, i32 9
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = and i32 %64, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i, label %mlx5_ecpf_vport_exists.exit.i.if.end69.i_crit_edge, label %if.then63.i

mlx5_ecpf_vport_exists.exit.i.if.end69.i_crit_edge: ; preds = %mlx5_ecpf_vport_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then63.i:                                      ; preds = %mlx5_ecpf_vport_exists.exit.i
  %call64.i = call fastcc i32 @mlx5_esw_vport_alloc(ptr noundef %call7.i.i, i32 noundef %idx.2.lcssa.i, i16 noundef zeroext -2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end67.i, label %if.then63.i.err74.i_crit_edge

if.then63.i.err74.i_crit_edge:                    ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end67.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc68.i = add i32 %idx.2.lcssa.i, 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end67.i, %mlx5_ecpf_vport_exists.exit.i.if.end69.i_crit_edge, %for.end61.i.if.end69.i_crit_edge
  %idx.3.i = phi i32 [ %inc68.i, %if.end67.i ], [ %idx.2.lcssa.i, %mlx5_ecpf_vport_exists.exit.i.if.end69.i_crit_edge ], [ %idx.2.lcssa.i, %for.end61.i.if.end69.i_crit_edge ]
  %call70.i = call fastcc i32 @mlx5_esw_vport_alloc(ptr noundef %call7.i.i, i32 noundef %idx.3.i, i16 noundef zeroext -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end69.i.if.end25_crit_edge, label %if.end69.i.err74.i_crit_edge

if.end69.i.err74.i_crit_edge:                     ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err74.i

if.end69.i.if.end25_crit_edge:                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

err74.i:                                          ; preds = %if.end69.i.err74.i_crit_edge, %if.then63.i.err74.i_crit_edge, %for.body47.i.err74.i_crit_edge, %mlx5_esw_sf_max_hpf_functions.exit.i, %if.end.i137.i.err74.i_crit_edge, %for.body25.i.err74.i_crit_edge, %for.body.i.err74.i_crit_edge, %if.end21.err74.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.end21.err74.i_crit_edge ], [ %call.i.i.i, %mlx5_esw_sf_max_hpf_functions.exit.i ], [ %call64.i, %if.then63.i.err74.i_crit_edge ], [ %call70.i, %if.end69.i.err74.i_crit_edge ], [ -12, %if.end.i137.i.err74.i_crit_edge ], [ %call51.i, %for.body47.i.err74.i_crit_edge ], [ %call28.i, %for.body25.i.err74.i_crit_edge ], [ %call11.i, %for.body.i.err74.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i.i) #9
  %66 = ptrtoint ptr %i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %i.i.i, align 4
  %call.i.i171 = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i.i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not8.i.i = icmp eq ptr %call.i.i171, null
  br i1 %tobool.not8.i.i, label %mlx5_esw_vports_init.exit.thread183, label %err74.i.for.body.i.i_crit_edge

err74.i.for.body.i.i_crit_edge:                   ; preds = %err74.i
  br label %for.body.i.i

mlx5_esw_vports_init.exit.thread183:              ; preds = %err74.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @xa_destroy(ptr noundef %vports.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  br label %abort

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %err74.i.for.body.i.i_crit_edge
  %vport.09.i.i = phi ptr [ %call2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i171, %err74.i.for.body.i.i_crit_edge ]
  %vport1.i.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.09.i.i, i32 0, i32 12
  %67 = ptrtoint ptr %vport1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vport1.i.i.i, align 8
  %conv.i.i.i = zext i16 %68 to i32
  %call.i.i141.i = call ptr @xa_erase(ptr noundef %vports.i, i32 noundef %conv.i.i.i) #9
  call void @kfree(ptr noundef nonnull %vport.09.i.i) #9
  %call2.i.i = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i.i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not.i142.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i142.i, label %mlx5_esw_vports_init.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mlx5_esw_vports_init.exit:                        ; preds = %for.body.i.i
  call void @xa_destroy(ptr noundef %vports.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool23.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool23.not, label %mlx5_esw_vports_init.exit.if.end25_crit_edge, label %mlx5_esw_vports_init.exit.abort_crit_edge

mlx5_esw_vports_init.exit.abort_crit_edge:        ; preds = %mlx5_esw_vports_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

mlx5_esw_vports_init.exit.if.end25_crit_edge:     ; preds = %mlx5_esw_vports_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %mlx5_esw_vports_init.exit.if.end25_crit_edge, %if.end69.i.if.end25_crit_edge
  %call26 = call i32 @esw_offloads_init_reps(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body, label %reps_err

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 9
  call void @__mutex_init(ptr noundef %encap_tbl_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @mlx5_eswitch_init.__key) #9
  %encap_tbl = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 10
  %69 = call ptr @memset(ptr %encap_tbl, i32 0, i32 1024)
  %decap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 11
  call void @__mutex_init(ptr noundef %decap_tbl_lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @mlx5_eswitch_init.__key.27) #9
  %decap_tbl = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 12
  %70 = call ptr @memset(ptr %decap_tbl, i32 0, i32 1024)
  %mod_hdr = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 13
  call void @mlx5e_mod_hdr_tbl_init(ptr noundef %mod_hdr) #9
  %num_flows = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 19
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_flows, i32 noundef 8) #9
  call void @generic_atomic64_set(ptr noundef %num_flows, i64 noundef 0) #9
  %vport_metadata_ida = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 21
  call void @__raw_spin_lock_init(ptr noundef %vport_metadata_ida, ptr noundef nonnull @.str.77, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 21, i32 0, i32 1
  %71 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 67108869, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 21, i32 0, i32 2
  %72 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %xa_head.i.i, align 4
  %vhca_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 16
  call void @__raw_spin_lock_init(ptr noundef %vhca_map, ptr noundef nonnull @.str.77, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 16, i32 1
  %73 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 67108868, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 16, i32 2
  %74 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %xa_head.i, align 8
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %state_lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @mlx5_eswitch_init.__key.29) #9
  %mode_lock_key = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 22
  call void @lockdep_register_key(ptr noundef %mode_lock_key) #9
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 11
  call void @__init_rwsem(ptr noundef %mode_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @mlx5_eswitch_init.__key.31) #9
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 11, i32 6
  %wait_type_inner = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 4
  %75 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %wait_type_inner, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.33, ptr noundef %mode_lock_key, i32 noundef 0, i8 noundef zeroext %76, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %refcnt = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 13, i32 3
  %call.i.i.i172 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %77 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 0, ptr %refcnt, align 8
  %enabled_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 9
  %78 = ptrtoint ptr %enabled_vports to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %enabled_vports, align 4
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 16
  %79 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %mode, align 8
  %inline_mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 18
  %80 = ptrtoint ptr %inline_mode to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %inline_mode, align 4
  %arrayidx57 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 8
  %81 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx57, align 8
  %add.ptr60 = getelementptr i32, ptr %82, i32 16
  %83 = ptrtoint ptr %add.ptr60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr60, align 4
  %85 = and i32 %84, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %85)
  %.not = icmp eq i32 %85, 25165824
  %spec.select = zext i1 %.not to i32
  %86 = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 15, i32 20
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select, ptr %86, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %88 = ptrtoint ptr %eswitch to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i, ptr %eswitch, align 4
  %n_head = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 21
  call void @__init_rwsem(ptr noundef %n_head, ptr noundef nonnull @.str.35, ptr noundef nonnull @mlx5_eswitch_init.__key.34) #9
  %head = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 21, i32 1
  %89 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %head, align 8
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  %total_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %call7.i.i, i32 0, i32 8
  %92 = ptrtoint ptr %total_vports to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %total_vports, align 8
  %94 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %caps, align 8
  %add.ptr94 = getelementptr i32, ptr %95, i32 31
  %96 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr94, align 4
  %and96 = and i32 %97, 31
  %shl = shl nuw i32 1, %and96
  %shr103 = lshr i32 %97, 8
  %and104 = and i32 %shr103, 31
  %shl105 = shl nuw i32 1, %and104
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.36, i32 noundef %93, i32 noundef %shl, i32 noundef %shl105) #12
  br label %cleanup

reps_err:                                         ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  %98 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %i.i, align 4
  %call.i174 = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not8.i = icmp eq ptr %call.i174, null
  br i1 %tobool.not8.i, label %reps_err.mlx5_esw_vports_cleanup.exit_crit_edge, label %reps_err.for.body.i178_crit_edge

reps_err.for.body.i178_crit_edge:                 ; preds = %reps_err
  br label %for.body.i178

reps_err.mlx5_esw_vports_cleanup.exit_crit_edge:  ; preds = %reps_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_vports_cleanup.exit

for.body.i178:                                    ; preds = %for.body.i178.for.body.i178_crit_edge, %reps_err.for.body.i178_crit_edge
  %vport.09.i = phi ptr [ %call2.i, %for.body.i178.for.body.i178_crit_edge ], [ %call.i174, %reps_err.for.body.i178_crit_edge ]
  %vport1.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.09.i, i32 0, i32 12
  %99 = ptrtoint ptr %vport1.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vport1.i.i, align 8
  %conv.i.i175 = zext i16 %100 to i32
  %call.i.i176 = call ptr @xa_erase(ptr noundef %vports.i, i32 noundef %conv.i.i175) #9
  call void @kfree(ptr noundef nonnull %vport.09.i) #9
  %call2.i = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not.i177 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i177, label %for.body.i178.mlx5_esw_vports_cleanup.exit_crit_edge, label %for.body.i178.for.body.i178_crit_edge

for.body.i178.for.body.i178_crit_edge:            ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i178

for.body.i178.mlx5_esw_vports_cleanup.exit_crit_edge: ; preds = %for.body.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_vports_cleanup.exit

mlx5_esw_vports_cleanup.exit:                     ; preds = %for.body.i178.mlx5_esw_vports_cleanup.exit_crit_edge, %reps_err.mlx5_esw_vports_cleanup.exit_crit_edge
  call void @xa_destroy(ptr noundef %vports.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  br label %abort

abort:                                            ; preds = %mlx5_esw_vports_cleanup.exit, %mlx5_esw_vports_init.exit.abort_crit_edge, %mlx5_esw_vports_init.exit.thread183
  %err.0.ph = phi i32 [ %err.0.i, %mlx5_esw_vports_init.exit.thread183 ], [ %call26, %mlx5_esw_vports_cleanup.exit ], [ %err.0.i, %mlx5_esw_vports_init.exit.abort_crit_edge ]
  %101 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr = load ptr, ptr %work_queue, align 4
  %tobool107.not = icmp eq ptr %.pr, null
  br i1 %tobool107.not, label %abort.if.end110_crit_edge, label %if.then108

abort.if.end110_crit_edge:                        ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then108:                                       ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  call void @destroy_workqueue(ptr noundef nonnull %.pr) #9
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %abort.if.end110_crit_edge, %mlx5_eswitch_first_host_vport_num.exit.if.end110_crit_edge
  %err.0187 = phi i32 [ %err.0.ph, %if.then108 ], [ %err.0.ph, %abort.if.end110_crit_edge ], [ -12, %mlx5_eswitch_first_host_vport_num.exit.if.end110_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %do.body, %if.end.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0187, %if.end110 ], [ 0, %do.body ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_offloads_init_reps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_mod_hdr_tbl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_register_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_vports_cleanup(ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %call = call ptr @xa_find(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not8 = icmp eq ptr %call, null
  br i1 %tobool.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %vport.09 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %vport1.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.09, i32 0, i32 12
  %1 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vport1.i, align 8
  %conv.i = zext i16 %2 to i32
  %call.i = call ptr @xa_erase(ptr noundef %vports, i32 noundef %conv.i) #9
  call void @kfree(ptr noundef nonnull %vport.09) #9
  %call2 = call ptr @xa_find_after(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @xa_destroy(ptr noundef %vports) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_eswitch_cleanup(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %esw, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, -2147482880
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483392, i32 %6)
  %7 = icmp eq i32 %6, -2147483392
  br i1 %7, label %land.lhs.true11, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true11:                                  ; preds = %lor.lhs.false
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.end, label %land.lhs.true11.return_crit_edge

land.lhs.true11.return_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %land.lhs.true11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.38) #12
  %12 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %esw, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %13, i32 0, i32 17, i32 28
  %14 = ptrtoint ptr %eswitch to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %eswitch, align 4
  %work_queue = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 5
  %15 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %16) #9
  %refcnt = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %17 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %do.end.if.end33_crit_edge, label %do.end27, !prof !201

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end27:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1614, i32 noundef 9, ptr noundef null) #9
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %do.end.if.end33_crit_edge
  %mode_lock_key = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 22
  tail call void @lockdep_unregister_key(ptr noundef %mode_lock_key) #9
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %state_lock) #9
  %vhca_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 16
  %xa_head.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 16, i32 2
  %19 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xa_head.i, align 4
  %cmp.i99 = icmp eq ptr %20, null
  br i1 %cmp.i99, label %if.end33.if.end65_crit_edge, label %do.end59, !prof !201

if.end33.if.end65_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end59:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1617, i32 noundef 9, ptr noundef null) #9
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end33.if.end65_crit_edge
  tail call void @xa_destroy(ptr noundef %vhca_map) #9
  %vport_metadata_ida = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 21
  tail call void @ida_destroy(ptr noundef %vport_metadata_ida) #9
  %mod_hdr = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 13
  tail call void @mlx5e_mod_hdr_tbl_destroy(ptr noundef %mod_hdr) #9
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 9
  tail call void @mutex_destroy(ptr noundef %encap_tbl_lock) #9
  %decap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 15, i32 11
  tail call void @mutex_destroy(ptr noundef %decap_tbl_lock) #9
  tail call void @esw_offloads_cleanup_reps(ptr noundef nonnull %esw) #9
  tail call fastcc void @mlx5_esw_vports_cleanup(ptr noundef nonnull %esw)
  tail call void @kfree(ptr noundef nonnull %esw) #9
  br label %return

return:                                           ; preds = %if.end65, %land.lhs.true11.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_unregister_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_mod_hdr_tbl_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_offloads_cleanup_reps(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vport_mac(ptr noundef %esw, i16 noundef zeroext %vport, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.then_crit_edge, label %do.body8.i

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_eswitch_set_vport_mac, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %if.then

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.if.then_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.if.then_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mlx5_eswitch_get_vport.exit.if.then_crit_edge, %if.then13.i, %do.body.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i20 = phi ptr [ %retval.0.i, %mlx5_eswitch_get_vport.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.i ], [ inttoptr (i32 -1 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i20 to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %vport.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 12
  %18 = ptrtoint ptr %vport.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vport.i, align 8
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac, align 4
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.end.i12, label %if.end.mlx5_esw_set_vport_mac_locked.exit_crit_edge

if.end.mlx5_esw_set_vport_mac_locked.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_set_vport_mac_locked.exit

if.end.i12:                                       ; preds = %if.end
  %info.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10
  %spoofchk.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 5
  %23 = ptrtoint ptr %spoofchk.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i = load i8, ptr %spoofchk.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i11 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i11, label %if.end.i12.if.end5.i_crit_edge, label %is_valid_ether_addr.exit.i

if.end.i12.if.end5.i_crit_edge:                   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end.i12
  %add.ptr.i.i.i = getelementptr i8, ptr %mac, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %25 to i32
  %or.i.i.i = or i32 %21, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %do.end.i, label %is_valid_ether_addr.exit.i.if.end5.i_crit_edge

is_valid_ether_addr.exit.i.if.end5.i_crit_edge:   ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

do.end.i:                                         ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %esw, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i13 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i13 to ptr
  %task.i14 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i14, align 8
  %pid.i15 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 68
  %34 = ptrtoint ptr %pid.i15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid.i15, align 8
  %conv4.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 1643, i32 noundef %35, i32 noundef %conv4.i) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %is_valid_ether_addr.exit.i.if.end5.i_crit_edge, %if.end.i12.if.end5.i_crit_edge
  %36 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %esw, align 8
  %call7.i = tail call i32 @mlx5_modify_nic_vport_mac_address(ptr noundef %37, i16 noundef zeroext %19, ptr noundef %mac) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end19.i, label %do.end12.i

do.end12.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %esw, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i71.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i71.i to ptr
  %task16.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task16.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task16.i, align 8
  %pid17.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %46 = ptrtoint ptr %pid17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pid17.i, align 8
  %conv18.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef 1649, i32 noundef %47, i32 noundef %conv18.i, i32 noundef %call7.i) #12
  br label %mlx5_esw_set_vport_mac_locked.exit

if.end19.i:                                       ; preds = %if.end5.i
  %48 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mac, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %mac, i32 1
  %50 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr i8, ptr %mac, i32 2
  %52 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.i.i, align 1
  %arrayidx8.i.i = getelementptr i8, ptr %mac, i32 3
  %54 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.i.i, align 1
  %arrayidx10.i.i = getelementptr i8, ptr %mac, i32 4
  %56 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx10.i.i, align 1
  %arrayidx12.i.i = getelementptr i8, ptr %mac, i32 5
  %58 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx12.i.i, align 1
  %60 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %esw, align 8
  %node_guid.sroa.12.0.insert.ext.i = zext i8 %49 to i64
  %node_guid.sroa.11.0.insert.ext.i = zext i8 %51 to i64
  %node_guid.sroa.11.0.insert.shift.i = shl nuw nsw i64 %node_guid.sroa.11.0.insert.ext.i, 8
  %node_guid.sroa.10.0.insert.ext.i = zext i8 %53 to i64
  %node_guid.sroa.10.0.insert.shift.i = shl nuw nsw i64 %node_guid.sroa.10.0.insert.ext.i, 16
  %node_guid.sroa.7.0.insert.ext.i = zext i8 %55 to i64
  %node_guid.sroa.7.0.insert.shift.i = shl nuw nsw i64 %node_guid.sroa.7.0.insert.ext.i, 40
  %node_guid.sroa.6.0.insert.ext.i = zext i8 %57 to i64
  %node_guid.sroa.6.0.insert.shift.i = shl nuw nsw i64 %node_guid.sroa.6.0.insert.ext.i, 48
  %node_guid.sroa.0.0.insert.ext.i = zext i8 %59 to i64
  %node_guid.sroa.0.0.insert.shift.i = shl nuw i64 %node_guid.sroa.0.0.insert.ext.i, 56
  %node_guid.sroa.11.0.insert.insert.i = or i64 %node_guid.sroa.11.0.insert.shift.i, %node_guid.sroa.12.0.insert.ext.i
  %node_guid.sroa.10.0.insert.insert.i = or i64 %node_guid.sroa.11.0.insert.insert.i, %node_guid.sroa.10.0.insert.shift.i
  %node_guid.sroa.8.0.insert.insert.i = or i64 %node_guid.sroa.10.0.insert.insert.i, %node_guid.sroa.7.0.insert.shift.i
  %node_guid.sroa.6.0.insert.insert.i = or i64 %node_guid.sroa.8.0.insert.insert.i, %node_guid.sroa.6.0.insert.shift.i
  %node_guid.sroa.0.0.insert.mask.i = or i64 %node_guid.sroa.6.0.insert.insert.i, 1095199883264
  %node_guid.sroa.0.0.insert.insert.i = add nuw nsw i64 %node_guid.sroa.0.0.insert.mask.i, %node_guid.sroa.0.0.insert.shift.i
  %call21.i = tail call i32 @mlx5_modify_nic_vport_node_guid(ptr noundef %61, i16 noundef zeroext %19, i64 noundef %node_guid.sroa.0.0.insert.insert.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end19.i.if.end33.i_crit_edge, label %do.end26.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %esw, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i72.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i72.i to ptr
  %task30.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %task30.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %task30.i, align 8
  %pid31.i = getelementptr inbounds %struct.task_struct, ptr %69, i32 0, i32 68
  %70 = ptrtoint ptr %pid31.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid31.i, align 8
  %conv32.i = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79, i32 noundef 1658, i32 noundef %71, i32 noundef %conv32.i, i32 noundef %call21.i) #12
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end26.i, %if.end19.i.if.end33.i_crit_edge
  %72 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mac, align 4
  %74 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %info.i, align 4
  %75 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx10.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 0, i32 4
  %77 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %add.ptr1.i.i, align 2
  %node_guid37.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 2
  %78 = ptrtoint ptr %node_guid37.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %node_guid.sroa.0.0.insert.insert.i, ptr %node_guid37.i, align 8
  %enabled.i = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 13
  %79 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %enabled.i, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool38.not.i = icmp eq i8 %80, 0
  br i1 %tobool38.not.i, label %if.end33.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge, label %land.lhs.true40.i

if.end33.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_set_vport_mac_locked.exit

land.lhs.true40.i:                                ; preds = %if.end33.i
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %81 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i16 = icmp eq i32 %82, 1
  br i1 %cmp.i16, label %if.then42.i, label %land.lhs.true40.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge

land.lhs.true40.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge: ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_set_vport_mac_locked.exit

if.then42.i:                                      ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i = tail call i32 @esw_acl_ingress_lgcy_setup(ptr noundef nonnull %esw, ptr noundef %retval.0.i) #9
  br label %mlx5_esw_set_vport_mac_locked.exit

mlx5_esw_set_vport_mac_locked.exit:               ; preds = %if.then42.i, %land.lhs.true40.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge, %if.end33.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge, %do.end12.i, %if.end.mlx5_esw_set_vport_mac_locked.exit_crit_edge
  %retval.0.i17 = phi i32 [ %call7.i, %do.end12.i ], [ -22, %if.end.mlx5_esw_set_vport_mac_locked.exit_crit_edge ], [ %call43.i, %if.then42.i ], [ %call21.i, %land.lhs.true40.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge ], [ %call21.i, %if.end33.i.mlx5_esw_set_vport_mac_locked.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %mlx5_esw_set_vport_mac_locked.exit, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ %retval.0.i17, %mlx5_esw_set_vport_mac_locked.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_eswitch_is_vf_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @mlx5_esw_check_port_type(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef 1)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5_esw_check_port_type(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef %mark) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport_num to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.cleanup_crit_edge, label %do.body8.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_check_port_type, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %cleanup

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.cleanup_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.cleanup_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call zeroext i1 @xa_get_mark(ptr noundef %vports.i, i32 noundef %conv.i, i32 noundef %mark) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_eswitch_get_vport.exit.cleanup_crit_edge, %if.then13.i, %do.body.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call2, %if.end ], [ false, %mlx5_eswitch_get_vport.exit.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then13.i ], [ false, %do.body.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_esw_is_sf_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @mlx5_esw_check_port_type(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef 2)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_set_vport_state(ptr noundef %esw, i16 noundef zeroext %vport, i32 noundef %link_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.mlx5_esw_allowed.exit_crit_edge, label %if.end.i

lor.lhs.false.i.mlx5_esw_allowed.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_allowed.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_esw_allowed.exit_crit_edge

if.end.i.mlx5_esw_allowed.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_allowed.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.mlx5_esw_allowed.exit_crit_edge, label %do.body8.i

do.body.i.mlx5_esw_allowed.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_esw_allowed.exit

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_eswitch_set_vport_state, %if.then13.i)) #9
          to label %mlx5_esw_allowed.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %mlx5_esw_allowed.exit

mlx5_esw_allowed.exit:                            ; preds = %if.then13.i, %do.body8.i, %do.body.i.mlx5_esw_allowed.exit_crit_edge, %if.end.i.mlx5_esw_allowed.exit_crit_edge, %lor.lhs.false.i.mlx5_esw_allowed.exit_crit_edge
  %retval.0.i46 = phi ptr [ inttoptr (i32 -22 to ptr), %do.body8.i ], [ inttoptr (i32 -22 to ptr), %do.body.i.mlx5_esw_allowed.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.i ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.mlx5_esw_allowed.exit_crit_edge ], [ %call2.i, %if.end.i.mlx5_esw_allowed.exit_crit_edge ]
  %17 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esw, align 8
  %caps.i43 = getelementptr inbounds %struct.mlx5_core_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %caps.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %caps.i43, align 8
  %add.ptr.i44 = getelementptr i32, ptr %20, i32 13
  %21 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i44, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.i.not = icmp eq i32 %23, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %cmp.i = icmp ugt ptr %retval.0.i46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %retval.0.i46 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vport)
  %cmp = icmp eq i16 %vport, -1
  %vport.addr.0 = select i1 %cmp, i16 0, i16 %vport
  %opmod.0 = select i1 %cmp, i32 2, i32 1
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp9.not = icmp eq i32 %26, 1
  br i1 %cmp9.not, label %if.end12, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end12:                                         ; preds = %if.end5
  %not.cmp = xor i1 %cmp, true
  %other_vport.0 = zext i1 %not.cmp to i8
  %27 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %esw, align 8
  %conv13 = trunc i32 %opmod.0 to i8
  %conv15 = trunc i32 %link_state to i8
  %call16 = tail call i32 @mlx5_modify_vport_admin_state(ptr noundef %28, i8 noundef zeroext %conv13, i16 noundef zeroext %vport.addr.0, i8 noundef zeroext %other_vport.0, i8 noundef zeroext %conv15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end21, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %esw, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pid, align 8
  %conv20 = zext i16 %vport.addr.0 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 1731, i32 noundef %38, i32 noundef %conv20, i32 noundef %opmod.0, i32 noundef %call16) #12
  br label %unlock

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %link_state22 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i46, i32 0, i32 10, i32 3
  %39 = ptrtoint ptr %link_state22 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %link_state, ptr %link_state22, align 8
  br label %unlock

unlock:                                           ; preds = %if.end21, %do.end, %if.end5.unlock_crit_edge
  %err.0 = phi i32 [ %call16, %do.end ], [ 0, %if.end21 ], [ -95, %if.end5.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then3, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.then3 ], [ %err.0, %unlock ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_vport_admin_state(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_get_vport_config(ptr noundef %esw, i16 noundef zeroext %vport, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.then_crit_edge, label %do.body8.i

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_eswitch_get_vport_config, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %if.then

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.if.then_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.if.then_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mlx5_eswitch_get_vport.exit.if.then_crit_edge, %if.then13.i, %do.body.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i51 = phi ptr [ %retval.0.i, %mlx5_eswitch_get_vport.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.i ], [ inttoptr (i32 -1 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  %18 = getelementptr inbounds i8, ptr %ivi, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 68)
  %sub = add nsw i32 %conv.i, -1
  %20 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %ivi, align 4
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %info = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %info, align 4
  %23 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mac, align 4
  %add.ptr.i48 = getelementptr %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i48, align 2
  %add.ptr1.i = getelementptr %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i, align 2
  %link_state = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 3
  %27 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_state, align 8
  %linkstate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 5
  %29 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %linkstate, align 4
  %vlan = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan, align 2
  %conv7 = zext i16 %31 to i32
  %vlan8 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %32 = ptrtoint ptr %vlan8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv7, ptr %vlan8, align 4
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 4
  %33 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %qos, align 4
  %conv10 = zext i8 %34 to i32
  %qos11 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %35 = ptrtoint ptr %qos11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv10, ptr %qos11, align 4
  %spoofchk = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 5
  %36 = ptrtoint ptr %spoofchk to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %spoofchk, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %conv13 = zext i8 %bf.lshr to i32
  %spoofchk14 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %37 = ptrtoint ptr %spoofchk14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv13, ptr %spoofchk14, align 4
  %bf.load16 = load i8, ptr %spoofchk, align 1
  %bf.lshr17 = lshr i8 %bf.load16, 6
  %bf.clear = and i8 %bf.lshr17, 1
  %conv18 = zext i8 %bf.clear to i32
  %trusted19 = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 9
  %38 = ptrtoint ptr %trusted19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv18, ptr %trusted19, align 4
  %qos20 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 11
  %39 = ptrtoint ptr %qos20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %qos20, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not = icmp eq i8 %40, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then21

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %min_rate = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 11, i32 3
  %41 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %min_rate, align 4
  %min_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 6
  %43 = ptrtoint ptr %min_tx_rate to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %min_tx_rate, align 4
  %max_rate = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 11, i32 4
  %44 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_rate, align 8
  %max_tx_rate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 7
  %46 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_tx_rate, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx5_eswitch_set_vport_vlan(ptr noundef %esw, i16 noundef zeroext %vport, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i8 noundef zeroext %set_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then_crit_edge, label %if.end.i

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.then_crit_edge, label %do.body8.i

do.body.i.if.then_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_eswitch_set_vport_vlan, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %if.then

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.if.then_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.if.then_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mlx5_eswitch_get_vport.exit.if.then_crit_edge, %if.then13.i, %do.body.i.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i48 = phi ptr [ %retval.0.i, %mlx5_eswitch_get_vport.exit.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.i ], [ inttoptr (i32 -1 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.if.then_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i48 to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp = icmp ugt i16 %vlan, 4095
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %qos)
  %cmp5 = icmp ugt i8 %qos, 7
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %18 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %esw, align 8
  %call9 = tail call fastcc i32 @modify_esw_vport_cvlan(ptr noundef %19, i16 noundef zeroext %vport, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i8 noundef zeroext %set_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %vlan12 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %vlan12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %vlan, ptr %vlan12, align 2
  %qos14 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %qos14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %qos, ptr %qos14, align 4
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 13
  %22 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enabled, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp17 = icmp eq i32 %25, 1
  br i1 %cmp17, label %if.then19, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true
  %call20 = tail call i32 @esw_acl_ingress_lgcy_setup(ptr noundef nonnull %esw, ptr noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @esw_acl_egress_lgcy_setup(ptr noundef nonnull %esw, ptr noundef %retval.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call20, %if.then19.cleanup_crit_edge ], [ %call24, %if.end23 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @modify_esw_vport_cvlan(ptr noundef %dev, i16 noundef zeroext %vport, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i8 noundef zeroext %set_flags) unnamed_addr #0 align 64 {
entry:
  %_out.i = alloca [4 x i32], align 4
  %in = alloca [68 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %in) #9
  %0 = call ptr @memset(ptr %in, i32 0, i32 272)
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177280, i32 %5)
  %.not = icmp eq i32 %5, 1342177280
  br i1 %.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and10 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body.do.end25_crit_edge, label %do.body13

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @modify_esw_vport_cvlan.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@modify_esw_vport_cvlan, %if.then17)) #9
          to label %do.end25 [label %if.then17], !srcloc !196

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %conv = zext i16 %vport to i32
  %conv19 = zext i16 %vlan to i32
  %conv20 = zext i8 %qos to i32
  %conv21 = zext i8 %set_flags to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @modify_esw_vport_cvlan.__UNIQUE_ID_ddebug689, ptr noundef %8, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef 156, i32 noundef %14, i32 noundef %conv, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv21) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then17, %do.body13, %do.body.do.end25_crit_edge
  %conv26 = zext i8 %set_flags to i32
  %and27 = and i32 %conv26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.end25.if.end42_crit_edge, label %do.body30

do.end25.if.end42_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.body30:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr35 = getelementptr inbounds i32, ptr %in, i32 4
  %15 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr35, align 4
  %or = or i32 %16, 134217728
  store i32 %or, ptr %add.ptr35, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.body30, %do.end25.if.end42_crit_edge
  %and44 = and i32 %conv26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.do.body95_crit_edge, label %do.body47

if.end42.do.body95_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95

do.body47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr53 = getelementptr inbounds i32, ptr %in, i32 4
  %17 = ptrtoint ptr %add.ptr53 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr53, align 4
  %and54 = and i32 %18, -50331649
  %or57 = or i32 %and54, 16777216
  store i32 %or57, ptr %add.ptr53, align 4
  %add.ptr69 = getelementptr inbounds i32, ptr %in, i32 6
  %19 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr69, align 4
  %and70 = and i32 %20, -32768
  %21 = and i8 %qos, 7
  %and71 = zext i8 %21 to i32
  %shl72 = shl nuw nsw i32 %and71, 12
  %or73 = or i32 %and70, %shl72
  %22 = and i16 %vlan, 4095
  %and87 = zext i16 %22 to i32
  %or89 = or i32 %or73, %and87
  store i32 %or89, ptr %add.ptr69, align 4
  br label %do.body95

do.body95:                                        ; preds = %do.body47, %if.end42.do.body95_crit_edge
  %add.ptr101 = getelementptr inbounds i32, ptr %in, i32 3
  %23 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr101, align 4
  %or120 = or i32 %24, 10
  store i32 %or120, ptr %add.ptr101, align 4
  %25 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %in, align 4
  %and.i135 = and i32 %26, 65535
  %or.i = or i32 %and.i135, 122880000
  store i32 %or.i, ptr %in, align 4
  %conv.i = zext i16 %vport to i32
  %add.ptr11.i = getelementptr inbounds i32, ptr %in, i32 2
  %27 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr11.i, align 4
  %and12.i = and i32 %28, 2147418112
  %or15.i = or i32 %and12.i, %conv.i
  %or29.i = or i32 %or15.i, -2147483648
  store i32 %or29.i, ptr %add.ptr11.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #9
  %29 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 272, ptr noundef nonnull %_out.i, i32 noundef 16) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body95, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.body95 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_acl_ingress_lgcy_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_acl_egress_lgcy_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_eswitch_get_vport_stats(ptr noundef %esw, i16 noundef zeroext %vport_num, ptr nocapture noundef writeonly %vf_stats) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  %stats = alloca %struct.mlx5_vport_drop_stats, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.mlx5_eswitch_get_vport.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mlx5_eswitch_get_vport.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool1.not.i = icmp sgt i32 %5, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.mlx5_eswitch_get_vport.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.mlx5_eswitch_get_vport.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv.i = zext i16 %vport_num to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %6 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.mlx5_eswitch_get_vport.exit.thread_crit_edge, label %do.body8.i

do.body.i.mlx5_eswitch_get_vport.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit.thread

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_eswitch_get_vport_stats, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %16, i32 noundef %conv.i) #9
  br label %mlx5_eswitch_get_vport.exit.thread

mlx5_eswitch_get_vport.exit.thread:               ; preds = %if.then13.i, %do.body.i.mlx5_eswitch_get_vport.exit.thread_crit_edge, %lor.lhs.false.i.mlx5_eswitch_get_vport.exit.thread_crit_edge, %entry.mlx5_eswitch_get_vport.exit.thread_crit_edge
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -22 to ptr), %do.body.i.mlx5_eswitch_get_vport.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then13.i ], [ inttoptr (i32 -1 to ptr), %entry.mlx5_eswitch_get_vport.exit.thread_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.mlx5_eswitch_get_vport.exit.thread_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats) #9
  br label %if.then

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #9
  %17 = call ptr @memset(ptr %in, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats) #9
  %18 = call ptr @memset(ptr %stats, i32 0, i32 16)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.if.then_crit_edge, label %if.end

mlx5_eswitch_get_vport.exit.if.then_crit_edge:    ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %mlx5_eswitch_get_vport.exit.if.then_crit_edge, %mlx5_eswitch_get_vport.exit.thread
  %retval.0.i156 = phi ptr [ %retval.0.i.ph, %mlx5_eswitch_get_vport.exit.thread ], [ %retval.0.i, %mlx5_eswitch_get_vport.exit.if.then_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i156 to i32
  br label %cleanup

if.end:                                           ; preds = %mlx5_eswitch_get_vport.exit
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 528, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %20 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %in, align 4
  %and = and i32 %21, 65535
  %or = or i32 %and, 124780544
  store i32 %or, ptr %in, align 4
  %add.ptr18 = getelementptr inbounds i32, ptr %in, i32 1
  %22 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %23, -65536
  store i32 %and19, ptr %add.ptr18, align 4
  %vport29 = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 12
  %24 = ptrtoint ptr %vport29 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vport29, align 8
  %conv = zext i16 %25 to i32
  %add.ptr34 = getelementptr inbounds i32, ptr %in, i32 2
  %26 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr34, align 4
  %and35 = and i32 %27, 2147418112
  %or38 = or i32 %and35, %conv
  %or53 = or i32 %or38, -2147483648
  store i32 %or53, ptr %add.ptr34, align 4
  %28 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %esw, align 8
  %call59 = call i32 @mlx5_cmd_exec(ptr noundef %29, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %call.i.i, i32 noundef 528) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %do.body.free_out_crit_edge

do.body.free_out_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_out

if.end62:                                         ; preds = %do.body
  %30 = getelementptr inbounds i8, ptr %vf_stats, i32 48
  %31 = call ptr @memset(ptr %30, i32 0, i32 16)
  %add.ptr63 = getelementptr i64, ptr %call.i.i, i32 18
  %32 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr63, align 8
  %add.ptr64 = getelementptr i64, ptr %call.i.i, i32 6
  %34 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr64, align 8
  %add.ptr65 = getelementptr i64, ptr %call.i.i, i32 22
  %36 = ptrtoint ptr %add.ptr65 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr65, align 8
  %add.ptr67 = getelementptr i64, ptr %call.i.i, i32 10
  %38 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr67, align 8
  %add.ptr69 = getelementptr i64, ptr %call.i.i, i32 14
  %40 = ptrtoint ptr %add.ptr69 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr69, align 8
  %add = add i64 %39, %37
  %add66 = add i64 %add, %33
  %add68 = add i64 %add66, %35
  %add70 = add i64 %add68, %41
  %42 = ptrtoint ptr %vf_stats to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add70, ptr %vf_stats, align 8
  %add.ptr71 = getelementptr i64, ptr %call.i.i, i32 19
  %43 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr71, align 8
  %add.ptr72 = getelementptr i64, ptr %call.i.i, i32 7
  %45 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr72, align 8
  %add73 = add i64 %46, %44
  %add.ptr74 = getelementptr i64, ptr %call.i.i, i32 23
  %47 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr74, align 8
  %add75 = add i64 %add73, %48
  %add.ptr76 = getelementptr i64, ptr %call.i.i, i32 11
  %49 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr76, align 8
  %add77 = add i64 %add75, %50
  %add.ptr78 = getelementptr i64, ptr %call.i.i, i32 15
  %51 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr78, align 8
  %add79 = add i64 %add77, %52
  %rx_bytes = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 2
  %53 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %add79, ptr %rx_bytes, align 8
  %add.ptr80 = getelementptr i64, ptr %call.i.i, i32 20
  %54 = ptrtoint ptr %add.ptr80 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr80, align 8
  %add.ptr81 = getelementptr i64, ptr %call.i.i, i32 8
  %56 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr81, align 8
  %add82 = add i64 %57, %55
  %add.ptr83 = getelementptr i64, ptr %call.i.i, i32 24
  %58 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr83, align 8
  %add84 = add i64 %add82, %59
  %add.ptr85 = getelementptr i64, ptr %call.i.i, i32 12
  %60 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %add.ptr85, align 8
  %add86 = add i64 %add84, %61
  %add.ptr87 = getelementptr i64, ptr %call.i.i, i32 16
  %62 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %add.ptr87, align 8
  %add88 = add i64 %add86, %63
  %tx_packets = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 1
  %64 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add88, ptr %tx_packets, align 8
  %add.ptr89 = getelementptr i64, ptr %call.i.i, i32 21
  %65 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %add.ptr89, align 8
  %add.ptr90 = getelementptr i64, ptr %call.i.i, i32 9
  %67 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr90, align 8
  %add91 = add i64 %68, %66
  %add.ptr92 = getelementptr i64, ptr %call.i.i, i32 25
  %69 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr92, align 8
  %add93 = add i64 %add91, %70
  %add.ptr94 = getelementptr i64, ptr %call.i.i, i32 13
  %71 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %add.ptr94, align 8
  %add95 = add i64 %add93, %72
  %add.ptr96 = getelementptr i64, ptr %call.i.i, i32 17
  %73 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr96, align 8
  %add97 = add i64 %add95, %74
  %tx_bytes = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 3
  %75 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add97, ptr %tx_bytes, align 8
  %multicast = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 5
  %76 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %add, ptr %multicast, align 8
  %broadcast = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 4
  %77 = ptrtoint ptr %broadcast to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %41, ptr %broadcast, align 8
  %78 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %esw, align 8
  %call103 = call i32 @mlx5_esw_query_vport_drop_stats(ptr noundef %79, ptr noundef %retval.0.i, ptr noundef nonnull %stats) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end62.free_out_crit_edge

if.end62.free_out_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_out

if.end106:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %stats, align 8
  %rx_dropped107 = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 6
  %82 = ptrtoint ptr %rx_dropped107 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %rx_dropped107, align 8
  %tx_dropped = getelementptr inbounds %struct.mlx5_vport_drop_stats, ptr %stats, i32 0, i32 1
  %83 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %tx_dropped, align 8
  %tx_dropped108 = getelementptr inbounds %struct.ifla_vf_stats, ptr %vf_stats, i32 0, i32 7
  %85 = ptrtoint ptr %tx_dropped108 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %tx_dropped108, align 8
  br label %free_out

free_out:                                         ; preds = %if.end106, %if.end62.free_out_crit_edge, %do.body.free_out_crit_edge
  %err.0 = phi i32 [ %call59, %do.body.free_out_crit_edge ], [ %call103, %if.end62.free_out_crit_edge ], [ 0, %if.end106 ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_out, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %19, %if.then ], [ %err.0, %free_out ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_query_vport_drop_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlx5_eswitch_mode(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %mlx5_esw_allowed.exit

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

mlx5_esw_allowed.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cond.end_crit_edge, label %cond.true

mlx5_esw_allowed.exit.cond.end_crit_edge:         ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %phi.cast = trunc i32 %10 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mlx5_esw_allowed.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 0, %mlx5_esw_allowed.exit.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  ret i8 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5_eswitch_get_encap_mode(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cond.end_crit_edge, label %mlx5_esw_allowed.exit.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

mlx5_esw_allowed.exit.i:                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.i.not.i, label %mlx5_esw_allowed.exit.i.cond.end_crit_edge, label %mlx5_eswitch_mode.exit

mlx5_esw_allowed.exit.i.cond.end_crit_edge:       ; preds = %mlx5_esw_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

mlx5_eswitch_mode.exit:                           ; preds = %mlx5_esw_allowed.exit.i
  %mode.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 8
  %phi.cast.i = trunc i32 %10 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %phi.cast.i)
  %cmp = icmp eq i8 %phi.cast.i, 2
  br i1 %cmp, label %cond.true, label %mlx5_eswitch_mode.exit.cond.end_crit_edge

mlx5_eswitch_mode.exit.cond.end_crit_edge:        ; preds = %mlx5_eswitch_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %mlx5_eswitch_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %encap = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 15, i32 20
  %11 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %encap, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mlx5_eswitch_mode.exit.cond.end_crit_edge, %mlx5_esw_allowed.exit.i.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ 0, %mlx5_eswitch_mode.exit.cond.end_crit_edge ], [ 0, %mlx5_esw_allowed.exit.i.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_esw_lag_prereq(ptr nocapture noundef readonly %dev0, ptr nocapture noundef readonly %dev1) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev0, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 0, label %land.lhs.true
    i32 2, label %land.lhs.true9
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %eswitch2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev1, i32 0, i32 17, i32 28
  %5 = ptrtoint ptr %eswitch2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %eswitch2, align 4
  %mode3 = getelementptr inbounds %struct.mlx5_eswitch, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true9:                                   ; preds = %entry
  %eswitch11 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev1, i32 0, i32 17, i32 28
  %9 = ptrtoint ptr %eswitch11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eswitch11, align 4
  %mode12 = getelementptr inbounds %struct.mlx5_eswitch, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %mode12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp13 = icmp eq i32 %12, 2
  br i1 %cmp13, label %land.lhs.true9.return_crit_edge, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true9.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true9.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5_esw_multipath_prereq(ptr nocapture noundef readonly %dev0, ptr nocapture noundef readonly %dev1) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev0, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %eswitch2 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev1, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch2, align 4
  %mode3 = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp eq i32 %7, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp4, %land.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_event_notifier_register(ptr noundef %esw, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_head = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 21
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef %n_head, ptr noundef %nb) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_event_notifier_unregister(ptr noundef %esw, ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %n_head = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 21
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %n_head, ptr noundef %nb) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_esw_hold(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 11
  %call1 = tail call i32 @down_read_trylock(ptr noundef %mode_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp ne i32 %call1, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ %cmp.not, %if.end ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_release(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %mlx5_esw_allowed.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mlx5_esw_allowed.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.if.end_crit_edge, label %if.then

mlx5_esw_allowed.exit.if.end_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 11
  tail call void @up_read(ptr noundef %mode_lock) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_esw_allowed.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_get(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %mlx5_esw_allowed.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mlx5_esw_allowed.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.if.end_crit_edge, label %if.then

mlx5_esw_allowed.exit.if.end_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %user_count = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %user_count) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_esw_allowed.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_put(ptr nocapture noundef readonly %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %mlx5_esw_allowed.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mlx5_esw_allowed.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.if.end_crit_edge, label %if.then

mlx5_esw_allowed.exit.if.end_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %user_count = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_dec_if_positive(ptr noundef %user_count) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_esw_allowed.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_try_lock(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11
  %call = tail call i32 @down_write_trylock(ptr noundef %mode_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %user_count = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %user_count, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %user_count) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp2 = icmp sgt i64 %call.i, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_write(ptr noundef %mode_lock) #9
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then3 ], [ %1, %if.end5 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_unlock(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %mlx5_esw_allowed.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.return_crit_edge, label %if.end

mlx5_esw_allowed.exit.return_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11
  tail call void @up_write(ptr noundef %mode_lock) #9
  br label %return

return:                                           ; preds = %if.end, %mlx5_esw_allowed.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_lock(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %mlx5_esw_allowed.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.return_crit_edge, label %if.end

mlx5_esw_allowed.exit.return_crit_edge:           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 11
  tail call void @down_write(ptr noundef %mode_lock) #9
  br label %return

return:                                           ; preds = %if.end, %mlx5_esw_allowed.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlx5_eswitch_get_total_vports(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 17, i32 28
  %0 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %mlx5_esw_allowed.exit

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

mlx5_esw_allowed.exit:                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.i.not = icmp eq i32 %8, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cond.end_crit_edge, label %cond.true

mlx5_esw_allowed.exit.cond.end_crit_edge:         ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %total_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %total_vports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_vports, align 8
  %phi.cast = trunc i32 %10 to i16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mlx5_esw_allowed.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.true ], [ 0, %mlx5_esw_allowed.exit.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5_eswitch_get_core_dev(ptr noundef readonly %esw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %esw, null
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %mlx5_esw_allowed.exit

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

mlx5_esw_allowed.exit:                            ; preds = %entry
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cond.end_crit_edge, label %cond.true

mlx5_esw_allowed.exit.cond.end_crit_edge:         ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mlx5_esw_allowed.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ null, %mlx5_esw_allowed.exit.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_nic_vport_mac_list(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_add_uc_addr(ptr nocapture noundef readonly %esw, ptr noundef %vaddr) unnamed_addr #0 align 64 {
entry:
  %mac_c.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.l2addr_node, ptr %vaddr, i32 0, i32 1
  %vport1 = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 2
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport1, align 2
  %manager_vport.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 17
  %2 = ptrtoint ptr %manager_vport.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manager_vport.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.i = icmp eq i16 %3, %1
  br i1 %cmp.i, label %entry.fdb_add_crit_edge, label %if.end

entry.fdb_add_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %fdb_add

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esw, align 8
  %call2 = tail call i32 @mlx5_mpfs_add_mac(ptr noundef %5, ptr noundef %addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %esw, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef %addr, i32 noundef %conv, i32 noundef %call2) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mpfs = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 4
  %10 = ptrtoint ptr %mpfs to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mpfs, align 4
  br label %fdb_add

fdb_add:                                          ; preds = %if.end5, %entry.fdb_add_crit_edge
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %11 = ptrtoint ptr %fdb_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fdb_table, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %fdb_add.do.body11_crit_edge, label %land.lhs.true

fdb_add.do.body11_crit_edge:                      ; preds = %fdb_add
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

land.lhs.true:                                    ; preds = %fdb_add
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 16
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp eq i32 %14, 1
  br i1 %cmp, label %if.then8, label %land.lhs.true.do.body11_crit_edge

land.lhs.true.do.body11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i) #9
  %15 = call ptr @memset(ptr %mac_c.i, i32 255, i32 6)
  %call.i = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext %1, i1 noundef zeroext false, ptr noundef nonnull %mac_c.i, ptr noundef %addr) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i) #9
  %flow_rule = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 3
  %16 = ptrtoint ptr %flow_rule to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %flow_rule, align 4
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %land.lhs.true.do.body11_crit_edge, %fdb_add.do.body11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %17 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body11.cleanup_crit_edge, label %do.body14

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_add_uc_addr.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_add_uc_addr, %if.then19)) #9
          to label %cleanup [label %if.then19], !srcloc !196

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %esw, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid, align 8
  %conv23 = zext i16 %1 to i32
  %flow_rule24 = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 3
  %28 = ptrtoint ptr %flow_rule24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flow_rule24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_add_uc_addr.__UNIQUE_ID_ddebug699, ptr noundef %21, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef 309, i32 noundef %27, i32 noundef %conv23, ptr noundef %addr, ptr noundef %29) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body14, %do.body11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.then19 ], [ 0, %do.body11.cleanup_crit_edge ], [ 0, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_add_mc_addr(ptr noundef %esw, ptr noundef %vaddr) unnamed_addr #0 align 64 {
entry:
  %mac_c.i111 = alloca [6 x i8], align 1
  %mac_c.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.l2addr_node, ptr %vaddr, i32 0, i32 1
  %vport2 = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 2
  %0 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport2, align 2
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %2 = ptrtoint ptr %fdb_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_table, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mc_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 3
  %arrayidx = getelementptr %struct.l2addr_node, ptr %vaddr, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx3 = getelementptr %struct.hlist_head, ptr %mc_table, i32 %conv
  %add.ptr1.i = getelementptr %struct.l2addr_node, ptr %vaddr, i32 0, i32 1, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ptr.0.in = phi ptr [ %arrayidx3, %if.end ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %tobool6.not = icmp eq ptr %ptr.0, null
  br i1 %tobool6.not, label %if.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %addr8 = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1
  %7 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr8, align 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %10, %8
  %add.ptr.i = getelementptr %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body.add_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.add_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %add

if.end29:                                         ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 24) #13
  %tobool35.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool35.not, label %if.end29.cleanup_crit_edge, label %if.then36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %if.end29
  %addr38 = getelementptr inbounds %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %18 = ptrtoint ptr %addr38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %addr38, align 8
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i110 = getelementptr %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %add.ptr1.i110 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i110, align 4
  %22 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %call7.i.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then36.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then36.hlist_add_head.exit_crit_edge:          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then36.hlist_add_head.exit_crit_edge
  %26 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %arrayidx3, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx3, ptr %pprev34.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i) #9
  %28 = call ptr @memset(ptr %mac_c.i, i32 255, i32 6)
  %call.i = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext -1, i1 noundef zeroext false, ptr noundef nonnull %mac_c.i, ptr noundef %addr) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i) #9
  %uplink_rule = getelementptr inbounds %struct.esw_mc_addr, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %uplink_rule to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %uplink_rule, align 8
  tail call fastcc void @update_allmulti_vports(ptr noundef %esw, ptr noundef %vaddr)
  br label %add

add:                                              ; preds = %hlist_add_head.exit, %for.body.add_crit_edge
  %esw_mc.0 = phi ptr [ %call7.i.i, %hlist_add_head.exit ], [ %ptr.0, %for.body.add_crit_edge ]
  %mc_promisc = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 5
  %30 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mc_promisc, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool49.not = icmp eq i8 %31, 0
  br i1 %tobool49.not, label %if.then50, label %add.if.end51_crit_edge

add.if.end51_crit_edge:                           ; preds = %add
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %add
  call void @__sanitizer_cov_trace_pc() #11
  %refcnt = getelementptr inbounds %struct.esw_mc_addr, ptr %esw_mc.0, i32 0, i32 2
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %refcnt, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %add.if.end51_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i111) #9
  %34 = call ptr @memset(ptr %mac_c.i111, i32 255, i32 6)
  %call.i112 = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext %1, i1 noundef zeroext false, ptr noundef nonnull %mac_c.i111, ptr noundef %addr) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i111) #9
  %flow_rule = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 3
  %35 = ptrtoint ptr %flow_rule to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i112, ptr %flow_rule, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %36 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %do.body55

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_add_mc_addr.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_add_mc_addr, %if.then61)) #9
          to label %cleanup [label %if.then61], !srcloc !196

if.then61:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %esw, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %41 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 68
  %45 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pid, align 8
  %conv63 = zext i16 %1 to i32
  %47 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %flow_rule, align 4
  %refcnt65 = getelementptr inbounds %struct.esw_mc_addr, ptr %esw_mc.0, i32 0, i32 2
  %49 = ptrtoint ptr %refcnt65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %refcnt65, align 4
  %uplink_rule66 = getelementptr inbounds %struct.esw_mc_addr, ptr %esw_mc.0, i32 0, i32 1
  %51 = ptrtoint ptr %uplink_rule66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %uplink_rule66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_add_mc_addr.__UNIQUE_ID_ddebug700, ptr noundef %40, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.56, i32 noundef 426, i32 noundef %46, i32 noundef %conv63, ptr noundef %addr, ptr noundef %48, i32 noundef %50, ptr noundef %52) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body55, %if.end51.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end51.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ 0, %do.body55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_del_mc_addr(ptr noundef %esw, ptr noundef %vaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.l2addr_node, ptr %vaddr, i32 0, i32 1
  %vport2 = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 2
  %0 = ptrtoint ptr %vport2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vport2, align 2
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %2 = ptrtoint ptr %fdb_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_table, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mc_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 3
  %arrayidx = getelementptr %struct.l2addr_node, ptr %vaddr, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx3 = getelementptr %struct.hlist_head, ptr %mc_table, i32 %conv
  %add.ptr1.i = getelementptr %struct.l2addr_node, ptr %vaddr, i32 0, i32 1, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ptr.0.in = phi ptr [ %arrayidx3, %if.end ], [ %ptr.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %tobool6.not = icmp eq ptr %ptr.0, null
  br i1 %tobool6.not, label %do.end, label %for.body

for.body:                                         ; preds = %for.cond
  %addr8 = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1
  %7 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr8, align 4
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %10, %8
  %add.ptr.i = getelementptr %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i, align 2
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %14, %12
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.body31, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %esw, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %conv29 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.62, ptr noundef %addr, i32 noundef %conv29) #12
  br label %cleanup

do.body31:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %19 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %do.body31.do.end50_crit_edge, label %do.body34

do.body31.do.end50_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

do.body34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esw_del_mc_addr.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esw_del_mc_addr, %if.then40)) #9
          to label %do.end50 [label %if.then40], !srcloc !196

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %esw, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pid, align 8
  %conv44 = zext i16 %1 to i32
  %flow_rule = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 3
  %30 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flow_rule, align 4
  %refcnt = getelementptr inbounds %struct.esw_mc_addr, ptr %ptr.0, i32 0, i32 2
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %refcnt, align 4
  %uplink_rule = getelementptr inbounds %struct.esw_mc_addr, ptr %ptr.0, i32 0, i32 1
  %34 = ptrtoint ptr %uplink_rule to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uplink_rule, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esw_del_mc_addr.__UNIQUE_ID_ddebug701, ptr noundef %23, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef 450, i32 noundef %29, i32 noundef %conv44, ptr noundef %addr, ptr noundef %31, i32 noundef %33, ptr noundef %35) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then40, %do.body34, %do.body31.do.end50_crit_edge
  %flow_rule51 = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 3
  %36 = ptrtoint ptr %flow_rule51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flow_rule51, align 4
  %tobool52.not = icmp eq ptr %37, null
  br i1 %tobool52.not, label %do.end50.if.end55_crit_edge, label %if.then53

do.end50.if.end55_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %37) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.end50.if.end55_crit_edge
  %38 = ptrtoint ptr %flow_rule51 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %flow_rule51, align 4
  %mc_promisc = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 5
  %39 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mc_promisc, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool57.not = icmp eq i8 %40, 0
  br i1 %tobool57.not, label %lor.lhs.false, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end55
  %refcnt59 = getelementptr inbounds %struct.esw_mc_addr, ptr %ptr.0, i32 0, i32 2
  %41 = ptrtoint ptr %refcnt59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %refcnt59, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %refcnt59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end62, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end62:                                         ; preds = %lor.lhs.false
  tail call fastcc void @update_allmulti_vports(ptr noundef %esw, ptr noundef %vaddr)
  %uplink_rule63 = getelementptr inbounds %struct.esw_mc_addr, ptr %ptr.0, i32 0, i32 1
  %43 = ptrtoint ptr %uplink_rule63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %uplink_rule63, align 4
  %tobool64.not = icmp eq ptr %44, null
  br i1 %tobool64.not, label %if.end62.if.end67_crit_edge, label %if.then65

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %44) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  %45 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ptr.0, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %ptr.0, i32 0, i32 1
  %47 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pprev2.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %46, ptr %48, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end67.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end67.hlist_del.exit_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end67.hlist_del.exit_crit_edge
  %51 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0, align 4
  %52 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %ptr.0) #9
  br label %cleanup

cleanup:                                          ; preds = %hlist_del.exit, %lor.lhs.false.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hlist_del.exit ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_add_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__esw_fdb_set_vport_rule(ptr nocapture noundef readonly %esw, i16 noundef zeroext %vport, i1 noundef zeroext %rx_rule, ptr nocapture noundef readonly %mac_c, ptr nocapture noundef readonly %mac_v) unnamed_addr #0 align 64 {
entry:
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  %dest = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac_c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_c, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_c, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %3 to i32
  %or.i = or i32 %1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %not.call = xor i1 %cmp.i, true
  %cond = zext i1 %not.call to i32
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #9
  %4 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #9
  %5 = getelementptr inbounds i8, ptr %dest, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %or = or i32 %cond, 2
  %spec.select = select i1 %rx_rule, i32 %or, i32 %cond
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #14
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add.ptr = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 2
  %add.ptr6 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 2
  br i1 %cmp.i, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %mac_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_v, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr, align 4
  %add.ptr.i99 = getelementptr i8, ptr %mac_v, i32 4
  %10 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i99, align 2
  %add.ptr1.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %add.ptr1.i, align 2
  %13 = ptrtoint ptr %mac_c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mac_c, align 4
  %15 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr6, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i101 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %add.ptr1.i101 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i101, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %and10 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end37_crit_edge, label %if.then12

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr20 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 17
  %19 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr20, align 4
  %or23 = or i32 %20, 65535
  store i32 %or23, ptr %add.ptr20, align 4
  %add.ptr31 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 17
  %21 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr31, align 4
  %or33 = or i32 %22, 65535
  store i32 %or33, ptr %add.ptr31, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then12, %if.end9.if.end37_crit_edge
  %23 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %dest, align 4
  %24 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %vport, ptr %24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %26 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and39 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.do.end55_crit_edge, label %do.body42

if.end37.do.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.body42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__esw_fdb_set_vport_rule.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__esw_fdb_set_vport_rule, %if.then48)) #9
          to label %do.end55 [label %if.then48], !srcloc !196

if.then48:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %esw, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid, align 8
  %conv = zext i16 %vport to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__esw_fdb_set_vport_rule.__UNIQUE_ID_ddebug698, ptr noundef %30, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef 228, i32 noundef %36, ptr noundef %add.ptr, ptr noundef %add.ptr6, i32 noundef %conv) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then48, %do.body42, %if.end37.do.end55_crit_edge
  %conv56 = trunc i32 %spec.select to i8
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv56, ptr %call.i.i, align 4
  %38 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %flow_act, align 4
  %fdb_table = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 2
  %39 = ptrtoint ptr %fdb_table to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fdb_table, align 4
  %call57 = call ptr @mlx5_add_flow_rules(ptr noundef %40, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #9
  %cmp.i102 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %do.end62, label %do.end55.if.end67_crit_edge

do.end55.if.end67_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

do.end62:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %esw, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %conv65 = zext i16 %vport to i32
  %45 = ptrtoint ptr %call57 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.55, ptr noundef %add.ptr, ptr noundef %add.ptr6, i32 noundef %conv65, i32 noundef %45) #12
  br label %if.end67

if.end67:                                         ; preds = %do.end62, %do.end55.if.end67_crit_edge
  %flow_rule.0 = phi ptr [ null, %do.end62 ], [ %call57, %do.end55.if.end67_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %flow_rule.0, %if.end67 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_allmulti_vports(ptr noundef %esw, ptr noundef %vaddr) unnamed_addr #0 align 64 {
entry:
  %mac_c.i = alloca [6 x i8], align 1
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.l2addr_node, ptr %vaddr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %call = call ptr @xa_find(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not7 = icmp eq ptr %call, null
  br i1 %tobool.not7, label %entry.for.end72_crit_edge, label %for.body.lr.ph

entry.for.end72_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.l2addr_node, ptr %vaddr, i32 0, i32 1, i32 5
  %add.ptr1.i = getelementptr %struct.l2addr_node, ptr %vaddr, i32 0, i32 1, i32 4
  %vport30 = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 2
  %action = getelementptr inbounds %struct.vport_addr, ptr %vaddr, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %vport.08 = phi ptr [ %call, %for.body.lr.ph ], [ %call71, %cleanup.for.body_crit_edge ]
  %mc_list = getelementptr inbounds %struct.mlx5_vport, ptr %vport.08, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %arrayidx2 = getelementptr %struct.hlist_head, ptr %mc_list, i32 %conv
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7.for.cond5_crit_edge, %for.body
  %ptr.0.in = phi ptr [ %arrayidx2, %for.body ], [ %ptr.0, %for.body7.for.cond5_crit_edge ]
  %3 = ptrtoint ptr %ptr.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %ptr.0 = load ptr, ptr %ptr.0.in, align 4
  %tobool6.not = icmp eq ptr %ptr.0, null
  br i1 %tobool6.not, label %for.cond5.for.end_crit_edge, label %for.body7

for.cond5.for.end_crit_edge:                      ; preds = %for.cond5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body7:                                        ; preds = %for.cond5
  %addr9 = getelementptr inbounds %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1
  %4 = ptrtoint ptr %addr9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr9, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %7, %5
  %add.ptr.i = getelementptr %struct.l2addr_node, ptr %ptr.0, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %11, %9
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body7.for.end_crit_edge, label %for.body7.for.cond5_crit_edge

for.body7.for.cond5_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.cond5.for.end_crit_edge
  %vport27 = getelementptr inbounds %struct.mlx5_vport, ptr %vport.08, i32 0, i32 12
  %12 = ptrtoint ptr %vport27 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vport27, align 8
  %allmulti_rule = getelementptr inbounds %struct.mlx5_vport, ptr %vport.08, i32 0, i32 4
  %14 = ptrtoint ptr %allmulti_rule to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %allmulti_rule, align 8
  %tobool.not.i = icmp eq ptr %15, null
  %cmp.i3 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i3
  br i1 %spec.select.i, label %for.end.cleanup_crit_edge, label %lor.lhs.false

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %16 = ptrtoint ptr %vport30 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vport30, align 2
  %conv32 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %13)
  %cmp = icmp eq i16 %17, %13
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end35

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %action, align 4
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %19, label %if.end35.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb61
  ]

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end35
  br i1 %tobool6.not, label %if.end39, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 28) #13
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %do.end.critedge, label %if.then46

if.then46:                                        ; preds = %if.end39
  %addr48 = getelementptr inbounds %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr, align 4
  %24 = ptrtoint ptr %addr48 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %addr48, align 8
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr1.i, align 2
  %add.ptr1.i5 = getelementptr %struct.l2addr_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %add.ptr1.i5 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %add.ptr1.i5, align 4
  %28 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx2, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %call7.i.i, align 8
  %tobool.not.i6 = icmp eq ptr %29, null
  br i1 %tobool.not.i6, label %if.then46.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then46.hlist_add_head.exit_crit_edge:          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then46.hlist_add_head.exit_crit_edge
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %arrayidx2, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx2, ptr %pprev34.i, align 4
  %vport59 = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %vport59 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %13, ptr %vport59, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_c.i) #9
  %35 = call ptr @memset(ptr %mac_c.i, i32 255, i32 6)
  %call.i = call fastcc ptr @__esw_fdb_set_vport_rule(ptr noundef %esw, i16 noundef zeroext %13, i1 noundef zeroext false, ptr noundef nonnull %mac_c.i, ptr noundef %addr) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_c.i) #9
  %flow_rule = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %flow_rule to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %flow_rule, align 4
  %mc_promisc = getelementptr inbounds %struct.vport_addr, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %mc_promisc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %mc_promisc, align 1
  br label %cleanup

do.end.critedge:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %esw, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.58, ptr noundef %addr, i32 noundef %conv32) #12
  br label %cleanup

sw.bb61:                                          ; preds = %if.end35
  br i1 %tobool6.not, label %sw.bb61.cleanup_crit_edge, label %if.end64

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end64:                                         ; preds = %sw.bb61
  %flow_rule65 = getelementptr inbounds %struct.vport_addr, ptr %ptr.0, i32 0, i32 3
  %42 = ptrtoint ptr %flow_rule65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %flow_rule65, align 4
  call void @mlx5_del_flow_rules(ptr noundef %43) #9
  %44 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptr.0, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %ptr.0, i32 0, i32 1
  %46 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pprev2.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %45, ptr %47, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end64.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end64.hlist_del.exit_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end64.hlist_del.exit_crit_edge
  %50 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 256 to ptr), ptr %ptr.0, align 4
  %51 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  call void @kfree(ptr noundef nonnull %ptr.0) #9
  br label %cleanup

cleanup:                                          ; preds = %hlist_del.exit, %sw.bb61.cleanup_crit_edge, %do.end.critedge, %hlist_add_head.exit, %sw.bb.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %call71 = call ptr @xa_find_after(ptr noundef %vports, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call71, null
  br i1 %tobool.not, label %cleanup.for.end72_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end72_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.end72:                                        ; preds = %cleanup.for.end72_crit_edge, %entry.for.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_del_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_nic_vport_promisc(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_nic_vport_mac_address(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_nic_vport_node_guid(ptr noundef, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_legacy_vport_acl_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esw_vport_create_offloads_acl_tables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_qos_vport_disable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_legacy_vport_acl_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esw_vport_destroy_offloads_acl_tables(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_host_pf_enable_hca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_host_pf_disable_hca(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_param_driverinit_value_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fs_egress_acls_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fs_ingress_acls_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fs_egress_acls_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_dev_list_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_rescan_drivers_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_dev_list_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eswitch_vport_event(ptr noundef %nb, i32 noundef %type, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %nb, i32 -4
  %data4 = getelementptr inbounds %struct.mlx5_eqe, ptr %data, i32 0, i32 5
  %vport_num5 = getelementptr inbounds %struct.mlx5_eqe_vport_change, ptr %data4, i32 0, i32 1
  %0 = ptrtoint ptr %vport_num5 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %vport_num5, align 1
  %tobool.not.i = icmp eq ptr %add.ptr3, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool1.not.i = icmp sgt i32 %7, -1
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %vports.i = getelementptr i8, ptr %nb, i32 2244
  %conv.i = zext i16 %1 to i32
  %call2.i = tail call ptr @xa_load(ptr noundef %vports.i, i32 noundef %conv.i) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.body.i, label %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge

if.end.i.mlx5_eswitch_get_vport.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5_eswitch_get_vport.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %8 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and5.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.end_crit_edge, label %do.body8.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eswitch_vport_event, %if.then13.i)) #9
          to label %mlx5_eswitch_get_vport.exit [label %if.then13.i], !srcloc !196

if.then13.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr3, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = tail call i32 @llvm.read_register.i32(metadata !186) #9
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 68
  %17 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %18, i32 noundef %conv.i) #9
  br label %if.end

mlx5_eswitch_get_vport.exit:                      ; preds = %do.body8.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge
  %retval.0.i = phi ptr [ %call2.i, %if.end.i.mlx5_eswitch_get_vport.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.body8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_eswitch_get_vport.exit.if.end_crit_edge, label %if.then

mlx5_eswitch_get_vport.exit.if.end_crit_edge:     ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %mlx5_eswitch_get_vport.exit
  call void @__sanitizer_cov_trace_pc() #11
  %work_queue = getelementptr i8, ptr %nb, i32 2240
  %19 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %work_queue, align 4
  %vport_change_handler = getelementptr inbounds %struct.mlx5_vport, ptr %retval.0.i, i32 0, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %vport_change_handler) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %mlx5_eswitch_get_vport.exit.if.end_crit_edge, %if.then13.i, %do.body.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_funcs_changed_handler(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fs_ingress_acls_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eq_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_esw_vport_alloc(ptr noundef %esw, i32 noundef %index, i16 noundef zeroext %vport_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2256) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %esw, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %call7.i.i, align 8
  %vport3 = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %vport3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %vport_num, ptr %vport3, align 8
  %index4 = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %index, ptr %index4, align 8
  %link_state = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %link_state, align 8
  %vport_change_handler = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %vport_change_handler, i32 noundef 0) #9
  %7 = ptrtoint ptr %vport_change_handler to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %vport_change_handler, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.76, ptr noundef nonnull @mlx5_esw_vport_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry8 = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_vport, ptr %call7.i.i, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @esw_vport_change_handler, ptr %func, align 8
  %vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %conv = zext i16 %vport_num to i32
  tail call void @_raw_spin_lock(ptr noundef %vports) #9
  %call.i = tail call i32 @__xa_insert(ptr noundef %vports, i32 noundef %conv, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #9
  tail call void @_raw_spin_unlock(ptr noundef %vports) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %insert_err

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %total_vports = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 8
  %11 = ptrtoint ptr %total_vports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_vports, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %total_vports, align 8
  br label %cleanup

insert_err:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %insert_err, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %insert_err ], [ 0, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_set_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esw_vport_change_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2060
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  tail call void @esw_vport_change_handle_locked(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %state_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xa_get_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_dec_if_positive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185}
!llvm.named.register.sp = !{!186}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 100, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_eswitch_get_vport.__UNIQUE_ID_ddebug677, !1, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 707, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @esw_vport_change_handle_locked.__UNIQUE_ID_ddebug704, !7, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 727, i32 2}
!12 = !{ptr @esw_vport_change_handle_locked.__UNIQUE_ID_ddebug705, !11, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 836, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx5_esw_vport_enable.__UNIQUE_ID_ddebug706, !14, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 869, i32 2}
!19 = !{ptr @mlx5_esw_vport_enable.__UNIQUE_ID_ddebug707, !18, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 892, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_esw_vport_disable.__UNIQUE_ID_ddebug708, !21, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1248, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlx5_eswitch_enable_locked._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlx5_eswitch_enable_locked._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1274, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlx5_eswitch_enable_locked._entry.16, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mlx5_eswitch_enable_locked._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1343, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlx5_eswitch_disable_locked._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlx5_eswitch_disable_locked._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1549, i32 20}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mlx5_eswitch_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1563, i32 2}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlx5_eswitch_init.__key.27, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1565, i32 2}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mlx5_eswitch_init.__key.29, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1571, i32 2}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mlx5_eswitch_init.__key.31, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1573, i32 2}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1574, i32 2}
!60 = !{ptr @mlx5_eswitch_init.__key.34, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1587, i32 2}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1589, i32 2}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx5_eswitch_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx5_eswitch_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1610, i32 2}
!70 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlx5_eswitch_cleanup._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlx5_eswitch_cleanup._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1730, i32 3}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mlx5_eswitch_set_vport_state._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mlx5_eswitch_set_vport_state._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @__ksymtab_mlx5_eswitch_mode, !79, !"__ksymtab_mlx5_eswitch_mode", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1880, i32 1}
!80 = !{ptr @__ksymtab_mlx5_eswitch_get_encap_mode, !81, !"__ksymtab_mlx5_eswitch_get_encap_mode", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1891, i32 1}
!82 = !{ptr @__ksymtab_mlx5_eswitch_get_total_vports, !83, !"__ksymtab_mlx5_eswitch_get_total_vports", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 2039, i32 1}
!84 = !{ptr @__ksymtab_mlx5_eswitch_get_core_dev, !85, !"__ksymtab_mlx5_eswitch_get_core_dev", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 2051, i32 1}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 542, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @esw_update_vport_addr_list.__UNIQUE_ID_ddebug702, !87, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!90 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 565, i32 6}
!94 = !{ptr @esw_update_vport_addr_list._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @esw_update_vport_addr_list._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 579, i32 4}
!98 = !{ptr @esw_update_vport_addr_list._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @esw_update_vport_addr_list._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 296, i32 3}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @esw_add_uc_addr._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @esw_add_uc_addr._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 308, i32 2}
!107 = !{ptr @esw_add_uc_addr.__UNIQUE_ID_ddebug699, !106, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 226, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @__esw_fdb_set_vport_rule.__UNIQUE_ID_ddebug698, !109, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 235, i32 3}
!114 = !{ptr @__esw_fdb_set_vport_rule._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @__esw_fdb_set_vport_rule._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 423, i32 2}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @esw_add_mc_addr.__UNIQUE_ID_ddebug700, !117, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 368, i32 5}
!122 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @update_allmulti_vports._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @update_allmulti_vports._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 328, i32 3}
!127 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @esw_del_uc_addr._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @esw_del_uc_addr._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 442, i32 3}
!132 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @esw_del_mc_addr._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @esw_del_mc_addr._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 447, i32 2}
!137 = !{ptr @esw_del_mc_addr.__UNIQUE_ID_ddebug701, !136, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 687, i32 2}
!140 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @esw_update_vport_rx_mode.__UNIQUE_ID_ddebug703, !139, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 617, i32 4}
!144 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @esw_update_vport_mc_promisc._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @esw_update_vport_mc_promisc._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1143, i32 3}
!149 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mlx5_eswitch_get_devlink_param._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @mlx5_eswitch_get_devlink_param._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1196, i32 3}
!154 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @mlx5_esw_acls_ns_init._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @mlx5_esw_acls_ns_init._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1204, i32 3}
!159 = !{ptr @mlx5_esw_acls_ns_init._entry.73, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @mlx5_esw_acls_ns_init._entry_ptr.75, !158, !"_entry_ptr", i1 false, i1 false}
!161 = distinct !{null, !162, !"__already_done", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1155, i32 2}
!163 = !{ptr @mlx5_esw_vport_alloc.__key, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1442, i32 2}
!165 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @xa_init_flags.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!168 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1641, i32 3}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @mlx5_esw_set_vport_mac_locked._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @mlx5_esw_set_vport_mac_locked._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1647, i32 3}
!176 = !{ptr @mlx5_esw_set_vport_mac_locked._entry.80, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @mlx5_esw_set_vport_mac_locked._entry_ptr.82, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 1656, i32 3}
!180 = !{ptr @mlx5_esw_set_vport_mac_locked._entry.83, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @mlx5_esw_set_vport_mac_locked._entry_ptr.85, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/eswitch.c", i32 155, i32 2}
!184 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @modify_esw_vport_cvlan.__UNIQUE_ID_ddebug689, !183, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!186 = !{!"sp"}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2148902315, i64 2148902320, i64 2148902333, i64 2148902377, i64 2148902411, i64 2148902432}
!197 = !{ptr @esw_add_mc_addr, ptr @esw_add_uc_addr}
!198 = !{i8 0, i8 2}
!199 = distinct !{ptr @esw_del_mc_addr, null}
!200 = !{!"branch_weights", i32 1, i32 2000}
!201 = !{!"branch_weights", i32 2000, i32 1}
