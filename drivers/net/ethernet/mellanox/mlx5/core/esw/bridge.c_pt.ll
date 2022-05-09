; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.191 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.193, %struct.trace_event, ptr, ptr, %union.anon.194, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.193 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.194 = type { ptr }
%union.anon.195 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.196 = type { %struct.bpf_raw_event_map }
%union.anon.197 = type { %struct.bpf_raw_event_map }
%union.anon.198 = type { %struct.bpf_raw_event_map }
%union.anon.199 = type { %struct.bpf_raw_event_map }
%union.anon.200 = type { %struct.bpf_raw_event_map }
%union.anon.201 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.15 }
%union.anon.15 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mlx5_esw_bridge_fdb_template = type { %struct.trace_entry, [16 x i8], [6 x i8], i16, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mlx5_esw_bridge_fdb_entry = type { %struct.mlx5_esw_bridge_fdb_key, %struct.rhash_head, ptr, %struct.list_head, %struct.list_head, i16, i16, i16, ptr, ptr, i32, ptr, ptr }
%struct.mlx5_esw_bridge_fdb_key = type { [6 x i8], i16 }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mlx5_esw_bridge_vlan_template = type { %struct.trace_entry, i16, i16, [0 x i8] }
%struct.mlx5_esw_bridge_vlan = type { i16, i16, %struct.list_head, ptr, ptr, ptr }
%struct.trace_event_raw_mlx5_esw_bridge_port_template = type { %struct.trace_entry, i16, i16, i16, [0 x i8] }
%struct.mlx5_esw_bridge_port = type { i16, i16, i16, ptr, %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.mlx5_esw_bridge_offloads = type { ptr, %struct.list_head, %struct.xarray, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlx5_esw_bridge = type { i32, i32, %struct.list_head, ptr, %struct.list_head, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.mlx5_flow_destination = type { i32, %union.anon.162 }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.215, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.215 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_pkt_reformat_params = type { i32, i8, i8, i32, ptr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.214 }
%struct.anon.214 = type { i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.203, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.205, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.203 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.204] }
%struct.anon.204 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.205 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.anon.239 = type { i16, i16 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.82, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.82 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.211, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.212, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.209, i32 }
%union.anon.209 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.210, ptr }
%struct.anon.210 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.211 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.212 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mlx5_esw_bridge_fdb_entry_init = internal constant [31 x i8] c"mlx5_esw_bridge_fdb_entry_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_fdb_entry_init = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_fdb_entry_init }, align 4
@__tracepoint_mlx5_esw_bridge_fdb_entry_init = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_fdb_entry_init, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_fdb_entry_init, ptr null, ptr @__traceiter_mlx5_esw_bridge_fdb_entry_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_init = internal constant ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_bridge_fdb_entry_refresh = internal constant [34 x i8] c"mlx5_esw_bridge_fdb_entry_refresh\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_fdb_entry_refresh = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_fdb_entry_refresh }, align 4
@__tracepoint_mlx5_esw_bridge_fdb_entry_refresh = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_fdb_entry_refresh, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_fdb_entry_refresh, ptr null, ptr @__traceiter_mlx5_esw_bridge_fdb_entry_refresh, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_refresh = internal constant ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_bridge_fdb_entry_cleanup = internal constant [34 x i8] c"mlx5_esw_bridge_fdb_entry_cleanup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_fdb_entry_cleanup = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_fdb_entry_cleanup }, align 4
@__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_fdb_entry_cleanup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_fdb_entry_cleanup, ptr null, ptr @__traceiter_mlx5_esw_bridge_fdb_entry_cleanup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_cleanup = internal constant ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_bridge_vlan_create = internal constant [28 x i8] c"mlx5_esw_bridge_vlan_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_vlan_create = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_vlan_create }, align 4
@__tracepoint_mlx5_esw_bridge_vlan_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_vlan_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_vlan_create, ptr null, ptr @__traceiter_mlx5_esw_bridge_vlan_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_vlan_create = internal constant ptr @__tracepoint_mlx5_esw_bridge_vlan_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_bridge_vlan_cleanup = internal constant [29 x i8] c"mlx5_esw_bridge_vlan_cleanup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_vlan_cleanup = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_vlan_cleanup }, align 4
@__tracepoint_mlx5_esw_bridge_vlan_cleanup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_vlan_cleanup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_vlan_cleanup, ptr null, ptr @__traceiter_mlx5_esw_bridge_vlan_cleanup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_vlan_cleanup = internal constant ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_bridge_vport_init = internal constant [27 x i8] c"mlx5_esw_bridge_vport_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_vport_init = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_vport_init }, align 4
@__tracepoint_mlx5_esw_bridge_vport_init = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_vport_init, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_vport_init, ptr null, ptr @__traceiter_mlx5_esw_bridge_vport_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_vport_init = internal constant ptr @__tracepoint_mlx5_esw_bridge_vport_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_bridge_vport_cleanup = internal constant [30 x i8] c"mlx5_esw_bridge_vport_cleanup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_bridge_vport_cleanup = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_bridge_vport_cleanup }, align 4
@__tracepoint_mlx5_esw_bridge_vport_cleanup = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_bridge_vport_cleanup, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_bridge_vport_cleanup, ptr null, ptr @__traceiter_mlx5_esw_bridge_vport_cleanup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_bridge_vport_cleanup = internal constant ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5_esw_bridge_fdb_template = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.12, %union.anon.191 { %struct.anon.192 { ptr @.str.13, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.191 { %struct.anon.192 { ptr @.str.15, i32 6, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.17, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.18, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.191 { %struct.anon.192 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_bridge_fdb_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_bridge_fdb_template, ptr @perf_trace_mlx5_esw_bridge_fdb_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_bridge_fdb_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_bridge_fdb_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_bridge_fdb_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_bridge_fdb_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_bridge_fdb_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_bridge_fdb_template = internal global { [117 x i8], [43 x i8] } { [117 x i8] c"\22net_device=%s addr=%pM vid=%hu flags=%hx used=%u\22, REC->dev_name, REC->addr, REC->vid, REC->flags, REC->used / 1000\00", [43 x i8] zeroinitializer }, align 32
@event_mlx5_esw_bridge_fdb_entry_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_fdb_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_fdb_template }, ptr @print_fmt_mlx5_esw_bridge_fdb_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_fdb_entry_init = internal global ptr @event_mlx5_esw_bridge_fdb_entry_init, section "_ftrace_events", align 4
@event_mlx5_esw_bridge_fdb_entry_refresh = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_fdb_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_fdb_template }, ptr @print_fmt_mlx5_esw_bridge_fdb_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_fdb_entry_refresh = internal global ptr @event_mlx5_esw_bridge_fdb_entry_refresh, section "_ftrace_events", align 4
@event_mlx5_esw_bridge_fdb_entry_cleanup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_fdb_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_fdb_template }, ptr @print_fmt_mlx5_esw_bridge_fdb_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_fdb_entry_cleanup = internal global ptr @event_mlx5_esw_bridge_fdb_entry_cleanup, section "_ftrace_events", align 4
@trace_event_fields_mlx5_esw_bridge_vlan_template = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.17, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.18, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_bridge_vlan_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_bridge_vlan_template, ptr @perf_trace_mlx5_esw_bridge_vlan_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_bridge_vlan_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_bridge_vlan_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_bridge_vlan_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_bridge_vlan_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_bridge_vlan_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_bridge_vlan_template = internal global { [42 x i8], [54 x i8] } { [42 x i8] c"\22vid=%hu flags=%hx\22, REC->vid, REC->flags\00", [54 x i8] zeroinitializer }, align 32
@event_mlx5_esw_bridge_vlan_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_vlan_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_vlan_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_vlan_template }, ptr @print_fmt_mlx5_esw_bridge_vlan_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_vlan_create = internal global ptr @event_mlx5_esw_bridge_vlan_create, section "_ftrace_events", align 4
@event_mlx5_esw_bridge_vlan_cleanup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_vlan_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_vlan_template }, ptr @print_fmt_mlx5_esw_bridge_vlan_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_vlan_cleanup = internal global ptr @event_mlx5_esw_bridge_vlan_cleanup, section "_ftrace_events", align 4
@trace_event_fields_mlx5_esw_bridge_port_template = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.23, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.24, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.191 { %struct.anon.192 { ptr @.str.18, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_bridge_port_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_bridge_port_template, ptr @perf_trace_mlx5_esw_bridge_port_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_bridge_port_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_bridge_port_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_bridge_port_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_bridge_port_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_bridge_port_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_bridge_port_template = internal global { [100 x i8], [60 x i8] } { [100 x i8] c"\22vport_num=%hu esw_owner_vhca_id=%hu flags=%hx\22, REC->vport_num, REC->esw_owner_vhca_id, REC->flags\00", [60 x i8] zeroinitializer }, align 32
@event_mlx5_esw_bridge_vport_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_port_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_vport_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_port_template }, ptr @print_fmt_mlx5_esw_bridge_port_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_vport_init = internal global ptr @event_mlx5_esw_bridge_vport_init, section "_ftrace_events", align 4
@event_mlx5_esw_bridge_vport_cleanup = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_bridge_port_template, %union.anon.193 { ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_bridge_port_template }, ptr @print_fmt_mlx5_esw_bridge_port_template, ptr null, %union.anon.194 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_bridge_vport_cleanup = internal global ptr @event_mlx5_esw_bridge_vport_cleanup, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_init = internal global %union.anon.195 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, ptr @__bpf_trace_mlx5_esw_bridge_fdb_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_refresh = internal global %union.anon.196 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, ptr @__bpf_trace_mlx5_esw_bridge_fdb_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_cleanup = internal global %union.anon.197 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, ptr @__bpf_trace_mlx5_esw_bridge_fdb_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_bridge_vlan_create = internal global %union.anon.198 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_vlan_create, ptr @__bpf_trace_mlx5_esw_bridge_vlan_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_bridge_vlan_cleanup = internal global %union.anon.199 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, ptr @__bpf_trace_mlx5_esw_bridge_vlan_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_bridge_vport_init = internal global %union.anon.200 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_vport_init, ptr @__bpf_trace_mlx5_esw_bridge_port_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_bridge_vport_cleanup = internal global %union.anon.201 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, ptr @__bpf_trace_mlx5_esw_bridge_port_template, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@mlx5_esw_bridge_vport_unlink.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mlx5_core: Port is not attached to any bridge\00", [50 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vport_unlink.__msg.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"mlx5_core: Port is attached to another bridge\00", [50 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_port_vlan_add.__msg = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_core: Failed to create VLAN entry\00", [57 x i8] zeroinitializer }, align 32
@mlx5_core_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@mlx5_esw_bridge_fdb_update_used.__UNIQUE_ID_ddebug777 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_esw_bridge_fdb_update_used\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s:%d:(pid %d): FDB entry with specified key not found (MAC=%pM,vid=%u,vport=%u)\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5_esw_bridge_fdb_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 1532, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"E-Switch: FDB entry with specified key not found (MAC=%pM,vid=%u,vport=%u)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_esw_bridge_fdb_remove\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_fdb_remove._entry_ptr = internal global ptr @mlx5_esw_bridge_fdb_remove._entry, section ".printk_index", align 4
@mlx5_esw_bridge_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_cleanup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[16]\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_name\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unsigned char[6]\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u16\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"used\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"net_device=%s addr=%pM vid=%hu flags=%hx used=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vid=%hu flags=%hx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vport_num\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"esw_owner_vhca_id\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"vport_num=%hu esw_owner_vhca_id=%hu flags=%hx\0A\00", [49 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mlx5_esw_bridge_vport_link_with_flags.__msg = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlx5_core: Error checking for existing bridge with same ifindex\00", [32 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vport_link_with_flags.__msg.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx5_core: Error initializing port\00", [61 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5_esw_bridge_table_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 125, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"E-Switch: Failed to get FDB namespace\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx5_esw_bridge_table_create\00", [35 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_table_create._entry_ptr = internal global ptr @mlx5_esw_bridge_table_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_table_create._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 135, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"E-Switch: Failed to create bridge FDB Table (err=%ld)\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_table_create._entry_ptr.31 = internal global ptr @mlx5_esw_bridge_table_create._entry.29, section ".printk_index", align 4
@mlx5_esw_bridge_ingress_vlan_fg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 173, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"E-Switch: Failed to create VLAN flow group for bridge ingress table (err=%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx5_esw_bridge_ingress_vlan_fg_create\00", [57 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_ingress_vlan_fg_create._entry_ptr = internal global ptr @mlx5_esw_bridge_ingress_vlan_fg_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_ingress_filter_fg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 210, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"E-Switch: Failed to create bridge ingress table VLAN filter flow group (err=%ld)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mlx5_esw_bridge_ingress_filter_fg_create\00", [55 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_ingress_filter_fg_create._entry_ptr = internal global ptr @mlx5_esw_bridge_ingress_filter_fg_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_ingress_mac_fg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 246, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"E-Switch: Failed to create MAC flow group for bridge ingress table (err=%ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx5_esw_bridge_ingress_mac_fg_create\00", [58 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_ingress_mac_fg_create._entry_ptr = internal global ptr @mlx5_esw_bridge_ingress_mac_fg_create._entry, section ".printk_index", align 4
@fdb_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 0, i16 8, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_table_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 460, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"E-Switch: Failed to create miss flow group (err=%ld)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mlx5_esw_bridge_egress_table_init\00", [62 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_table_init._entry_ptr = internal global ptr @mlx5_esw_bridge_egress_table_init._entry, section ".printk_index", align 4
@mlx5_esw_bridge_egress_table_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 469, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"E-Switch: Failed to alloc packet reformat REMOVE_HEADER (err=%ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_table_init._entry_ptr.42 = internal global ptr @mlx5_esw_bridge_egress_table_init._entry.40, section ".printk_index", align 4
@mlx5_esw_bridge_egress_table_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.4, i32 481, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"E-Switch: Failed to create miss flow (err=%ld)\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_table_init._entry_ptr.45 = internal global ptr @mlx5_esw_bridge_egress_table_init._entry.43, section ".printk_index", align 4
@mlx5_esw_bridge_egress_vlan_fg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 280, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"E-Switch: Failed to create VLAN flow group for bridge egress table (err=%ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx5_esw_bridge_egress_vlan_fg_create\00", [58 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_vlan_fg_create._entry_ptr = internal global ptr @mlx5_esw_bridge_egress_vlan_fg_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_egress_mac_fg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 311, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"E-Switch: Failed to create bridge egress table MAC flow group (err=%ld)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlx5_esw_bridge_egress_mac_fg_create\00", [59 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_mac_fg_create._entry_ptr = internal global ptr @mlx5_esw_bridge_egress_mac_fg_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_egress_miss_fg_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 341, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"E-Switch: Failed to create bridge egress table miss flow group (err=%ld)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mlx5_esw_bridge_egress_miss_fg_create\00", [58 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_egress_miss_fg_create._entry_ptr = internal global ptr @mlx5_esw_bridge_egress_miss_fg_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_vport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 1311, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"E-Switch: Failed to insert port metadata (vport=%u,esw_owner_vhca_id=%u,err=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_esw_bridge_vport_init\00", [37 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vport_init._entry_ptr = internal global ptr @mlx5_esw_bridge_vport_init._entry, section ".printk_index", align 4
@.str.54 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h\00", [59 x i8] zeroinitializer }, align 32
@trace_mlx5_esw_bridge_vport_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_mlx5_esw_bridge_fdb_entry_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.58 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast_one.__warned.63 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.65 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@trace_mlx5_esw_bridge_vport_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_mlx5_esw_bridge_vlan_cleanup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5_esw_bridge_vlan_push_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 927, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: Packet reformat INSERT_HEADER is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_esw_bridge_vlan_push_create\00", [63 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vlan_push_create._entry_ptr = internal global ptr @mlx5_esw_bridge_vlan_push_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_vlan_push_create._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.4, i32 941, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"E-Switch: Failed to alloc packet reformat INSERT_HEADER (err=%ld)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vlan_push_create._entry_ptr.71 = internal global ptr @mlx5_esw_bridge_vlan_push_create._entry.69, section ".printk_index", align 4
@mlx5_esw_bridge_vlan_pop_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 962, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: Packet reformat REMOVE_HEADER is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx5_esw_bridge_vlan_pop_create\00", [32 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vlan_pop_create._entry_ptr = internal global ptr @mlx5_esw_bridge_vlan_pop_create._entry, section ".printk_index", align 4
@mlx5_esw_bridge_vlan_pop_create._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.73, ptr @.str.4, i32 969, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_vlan_pop_create._entry_ptr.75 = internal global ptr @mlx5_esw_bridge_vlan_pop_create._entry.74, section ".printk_index", align 4
@trace_mlx5_esw_bridge_vlan_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.76 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5_esw_bridge_fdb_entry_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1197, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: Failed to create ingress flow(vport=%u,err=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mlx5_esw_bridge_fdb_entry_init\00", [33 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_fdb_entry_init._entry_ptr = internal global ptr @mlx5_esw_bridge_fdb_entry_init._entry, section ".printk_index", align 4
@mlx5_esw_bridge_fdb_entry_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 1207, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"E-Switch: Failed to create ingress filter(vport=%u,err=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_fdb_entry_init._entry_ptr.81 = internal global ptr @mlx5_esw_bridge_fdb_entry_init._entry.79, section ".printk_index", align 4
@mlx5_esw_bridge_fdb_entry_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 1218, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"E-Switch: Failed to create egress flow(vport=%u,err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_fdb_entry_init._entry_ptr.84 = internal global ptr @mlx5_esw_bridge_fdb_entry_init._entry.82, section ".printk_index", align 4
@mlx5_esw_bridge_fdb_entry_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.4, i32 1225, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"E-Switch: Failed to insert FDB flow(vport=%u,err=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_fdb_entry_init._entry_ptr.87 = internal global ptr @mlx5_esw_bridge_fdb_entry_init._entry.85, section ".printk_index", align 4
@mlx5_esw_bridge_port_vlan_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 1117, ptr @.str.90, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"E-Switch: Failed to lookup bridge port (vport=%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_esw_bridge_port_vlan_lookup\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_port_vlan_lookup._entry_ptr = internal global ptr @mlx5_esw_bridge_port_vlan_lookup._entry, section ".printk_index", align 4
@mlx5_esw_bridge_port_vlan_lookup._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.89, ptr @.str.4, i32 1127, ptr @.str.90, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"E-Switch: Failed to lookup bridge port vlan metadata (vport=%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_port_vlan_lookup._entry_ptr.93 = internal global ptr @mlx5_esw_bridge_port_vlan_lookup._entry.91, section ".printk_index", align 4
@mlx5_esw_bridge_ingress_flow_peer_create.handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.95 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_mlx5_esw_bridge_fdb_entry_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_mlx5_esw_bridge_fdb_entry_refresh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_flush.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.97 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Cleaning up bridge offloads while still having bridges attached\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 36, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [48 x i8] c"trace_event_fields_mlx5_esw_bridge_fdb_template\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [52 x i8] c"trace_event_type_funcs_mlx5_esw_bridge_fdb_template\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [39 x i8] c"print_fmt_mlx5_esw_bridge_fdb_template\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [37 x i8] c"event_mlx5_esw_bridge_fdb_entry_init\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 40, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [40 x i8] c"event_mlx5_esw_bridge_fdb_entry_refresh\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 45, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [40 x i8] c"event_mlx5_esw_bridge_fdb_entry_cleanup\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 50, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [49 x i8] c"trace_event_fields_mlx5_esw_bridge_vlan_template\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_mlx5_esw_bridge_vlan_template\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [40 x i8] c"print_fmt_mlx5_esw_bridge_vlan_template\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [34 x i8] c"event_mlx5_esw_bridge_vlan_create\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 72, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [35 x i8] c"event_mlx5_esw_bridge_vlan_cleanup\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 77, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant [49 x i8] c"trace_event_fields_mlx5_esw_bridge_port_template\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [53 x i8] c"trace_event_type_funcs_mlx5_esw_bridge_port_template\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [40 x i8] c"print_fmt_mlx5_esw_bridge_port_template\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [33 x i8] c"event_mlx5_esw_bridge_vport_init\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [36 x i8] c"event_mlx5_esw_bridge_vport_cleanup\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 107, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1385, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1389, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1439, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1476, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1530, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1577, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 4963, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 13, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 56, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 83, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1352, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1358, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 125, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 135, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 171, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 208, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 244, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant [14 x i8] c"fdb_ht_params\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 44, i32 39 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 459, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 467, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 480, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 278, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 309, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 339, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1309, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [72 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 102, i32 1 }
@___asan_gen_.348 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 108, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1076, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 695, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 1019, i32 12 }
@___asan_gen_.363 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 723, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 927, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 940, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 962, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 968, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1196, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1206, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1217, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1225, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1117, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1126, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 599, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 378, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.447 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 1569, i32 2 }
@llvm.compiler.used = appending global [171 x ptr] [ptr @__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_cleanup, ptr @__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_init, ptr @__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_refresh, ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vlan_cleanup, ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vlan_create, ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vport_cleanup, ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vport_init, ptr @__event_mlx5_esw_bridge_fdb_entry_cleanup, ptr @__event_mlx5_esw_bridge_fdb_entry_init, ptr @__event_mlx5_esw_bridge_fdb_entry_refresh, ptr @__event_mlx5_esw_bridge_vlan_cleanup, ptr @__event_mlx5_esw_bridge_vlan_create, ptr @__event_mlx5_esw_bridge_vport_cleanup, ptr @__event_mlx5_esw_bridge_vport_init, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, ptr @__tracepoint_mlx5_esw_bridge_vlan_create, ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, ptr @__tracepoint_mlx5_esw_bridge_vport_init, ptr @__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_cleanup, ptr @__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_init, ptr @__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_refresh, ptr @__tracepoint_ptr_mlx5_esw_bridge_vlan_cleanup, ptr @__tracepoint_ptr_mlx5_esw_bridge_vlan_create, ptr @__tracepoint_ptr_mlx5_esw_bridge_vport_cleanup, ptr @__tracepoint_ptr_mlx5_esw_bridge_vport_init, ptr @event_class_mlx5_esw_bridge_fdb_template, ptr @event_class_mlx5_esw_bridge_port_template, ptr @event_class_mlx5_esw_bridge_vlan_template, ptr @event_mlx5_esw_bridge_fdb_entry_cleanup, ptr @event_mlx5_esw_bridge_fdb_entry_init, ptr @event_mlx5_esw_bridge_fdb_entry_refresh, ptr @event_mlx5_esw_bridge_vlan_cleanup, ptr @event_mlx5_esw_bridge_vlan_create, ptr @event_mlx5_esw_bridge_vport_cleanup, ptr @event_mlx5_esw_bridge_vport_init, ptr @mlx5_esw_bridge_egress_mac_fg_create._entry, ptr @mlx5_esw_bridge_egress_mac_fg_create._entry_ptr, ptr @mlx5_esw_bridge_egress_miss_fg_create._entry, ptr @mlx5_esw_bridge_egress_miss_fg_create._entry_ptr, ptr @mlx5_esw_bridge_egress_table_init._entry, ptr @mlx5_esw_bridge_egress_table_init._entry.40, ptr @mlx5_esw_bridge_egress_table_init._entry.43, ptr @mlx5_esw_bridge_egress_table_init._entry_ptr, ptr @mlx5_esw_bridge_egress_table_init._entry_ptr.42, ptr @mlx5_esw_bridge_egress_table_init._entry_ptr.45, ptr @mlx5_esw_bridge_egress_vlan_fg_create._entry, ptr @mlx5_esw_bridge_egress_vlan_fg_create._entry_ptr, ptr @mlx5_esw_bridge_fdb_entry_init._entry, ptr @mlx5_esw_bridge_fdb_entry_init._entry.79, ptr @mlx5_esw_bridge_fdb_entry_init._entry.82, ptr @mlx5_esw_bridge_fdb_entry_init._entry.85, ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr, ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr.81, ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr.84, ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr.87, ptr @mlx5_esw_bridge_fdb_remove._entry, ptr @mlx5_esw_bridge_fdb_remove._entry_ptr, ptr @mlx5_esw_bridge_ingress_filter_fg_create._entry, ptr @mlx5_esw_bridge_ingress_filter_fg_create._entry_ptr, ptr @mlx5_esw_bridge_ingress_mac_fg_create._entry, ptr @mlx5_esw_bridge_ingress_mac_fg_create._entry_ptr, ptr @mlx5_esw_bridge_ingress_vlan_fg_create._entry, ptr @mlx5_esw_bridge_ingress_vlan_fg_create._entry_ptr, ptr @mlx5_esw_bridge_port_vlan_lookup._entry, ptr @mlx5_esw_bridge_port_vlan_lookup._entry.91, ptr @mlx5_esw_bridge_port_vlan_lookup._entry_ptr, ptr @mlx5_esw_bridge_port_vlan_lookup._entry_ptr.93, ptr @mlx5_esw_bridge_table_create._entry, ptr @mlx5_esw_bridge_table_create._entry.29, ptr @mlx5_esw_bridge_table_create._entry_ptr, ptr @mlx5_esw_bridge_table_create._entry_ptr.31, ptr @mlx5_esw_bridge_vlan_pop_create._entry, ptr @mlx5_esw_bridge_vlan_pop_create._entry.74, ptr @mlx5_esw_bridge_vlan_pop_create._entry_ptr, ptr @mlx5_esw_bridge_vlan_pop_create._entry_ptr.75, ptr @mlx5_esw_bridge_vlan_push_create._entry, ptr @mlx5_esw_bridge_vlan_push_create._entry.69, ptr @mlx5_esw_bridge_vlan_push_create._entry_ptr, ptr @mlx5_esw_bridge_vlan_push_create._entry_ptr.71, ptr @mlx5_esw_bridge_vport_init._entry, ptr @mlx5_esw_bridge_vport_init._entry_ptr, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5_esw_bridge_fdb_template, ptr @trace_event_type_funcs_mlx5_esw_bridge_fdb_template, ptr @print_fmt_mlx5_esw_bridge_fdb_template, ptr @trace_event_fields_mlx5_esw_bridge_vlan_template, ptr @trace_event_type_funcs_mlx5_esw_bridge_vlan_template, ptr @print_fmt_mlx5_esw_bridge_vlan_template, ptr @trace_event_fields_mlx5_esw_bridge_port_template, ptr @trace_event_type_funcs_mlx5_esw_bridge_port_template, ptr @print_fmt_mlx5_esw_bridge_port_template, ptr @mlx5_esw_bridge_vport_unlink.__msg, ptr @mlx5_esw_bridge_vport_unlink.__msg.1, ptr @mlx5_esw_bridge_port_vlan_add.__msg, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mlx5_esw_bridge_vport_link_with_flags.__msg, ptr @mlx5_esw_bridge_vport_link_with_flags.__msg.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @fdb_ht_params, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @mlx5_esw_bridge_ingress_flow_peer_create.handle, ptr @xa_init_flags.__key, ptr @.str.96, ptr @.str.97], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_bridge_fdb_template to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_bridge_fdb_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_bridge_fdb_template to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_fdb_entry_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_fdb_entry_refresh to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_fdb_entry_cleanup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_bridge_vlan_template to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_bridge_vlan_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_bridge_vlan_template to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_vlan_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_vlan_cleanup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_bridge_port_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_bridge_port_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_bridge_port_template to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_vport_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_bridge_vport_cleanup to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vport_unlink.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vport_unlink.__msg.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_port_vlan_add.__msg to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_fdb_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vport_link_with_flags.__msg to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vport_link_with_flags.__msg.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_table_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_table_create._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_ingress_vlan_fg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_ingress_filter_fg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_ingress_mac_fg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdb_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_egress_table_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_egress_table_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_egress_table_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_egress_vlan_fg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_egress_mac_fg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_egress_miss_fg_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vlan_push_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vlan_push_create._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vlan_pop_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_vlan_pop_create._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_fdb_entry_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_fdb_entry_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_fdb_entry_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_fdb_entry_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_port_vlan_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_port_vlan_lookup._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_ingress_flow_peer_create.handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_fdb_entry_init(ptr nocapture readnone %__data, ptr noundef %fdb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %fdb) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_fdb_entry_refresh(ptr nocapture readnone %__data, ptr noundef %fdb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %fdb) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_fdb_entry_cleanup(ptr nocapture readnone %__data, ptr noundef %fdb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %fdb) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_vlan_create(ptr nocapture readnone %__data, ptr noundef %vlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_create, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %vlan) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_vlan_cleanup(ptr nocapture readnone %__data, ptr noundef %vlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %vlan) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_vport_init(ptr nocapture readnone %__data, ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_init, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %port) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_bridge_vport_cleanup(ptr nocapture readnone %__data, ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %port) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_esw_bridge_fdb_template(ptr noundef %__data, ptr nocapture noundef readonly %fdb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !298

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !299

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev_name = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call3, i32 0, i32 1
  %dev = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %fdb, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i30 = icmp eq i8 %6, 0
  br i1 %tobool.not.i30, label %if.end5.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.end5.netdev_name.exit_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call.i31 = call ptr @strchr(ptr noundef %4, i32 noundef 37) #12
  %tobool2.not.i = icmp eq ptr %call.i31, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %4, ptr @.str.11
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.end5.netdev_name.exit_crit_edge
  %retval.0.i32 = phi ptr [ @.str.11, %if.end5.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call7 = call i32 @strscpy(ptr noundef %dev_name, ptr noundef %retval.0.i32, i32 noundef 16) #12
  %addr = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call3, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %addr, ptr %fdb, i32 6)
  %vid = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %fdb, i32 0, i32 1
  %8 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vid, align 2
  %vid12 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %vid12 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vid12, align 2
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %fdb, i32 0, i32 7
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 4
  %flags13 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call3, i32 0, i32 4
  %13 = ptrtoint ptr %flags13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flags13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %fdb, i32 0, i32 10
  %15 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lastuse, align 4
  %sub = sub i32 %14, %16
  %call14 = call i32 @jiffies_to_msecs(i32 noundef %sub) #12
  %used = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call3, i32 0, i32 5
  %17 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call14, ptr %used, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %netdev_name.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_bridge_fdb_template(ptr noundef %__data, ptr nocapture noundef readonly %fdb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !300
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !300
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !288) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev_name = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call13, i32 0, i32 1
  %dev = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %fdb, i32 0, i32 2
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i54 = icmp eq i8 %30, 0
  br i1 %tobool.not.i54, label %if.end16.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.end16.netdev_name.exit_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call ptr @strchr(ptr noundef %28, i32 noundef 37) #12
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %28, ptr @.str.11
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.end16.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.11, %if.end16.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call18 = call i32 @strscpy(ptr noundef %dev_name, ptr noundef %retval.0.i, i32 noundef 16) #12
  %addr = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call13, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %addr, ptr %fdb, i32 6)
  %vid = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %fdb, i32 0, i32 1
  %32 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vid, align 2
  %vid23 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call13, i32 0, i32 3
  %34 = ptrtoint ptr %vid23 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %vid23, align 2
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %fdb, i32 0, i32 7
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags, align 4
  %flags24 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call13, i32 0, i32 4
  %37 = ptrtoint ptr %flags24 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %flags24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %fdb, i32 0, i32 10
  %39 = ptrtoint ptr %lastuse to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lastuse, align 4
  %sub25 = sub i32 %38, %40
  %call26 = call i32 @jiffies_to_msecs(i32 noundef %sub25) #12
  %used = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %call13, i32 0, i32 5
  %41 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call26, ptr %used, align 4
  %42 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rctx, align 4
  %44 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %43, ptr noundef %__data, i64 noundef 1, ptr noundef %45, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %netdev_name.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_esw_bridge_vlan_template(ptr noundef %__data, ptr nocapture noundef readonly %vlan) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !298

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !299

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vlan, align 4
  %vid6 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_vlan_template, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %vid6 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vid6, align 4
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %flags7 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_vlan_template, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %flags7, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_bridge_vlan_template(ptr noundef %__data, ptr nocapture noundef readonly %vlan) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !300
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !300
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !288) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan, align 4
  %vid17 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_vlan_template, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %vid17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vid17, align 4
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 1
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 2
  %flags18 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_vlan_template, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %flags18, align 2
  %33 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rctx, align 4
  %35 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %34, ptr noundef %__data, i64 noundef 1, ptr noundef %36, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_esw_bridge_port_template(ptr noundef %__data, ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !298

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !299

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %port, align 4
  %vport_num6 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %vport_num6 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vport_num6, align 4
  %esw_owner_vhca_id = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %esw_owner_vhca_id, align 2
  %esw_owner_vhca_id7 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %esw_owner_vhca_id7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %esw_owner_vhca_id7, align 2
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 4
  %flags8 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %call3, i32 0, i32 3
  %11 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_bridge_port_template(ptr noundef %__data, ptr nocapture noundef readonly %port) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !300
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !300
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !288) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port, align 4
  %vport_num17 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %vport_num17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vport_num17, align 4
  %esw_owner_vhca_id = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 1
  %30 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %esw_owner_vhca_id, align 2
  %esw_owner_vhca_id18 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %esw_owner_vhca_id18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %esw_owner_vhca_id18, align 2
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 2
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags, align 4
  %flags19 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %call13, i32 0, i32 3
  %35 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %flags19, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_bridge_fdb_template(ptr noundef %__data, ptr noundef %fdb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %fdb to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_bridge_vlan_template(ptr noundef %__data, ptr noundef %vlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %vlan to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_bridge_port_template(ptr noundef %__data, ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %port to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_ageing_time_set(i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i32 noundef %ageing_time, ptr noundef %br_offloads) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @clock_t_to_jiffies(i32 noundef %ageing_time) #12
  %bridge = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  %ageing_time2 = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ageing_time2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %ageing_time2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clock_t_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_vlan_filtering_set(i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i1 noundef zeroext %enable, ptr noundef %br_offloads) local_unnamed_addr #0 align 64 {
entry:
  %send_info.i.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge1 = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge1, align 4
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %cmp = xor i1 %5, %enable
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %fdb_list.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %fdb_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdb_list.i, align 4
  %cmp.not20.i = icmp eq ptr %7, %fdb_list.i
  br i1 %cmp.not20.i, label %if.end9.mlx5_esw_bridge_fdb_flush.exit_crit_edge, label %for.body.lr.ph.i

if.end9.mlx5_esw_bridge_fdb_flush.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_flush.exit

for.body.lr.ph.i:                                 ; preds = %if.end9
  %addr1.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 1
  %vid2.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 2
  %offloaded.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in21.i = phi ptr [ %7, %for.body.lr.ph.i ], [ %.pn.i, %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn.in21.i, i32 -16
  %8 = ptrtoint ptr %.pn.in21.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in21.i, align 4
  %flags.i.i.i = getelementptr i8, ptr %.pn.in21.i, i32 20
  %9 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i.i.i, align 4
  %11 = and i16 %10, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge

for.body.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr i8, ptr %.pn.in21.i, i32 -4
  %12 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i.i, align 4
  %vid.i.i.i = getelementptr i8, ptr %.pn.in21.i, i32 -10
  %14 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i.i.i.i) #12
  %16 = call ptr @memset(ptr %send_info.i.i.i.i, i32 0, i32 20)
  %17 = ptrtoint ptr %addr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry1.0.i, ptr %addr1.i.i.i.i, align 4
  %18 = ptrtoint ptr %vid2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %15, ptr %vid2.i.i.i.i, align 4
  %19 = ptrtoint ptr %offloaded.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %offloaded.i.i.i.i, align 2
  %call.i.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %13, ptr noundef nonnull %send_info.i.i.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i.i.i.i) #12
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i: ; preds = %if.then.i.i.i, %for.body.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge
  call fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %entry1.0.i, ptr noundef %1) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %fdb_list.i
  br i1 %cmp.not.i, label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.mlx5_esw_bridge_fdb_flush.exit_crit_edge, label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge: ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.mlx5_esw_bridge_fdb_flush.exit_crit_edge: ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_flush.exit

mlx5_esw_bridge_fdb_flush.exit:                   ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.mlx5_esw_bridge_fdb_flush.exit_crit_edge, %if.end9.mlx5_esw_bridge_fdb_flush.exit_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and14 = and i32 %21, -2
  %masksel = zext i1 %enable to i32
  %storemerge = or i32 %and14, %masksel
  store i32 %storemerge, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5_esw_bridge_fdb_flush.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5_esw_bridge_fdb_flush.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_vport_link(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlx5_esw_bridge_vport_link_with_flags(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i16 noundef zeroext 0, ptr noundef %br_offloads, ptr noundef %extack)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_esw_bridge_vport_link_with_flags(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i16 noundef zeroext %flags, ptr noundef %br_offloads, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %dest.i.i.i.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i.i.i.i = alloca %struct.mlx5_flow_act, align 4
  %reformat_params.i.i.i.i = alloca %struct.mlx5_pkt_reformat_params, align 4
  %ft_attr.i.i.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %ft_attr.i64.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %ft_attr.i.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b82.i = load i1, ptr @mlx5_esw_bridge_lookup.__already_done, align 1
  br i1 %.b82.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !298

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_esw_bridge_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 813, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 813) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %bridges.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end29.i
  %.pn.in.i = phi ptr [ %bridges.i, %if.end29.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %bridges.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %bridge.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %bridge.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bridge.0.i, align 4
  %cmp42.i = icmp eq i32 %2, %ifindex
  br i1 %cmp42.i, label %if.then43.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then43.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %bridge.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %refcnt.i.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcnt.i.i, align 4
  %inc.i.i = add i32 %4, 1
  store i32 %inc.i.i, ptr %refcnt.i.i, align 4
  br label %mlx5_esw_bridge_lookup.exit

for.end.i:                                        ; preds = %for.cond.i
  %ingress_ft.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 8
  %5 = ptrtoint ptr %ingress_ft.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ingress_ft.i, align 4
  %tobool50.not.i = icmp eq ptr %6, null
  br i1 %tobool50.not.i, label %if.then51.i, label %for.end.i.if.end57.i_crit_edge

for.end.i.if.end57.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then51.i:                                      ; preds = %for.end.i
  %7 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %br_offloads, align 4
  %call.i.i = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then51.i.cleanup.i_crit_edge

if.then51.i.cleanup.i_crit_edge:                  ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end.i.i:                                       ; preds = %if.then51.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #12
  %9 = getelementptr inbounds i8, ptr %ft_attr.i.i.i, i32 16
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 8
  %call.i.i.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %12, i32 noundef 8) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %mlx5_esw_bridge_ingress_table_init.exit.thread108.i, label %if.end.i.i.i

mlx5_esw_bridge_ingress_table_init.exit.thread108.i: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.27) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #12
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %flags.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %flags.i.i.i, align 4
  %max_fte3.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %max_fte3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64000, ptr %max_fte3.i.i.i, align 4
  %level4.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %level4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %level4.i.i.i, align 4
  %18 = ptrtoint ptr %ft_attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %ft_attr.i.i.i, align 4
  %call5.i.i.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %ft_attr.i.i.i) #12
  %cmp.i.i.i.i = icmp ugt ptr %call5.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %mlx5_esw_bridge_table_create.exit.thread129.i.i, label %if.end6.i.i

mlx5_esw_bridge_table_create.exit.thread129.i.i:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 8
  %21 = ptrtoint ptr %call5.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.30, i32 noundef %21) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #12
  br label %mlx5_esw_bridge_ingress_table_init.exit.i

if.end6.i.i:                                      ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #12
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i64.i.i) #12
  %22 = getelementptr inbounds i8, ptr %ft_attr.i64.i.i, i32 16
  %23 = call ptr @memset(ptr %22, i32 0, i32 12)
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %8, align 8
  %call.i65.i.i = call ptr @mlx5_get_flow_namespace(ptr noundef %25, i32 noundef 8) #12
  %tobool.not.i66.i.i = icmp eq ptr %call.i65.i.i, null
  br i1 %tobool.not.i66.i.i, label %mlx5_esw_bridge_table_create.exit76.thread.i.i, label %if.end.i73.i.i

mlx5_esw_bridge_table_create.exit76.thread.i.i:   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.27) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i64.i.i) #12
  br label %err_skip_tbl.i.i

if.end.i73.i.i:                                   ; preds = %if.end6.i.i
  %flags.i68.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i64.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %flags.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %flags.i68.i.i, align 4
  %max_fte3.i69.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i64.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %max_fte3.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %max_fte3.i69.i.i, align 4
  %level4.i70.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i64.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %level4.i70.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %level4.i70.i.i, align 4
  %31 = ptrtoint ptr %ft_attr.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %ft_attr.i64.i.i, align 4
  %call5.i71.i.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call.i65.i.i, ptr noundef nonnull %ft_attr.i64.i.i) #12
  %cmp.i.i72.i.i = icmp ugt ptr %call5.i71.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i72.i.i, label %mlx5_esw_bridge_table_create.exit76.thread130.i.i, label %if.end11.i.i

mlx5_esw_bridge_table_create.exit76.thread130.i.i: ; preds = %if.end.i73.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %25, align 8
  %34 = ptrtoint ptr %call5.i71.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.30, i32 noundef %34) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i64.i.i) #12
  br label %err_skip_tbl.i.i

if.end11.i.i:                                     ; preds = %if.end.i73.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i64.i.i) #12
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i78.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i78.i.i, label %if.end11.i.i.err_vlan_fg.i.i_crit_edge, label %do.body.i.i.i

if.end11.i.i.err_vlan_fg.i.i_crit_edge:           ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vlan_fg.i.i

do.body.i.i.i:                                    ; preds = %if.end11.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i, i32 15
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %36, -256
  %or.i.i.i = or i32 %and.i.i.i, 9
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 64
  %37 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %add.ptr7.i.i.i, align 4
  %add.ptr22.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 68
  %38 = ptrtoint ptr %add.ptr22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr22.i.i.i, align 4
  %or24.i.i.i = or i32 %39, -65536
  store i32 %or24.i.i.i, ptr %add.ptr22.i.i.i, align 4
  %add.ptr32.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 80
  %40 = ptrtoint ptr %add.ptr32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr32.i.i.i, align 4
  %or34.i.i.i = or i32 %41, 32768
  store i32 %or34.i.i.i, ptr %add.ptr32.i.i.i, align 4
  %add.ptr42.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 76
  %42 = ptrtoint ptr %add.ptr42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr42.i.i.i, align 4
  %or44.i.i.i = or i32 %43, 4095
  store i32 %or44.i.i.i, ptr %add.ptr42.i.i.i, align 4
  %add.ptr54.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 300
  %44 = ptrtoint ptr %add.ptr54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -65536, ptr %add.ptr54.i.i.i, align 4
  %add.ptr67.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i, i32 7
  %45 = ptrtoint ptr %add.ptr67.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %add.ptr67.i.i.i, align 4
  %add.ptr80.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i, i32 9
  %46 = ptrtoint ptr %add.ptr80.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 15999, ptr %add.ptr80.i.i.i, align 4
  %call88.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call5.i.i.i, ptr noundef nonnull %call.i.i.i.i.i) #12
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i) #12
  %cmp.i.i79.i.i = icmp ugt ptr %call88.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i79.i.i, label %mlx5_esw_bridge_ingress_vlan_fg_create.exit.thread.i.i, label %if.end16.i.i

mlx5_esw_bridge_ingress_vlan_fg_create.exit.thread.i.i: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %8, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %51 = ptrtoint ptr %call88.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.32, i32 noundef %51) #15
  br label %err_vlan_fg.i.i

if.end16.i.i:                                     ; preds = %do.body.i.i.i
  %call.i.i.i82.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i83.i.i = icmp eq ptr %call.i.i.i82.i.i, null
  br i1 %tobool.not.i83.i.i, label %if.end16.i.i.err_filter_fg.i.i_crit_edge, label %do.body.i93.i.i

if.end16.i.i.err_filter_fg.i.i_crit_edge:         ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_filter_fg.i.i

do.body.i93.i.i:                                  ; preds = %if.end16.i.i
  %add.ptr.i84.i.i = getelementptr i32, ptr %call.i.i.i82.i.i, i32 15
  %52 = ptrtoint ptr %add.ptr.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i84.i.i, align 4
  %and.i85.i.i = and i32 %53, -256
  %or.i86.i.i = or i32 %and.i85.i.i, 9
  store i32 %or.i86.i.i, ptr %add.ptr.i84.i.i, align 4
  %add.ptr7.i87.i.i = getelementptr i8, ptr %call.i.i.i82.i.i, i32 64
  %54 = ptrtoint ptr %add.ptr7.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %add.ptr7.i87.i.i, align 4
  %add.ptr22.i88.i.i = getelementptr i8, ptr %call.i.i.i82.i.i, i32 68
  %55 = ptrtoint ptr %add.ptr22.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr22.i88.i.i, align 4
  %or24.i89.i.i = or i32 %56, -65536
  store i32 %or24.i89.i.i, ptr %add.ptr22.i88.i.i, align 4
  %add.ptr32.i90.i.i = getelementptr i8, ptr %call.i.i.i82.i.i, i32 80
  %57 = ptrtoint ptr %add.ptr32.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr32.i90.i.i, align 4
  %or34.i91.i.i = or i32 %58, 32768
  store i32 %or34.i91.i.i, ptr %add.ptr32.i90.i.i, align 4
  %add.ptr44.i.i.i = getelementptr i8, ptr %call.i.i.i82.i.i, i32 300
  %59 = ptrtoint ptr %add.ptr44.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -65536, ptr %add.ptr44.i.i.i, align 4
  %add.ptr57.i.i.i = getelementptr i32, ptr %call.i.i.i82.i.i, i32 7
  %60 = ptrtoint ptr %add.ptr57.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16000, ptr %add.ptr57.i.i.i, align 4
  %add.ptr70.i.i.i = getelementptr i32, ptr %call.i.i.i82.i.i, i32 9
  %61 = ptrtoint ptr %add.ptr70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 31999, ptr %add.ptr70.i.i.i, align 4
  %call78.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call5.i.i.i, ptr noundef nonnull %call.i.i.i82.i.i) #12
  %cmp.i.i92.i.i = icmp ugt ptr %call78.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i92.i.i, label %mlx5_esw_bridge_ingress_filter_fg_create.exit.thread.i.i, label %if.end21.i.i

mlx5_esw_bridge_ingress_filter_fg_create.exit.thread.i.i: ; preds = %do.body.i93.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %8, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = ptrtoint ptr %call78.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.34, i32 noundef %66) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i82.i.i) #12
  br label %err_filter_fg.i.i

if.end21.i.i:                                     ; preds = %do.body.i93.i.i
  call void @kvfree(ptr noundef nonnull %call.i.i.i82.i.i) #12
  %call.i.i.i96.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i97.i.i = icmp eq ptr %call.i.i.i96.i.i, null
  br i1 %tobool.not.i97.i.i, label %if.end21.i.i.if.then24.i.i_crit_edge, label %do.body.i105.i.i

if.end21.i.i.if.then24.i.i_crit_edge:             ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24.i.i

do.body.i105.i.i:                                 ; preds = %if.end21.i.i
  %add.ptr.i98.i.i = getelementptr i32, ptr %call.i.i.i96.i.i, i32 15
  %67 = ptrtoint ptr %add.ptr.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i98.i.i, align 4
  %and.i99.i.i = and i32 %68, -256
  %or.i100.i.i = or i32 %and.i99.i.i, 9
  store i32 %or.i100.i.i, ptr %add.ptr.i98.i.i, align 4
  %add.ptr7.i101.i.i = getelementptr i8, ptr %call.i.i.i96.i.i, i32 64
  %69 = ptrtoint ptr %add.ptr7.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %add.ptr7.i101.i.i, align 4
  %add.ptr22.i102.i.i = getelementptr i8, ptr %call.i.i.i96.i.i, i32 68
  %70 = ptrtoint ptr %add.ptr22.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr22.i102.i.i, align 4
  %or24.i103.i.i = or i32 %71, -65536
  store i32 %or24.i103.i.i, ptr %add.ptr22.i102.i.i, align 4
  %add.ptr34.i.i.i = getelementptr i8, ptr %call.i.i.i96.i.i, i32 300
  %72 = ptrtoint ptr %add.ptr34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -65536, ptr %add.ptr34.i.i.i, align 4
  %add.ptr47.i.i.i = getelementptr i32, ptr %call.i.i.i96.i.i, i32 7
  %73 = ptrtoint ptr %add.ptr47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 32000, ptr %add.ptr47.i.i.i, align 4
  %add.ptr60.i.i.i = getelementptr i32, ptr %call.i.i.i96.i.i, i32 9
  %74 = ptrtoint ptr %add.ptr60.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 63999, ptr %add.ptr60.i.i.i, align 4
  %call68.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call5.i.i.i, ptr noundef nonnull %call.i.i.i96.i.i) #12
  %cmp.i.i104.i.i = icmp ugt ptr %call68.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i104.i.i, label %mlx5_esw_bridge_ingress_mac_fg_create.exit.thread.i.i, label %mlx5_esw_bridge_ingress_table_init.exit.thread.i

mlx5_esw_bridge_ingress_mac_fg_create.exit.thread.i.i: ; preds = %do.body.i105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %8, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %79 = ptrtoint ptr %call68.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.36, i32 noundef %79) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i96.i.i) #12
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %mlx5_esw_bridge_ingress_mac_fg_create.exit.thread.i.i, %if.end21.i.i.if.then24.i.i_crit_edge
  %retval.0.i106128.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end21.i.i.if.then24.i.i_crit_edge ], [ %call68.i.i.i, %mlx5_esw_bridge_ingress_mac_fg_create.exit.thread.i.i ]
  call void @mlx5_destroy_flow_group(ptr noundef %call78.i.i.i) #12
  br label %err_filter_fg.i.i

mlx5_esw_bridge_ingress_table_init.exit.thread.i: ; preds = %do.body.i105.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kvfree(ptr noundef nonnull %call.i.i.i96.i.i) #12
  %80 = ptrtoint ptr %ingress_ft.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call5.i.i.i, ptr %ingress_ft.i, align 4
  %skip_ft28.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 12
  %81 = ptrtoint ptr %skip_ft28.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call5.i71.i.i, ptr %skip_ft28.i.i, align 4
  %ingress_vlan_fg.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 9
  %82 = ptrtoint ptr %ingress_vlan_fg.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call88.i.i.i, ptr %ingress_vlan_fg.i.i, align 4
  %ingress_filter_fg.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 10
  %83 = ptrtoint ptr %ingress_filter_fg.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call78.i.i.i, ptr %ingress_filter_fg.i.i, align 4
  %ingress_mac_fg.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 11
  %84 = ptrtoint ptr %ingress_mac_fg.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call68.i.i.i, ptr %ingress_mac_fg.i.i, align 4
  br label %if.end57.i

err_filter_fg.i.i:                                ; preds = %if.then24.i.i, %mlx5_esw_bridge_ingress_filter_fg_create.exit.thread.i.i, %if.end16.i.i.err_filter_fg.i.i_crit_edge
  %err.0.in.i.i = phi ptr [ %retval.0.i106128.i.i, %if.then24.i.i ], [ inttoptr (i32 -12 to ptr), %if.end16.i.i.err_filter_fg.i.i_crit_edge ], [ %call78.i.i.i, %mlx5_esw_bridge_ingress_filter_fg_create.exit.thread.i.i ]
  call void @mlx5_destroy_flow_group(ptr noundef %call88.i.i.i) #12
  br label %err_vlan_fg.i.i

err_vlan_fg.i.i:                                  ; preds = %err_filter_fg.i.i, %mlx5_esw_bridge_ingress_vlan_fg_create.exit.thread.i.i, %if.end11.i.i.err_vlan_fg.i.i_crit_edge
  %err.1.in.i.i = phi ptr [ %err.0.in.i.i, %err_filter_fg.i.i ], [ inttoptr (i32 -12 to ptr), %if.end11.i.i.err_vlan_fg.i.i_crit_edge ], [ %call88.i.i.i, %mlx5_esw_bridge_ingress_vlan_fg_create.exit.thread.i.i ]
  %call29.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %call5.i71.i.i) #12
  br label %err_skip_tbl.i.i

err_skip_tbl.i.i:                                 ; preds = %err_vlan_fg.i.i, %mlx5_esw_bridge_table_create.exit76.thread130.i.i, %mlx5_esw_bridge_table_create.exit76.thread.i.i
  %err.2.in.i.i = phi ptr [ %err.1.in.i.i, %err_vlan_fg.i.i ], [ inttoptr (i32 -2 to ptr), %mlx5_esw_bridge_table_create.exit76.thread.i.i ], [ %call5.i71.i.i, %mlx5_esw_bridge_table_create.exit76.thread130.i.i ]
  %call30.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %call5.i.i.i) #12
  %.pre = ptrtoint ptr %err.2.in.i.i to i32
  br label %mlx5_esw_bridge_ingress_table_init.exit.i

mlx5_esw_bridge_ingress_table_init.exit.i:        ; preds = %err_skip_tbl.i.i, %mlx5_esw_bridge_table_create.exit.thread129.i.i
  %retval.0.i.i.pre-phi = phi i32 [ %.pre, %err_skip_tbl.i.i ], [ %21, %mlx5_esw_bridge_table_create.exit.thread129.i.i ]
  %retval.0.i.in.i = phi ptr [ %err.2.in.i.i, %err_skip_tbl.i.i ], [ %call5.i.i.i, %mlx5_esw_bridge_table_create.exit.thread129.i.i ]
  %tobool53.not.i = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool53.not.i, label %mlx5_esw_bridge_ingress_table_init.exit.i.if.end57.i_crit_edge, label %mlx5_esw_bridge_ingress_table_init.exit.i.cleanup.i_crit_edge

mlx5_esw_bridge_ingress_table_init.exit.i.cleanup.i_crit_edge: ; preds = %mlx5_esw_bridge_ingress_table_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

mlx5_esw_bridge_ingress_table_init.exit.i.if.end57.i_crit_edge: ; preds = %mlx5_esw_bridge_ingress_table_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

cleanup.i:                                        ; preds = %mlx5_esw_bridge_ingress_table_init.exit.i.cleanup.i_crit_edge, %mlx5_esw_bridge_ingress_table_init.exit.thread108.i, %if.then51.i.cleanup.i_crit_edge
  %retval.0.i98.i = phi i32 [ %retval.0.i.i.pre-phi, %mlx5_esw_bridge_ingress_table_init.exit.i.cleanup.i_crit_edge ], [ -95, %if.then51.i.cleanup.i_crit_edge ], [ -2, %mlx5_esw_bridge_ingress_table_init.exit.thread108.i ]
  %85 = inttoptr i32 %retval.0.i98.i to ptr
  br label %mlx5_esw_bridge_lookup.exit

if.end57.i:                                       ; preds = %mlx5_esw_bridge_ingress_table_init.exit.i.if.end57.i_crit_edge, %mlx5_esw_bridge_ingress_table_init.exit.thread.i, %for.end.i.if.end57.i_crit_edge
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 288, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end57.i.land.lhs.true.i_crit_edge, label %if.end.i83.i

if.end57.i.land.lhs.true.i_crit_edge:             ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end.i83.i:                                     ; preds = %if.end57.i
  %br_offloads2.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %br_offloads2.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %br_offloads, ptr %br_offloads2.i.i, align 4
  %87 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %br_offloads, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #12
  %89 = getelementptr inbounds i8, ptr %ft_attr.i.i.i.i, i32 16
  %90 = call ptr @memset(ptr %89, i32 0, i32 12)
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 8
  %call.i.i30.i.i = call ptr @mlx5_get_flow_namespace(ptr noundef %92, i32 noundef 8) #12
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i30.i.i, null
  br i1 %tobool.not.i.i.i.i, label %mlx5_esw_bridge_table_create.exit.thread.i.i.i, label %if.end.i.i.i.i

mlx5_esw_bridge_table_create.exit.thread.i.i.i:   ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.27) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #12
  br label %mlx5_esw_bridge_egress_table_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i83.i
  %flags.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %flags.i.i.i.i, align 4
  %max_fte3.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %max_fte3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 64000, ptr %max_fte3.i.i.i.i, align 4
  %level4.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i.i, i32 0, i32 2
  %97 = ptrtoint ptr %level4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %level4.i.i.i.i, align 4
  %98 = ptrtoint ptr %ft_attr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %ft_attr.i.i.i.i, align 4
  %call5.i.i.i.i = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call.i.i30.i.i, ptr noundef nonnull %ft_attr.i.i.i.i) #12
  %cmp.i.i.i.i.i = icmp ugt ptr %call5.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %mlx5_esw_bridge_table_create.exit.thread138.i.i.i, label %if.end.i.i84.i

mlx5_esw_bridge_table_create.exit.thread138.i.i.i: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %92, align 8
  %101 = ptrtoint ptr %call5.i.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %100, ptr noundef nonnull @.str.30, i32 noundef %101) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #12
  br label %mlx5_esw_bridge_egress_table_init.exit.i.i

if.end.i.i84.i:                                   ; preds = %if.end.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #12
  %call.i.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i89.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i89.i.i.i, label %if.end.i.i84.i.err_vlan_fg.i.i.i_crit_edge, label %do.body.i.i.i.i

if.end.i.i84.i.err_vlan_fg.i.i.i_crit_edge:       ; preds = %if.end.i.i84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vlan_fg.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i84.i
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i, i32 15
  %102 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %103, -256
  %or.i.i.i.i = or i32 %and.i.i.i.i, 1
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %add.ptr12.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i.i, i32 72
  %104 = ptrtoint ptr %add.ptr12.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %add.ptr12.i.i.i.i, align 4
  %add.ptr22.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i.i, i32 76
  %105 = ptrtoint ptr %add.ptr22.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %add.ptr22.i.i.i.i, align 4
  %add.ptr32.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i.i, i32 80
  %107 = ptrtoint ptr %add.ptr32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %add.ptr32.i.i.i.i, align 4
  %or34.i.i.i.i = or i32 %108, 32768
  store i32 %or34.i.i.i.i, ptr %add.ptr32.i.i.i.i, align 4
  %or44.i.i.i.i = or i32 %106, -61441
  store i32 %or44.i.i.i.i, ptr %add.ptr22.i.i.i.i, align 4
  %add.ptr53.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i, i32 7
  %109 = ptrtoint ptr %add.ptr53.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %add.ptr53.i.i.i.i, align 4
  %add.ptr66.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i, i32 9
  %110 = ptrtoint ptr %add.ptr66.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 31999, ptr %add.ptr66.i.i.i.i, align 4
  %call74.i.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call5.i.i.i.i, ptr noundef nonnull %call.i.i.i.i.i.i) #12
  %cmp.i.i90.i.i.i = icmp ugt ptr %call74.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i90.i.i.i, label %mlx5_esw_bridge_egress_vlan_fg_create.exit.thread.i.i.i, label %if.end8.i.i.i

mlx5_esw_bridge_egress_vlan_fg_create.exit.thread.i.i.i: ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %88, align 8
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %115 = ptrtoint ptr %call74.i.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %114, ptr noundef nonnull @.str.46, i32 noundef %115) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i.i) #12
  br label %err_vlan_fg.i.i.i

if.end8.i.i.i:                                    ; preds = %do.body.i.i.i.i
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i.i) #12
  %call.i.i.i93.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i94.i.i.i = icmp eq ptr %call.i.i.i93.i.i.i, null
  br i1 %tobool.not.i94.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %do.body.i101.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

do.body.i101.i.i.i:                               ; preds = %if.end8.i.i.i
  %add.ptr.i95.i.i.i = getelementptr i32, ptr %call.i.i.i93.i.i.i, i32 15
  %116 = ptrtoint ptr %add.ptr.i95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %add.ptr.i95.i.i.i, align 4
  %and.i96.i.i.i = and i32 %117, -256
  %or.i97.i.i.i = or i32 %and.i96.i.i.i, 1
  store i32 %or.i97.i.i.i, ptr %add.ptr.i95.i.i.i, align 4
  %add.ptr12.i98.i.i.i = getelementptr i8, ptr %call.i.i.i93.i.i.i, i32 72
  %118 = ptrtoint ptr %add.ptr12.i98.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %add.ptr12.i98.i.i.i, align 4
  %add.ptr22.i99.i.i.i = getelementptr i8, ptr %call.i.i.i93.i.i.i, i32 76
  %119 = ptrtoint ptr %add.ptr22.i99.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %add.ptr22.i99.i.i.i, align 4
  %or24.i.i.i.i = or i32 %120, -65536
  store i32 %or24.i.i.i.i, ptr %add.ptr22.i99.i.i.i, align 4
  %add.ptr33.i.i.i.i = getelementptr i32, ptr %call.i.i.i93.i.i.i, i32 7
  %121 = ptrtoint ptr %add.ptr33.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 32000, ptr %add.ptr33.i.i.i.i, align 4
  %add.ptr46.i.i.i.i = getelementptr i32, ptr %call.i.i.i93.i.i.i, i32 9
  %122 = ptrtoint ptr %add.ptr46.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 63998, ptr %add.ptr46.i.i.i.i, align 4
  %call54.i.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call5.i.i.i.i, ptr noundef nonnull %call.i.i.i93.i.i.i) #12
  %cmp.i.i100.i.i.i = icmp ugt ptr %call54.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i100.i.i.i, label %mlx5_esw_bridge_egress_mac_fg_create.exit.thread.i.i.i, label %if.end13.i.i.i

mlx5_esw_bridge_egress_mac_fg_create.exit.thread.i.i.i: ; preds = %do.body.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %88, align 8
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %124, align 8
  %127 = ptrtoint ptr %call54.i.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %126, ptr noundef nonnull @.str.48, i32 noundef %127) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i93.i.i.i) #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %mlx5_esw_bridge_egress_mac_fg_create.exit.thread.i.i.i, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %retval.0.i102131.i.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ %call54.i.i.i.i, %mlx5_esw_bridge_egress_mac_fg_create.exit.thread.i.i.i ]
  call void @mlx5_destroy_flow_group(ptr noundef %call74.i.i.i.i) #12
  br label %err_vlan_fg.i.i.i

if.end13.i.i.i:                                   ; preds = %do.body.i101.i.i.i
  call void @kvfree(ptr noundef nonnull %call.i.i.i93.i.i.i) #12
  %128 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %88, align 8
  %arrayidx4.i.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %129, i32 0, i32 8, i32 0, i32 32
  %130 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx4.i.i.i.i, align 8
  %add.ptr7.i.i.i.i = getelementptr i32, ptr %131, i32 5
  %132 = ptrtoint ptr %add.ptr7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %add.ptr7.i.i.i.i, align 4
  %134 = and i32 %133, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.not.i.i.i.i = icmp ne i32 %134, 0
  %and18.i.i.i.i = and i32 %133, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and18.i.i.i.i)
  %cmp19.i.i.i.i = icmp ugt i32 %and18.i.i.i.i, 11
  %135 = and i1 %cmp.not.i.i.i.i, %cmp19.i.i.i.i
  br i1 %135, label %if.then15.i.i.i, label %if.end13.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge

if.end13.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_egress_table_init.exit.thread.i.i

if.then15.i.i.i:                                  ; preds = %if.end13.i.i.i
  %call.i.i.i104.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i105.i.i.i = icmp eq ptr %call.i.i.i104.i.i.i, null
  br i1 %tobool.not.i105.i.i.i, label %if.then15.i.i.i.do.end.i.i.i_crit_edge, label %do.body.i110.i.i.i

if.then15.i.i.i.do.end.i.i.i_crit_edge:           ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

do.body.i110.i.i.i:                               ; preds = %if.then15.i.i.i
  %add.ptr.i106.i.i.i = getelementptr i32, ptr %call.i.i.i104.i.i.i, i32 15
  %136 = ptrtoint ptr %add.ptr.i106.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr.i106.i.i.i, align 4
  %and.i107.i.i.i = and i32 %137, -256
  %or.i108.i.i.i = or i32 %and.i107.i.i.i, 8
  store i32 %or.i108.i.i.i, ptr %add.ptr.i106.i.i.i, align 4
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %call.i.i.i104.i.i.i, i32 296
  %138 = ptrtoint ptr %add.ptr13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2147483392, ptr %add.ptr13.i.i.i.i, align 4
  %add.ptr26.i.i.i.i = getelementptr i32, ptr %call.i.i.i104.i.i.i, i32 7
  %139 = ptrtoint ptr %add.ptr26.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 63999, ptr %add.ptr26.i.i.i.i, align 4
  %add.ptr39.i.i.i.i = getelementptr i32, ptr %call.i.i.i104.i.i.i, i32 9
  %140 = ptrtoint ptr %add.ptr39.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 63999, ptr %add.ptr39.i.i.i.i, align 4
  %call47.i.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call5.i.i.i.i, ptr noundef nonnull %call.i.i.i104.i.i.i) #12
  %cmp.i.i109.i.i.i = icmp ugt ptr %call47.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i109.i.i.i, label %mlx5_esw_bridge_egress_miss_fg_create.exit.thread.i.i.i, label %if.end20.i.i.i

mlx5_esw_bridge_egress_miss_fg_create.exit.thread.i.i.i: ; preds = %do.body.i110.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %141 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %88, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %145 = ptrtoint ptr %call47.i.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.50, i32 noundef %145) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i104.i.i.i) #12
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %mlx5_esw_bridge_egress_miss_fg_create.exit.thread.i.i.i, %if.then15.i.i.i.do.end.i.i.i_crit_edge
  %retval.0.i111134.i.i.i = phi ptr [ %call47.i.i.i.i, %mlx5_esw_bridge_egress_miss_fg_create.exit.thread.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.then15.i.i.i.do.end.i.i.i_crit_edge ]
  %146 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %88, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %150 = ptrtoint ptr %retval.0.i111134.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.38, i32 noundef %150) #15
  br label %mlx5_esw_bridge_egress_table_init.exit.thread.i.i

if.end20.i.i.i:                                   ; preds = %do.body.i110.i.i.i
  call void @kvfree(ptr noundef nonnull %call.i.i.i104.i.i.i) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params.i.i.i.i) #12
  %151 = getelementptr inbounds i8, ptr %reformat_params.i.i.i.i, i32 4
  %152 = call ptr @memset(ptr %151, i32 0, i32 12)
  %153 = ptrtoint ptr %reformat_params.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 16, ptr %reformat_params.i.i.i.i, align 4
  %154 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %151, align 4
  %param_1.i.i.i.i = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params.i.i.i.i, i32 0, i32 2
  %155 = ptrtoint ptr %param_1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 12, ptr %param_1.i.i.i.i, align 1
  %size.i.i.i.i = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params.i.i.i.i, i32 0, i32 3
  %156 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4, ptr %size.i.i.i.i, align 4
  %157 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %88, align 8
  %call.i113.i.i.i = call ptr @mlx5_packet_reformat_alloc(ptr noundef %158, ptr noundef nonnull %reformat_params.i.i.i.i, i32 noundef 8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params.i.i.i.i) #12
  %cmp.i114.i.i.i = icmp ugt ptr %call.i113.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114.i.i.i, label %do.end26.i.i.i, label %if.end30.i.i.i

do.end26.i.i.i:                                   ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %88, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 8
  %163 = ptrtoint ptr %call.i113.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %162, ptr noundef nonnull @.str.41, i32 noundef %163) #15
  call void @mlx5_destroy_flow_group(ptr noundef %call47.i.i.i.i) #12
  br label %mlx5_esw_bridge_egress_table_init.exit.thread.i.i

if.end30.i.i.i:                                   ; preds = %if.end20.i.i.i
  %skip_ft.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 12
  %164 = ptrtoint ptr %skip_ft.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %skip_ft.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i.i.i) #12
  %166 = getelementptr inbounds i8, ptr %dest.i.i.i.i, i32 8
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_storeN_noabort(i32 %167, i32 8)
  store i64 -1, ptr %166, align 4
  %168 = ptrtoint ptr %dest.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %dest.i.i.i.i, align 4
  %169 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i.i.i, i32 0, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %165, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i.i.i) #12
  %171 = ptrtoint ptr %flow_act.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 20, ptr %flow_act.i.i.i.i, align 4
  %modify_hdr.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i.i.i.i, i32 0, i32 1
  %172 = ptrtoint ptr %modify_hdr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %modify_hdr.i.i.i.i, align 4
  %pkt_reformat1.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i.i.i.i, i32 0, i32 2
  %173 = ptrtoint ptr %pkt_reformat1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call.i113.i.i.i, ptr %pkt_reformat1.i.i.i.i, align 4
  %174 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i.i.i.i, i32 0, i32 3
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %174, align 4
  %flags.i115.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i.i.i.i, i32 0, i32 4
  %176 = ptrtoint ptr %flags.i115.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %flags.i115.i.i.i, align 4
  %vlan.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i.i.i.i, i32 0, i32 5
  %177 = call ptr @memset(ptr %vlan.i.i.i.i, i32 0, i32 16)
  %call.i.i.i116.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i117.i.i.i = icmp eq ptr %call.i.i.i116.i.i.i, null
  br i1 %tobool.not.i117.i.i.i, label %mlx5_esw_bridge_egress_miss_flow_create.exit.thread.i.i.i, label %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i

mlx5_esw_bridge_egress_miss_flow_create.exit.thread.i.i.i: ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i.i.i) #12
  br label %do.end36.i.i.i

mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i: ; preds = %if.end30.i.i.i
  %178 = ptrtoint ptr %call.i.i.i116.i.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 8, ptr %call.i.i.i116.i.i.i, align 4
  %add.ptr.i118.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i116.i.i.i, i32 0, i32 1, i32 58
  %179 = ptrtoint ptr %add.ptr.i118.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 2147483392, ptr %add.ptr.i118.i.i.i, align 4
  %add.ptr16.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i116.i.i.i, i32 0, i32 2, i32 58
  %180 = ptrtoint ptr %add.ptr16.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 523776, ptr %add.ptr16.i.i.i.i, align 4
  %call26.i.i.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %call5.i.i.i.i, ptr noundef nonnull %call.i.i.i116.i.i.i, ptr noundef nonnull %flow_act.i.i.i.i, ptr noundef nonnull %dest.i.i.i.i, i32 noundef 1) #12
  call void @kvfree(ptr noundef nonnull %call.i.i.i116.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i.i.i) #12
  %cmp.i121.i.i.i = icmp ugt ptr %call26.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i.i.i, label %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.do.end36.i.i.i_crit_edge, label %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge

mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge: ; preds = %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_egress_table_init.exit.thread.i.i

mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.do.end36.i.i.i_crit_edge: ; preds = %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end36.i.i.i

do.end36.i.i.i:                                   ; preds = %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.do.end36.i.i.i_crit_edge, %mlx5_esw_bridge_egress_miss_flow_create.exit.thread.i.i.i
  %retval.0.i120137.i.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5_esw_bridge_egress_miss_flow_create.exit.thread.i.i.i ], [ %call26.i.i.i.i, %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.do.end36.i.i.i_crit_edge ]
  %181 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %88, align 8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 8
  %185 = ptrtoint ptr %retval.0.i120137.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %184, ptr noundef nonnull @.str.44, i32 noundef %185) #15
  %186 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %88, align 8
  call void @mlx5_packet_reformat_dealloc(ptr noundef %187, ptr noundef %call.i113.i.i.i) #12
  call void @mlx5_destroy_flow_group(ptr noundef %call47.i.i.i.i) #12
  br label %mlx5_esw_bridge_egress_table_init.exit.thread.i.i

mlx5_esw_bridge_egress_table_init.exit.thread.i.i: ; preds = %do.end36.i.i.i, %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge, %do.end26.i.i.i, %do.end.i.i.i, %if.end13.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge
  %miss_fg.0.i.i.i = phi ptr [ null, %do.end.i.i.i ], [ null, %do.end26.i.i.i ], [ null, %do.end36.i.i.i ], [ %call47.i.i.i.i, %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge ], [ null, %if.end13.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge ]
  %miss_pkt_reformat.0.i.i.i = phi ptr [ null, %do.end.i.i.i ], [ null, %do.end26.i.i.i ], [ null, %do.end36.i.i.i ], [ %call.i113.i.i.i, %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge ], [ null, %if.end13.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge ]
  %miss_handle.0.i.i.i = phi ptr [ null, %do.end.i.i.i ], [ null, %do.end26.i.i.i ], [ null, %do.end36.i.i.i ], [ %call26.i.i.i.i, %mlx5_esw_bridge_egress_miss_flow_create.exit.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge ], [ null, %if.end13.i.i.i.mlx5_esw_bridge_egress_table_init.exit.thread.i.i_crit_edge ]
  %egress_ft43.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 6
  %188 = ptrtoint ptr %egress_ft43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call5.i.i.i.i, ptr %egress_ft43.i.i.i, align 4
  %egress_vlan_fg.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 7
  %189 = ptrtoint ptr %egress_vlan_fg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %call74.i.i.i.i, ptr %egress_vlan_fg.i.i.i, align 4
  %egress_mac_fg.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 8
  %190 = ptrtoint ptr %egress_mac_fg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call54.i.i.i.i, ptr %egress_mac_fg.i.i.i, align 4
  %egress_miss_fg.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 9
  %191 = ptrtoint ptr %egress_miss_fg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %miss_fg.0.i.i.i, ptr %egress_miss_fg.i.i.i, align 4
  %egress_miss_pkt_reformat.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 10
  %192 = ptrtoint ptr %egress_miss_pkt_reformat.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %miss_pkt_reformat.0.i.i.i, ptr %egress_miss_pkt_reformat.i.i.i, align 4
  %egress_miss_handle.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 11
  %193 = ptrtoint ptr %egress_miss_handle.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %miss_handle.0.i.i.i, ptr %egress_miss_handle.i.i.i, align 4
  %fdb_ht.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 5
  %call7.i.i = call i32 @rhashtable_init(ptr noundef %fdb_ht.i.i, ptr noundef nonnull @fdb_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %err_fdb_ht.i.i

err_vlan_fg.i.i.i:                                ; preds = %if.then11.i.i.i, %mlx5_esw_bridge_egress_vlan_fg_create.exit.thread.i.i.i, %if.end.i.i84.i.err_vlan_fg.i.i.i_crit_edge
  %err.0.in.i.i.i = phi ptr [ %retval.0.i102131.i.i.i, %if.then11.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.end.i.i84.i.err_vlan_fg.i.i.i_crit_edge ], [ %call74.i.i.i.i, %mlx5_esw_bridge_egress_vlan_fg_create.exit.thread.i.i.i ]
  %call44.i.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %call5.i.i.i.i) #12
  br label %mlx5_esw_bridge_egress_table_init.exit.i.i

mlx5_esw_bridge_egress_table_init.exit.i.i:       ; preds = %err_vlan_fg.i.i.i, %mlx5_esw_bridge_table_create.exit.thread138.i.i.i, %mlx5_esw_bridge_table_create.exit.thread.i.i.i
  %retval.0.i.in.i.i = phi ptr [ %err.0.in.i.i.i, %err_vlan_fg.i.i.i ], [ inttoptr (i32 -2 to ptr), %mlx5_esw_bridge_table_create.exit.thread.i.i.i ], [ %call5.i.i.i.i, %mlx5_esw_bridge_table_create.exit.thread138.i.i.i ]
  %retval.0.i.i.i = ptrtoint ptr %retval.0.i.in.i.i to i32
  br label %err_egress_tbl.i.i

if.end10.i.i:                                     ; preds = %mlx5_esw_bridge_egress_table_init.exit.thread.i.i
  %fdb_list.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 4
  %194 = ptrtoint ptr %fdb_list.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %fdb_list.i.i, ptr %fdb_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 4, i32 1
  %195 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %fdb_list.i.i, ptr %prev.i.i.i, align 4
  %196 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %ifindex, ptr %call.i.i.i.i, align 4
  %refcnt.i85.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 1
  %197 = ptrtoint ptr %refcnt.i85.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %refcnt.i85.i, align 4
  %call12.i.i = call i32 @clock_t_to_jiffies(i32 noundef 30000) #12
  %ageing_time.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 12
  %198 = ptrtoint ptr %ageing_time.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %call12.i.i, ptr %ageing_time.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 2
  %199 = ptrtoint ptr %bridges.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bridges.i, align 4
  %call.i.i31.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %bridges.i, ptr noundef %200) #12
  br i1 %call.i.i31.i.i, label %if.end.i.i32.i.i, label %if.end10.i.i.mlx5_esw_bridge_create.exit.i_crit_edge

if.end10.i.i.mlx5_esw_bridge_create.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_create.exit.i

if.end.i.i32.i.i:                                 ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %list.i.i, ptr %prev1.i.i.i.i, align 4
  %202 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %200, ptr %list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %203 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %bridges.i, ptr %prev3.i.i.i.i, align 4
  %204 = ptrtoint ptr %bridges.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %list.i.i, ptr %bridges.i, align 4
  br label %mlx5_esw_bridge_create.exit.i

err_fdb_ht.i.i:                                   ; preds = %mlx5_esw_bridge_egress_table_init.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @mlx5_esw_bridge_egress_table_cleanup(ptr noundef nonnull %call.i.i.i.i) #12
  br label %err_egress_tbl.i.i

err_egress_tbl.i.i:                               ; preds = %err_fdb_ht.i.i, %mlx5_esw_bridge_egress_table_init.exit.i.i
  %err.0.i.i = phi i32 [ %retval.0.i.i.i, %mlx5_esw_bridge_egress_table_init.exit.i.i ], [ %call7.i.i, %err_fdb_ht.i.i ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #12
  %205 = inttoptr i32 %err.0.i.i to ptr
  br label %mlx5_esw_bridge_create.exit.i

mlx5_esw_bridge_create.exit.i:                    ; preds = %err_egress_tbl.i.i, %if.end.i.i32.i.i, %if.end10.i.i.mlx5_esw_bridge_create.exit.i_crit_edge
  %retval.0.i86.i = phi ptr [ %205, %err_egress_tbl.i.i ], [ %call.i.i.i.i, %if.end10.i.i.mlx5_esw_bridge_create.exit.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.i32.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i86.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_esw_bridge_create.exit.i.land.lhs.true.i_crit_edge, label %mlx5_esw_bridge_create.exit.i.mlx5_esw_bridge_lookup.exit_crit_edge

mlx5_esw_bridge_create.exit.i.mlx5_esw_bridge_lookup.exit_crit_edge: ; preds = %mlx5_esw_bridge_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_lookup.exit

mlx5_esw_bridge_create.exit.i.land.lhs.true.i_crit_edge: ; preds = %mlx5_esw_bridge_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %mlx5_esw_bridge_create.exit.i.land.lhs.true.i_crit_edge, %if.end57.i.land.lhs.true.i_crit_edge
  %retval.0.i86104.i = phi ptr [ %retval.0.i86.i, %mlx5_esw_bridge_create.exit.i.land.lhs.true.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end57.i.land.lhs.true.i_crit_edge ]
  %206 = ptrtoint ptr %bridges.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile ptr, ptr %bridges.i, align 4
  %cmp.i87.not.i = icmp eq ptr %207, %bridges.i
  br i1 %cmp.i87.not.i, label %if.then63.i, label %land.lhs.true.i.mlx5_esw_bridge_lookup.exit_crit_edge

land.lhs.true.i.mlx5_esw_bridge_lookup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_lookup.exit

if.then63.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %ingress_mac_fg.i88.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 11
  %208 = ptrtoint ptr %ingress_mac_fg.i88.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ingress_mac_fg.i88.i, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %209) #12
  %210 = ptrtoint ptr %ingress_mac_fg.i88.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %ingress_mac_fg.i88.i, align 4
  %ingress_filter_fg.i89.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 10
  %211 = ptrtoint ptr %ingress_filter_fg.i89.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ingress_filter_fg.i89.i, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %212) #12
  %213 = ptrtoint ptr %ingress_filter_fg.i89.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %ingress_filter_fg.i89.i, align 4
  %ingress_vlan_fg.i90.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 9
  %214 = ptrtoint ptr %ingress_vlan_fg.i90.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ingress_vlan_fg.i90.i, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %215) #12
  %216 = ptrtoint ptr %ingress_vlan_fg.i90.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %ingress_vlan_fg.i90.i, align 4
  %skip_ft.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 12
  %217 = ptrtoint ptr %skip_ft.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %skip_ft.i.i, align 4
  %call.i91.i = call i32 @mlx5_destroy_flow_table(ptr noundef %218) #12
  %219 = ptrtoint ptr %skip_ft.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %skip_ft.i.i, align 4
  %220 = ptrtoint ptr %ingress_ft.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %ingress_ft.i, align 4
  %call5.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %221) #12
  %222 = ptrtoint ptr %ingress_ft.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %ingress_ft.i, align 4
  br label %mlx5_esw_bridge_lookup.exit

mlx5_esw_bridge_lookup.exit:                      ; preds = %if.then63.i, %land.lhs.true.i.mlx5_esw_bridge_lookup.exit_crit_edge, %mlx5_esw_bridge_create.exit.i.mlx5_esw_bridge_lookup.exit_crit_edge, %cleanup.i, %if.then43.i
  %retval.1.i = phi ptr [ %bridge.0.i.le, %if.then43.i ], [ %85, %cleanup.i ], [ %retval.0.i86104.i, %if.then63.i ], [ %retval.0.i86104.i, %land.lhs.true.i.mlx5_esw_bridge_lookup.exit_crit_edge ], [ %retval.0.i86.i, %mlx5_esw_bridge_create.exit.i.mlx5_esw_bridge_lookup.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end4

do.body:                                          ; preds = %mlx5_esw_bridge_lookup.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_vport_link_with_flags.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then2

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %223 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr @mlx5_esw_bridge_vport_link_with_flags.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %do.body.if.end_crit_edge
  %224 = ptrtoint ptr %retval.1.i to i32
  br label %cleanup

if.end4:                                          ; preds = %mlx5_esw_bridge_lookup.exit
  %225 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %br_offloads, align 4
  %call.i.i.i27 = call noalias ptr @kvmalloc_node(i32 noundef 64, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i28 = icmp eq ptr %call.i.i.i27, null
  br i1 %tobool.not.i28, label %if.end4.do.body8_crit_edge, label %if.end.i

if.end4.do.body8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8

if.end.i:                                         ; preds = %if.end4
  %227 = ptrtoint ptr %call.i.i.i27 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %vport_num, ptr %call.i.i.i27, align 4
  %esw_owner_vhca_id3.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call.i.i.i27, i32 0, i32 1
  %228 = ptrtoint ptr %esw_owner_vhca_id3.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %esw_owner_vhca_id, ptr %esw_owner_vhca_id3.i, align 2
  %bridge4.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call.i.i.i27, i32 0, i32 3
  %229 = ptrtoint ptr %bridge4.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %retval.1.i, ptr %bridge4.i, align 4
  %flags5.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call.i.i.i27, i32 0, i32 2
  %230 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %flags5.i, align 4
  %or31.i = or i16 %231, %flags
  store i16 %or31.i, ptr %flags5.i, align 4
  %vlans.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call.i.i.i27, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %vlans.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call.i.i.i27, i32 0, i32 4, i32 1
  %232 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call.i.i.i27, i32 0, i32 4, i32 2
  %233 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %234 = ptrtoint ptr %call.i.i.i27 to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %call.i.i.i27, align 4
  %236 = ptrtoint ptr %esw_owner_vhca_id3.i to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %esw_owner_vhca_id3.i, align 2
  %conv.i.i.i.i = zext i16 %235 to i32
  %conv1.i.i.i.i = zext i16 %237 to i32
  %shl.i.i.i.i = shl nuw i32 %conv1.i.i.i.i, 16
  %or.i.i.i.i29 = or i32 %shl.i.i.i.i, %conv.i.i.i.i
  call void @_raw_spin_lock(ptr noundef %ports.i.i) #12
  %call.i.i32.i = call i32 @__xa_insert(ptr noundef %ports.i.i, i32 noundef %or.i.i.i.i29, ptr noundef nonnull %call.i.i.i27, i32 noundef 3264) #12
  call void @_raw_spin_unlock(ptr noundef %ports.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %tobool9.not.i = icmp eq i32 %call.i.i32.i, 0
  br i1 %tobool9.not.i, label %mlx5_esw_bridge_vport_init.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %238 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %226, align 8
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 8
  %242 = ptrtoint ptr %call.i.i.i27 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %call.i.i.i27, align 4
  %conv12.i = zext i16 %243 to i32
  %244 = ptrtoint ptr %esw_owner_vhca_id3.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %esw_owner_vhca_id3.i, align 2
  %conv14.i = zext i16 %245 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.52, i32 noundef %conv12.i, i32 noundef %conv14.i, i32 noundef %call.i.i32.i) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i27) #12
  br label %do.body8

mlx5_esw_bridge_vport_init.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_mlx5_esw_bridge_vport_init(ptr noundef nonnull %call.i.i.i27) #12
  br label %cleanup

do.body8:                                         ; preds = %do.end.i, %if.end4.do.body8_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end4.do.body8_crit_edge ], [ %call.i.i32.i, %do.end.i ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_vport_link_with_flags.__msg.26) #12
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.if.end13_crit_edge, label %if.then11

do.body8.if.end13_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %246 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr @mlx5_esw_bridge_vport_link_with_flags.__msg.26, ptr %extack, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body8.if.end13_crit_edge
  call fastcc void @mlx5_esw_bridge_put(ptr noundef %br_offloads, ptr noundef %retval.1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %mlx5_esw_bridge_vport_init.exit, %if.end
  %retval.0 = phi i32 [ %224, %if.end ], [ %retval.0.i.ph, %if.end13 ], [ 0, %mlx5_esw_bridge_vport_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_vport_unlink(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_vport_unlink.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlx5_esw_bridge_vport_unlink.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %bridge = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %1 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ifindex)
  %cmp.not = icmp eq i32 %4, %ifindex
  br i1 %cmp.not, label %if.end14, label %do.body6

do.body6:                                         ; preds = %if.end3
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_vport_unlink.__msg.1) #12
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body6.cleanup_crit_edge, label %if.then9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5_esw_bridge_vport_unlink.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_esw_bridge_vport_cleanup(ptr noundef %br_offloads, ptr noundef nonnull %call1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then9, %do.body6.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_bridge_vport_cleanup(ptr noundef %br_offloads, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  %index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port, align 4
  %esw_owner_vhca_id2 = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %esw_owner_vhca_id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %esw_owner_vhca_id2, align 2
  %bridge3 = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %bridge3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge3, align 4
  %fdb_list = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fdb_list, align 4
  %cmp.not4 = icmp eq ptr %7, %fdb_list
  br i1 %cmp.not4, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in5 = phi ptr [ %.pn7, %for.inc.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %entry4.06 = getelementptr i8, ptr %.pn.in5, i32 -16
  %8 = ptrtoint ptr %.pn.in5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn7 = load ptr, ptr %.pn.in5, align 4
  %vport_num12 = getelementptr i8, ptr %.pn.in5, i32 16
  %9 = ptrtoint ptr %vport_num12 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport_num12, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %1)
  %cmp14 = icmp eq i16 %10, %1
  br i1 %cmp14, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %esw_owner_vhca_id16 = getelementptr i8, ptr %.pn.in5, i32 18
  %11 = ptrtoint ptr %esw_owner_vhca_id16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %esw_owner_vhca_id16, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %3)
  %cmp19 = icmp eq i16 %12, %3
  br i1 %cmp19, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %entry4.06, ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn7, %fdb_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @trace_mlx5_esw_bridge_vport_cleanup(ptr noundef %port)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #12
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %index.i, align 4
  %vlans.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 4
  %call.i = call ptr @xa_find(ptr noundef %vlans.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not6.i = icmp eq ptr %call.i, null
  br i1 %tobool.not6.i, label %for.end.mlx5_esw_bridge_port_vlans_flush.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.mlx5_esw_bridge_port_vlans_flush.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_port_vlans_flush.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %vlan.07.i = phi ptr [ %call2.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %for.end.for.body.i_crit_edge ]
  call fastcc void @mlx5_esw_bridge_vlan_cleanup(ptr noundef %port, ptr noundef nonnull %vlan.07.i, ptr noundef %5) #12
  %call2.i = call ptr @xa_find_after(ptr noundef %vlans.i, ptr noundef nonnull %index.i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.mlx5_esw_bridge_port_vlans_flush.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.mlx5_esw_bridge_port_vlans_flush.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_port_vlans_flush.exit

mlx5_esw_bridge_port_vlans_flush.exit:            ; preds = %for.body.i.mlx5_esw_bridge_port_vlans_flush.exit_crit_edge, %for.end.mlx5_esw_bridge_port_vlans_flush.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #12
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %port, align 4
  %16 = ptrtoint ptr %esw_owner_vhca_id2 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %esw_owner_vhca_id2, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %conv1.i.i.i = zext i16 %17 to i32
  %shl.i.i.i = shl nuw i32 %conv1.i.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %call1.i = call ptr @xa_erase(ptr noundef %ports.i, i32 noundef %or.i.i.i) #12
  call void @kvfree(ptr noundef %port) #12
  call fastcc void @mlx5_esw_bridge_put(ptr noundef %br_offloads, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_vport_peer_link(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br_offloads, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @mlx5_esw_bridge_vport_link_with_flags(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i16 noundef zeroext 1, ptr noundef %br_offloads, ptr noundef %extack)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_vport_peer_unlink(i32 noundef %ifindex, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i.i = zext i16 %vport_num to i32
  %conv1.i.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i.i = shl nuw i32 %conv1.i.i.i, 16
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %call1.i.i = tail call ptr @xa_load(ptr noundef %ports.i.i, i32 noundef %or.i.i.i) #12
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_vport_unlink.__msg) #12
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge, label %if.then2.i

do.body.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_vport_unlink.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlx5_esw_bridge_vport_unlink.__msg, ptr %extack, align 4
  br label %mlx5_esw_bridge_vport_unlink.exit

if.end3.i:                                        ; preds = %entry
  %bridge.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ifindex)
  %cmp.not.i = icmp eq i32 %4, %ifindex
  br i1 %cmp.not.i, label %if.end14.i, label %do.body6.i

do.body6.i:                                       ; preds = %if.end3.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_vport_unlink.__msg.1) #12
  %tobool8.not.i = icmp eq ptr %extack, null
  br i1 %tobool8.not.i, label %do.body6.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge, label %if.then9.i

do.body6.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge: ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_vport_unlink.exit

if.then9.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5_esw_bridge_vport_unlink.__msg.1, ptr %extack, align 4
  br label %mlx5_esw_bridge_vport_unlink.exit

if.end14.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx5_esw_bridge_vport_cleanup(ptr noundef %br_offloads, ptr noundef nonnull %call1.i.i) #12
  br label %mlx5_esw_bridge_vport_unlink.exit

mlx5_esw_bridge_vport_unlink.exit:                ; preds = %if.end14.i, %if.then9.i, %do.body6.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge, %if.then2.i, %do.body.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end14.i ], [ -22, %if.then2.i ], [ -22, %do.body.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge ], [ -22, %if.then9.i ], [ -22, %do.body6.i.mlx5_esw_bridge_vport_unlink.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_bridge_port_vlan_add(i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i16 noundef zeroext %vid, i16 noundef zeroext %flags, ptr noundef %br_offloads, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %reformat_params.i.i.i = alloca %struct.mlx5_pkt_reformat_params, align 4
  %action.i.i = alloca [8 x i8], align 8
  %vlan_hdr.i.i = alloca %struct.anon.239, align 2
  %reformat_params.i.i = alloca %struct.mlx5_pkt_reformat_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlans.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 4
  %conv.i = zext i16 %vid to i32
  %call.i = tail call ptr @xa_load(ptr noundef %vlans.i, i32 noundef %conv.i) #12
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %flags4 = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %flags4 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %flags)
  %cmp = icmp eq i16 %1, %flags
  br i1 %cmp, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %bridge = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 4
  tail call fastcc void @mlx5_esw_bridge_vlan_cleanup(ptr noundef nonnull %call1.i, ptr noundef nonnull %call.i, ptr noundef %3)
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end.if.end9_crit_edge
  %4 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %br_offloads, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 24, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.do.body_crit_edge, label %if.end.i

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end.i:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vid, ptr %call.i.i.i, align 4
  %flags3.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %flags, ptr %flags3.i, align 2
  %fdb_list.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %fdb_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %fdb_list.i, ptr %fdb_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fdb_list.i, ptr %prev.i.i, align 4
  %conv.i31 = zext i16 %flags to i32
  %and.i = and i32 %conv.i31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then5.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlan_hdr.i.i) #12
  %10 = getelementptr inbounds %struct.anon.239, ptr %vlan_hdr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %vlan_hdr.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -32512, ptr %vlan_hdr.i.i, align 2
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %vid, ptr %10, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params.i.i) #12
  %13 = getelementptr inbounds i8, ptr %reformat_params.i.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 17563648, ptr %13, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 8
  %arrayidx4.i.i = getelementptr %struct.mlx5_core_dev, ptr %16, i32 0, i32 8, i32 0, i32 32
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.i.i, align 8
  %add.ptr7.i.i = getelementptr i32, ptr %18, i32 5
  %19 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %20)
  %cmp.i.i = icmp ult i32 %20, 67108864
  %21 = and i32 %20, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %21)
  %cmp20.i.i = icmp ult i32 %21, 786432
  %or.cond.i.i = or i1 %cmp.i.i, %cmp20.i.i
  br i1 %or.cond.i.i, label %mlx5_esw_bridge_vlan_push_create.exit.thread83.i, label %if.end.i.i

mlx5_esw_bridge_vlan_push_create.exit.thread83.i: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.67) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan_hdr.i.i) #12
  br label %err_vlan_push.i

if.end.i.i:                                       ; preds = %if.then5.i
  %24 = ptrtoint ptr %reformat_params.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 15, ptr %reformat_params.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %size.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vlan_hdr.i.i, ptr %data.i.i, align 4
  %call.i.i = call ptr @mlx5_packet_reformat_alloc(ptr noundef %16, ptr noundef nonnull %reformat_params.i.i, i32 noundef 8) #12
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlx5_esw_bridge_vlan_push_create.exit.i, label %mlx5_esw_bridge_vlan_push_create.exit.thread.i

mlx5_esw_bridge_vlan_push_create.exit.thread.i:   ; preds = %if.end.i.i
  %pkt_reformat_push.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %pkt_reformat_push.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %pkt_reformat_push.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan_hdr.i.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %action.i.i) #12
  %28 = ptrtoint ptr %action.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1176011347574392830, ptr %action.i.i, align 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %5, align 8
  %call.i68.i = call ptr @mlx5_modify_header_alloc(ptr noundef %30, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef nonnull %action.i.i) #12
  %cmp.i.i69.i = icmp ugt ptr %call.i68.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i69.i, label %mlx5_esw_bridge_vlan_push_mark_create.exit.i, label %mlx5_esw_bridge_vlan_push_mark_create.exit.thread.i

mlx5_esw_bridge_vlan_push_create.exit.i:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = ptrtoint ptr %call.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.70, i32 noundef %35) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan_hdr.i.i) #12
  br label %err_vlan_push.i

mlx5_esw_bridge_vlan_push_mark_create.exit.thread.i: ; preds = %mlx5_esw_bridge_vlan_push_create.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %pkt_mod_hdr_push_mark.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %pkt_mod_hdr_push_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i68.i, ptr %pkt_mod_hdr_push_mark.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i.i) #12
  br label %if.end14.i

mlx5_esw_bridge_vlan_push_mark_create.exit.i:     ; preds = %mlx5_esw_bridge_vlan_push_create.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call.i68.i to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i.i) #12
  br label %err_vlan_push_mark.i

if.end14.i:                                       ; preds = %mlx5_esw_bridge_vlan_push_mark_create.exit.thread.i, %if.end.i.if.end14.i_crit_edge
  %and16.i = and i32 %conv.i31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end14.i.if.end23.i_crit_edge, label %if.then18.i

if.end14.i.if.end23.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end14.i
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 8
  %arrayidx4.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %39, i32 0, i32 8, i32 0, i32 32
  %40 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx4.i.i.i, align 8
  %add.ptr7.i.i.i = getelementptr i32, ptr %41, i32 5
  %42 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr7.i.i.i, align 4
  %44 = and i32 %43, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i.i.i = icmp ne i32 %44, 0
  %and18.i.i.i = and i32 %43, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and18.i.i.i)
  %cmp19.i.i.i = icmp ugt i32 %and18.i.i.i, 11
  %45 = and i1 %cmp.not.i.i.i, %cmp19.i.i.i
  br i1 %45, label %if.end.i75.i, label %mlx5_esw_bridge_vlan_pop_create.exit.thread90.i

mlx5_esw_bridge_vlan_pop_create.exit.thread90.i:  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %39, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.72) #15
  br label %err_vlan_pop.i

if.end.i75.i:                                     ; preds = %if.then18.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params.i.i.i) #12
  %48 = getelementptr inbounds i8, ptr %reformat_params.i.i.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 12)
  %50 = ptrtoint ptr %reformat_params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 16, ptr %reformat_params.i.i.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %48, align 4
  %param_1.i.i.i = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %param_1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 12, ptr %param_1.i.i.i, align 1
  %size.i.i.i = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %size.i.i.i, align 4
  %call.i.i73.i = call ptr @mlx5_packet_reformat_alloc(ptr noundef %39, ptr noundef nonnull %reformat_params.i.i.i, i32 noundef 8) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params.i.i.i) #12
  %cmp.i.i74.i = icmp ugt ptr %call.i.i73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i74.i, label %mlx5_esw_bridge_vlan_pop_create.exit.i, label %mlx5_esw_bridge_vlan_pop_create.exit.thread.i

mlx5_esw_bridge_vlan_pop_create.exit.thread.i:    ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  %pkt_reformat_pop.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %pkt_reformat_pop.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i73.i, ptr %pkt_reformat_pop.i.i, align 4
  br label %if.end23.i

mlx5_esw_bridge_vlan_pop_create.exit.i:           ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %5, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %59 = ptrtoint ptr %call.i.i73.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.41, i32 noundef %59) #15
  br label %err_vlan_pop.i

if.end23.i:                                       ; preds = %mlx5_esw_bridge_vlan_pop_create.exit.thread.i, %if.end14.i.if.end23.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %vlans.i) #12
  %call.i77.i = call i32 @__xa_insert(ptr noundef %vlans.i, i32 noundef %conv.i, ptr noundef nonnull %call.i.i.i, i32 noundef 3264) #12
  call void @_raw_spin_unlock(ptr noundef %vlans.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool26.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %err_xa_insert.i

if.end28.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_mlx5_esw_bridge_vlan_create(ptr noundef nonnull %call.i.i.i) #12
  br label %mlx5_esw_bridge_vlan_create.exit

err_xa_insert.i:                                  ; preds = %if.end23.i
  %pkt_reformat_pop.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %pkt_reformat_pop.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pkt_reformat_pop.i, align 4
  %tobool29.not.i = icmp eq ptr %61, null
  br i1 %tobool29.not.i, label %err_xa_insert.i.err_vlan_pop.i_crit_edge, label %if.then30.i

err_xa_insert.i.err_vlan_pop.i_crit_edge:         ; preds = %err_xa_insert.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vlan_pop.i

if.then30.i:                                      ; preds = %err_xa_insert.i
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %5, align 8
  call void @mlx5_packet_reformat_dealloc(ptr noundef %63, ptr noundef nonnull %61) #12
  %64 = ptrtoint ptr %pkt_reformat_pop.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %pkt_reformat_pop.i, align 4
  br label %err_vlan_pop.i

err_vlan_pop.i:                                   ; preds = %if.then30.i, %err_xa_insert.i.err_vlan_pop.i_crit_edge, %mlx5_esw_bridge_vlan_pop_create.exit.i, %mlx5_esw_bridge_vlan_pop_create.exit.thread90.i
  %err.0.i = phi i32 [ %59, %mlx5_esw_bridge_vlan_pop_create.exit.i ], [ %call.i77.i, %if.then30.i ], [ %call.i77.i, %err_xa_insert.i.err_vlan_pop.i_crit_edge ], [ -95, %mlx5_esw_bridge_vlan_pop_create.exit.thread90.i ]
  %pkt_mod_hdr_push_mark.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %pkt_mod_hdr_push_mark.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pkt_mod_hdr_push_mark.i, align 4
  %tobool32.not.i = icmp eq ptr %66, null
  br i1 %tobool32.not.i, label %err_vlan_pop.i.err_vlan_push_mark.i_crit_edge, label %if.then33.i

err_vlan_pop.i.err_vlan_push_mark.i_crit_edge:    ; preds = %err_vlan_pop.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vlan_push_mark.i

if.then33.i:                                      ; preds = %err_vlan_pop.i
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 8
  call void @mlx5_modify_header_dealloc(ptr noundef %68, ptr noundef nonnull %66) #12
  %69 = ptrtoint ptr %pkt_mod_hdr_push_mark.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %pkt_mod_hdr_push_mark.i, align 4
  br label %err_vlan_push_mark.i

err_vlan_push_mark.i:                             ; preds = %if.then33.i, %err_vlan_pop.i.err_vlan_push_mark.i_crit_edge, %mlx5_esw_bridge_vlan_push_mark_create.exit.i
  %err.1.i = phi i32 [ %37, %mlx5_esw_bridge_vlan_push_mark_create.exit.i ], [ %err.0.i, %if.then33.i ], [ %err.0.i, %err_vlan_pop.i.err_vlan_push_mark.i_crit_edge ]
  %pkt_reformat_push.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %call.i.i.i, i32 0, i32 3
  %70 = ptrtoint ptr %pkt_reformat_push.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pkt_reformat_push.i, align 4
  %tobool35.not.i = icmp eq ptr %71, null
  br i1 %tobool35.not.i, label %err_vlan_push_mark.i.err_vlan_push.i_crit_edge, label %if.then36.i

err_vlan_push_mark.i.err_vlan_push.i_crit_edge:   ; preds = %err_vlan_push_mark.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_vlan_push.i

if.then36.i:                                      ; preds = %err_vlan_push_mark.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %5, align 8
  call void @mlx5_packet_reformat_dealloc(ptr noundef %73, ptr noundef nonnull %71) #12
  %74 = ptrtoint ptr %pkt_reformat_push.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %pkt_reformat_push.i, align 4
  br label %err_vlan_push.i

err_vlan_push.i:                                  ; preds = %if.then36.i, %err_vlan_push_mark.i.err_vlan_push.i_crit_edge, %mlx5_esw_bridge_vlan_push_create.exit.i, %mlx5_esw_bridge_vlan_push_create.exit.thread83.i
  %err.2.i = phi i32 [ %35, %mlx5_esw_bridge_vlan_push_create.exit.i ], [ %err.1.i, %if.then36.i ], [ %err.1.i, %err_vlan_push_mark.i.err_vlan_push.i_crit_edge ], [ -95, %mlx5_esw_bridge_vlan_push_create.exit.thread83.i ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #12
  %75 = inttoptr i32 %err.2.i to ptr
  br label %mlx5_esw_bridge_vlan_create.exit

mlx5_esw_bridge_vlan_create.exit:                 ; preds = %err_vlan_push.i, %if.end28.i
  %retval.0.i = phi ptr [ %75, %err_vlan_push.i ], [ %call.i.i.i, %if.end28.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_esw_bridge_vlan_create.exit.do.body_crit_edge, label %mlx5_esw_bridge_vlan_create.exit.cleanup_crit_edge

mlx5_esw_bridge_vlan_create.exit.cleanup_crit_edge: ; preds = %mlx5_esw_bridge_vlan_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_esw_bridge_vlan_create.exit.do.body_crit_edge: ; preds = %mlx5_esw_bridge_vlan_create.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %mlx5_esw_bridge_vlan_create.exit.do.body_crit_edge, %if.end9.do.body_crit_edge
  %retval.0.i35 = phi ptr [ %retval.0.i, %mlx5_esw_bridge_vlan_create.exit.do.body_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.do.body_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_port_vlan_add.__msg) #12
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body.if.end15_crit_edge, label %if.then14

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mlx5_esw_bridge_port_vlan_add.__msg, ptr %extack, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.body.if.end15_crit_edge
  %77 = ptrtoint ptr %retval.0.i35 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %mlx5_esw_bridge_vlan_create.exit.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %77, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %mlx5_esw_bridge_vlan_create.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_bridge_vlan_cleanup(ptr noundef %port, ptr noundef %vlan, ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  %send_info.i.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_mlx5_esw_bridge_vlan_cleanup(ptr noundef %vlan)
  %br_offloads.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %br_offloads.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br_offloads.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fdb_list.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 2
  %4 = ptrtoint ptr %fdb_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdb_list.i, align 4
  %cmp.not35.i = icmp eq ptr %5, %fdb_list.i
  br i1 %cmp.not35.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %addr1.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 1
  %vid2.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 2
  %offloaded.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in36.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %.pn.i, %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge ]
  %entry2.0.i = getelementptr i8, ptr %.pn.in36.i, i32 -24
  %6 = ptrtoint ptr %.pn.in36.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in36.i, align 4
  %flags.i.i.i = getelementptr i8, ptr %.pn.in36.i, i32 12
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i.i.i, align 4
  %9 = and i16 %8, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i.i.i = icmp eq i16 %9, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge

for.body.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr i8, ptr %.pn.in36.i, i32 -12
  %10 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i.i, align 4
  %vid.i.i.i = getelementptr i8, ptr %.pn.in36.i, i32 -18
  %12 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vid.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i.i.i.i) #12
  %14 = call ptr @memset(ptr %send_info.i.i.i.i, i32 0, i32 20)
  %15 = ptrtoint ptr %addr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry2.0.i, ptr %addr1.i.i.i.i, align 4
  %16 = ptrtoint ptr %vid2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %13, ptr %vid2.i.i.i.i, align 4
  %17 = ptrtoint ptr %offloaded.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %offloaded.i.i.i.i, align 2
  %call.i.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %11, ptr noundef nonnull %send_info.i.i.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i.i.i.i) #12
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i: ; preds = %if.then.i.i.i, %for.body.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge
  call fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %entry2.0.i, ptr noundef %bridge) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %fdb_list.i
  br i1 %cmp.not.i, label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.end.i_crit_edge, label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.body.i_crit_edge: ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.end.i_crit_edge: ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %pkt_reformat_pop.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 4
  %18 = ptrtoint ptr %pkt_reformat_pop.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pkt_reformat_pop.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.end.i.if.end.i_crit_edge, label %if.then.i

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 8
  call void @mlx5_packet_reformat_dealloc(ptr noundef %21, ptr noundef nonnull %19) #12
  %22 = ptrtoint ptr %pkt_reformat_pop.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %pkt_reformat_pop.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.i.if.end.i_crit_edge
  %pkt_mod_hdr_push_mark.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 5
  %23 = ptrtoint ptr %pkt_mod_hdr_push_mark.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pkt_mod_hdr_push_mark.i, align 4
  %tobool15.not.i = icmp eq ptr %24, null
  br i1 %tobool15.not.i, label %if.end.i.if.end17.i_crit_edge, label %if.then16.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  call void @mlx5_modify_header_dealloc(ptr noundef %26, ptr noundef nonnull %24) #12
  %27 = ptrtoint ptr %pkt_mod_hdr_push_mark.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pkt_mod_hdr_push_mark.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end.i.if.end17.i_crit_edge
  %pkt_reformat_push.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 3
  %28 = ptrtoint ptr %pkt_reformat_push.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pkt_reformat_push.i, align 4
  %tobool18.not.i = icmp eq ptr %29, null
  br i1 %tobool18.not.i, label %if.end17.i.mlx5_esw_bridge_vlan_flush.exit_crit_edge, label %if.then19.i

if.end17.i.mlx5_esw_bridge_vlan_flush.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_vlan_flush.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  call void @mlx5_packet_reformat_dealloc(ptr noundef %31, ptr noundef nonnull %29) #12
  %32 = ptrtoint ptr %pkt_reformat_push.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pkt_reformat_push.i, align 4
  br label %mlx5_esw_bridge_vlan_flush.exit

mlx5_esw_bridge_vlan_flush.exit:                  ; preds = %if.then19.i, %if.end17.i.mlx5_esw_bridge_vlan_flush.exit_crit_edge
  %vlans.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %port, i32 0, i32 4
  %33 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan, align 4
  %conv.i = zext i16 %34 to i32
  %call.i = call ptr @xa_erase(ptr noundef %vlans.i, i32 noundef %conv.i) #12
  call void @kvfree(ptr noundef %vlan) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_bridge_port_vlan_del(i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, i16 noundef zeroext %vid, ptr noundef %br_offloads) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlans.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 4
  %conv.i = zext i16 %vid to i32
  %call.i = tail call ptr @xa_load(ptr noundef %vlans.i, i32 noundef %conv.i) #12
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bridge = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 4
  tail call fastcc void @mlx5_esw_bridge_vlan_cleanup(ptr noundef nonnull %call1.i, ptr noundef nonnull %call.i, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_bridge_fdb_update_used(ptr nocapture noundef readnone %dev, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr nocapture noundef readonly %fdb_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 4
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool2.not = icmp eq i16 %2, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bridge3 = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %3 = ptrtoint ptr %bridge3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge3, align 4
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %7 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vid, align 4
  %call4 = tail call fastcc ptr @mlx5_esw_bridge_fdb_lookup(ptr noundef %4, ptr noundef %6, i16 noundef zeroext %8)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.body, label %if.end26

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx5_core_debug_mask to i32))
  %9 = load i32, ptr @mlx5_core_debug_mask, align 4
  %and7 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.body10

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_esw_bridge_fdb_update_used.__UNIQUE_ID_ddebug777, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_esw_bridge_fdb_update_used, %if.then15)) #12
          to label %cleanup [label %if.then15], !srcloc !301

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %br_offloads, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid, align 8
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %24 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid, align 4
  %conv20 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5_esw_bridge_fdb_update_used.__UNIQUE_ID_ddebug777, ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 1478, i32 noundef %21, ptr noundef %23, i32 noundef %conv20, i32 noundef %conv.i.i) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call4, i32 0, i32 10
  %27 = ptrtoint ptr %lastuse to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %lastuse, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then15, %do.body10, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_esw_bridge_fdb_lookup(ptr noundef %bridge, ptr nocapture noundef readonly %addr, i16 noundef zeroext %vid) unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.mlx5_esw_bridge_fdb_key, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #12
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %key, align 8
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %key, i32 4
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %add.ptr1.i, align 4
  %vid2 = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %vid2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vid, ptr %vid2, align 2
  %fdb_ht = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5
  %7 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !302
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %11 = ptrtoint ptr %fdb_ht to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %fdb_ht, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 594, ptr noundef nonnull @.str.55) #12
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 3, i32 3
  %13 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr1.i, align 4
  %key_offset.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 3, i32 2
  %key_len.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 3, i32 1
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %12, %do.end12.i.i.i ], [ %37, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %16, -559038729
  %add33.i.i.i.i.i.i = add i32 %14, %add1.i.i.i.i.i.i
  %add36.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %1
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #12
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #12
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #12
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #12
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #12
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #12
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #12
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %17 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %18, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !298

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %21 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %21, 1
  %22 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !303
  %23 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 369, ptr noundef nonnull @.str.55) #12
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %25 = ptrtoint ptr %24 to i32
  %and.i.i95.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %26 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %27 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %28 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  %29 = ptrtoint ptr %key_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %key_offset.i.i.i.i, align 4
  %conv.i101.i.i.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %key_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %key_len.i.i.i.i, align 2
  %conv3.i.i.i.i = zext i16 %32 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %34, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %26, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %add.ptr.i102.i.i.i = getelementptr i8, ptr %add.ptr.i100.i.i.i, i32 %conv.i101.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i.i, ptr nonnull %key, i32 %conv3.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool26.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %__rhashtable_lookup.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %33 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i.i.i = and i32 %35, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %26, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %34, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %22
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !304
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.76, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.76, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 614, ptr noundef nonnull @.str.55) #12
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !298

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !305
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i9.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #12
  ret ptr %cond.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_bridge_fdb_create(ptr noundef %dev, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr nocapture noundef readonly %fdb_info) local_unnamed_addr #0 align 64 {
entry:
  %send_info.i47 = alloca %struct.switchdev_notifier_fdb_info, align 4
  %send_info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %dest.i215.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i216.i = alloca %struct.mlx5_flow_act, align 4
  %dest.i.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i.i = alloca %struct.mlx5_flow_act, align 4
  %send_info.i.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge2 = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %0 = ptrtoint ptr %bridge2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge2, align 4
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid, align 4
  %added_by_user = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 3
  %6 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %added_by_user, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool3 = icmp slt i8 %bf.load, 0
  %flags = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 4
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not = icmp eq i16 %9, 0
  %10 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %br_offloads, align 4
  %flags.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not.i = icmp eq i16 %5, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end.if.end7.i_crit_edge, label %if.then.i

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %br_offloads.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %br_offloads.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %br_offloads.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %15, i32 0, i32 2
  %call1.i.i.i = tail call ptr @xa_load(ptr noundef %ports.i.i.i, i32 noundef %or.i.i) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge, label %if.end.i.i

if.then.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_port_vlan_lookup.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %vlans.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i.i.i, i32 0, i32 4
  %conv.i.i.i = zext i16 %5 to i32
  %call.i.i.i = tail call ptr @xa_load(ptr noundef %vlans.i.i.i, i32 noundef %conv.i.i.i) #12
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge, label %mlx5_esw_bridge_port_vlan_lookup.exit.i

if.end.i.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_port_vlan_lookup.exit.thread.i

mlx5_esw_bridge_port_vlan_lookup.exit.thread.i:   ; preds = %if.end.i.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge, %if.then.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge
  %.str.92.sink.i.i = phi ptr [ @.str.88, %if.then.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge ], [ @.str.92, %if.end.i.i.mlx5_esw_bridge_port_vlan_lookup.exit.thread.i_crit_edge ]
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull %.str.92.sink.i.i, i32 noundef %conv.i.i) #15
  br label %cleanup

mlx5_esw_bridge_port_vlan_lookup.exit.i:          ; preds = %if.end.i.i
  %cmp.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5_esw_bridge_port_vlan_lookup.exit.i.mlx5_esw_bridge_fdb_entry_init.exit_crit_edge, label %mlx5_esw_bridge_port_vlan_lookup.exit.i.if.end7.i_crit_edge

mlx5_esw_bridge_port_vlan_lookup.exit.i.if.end7.i_crit_edge: ; preds = %mlx5_esw_bridge_port_vlan_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

mlx5_esw_bridge_port_vlan_lookup.exit.i.mlx5_esw_bridge_fdb_entry_init.exit_crit_edge: ; preds = %mlx5_esw_bridge_port_vlan_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_entry_init.exit

if.end7.i:                                        ; preds = %mlx5_esw_bridge_port_vlan_lookup.exit.i.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %vlan.0.i = phi ptr [ %call.i.i.i, %mlx5_esw_bridge_port_vlan_lookup.exit.i.if.end7.i_crit_edge ], [ null, %if.end.if.end7.i_crit_edge ]
  %call8.i = tail call fastcc ptr @mlx5_esw_bridge_fdb_lookup(ptr noundef %1, ptr noundef %3, i16 noundef zeroext %5) #12
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then10.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end7.i
  %flags.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call8.i, i32 0, i32 7
  %20 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i.i.i, align 4
  %22 = and i16 %21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i.i.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then10.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge

if.then10.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i

if.then.i.i.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call8.i, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i.i, align 4
  %vid.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %call8.i, i32 0, i32 1
  %25 = ptrtoint ptr %vid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i.i.i.i) #12
  %27 = call ptr @memset(ptr %send_info.i.i.i.i, i32 0, i32 20)
  %addr1.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %addr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call8.i, ptr %addr1.i.i.i.i, align 4
  %vid2.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %vid2.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %26, ptr %vid2.i.i.i.i, align 4
  %offloaded.i.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %offloaded.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %offloaded.i.i.i.i, align 2
  %call.i.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %24, ptr noundef nonnull %send_info.i.i.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i.i.i.i) #12
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i: ; preds = %if.then.i.i.i, %if.then10.i.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i_crit_edge
  call fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef nonnull %call8.i, ptr noundef %1) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit.i, %if.end7.i.if.end11.i_crit_edge
  %call.i.i201.i = call noalias ptr @kvmalloc_node(i32 noundef 60, i32 noundef 3520, i32 noundef -1) #16
  %tobool13.not.i = icmp eq ptr %call.i.i201.i, null
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end16.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16.i:                                       ; preds = %if.end11.i
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %33 = ptrtoint ptr %call.i.i201.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %call.i.i201.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i.i201.i, i32 4
  %36 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr1.i.i, align 2
  %vid19.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %call.i.i201.i, i32 0, i32 1
  %37 = ptrtoint ptr %vid19.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %5, ptr %vid19.i, align 2
  %dev20.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 2
  %38 = ptrtoint ptr %dev20.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %dev20.i, align 4
  %vport_num21.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 5
  %39 = ptrtoint ptr %vport_num21.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %vport_num, ptr %vport_num21.i, align 4
  %esw_owner_vhca_id22.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 6
  %40 = ptrtoint ptr %esw_owner_vhca_id22.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %esw_owner_vhca_id, ptr %esw_owner_vhca_id22.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 10
  %42 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %lastuse.i, align 4
  br i1 %tobool3, label %if.then24.i, label %if.end16.i.if.end28.i_crit_edge

if.end16.i.if.end28.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags25.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 7
  %43 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags25.i, align 4
  %45 = or i16 %44, 1
  store i16 %45, ptr %flags25.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end16.i.if.end28.i_crit_edge
  br i1 %tobool4.not, label %if.end28.i.if.end35.i_crit_edge, label %if.then30.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %flags31.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 7
  %46 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags31.i, align 4
  %48 = or i16 %47, 2
  store i16 %48, ptr %flags31.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end35.i_crit_edge
  %49 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %11, align 8
  %call37.i = call ptr @mlx5_fc_create(ptr noundef %50, i1 noundef zeroext true) #12
  %cmp.i202.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202.i, label %if.then39.i, label %if.end41.i

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %call37.i to i32
  br label %err_ingress_fc_create.i

if.end41.i:                                       ; preds = %if.end35.i
  %ingress_counter.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 9
  %52 = ptrtoint ptr %ingress_counter.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call37.i, ptr %ingress_counter.i, align 4
  %call44.i = call i32 @mlx5_fc_id(ptr noundef %call37.i) #12
  %br_offloads.i203.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %br_offloads.i203.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %br_offloads.i203.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  br i1 %tobool4.not, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end41.i
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %devcom1.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %58, i32 0, i32 17, i32 32
  %59 = ptrtoint ptr %devcom1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %devcom1.i.i, align 4
  %call.i.i = call ptr @mlx5_devcom_get_peer_data(ptr noundef %60, i32 noundef 0) #12
  %tobool.not.i204.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i204.i, label %cond.true.i.if.then49.i_crit_edge, label %if.end.i205.i

cond.true.i.if.then49.i_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49.i

if.end.i205.i:                                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = call fastcc ptr @mlx5_esw_bridge_ingress_flow_with_esw_create(i16 noundef zeroext %vport_num, ptr noundef %3, ptr noundef %vlan.0.i, i32 noundef %call44.i, ptr noundef %1, ptr noundef nonnull %call.i.i) #12
  store ptr %call3.i.i, ptr @mlx5_esw_bridge_ingress_flow_peer_create.handle, align 4
  call void @mlx5_devcom_release_peer_data(ptr noundef %60, i32 noundef 0) #12
  %61 = load ptr, ptr @mlx5_esw_bridge_ingress_flow_peer_create.handle, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i208.i = call fastcc ptr @mlx5_esw_bridge_ingress_flow_with_esw_create(i16 noundef zeroext %vport_num, ptr noundef %3, ptr noundef %vlan.0.i, i32 noundef %call44.i, ptr noundef %1, ptr noundef %56) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i205.i
  %cond.i = phi ptr [ %call.i208.i, %cond.false.i ], [ %61, %if.end.i205.i ]
  %cmp.i209.i = icmp ugt ptr %cond.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.i, label %cond.end.i.if.then49.i_crit_edge, label %if.end53.i

cond.end.i.if.then49.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then49.i

if.then49.i:                                      ; preds = %cond.end.i.if.then49.i_crit_edge, %cond.true.i.if.then49.i_crit_edge
  %cond244.i = phi ptr [ %cond.i, %cond.end.i.if.then49.i_crit_edge ], [ inttoptr (i32 -19 to ptr), %cond.true.i.if.then49.i_crit_edge ]
  %62 = ptrtoint ptr %cond244.i to i32
  %63 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %11, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.77, i32 noundef %conv.i.i, i32 noundef %62) #15
  br label %err_ingress_flow_create.i

if.end53.i:                                       ; preds = %cond.end.i
  %ingress_handle.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 8
  %67 = ptrtoint ptr %ingress_handle.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cond.i, ptr %ingress_handle.i, align 4
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i, align 4
  %and55.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.end53.i.if.end69.i_crit_edge, label %if.then57.i

if.end53.i.if.end69.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69.i

if.then57.i:                                      ; preds = %if.end53.i
  %70 = ptrtoint ptr %br_offloads.i203.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %br_offloads.i203.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i) #12
  %72 = getelementptr inbounds i8, ptr %dest.i.i, i32 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 -1, ptr %72, align 4
  %74 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %dest.i.i, align 4
  %75 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1
  %skip_ft.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %71, i32 0, i32 12
  %76 = ptrtoint ptr %skip_ft.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skip_ft.i.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %75, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i) #12
  %79 = getelementptr inbounds i8, ptr %flow_act.i.i, i32 4
  %80 = call ptr @memset(ptr %79, i32 0, i32 32)
  %81 = ptrtoint ptr %flow_act.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %flow_act.i.i, align 4
  %82 = getelementptr inbounds { i32, ptr, ptr, %union.anon.215, i32, [2 x { i16, i16, i8, [1 x i8] }], ptr }, ptr %flow_act.i.i, i32 0, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %82, align 4
  %call.i.i.i210.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i211.i = icmp eq ptr %call.i.i.i210.i, null
  br i1 %tobool.not.i211.i, label %mlx5_esw_bridge_ingress_filter_flow_create.exit.thread.i, label %mlx5_esw_bridge_ingress_filter_flow_create.exit.i

mlx5_esw_bridge_ingress_filter_flow_create.exit.thread.i: ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #12
  br label %if.then60.i

mlx5_esw_bridge_ingress_filter_flow_create.exit.i: ; preds = %if.then57.i
  %84 = ptrtoint ptr %call.i.i.i210.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 9, ptr %call.i.i.i210.i, align 4
  %match_value.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 2
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %3, align 4
  %87 = ptrtoint ptr %match_value.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %match_value.i.i, align 4
  %88 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %add.ptr1.i.i.i, align 2
  %match_criteria.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 1
  %91 = call ptr @memset(ptr %match_criteria.i.i, i32 255, i32 6)
  %add.ptr9.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 1, i32 59
  %92 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -65536, ptr %add.ptr9.i.i, align 4
  %93 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %71, align 4
  %call18.i.i = call i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef %94, i16 noundef zeroext %vport_num) #12
  %add.ptr24.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 2, i32 59
  %95 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call18.i.i, ptr %add.ptr24.i.i, align 4
  %add.ptr40.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 1, i32 4
  %96 = ptrtoint ptr %add.ptr40.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr40.i.i, align 4
  %or42.i.i = or i32 %97, 32768
  store i32 %or42.i.i, ptr %add.ptr40.i.i, align 4
  %add.ptr54.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i210.i, i32 0, i32 2, i32 4
  %98 = ptrtoint ptr %add.ptr54.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr54.i.i, align 4
  %or56.i.i = or i32 %99, 32768
  store i32 %or56.i.i, ptr %add.ptr54.i.i, align 4
  %ingress_ft.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %71, i32 0, i32 8
  %100 = ptrtoint ptr %ingress_ft.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ingress_ft.i.i, align 4
  %call62.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %101, ptr noundef nonnull %call.i.i.i210.i, ptr noundef nonnull %flow_act.i.i, ptr noundef nonnull %dest.i.i, i32 noundef 1) #12
  call void @kvfree(ptr noundef nonnull %call.i.i.i210.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #12
  %cmp.i214.i = icmp ugt ptr %call62.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214.i, label %mlx5_esw_bridge_ingress_filter_flow_create.exit.i.if.then60.i_crit_edge, label %if.end68.i

mlx5_esw_bridge_ingress_filter_flow_create.exit.i.if.then60.i_crit_edge: ; preds = %mlx5_esw_bridge_ingress_filter_flow_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

if.then60.i:                                      ; preds = %mlx5_esw_bridge_ingress_filter_flow_create.exit.i.if.then60.i_crit_edge, %mlx5_esw_bridge_ingress_filter_flow_create.exit.thread.i
  %retval.0.i213247.i = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5_esw_bridge_ingress_filter_flow_create.exit.thread.i ], [ %call62.i.i, %mlx5_esw_bridge_ingress_filter_flow_create.exit.i.if.then60.i_crit_edge ]
  %102 = ptrtoint ptr %retval.0.i213247.i to i32
  %103 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %11, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.80, i32 noundef %conv.i.i, i32 noundef %102) #15
  br label %err_ingress_filter_flow_create.i

if.end68.i:                                       ; preds = %mlx5_esw_bridge_ingress_filter_flow_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %filter_handle.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 12
  %107 = ptrtoint ptr %filter_handle.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call62.i.i, ptr %filter_handle.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end68.i, %if.end53.i.if.end69.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i215.i) #12
  %108 = getelementptr inbounds i8, ptr %dest.i215.i, i32 12
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 16777215, ptr %108, align 4
  %110 = ptrtoint ptr %dest.i215.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %dest.i215.i, align 4
  %111 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i215.i, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %vport_num, ptr %111, align 4
  %vhca_id.i.i = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i215.i, i32 0, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %vhca_id.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %vhca_id.i.i, align 2
  %pkt_reformat.i.i = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i215.i, i32 0, i32 1, i32 0, i32 2
  %114 = ptrtoint ptr %pkt_reformat.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %pkt_reformat.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i216.i) #12
  %115 = getelementptr inbounds i8, ptr %flow_act.i216.i, i32 4
  %116 = call ptr @memset(ptr %115, i32 0, i32 32)
  %117 = ptrtoint ptr %flow_act.i216.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 4, ptr %flow_act.i216.i, align 4
  %118 = getelementptr inbounds { i32, ptr, ptr, %union.anon.215, i32, [2 x { i16, i16, i8, [1 x i8] }], ptr }, ptr %flow_act.i216.i, i32 0, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %118, align 4
  %call.i.i.i217.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not.i218.i = icmp eq ptr %call.i.i.i217.i, null
  br i1 %tobool.not.i218.i, label %mlx5_esw_bridge_egress_flow_create.exit.thread.i, label %if.end.i221.i

mlx5_esw_bridge_egress_flow_create.exit.thread.i: ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i216.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i215.i) #12
  br label %if.then72.i

if.end.i221.i:                                    ; preds = %if.end69.i
  %120 = ptrtoint ptr %br_offloads.i203.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %br_offloads.i203.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %125, i32 0, i32 8, i32 0, i32 8
  %126 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %130 = and i32 %129, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool2.not.i.i = icmp ne i32 %130, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %vport_num)
  %cmp.i220.i = icmp eq i16 %vport_num, -1
  %or.cond.i.i = and i1 %cmp.i220.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.then4.i.i, label %if.end.i221.i.if.end5.i.i_crit_edge

if.end.i221.i.if.end5.i.i_crit_edge:              ; preds = %if.end.i221.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i221.i
  call void @__sanitizer_cov_trace_pc() #14
  %flow_source.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 3, i32 2
  %131 = ptrtoint ptr %flow_source.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 2, ptr %flow_source.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i221.i.if.end5.i.i_crit_edge
  %132 = ptrtoint ptr %call.i.i.i217.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %call.i.i.i217.i, align 4
  %add.ptr7.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 2, i32 2
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %3, align 4
  %135 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %add.ptr7.i.i, align 4
  %136 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i223.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 2, i32 3
  %138 = ptrtoint ptr %add.ptr1.i.i223.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %add.ptr1.i.i223.i, align 2
  %add.ptr9.i224.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 1, i32 2
  %139 = call ptr @memset(ptr %add.ptr9.i224.i, i32 255, i32 6)
  %tobool10.not.i.i = icmp eq ptr %vlan.0.i, null
  br i1 %tobool10.not.i.i, label %if.end5.i.i.if.end72.i.i_crit_edge, label %if.then11.i.i

if.end5.i.i.if.end72.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i.i

if.then11.i.i:                                    ; preds = %if.end5.i.i
  %pkt_reformat_pop.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan.0.i, i32 0, i32 4
  %140 = ptrtoint ptr %pkt_reformat_pop.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pkt_reformat_pop.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %141, null
  br i1 %tobool12.not.i.i, label %if.then11.i.i.do.end.i.i_crit_edge, label %if.then13.i.i

if.then11.i.i.do.end.i.i_crit_edge:               ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

if.then13.i.i:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %flow_act.i216.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flow_act.i216.i, align 4
  %or.i.i46 = or i32 %143, 16
  store i32 %or.i.i46, ptr %flow_act.i216.i, align 4
  %pkt_reformat15.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i216.i, i32 0, i32 2
  %144 = ptrtoint ptr %pkt_reformat15.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %pkt_reformat15.i.i, align 4
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then13.i.i, %if.then11.i.i.do.end.i.i_crit_edge
  %add.ptr20.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 1, i32 4
  %145 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr20.i.i, align 4
  %or22.i.i = or i32 %146, 32768
  store i32 %or22.i.i, ptr %add.ptr20.i.i, align 4
  %add.ptr34.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 2, i32 4
  %147 = ptrtoint ptr %add.ptr34.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr34.i.i, align 4
  %or36.i.i = or i32 %148, 32768
  store i32 %or36.i.i, ptr %add.ptr34.i.i, align 4
  %add.ptr48.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i217.i, i32 0, i32 1, i32 3
  %149 = ptrtoint ptr %add.ptr48.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %add.ptr48.i.i, align 4
  %or50.i.i = or i32 %150, 4095
  store i32 %or50.i.i, ptr %add.ptr48.i.i, align 4
  %151 = ptrtoint ptr %vlan.0.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %vlan.0.i, align 4
  %153 = ptrtoint ptr %add.ptr1.i.i223.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %add.ptr1.i.i223.i, align 4
  %and64.i.i = and i32 %154, -4096
  %155 = and i16 %152, 4095
  %and65.i.i = zext i16 %155 to i32
  %or66.i.i = or i32 %and64.i.i, %and65.i.i
  store i32 %or66.i.i, ptr %add.ptr1.i.i223.i, align 4
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %do.end.i.i, %if.end5.i.i.if.end72.i.i_crit_edge
  %156 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %121, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %157, align 8
  %arrayidx78.i.i = getelementptr %struct.mlx5_core_dev, ptr %159, i32 0, i32 8, i32 0, i32 9
  %160 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx78.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 4
  %164 = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool84.not.i.i = icmp eq i32 %164, 0
  br i1 %tobool84.not.i.i, label %if.end72.i.i.mlx5_esw_bridge_egress_flow_create.exit.i_crit_edge, label %if.then85.i.i

if.end72.i.i.mlx5_esw_bridge_egress_flow_create.exit.i_crit_edge: ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_egress_flow_create.exit.i

if.then85.i.i:                                    ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %108, align 4
  %166 = ptrtoint ptr %vhca_id.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %esw_owner_vhca_id, ptr %vhca_id.i.i, align 2
  br label %mlx5_esw_bridge_egress_flow_create.exit.i

mlx5_esw_bridge_egress_flow_create.exit.i:        ; preds = %if.then85.i.i, %if.end72.i.i.mlx5_esw_bridge_egress_flow_create.exit.i_crit_edge
  %egress_ft.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 6
  %167 = ptrtoint ptr %egress_ft.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %egress_ft.i.i, align 4
  %call89.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %168, ptr noundef nonnull %call.i.i.i217.i, ptr noundef nonnull %flow_act.i216.i, ptr noundef nonnull %dest.i215.i, i32 noundef 1) #12
  call void @kvfree(ptr noundef nonnull %call.i.i.i217.i) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i216.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i215.i) #12
  %cmp.i226.i = icmp ugt ptr %call89.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226.i, label %mlx5_esw_bridge_egress_flow_create.exit.i.if.then72.i_crit_edge, label %if.end80.i

mlx5_esw_bridge_egress_flow_create.exit.i.if.then72.i_crit_edge: ; preds = %mlx5_esw_bridge_egress_flow_create.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then72.i

if.then72.i:                                      ; preds = %mlx5_esw_bridge_egress_flow_create.exit.i.if.then72.i_crit_edge, %mlx5_esw_bridge_egress_flow_create.exit.thread.i
  %retval.0.i225250.i = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5_esw_bridge_egress_flow_create.exit.thread.i ], [ %call89.i.i, %mlx5_esw_bridge_egress_flow_create.exit.i.if.then72.i_crit_edge ]
  %169 = ptrtoint ptr %retval.0.i225250.i to i32
  %170 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %11, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %173, ptr noundef nonnull @.str.83, i32 noundef %conv.i.i, i32 noundef %169) #15
  br label %err_egress_flow_create.i

if.end80.i:                                       ; preds = %mlx5_esw_bridge_egress_flow_create.exit.i
  %egress_handle.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 11
  %174 = ptrtoint ptr %egress_handle.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %call89.i.i, ptr %egress_handle.i, align 4
  %fdb_ht.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5
  %ht_node.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 1
  %175 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i.i.i = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %178, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !302
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i227.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i227.i, label %if.end80.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end80.i.rcu_read_lock.exit.i.i.i_crit_edge:    ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end80.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #12
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end80.i.rcu_read_lock.exit.i.i.i_crit_edge
  %179 = ptrtoint ptr %fdb_ht.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile ptr, ptr %fdb_ht.i, align 4
  %call.i.i228.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_ht.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228.i)
  %tobool.not.i.i229.i = icmp eq i32 %call.i.i228.i, 0
  br i1 %tobool.not.i.i229.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i230.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i.i

if.then.i.i230.i:                                 ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 715, ptr noundef nonnull @.str.55) #12
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i230.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5, i32 3, i32 3
  %181 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %182 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ht_node.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %180, i32 0, i32 2
  %183 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %184, -559038729
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i, i32 1
  %185 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i = add i32 %186, %add1.i.i.i.i.i.i.i
  %187 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %188, %add1.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #12
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #12
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #12
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #12
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #12
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #12
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #12
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %189 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %180, align 128
  %sub.i.i.i.i.i.i = add i32 %190, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %180, i32 0, i32 1
  %191 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i4.i.i.i = icmp eq i32 %192, 0
  br i1 %tobool.not.i4.i.i.i, label %cond.false.i7.i.i.i, label %cond.true.i6.i.i.i, !prof !298

cond.true.i6.i.i.i:                               ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i.i.i = call ptr @rht_bucket_nested_insert(ptr noundef %fdb_ht.i, ptr noundef %180, i32 noundef %and.i3.i.i.i.i.i) #12
  br label %rht_bucket_insert.exit.i.i.i

cond.false.i7.i.i.i:                              ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %180, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i

rht_bucket_insert.exit.i.i.i:                     ; preds = %cond.false.i7.i.i.i, %cond.true.i6.i.i.i
  %cond.i8.i.i.i = phi ptr [ %call.i5.i.i.i, %cond.true.i6.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i7.i.i.i ]
  %tobool17.not.i.i.i = icmp eq ptr %cond.i8.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge, label %if.end19.i.i.i

rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %rht_bucket_insert.exit.i.i.i
  call fastcc void @rht_lock(ptr noundef %180, ptr noundef nonnull %cond.i8.i.i.i) #12
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %180, i32 0, i32 5
  %193 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %tobool25.not.i.i.i = icmp eq ptr %194, null
  br i1 %tobool25.not.i.i.i, label %if.end30.i.i.i, label %if.end19.i.i.i.slow_path.i.i.i_crit_edge, !prof !298

if.end19.i.i.i.slow_path.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i.i

slow_path.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, %for.end.i.i.i.slow_path.i.i.i_crit_edge, %if.end19.i.i.i.slow_path.i.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %180, ptr noundef nonnull %cond.i8.i.i.i) #12
  %call.i10.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i.i.i, label %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i13.i.i.i

slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %slow_path.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i13.i.i.i:                          ; preds = %slow_path.i.i.i
  %call1.i11.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i.i)
  %tobool.not.i12.i.i.i = icmp eq i32 %call1.i11.i.i.i, 0
  br i1 %tobool.not.i12.i.i.i, label %land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i15.i.i.i

land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i15.i.i.i:                         ; preds = %land.lhs.true.i13.i.i.i
  %.b4.i14.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i.i, label %land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i16.i.i.i

land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i.i

if.then.i16.i.i.i:                                ; preds = %land.lhs.true2.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i16.i.i.i, %land.lhs.true2.i15.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i13.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !305
  %195 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i17.i.i.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i17.i.i.i to ptr
  %preempt_count.i.i.i.i18.i.i.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  %sub.i.i.i19.i.i.i = add i32 %198, -1
  store volatile i32 %sub.i.i.i19.i.i.i, ptr %preempt_count.i.i.i.i18.i.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i.i.i = call ptr @rhashtable_insert_slow(ptr noundef %fdb_ht.i, ptr noundef null, ptr noundef %ht_node.i) #12
  br label %rhashtable_insert_fast.exit.i

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call.i20.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %180, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %tobool.not.i21.i.i.i = icmp eq i32 %call.i20.i.i.i, 0
  br i1 %tobool.not.i21.i.i.i, label %land.lhs.true.i23.i.i.i, label %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge:      ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i23.i.i.i:                          ; preds = %if.end30.i.i.i
  %call1.i22.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i22.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i23.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i24.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i24.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 377, ptr noundef nonnull @.str.61) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i24.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i23.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %199 = ptrtoint ptr %cond.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cond.i8.i.i.i, align 4
  %201 = ptrtoint ptr %200 to i32
  %and.i.i.i.i.i = and i32 %201, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %202 = ptrtoint ptr %cond.i8.i.i.i to i32
  %or.i.i.i.i.i = or i32 %202, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i63.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i.i.i)
  %tobool.i.not64.i.i.i = icmp eq i32 %and.i63.i.i.i, 0
  br i1 %tobool.i.not64.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge

rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge:     ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %203 = inttoptr i32 %cond.i.i.i.i.i to ptr
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.end147.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %head.066.i.i.i = phi ptr [ %205, %do.end147.i.i.i.for.body.i.i.i_crit_edge ], [ %203, %for.body.preheader.i.i.i ]
  %elasticity.065.i.i.i = phi i32 [ %dec.i.i.i, %do.end147.i.i.i.for.body.i.i.i_crit_edge ], [ 16, %for.body.preheader.i.i.i ]
  %dec.i.i.i = add i32 %elasticity.065.i.i.i, -1
  %call137.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %180, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i)
  %tobool138.not.i.i.i = icmp eq i32 %call137.i.i.i, 0
  br i1 %tobool138.not.i.i.i, label %land.lhs.true139.i.i.i, label %for.body.i.i.i.do.end147.i.i.i_crit_edge

for.body.i.i.i.do.end147.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i.i

land.lhs.true139.i.i.i:                           ; preds = %for.body.i.i.i
  %call140.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %call140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, label %land.lhs.true142.i.i.i

land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i.i

land.lhs.true142.i.i.i:                           ; preds = %land.lhs.true139.i.i.i
  %.b2811.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.95, align 1
  br i1 %.b2811.i.i.i, label %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, label %if.then144.i.i.i

land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.95, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 732, ptr noundef nonnull @.str.61) #12
  br label %do.end147.i.i.i

do.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, %for.body.i.i.i.do.end147.i.i.i_crit_edge
  %204 = ptrtoint ptr %head.066.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %head.066.i.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  %and.i.i.i.i = and i32 %206, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.end147.i.i.i.for.body.i.i.i_crit_edge, label %for.end.i.i.i

do.end147.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i)
  %phi.cmp.i.i.i = icmp slt i32 %dec.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %for.end.i.i.i.slow_path.i.i.i_crit_edge, label %for.end.i.i.i.if.end152.i.i.i_crit_edge

for.end.i.i.i.if.end152.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i.i.i

for.end.i.i.i.slow_path.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i.i

if.end152.i.i.i:                                  ; preds = %for.end.i.i.i.if.end152.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge
  %nelems.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5, i32 8
  %call.i.i.i25.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #12
  %207 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %max_elems.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5, i32 2
  %209 = ptrtoint ptr %max_elems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %max_elems.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %210)
  %cmp.i.not.i.i.i = icmp ult i32 %208, %210
  br i1 %cmp.i.not.i.i.i, label %if.end162.i.i.i, label %out_unlock.i.i.i, !prof !298

if.end162.i.i.i:                                  ; preds = %if.end152.i.i.i
  %call.i.i.i27.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #12
  %211 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %213 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %180, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %214)
  %cmp.i28.i.i.i = icmp ugt i32 %212, %214
  br i1 %cmp.i28.i.i.i, label %rht_grow_above_100.exit.i.i.i, label %if.end162.i.i.i.if.end171.i.i.i_crit_edge

if.end162.i.i.i.if.end171.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i:                    ; preds = %if.end162.i.i.i
  %max_size.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5, i32 3, i32 4
  %215 = ptrtoint ptr %max_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %max_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.not.i29.i.i.i = icmp eq i32 %216, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %216)
  %cmp4.i.i.i.i = icmp ult i32 %214, %216
  %spec.select.i.i.i.i = select i1 %tobool.not.i29.i.i.i, i1 true, i1 %cmp4.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, !prof !299

rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i.i.i

if.end171.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, %if.end162.i.i.i.if.end171.i.i.i_crit_edge
  %call.i30.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %180, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i)
  %tobool.not.i31.i.i.i = icmp eq i32 %call.i30.i.i.i, 0
  br i1 %tobool.not.i31.i.i.i, label %land.lhs.true.i34.i.i.i, label %if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge

if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge:   ; preds = %if.end171.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i.i

land.lhs.true.i34.i.i.i:                          ; preds = %if.end171.i.i.i
  %call1.i32.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i.i.i)
  %tobool2.not.i33.i.i.i = icmp eq i32 %call1.i32.i.i.i, 0
  br i1 %tobool2.not.i33.i.i.i, label %land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, label %land.lhs.true3.i36.i.i.i

land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge: ; preds = %land.lhs.true.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i.i

land.lhs.true3.i36.i.i.i:                         ; preds = %land.lhs.true.i34.i.i.i
  %.b7.i35.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i.i.i, label %land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, label %if.then.i37.i.i.i

land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge: ; preds = %land.lhs.true3.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i.i.i

if.then.i37.i.i.i:                                ; preds = %land.lhs.true3.i36.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 377, ptr noundef nonnull @.str.61) #12
  br label %rht_ptr.exit42.i.i.i

rht_ptr.exit42.i.i.i:                             ; preds = %if.then.i37.i.i.i, %land.lhs.true3.i36.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, %land.lhs.true.i34.i.i.i.rht_ptr.exit42.i.i.i_crit_edge, %if.end171.i.i.i.rht_ptr.exit42.i.i.i_crit_edge
  %217 = ptrtoint ptr %cond.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cond.i8.i.i.i, align 4
  %219 = ptrtoint ptr %218 to i32
  %and.i.i38.i.i.i = and i32 %219, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i.i.i)
  %tobool.not.i.i39.i.i.i = icmp eq i32 %and.i.i38.i.i.i, 0
  %cond.i.i41.i.i.i = select i1 %tobool.not.i.i39.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i38.i.i.i
  %220 = inttoptr i32 %cond.i.i41.i.i.i to ptr
  %221 = ptrtoint ptr %ht_node.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %220, ptr %ht_node.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #12
  %222 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #12, !srcloc !306
  call fastcc void @rht_assign_unlock(ptr noundef %180, ptr noundef nonnull %cond.i8.i.i.i, ptr noundef %ht_node.i) #12
  %call.i.i.i44.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #12
  %223 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %225 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %180, align 128
  %div8.i.i.i.i = lshr i32 %226, 2
  %mul.i.i.i.i = mul nuw i32 %div8.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %mul.i.i.i.i)
  %cmp.i45.i.i.i = icmp ugt i32 %224, %mul.i.i.i.i
  br i1 %cmp.i45.i.i.i, label %rht_grow_above_75.exit.i.i.i, label %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge

rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge:         ; preds = %rht_ptr.exit42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

rht_grow_above_75.exit.i.i.i:                     ; preds = %rht_ptr.exit42.i.i.i
  %max_size.i46.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5, i32 3, i32 4
  %227 = ptrtoint ptr %max_size.i46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %max_size.i46.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i47.i.i.i = icmp eq i32 %228, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %228)
  %cmp4.i48.i.i.i = icmp ult i32 %226, %228
  %spec.select.i49.i.i.i = select i1 %tobool.not.i47.i.i.i, i1 true, i1 %cmp4.i48.i.i.i
  br i1 %spec.select.i49.i.i.i, label %if.then207.i.i.i, label %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

if.then207.i.i.i:                                 ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 5, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %229 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %229, ptr noundef %run_work.i.i.i) #12
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %out_unlock.i.i.i, %if.then207.i.i.i, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge, %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge
  %data.2.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %if.then207.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %rht_ptr.exit42.i.i.i.out.i.i.i_crit_edge ]
  %call.i52.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i.i.i, label %out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %land.lhs.true.i55.i.i.i

out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i.i

land.lhs.true.i55.i.i.i:                          ; preds = %out.i.i.i
  %call1.i53.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i.i.i)
  %tobool.not.i54.i.i.i = icmp eq i32 %call1.i53.i.i.i, 0
  br i1 %tobool.not.i54.i.i.i, label %land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %land.lhs.true2.i57.i.i.i

land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %land.lhs.true.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i.i

land.lhs.true2.i57.i.i.i:                         ; preds = %land.lhs.true.i55.i.i.i
  %.b4.i56.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i.i.i, label %land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, label %if.then.i58.i.i.i

land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge: ; preds = %land.lhs.true2.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i.i.i

if.then.i58.i.i.i:                                ; preds = %land.lhs.true2.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rcu_read_unlock.exit62.i.i.i

rcu_read_unlock.exit62.i.i.i:                     ; preds = %if.then.i58.i.i.i, %land.lhs.true2.i57.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, %land.lhs.true.i55.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge, %out.i.i.i.rcu_read_unlock.exit62.i.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !305
  %230 = call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i59.i.i.i = and i32 %230, -16384
  %231 = inttoptr i32 %and.i.i.i.i.i59.i.i.i to ptr
  %preempt_count.i.i.i.i60.i.i.i = getelementptr inbounds %struct.thread_info, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %preempt_count.i.i.i.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile i32, ptr %preempt_count.i.i.i.i60.i.i.i, align 4
  %sub.i.i.i61.i.i.i = add i32 %233, -1
  store volatile i32 %sub.i.i.i61.i.i.i, ptr %preempt_count.i.i.i.i60.i.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %rhashtable_insert_fast.exit.i

out_unlock.i.i.i:                                 ; preds = %if.end152.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @rht_unlock(ptr noundef %180, ptr noundef nonnull %cond.i8.i.i.i) #12
  br label %out.i.i.i

rhashtable_insert_fast.exit.i:                    ; preds = %rcu_read_unlock.exit62.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.i.i.i = phi ptr [ %call29.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %data.2.i.i.i, %rcu_read_unlock.exit62.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  %234 = ptrtoint ptr %retval.0.i.i.i to i32
  %cmp.i231.i = icmp eq ptr %retval.0.i.i.i, null
  %cond.i.i = select i1 %cmp.i231.i, i32 0, i32 -17
  %retval.0.i232.i = select i1 %cmp.i.i.i, i32 %234, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i232.i)
  %tobool82.not.i = icmp eq i32 %retval.0.i232.i, 0
  br i1 %tobool82.not.i, label %if.end90.i, label %do.end86.i

do.end86.i:                                       ; preds = %rhashtable_insert_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %235 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %11, align 8
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %236, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %238, ptr noundef nonnull @.str.86, i32 noundef %conv.i.i, i32 noundef %retval.0.i232.i) #15
  %239 = ptrtoint ptr %egress_handle.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %egress_handle.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %240) #12
  br label %err_egress_flow_create.i

if.end90.i:                                       ; preds = %rhashtable_insert_fast.exit.i
  %vlan_list93.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 4
  br i1 %tobool10.not.i.i, label %if.else.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.end90.i
  %fdb_list.i = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan.0.i, i32 0, i32 2
  %241 = ptrtoint ptr %fdb_list.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %fdb_list.i, align 4
  %call.i.i233.i = call zeroext i1 @__list_add_valid(ptr noundef %vlan_list93.i, ptr noundef %fdb_list.i, ptr noundef %242) #12
  br i1 %call.i.i233.i, label %if.end.i.i.i, label %if.then92.i.if.end94.i_crit_edge

if.then92.i.if.end94.i_crit_edge:                 ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.end.i.i.i:                                     ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %vlan_list93.i, ptr %prev1.i.i.i, align 4
  %244 = ptrtoint ptr %vlan_list93.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %242, ptr %vlan_list93.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 4, i32 1
  %245 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %fdb_list.i, ptr %prev3.i.i.i, align 4
  %246 = ptrtoint ptr %fdb_list.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store volatile ptr %vlan_list93.i, ptr %fdb_list.i, align 4
  br label %if.end94.i

if.else.i:                                        ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #14
  %247 = ptrtoint ptr %vlan_list93.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %vlan_list93.i, ptr %vlan_list93.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 4, i32 1
  %248 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %vlan_list93.i, ptr %prev.i.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else.i, %if.end.i.i.i, %if.then92.i.if.end94.i_crit_edge
  %list.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 3
  %fdb_list95.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %1, i32 0, i32 4
  %249 = ptrtoint ptr %fdb_list95.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %fdb_list95.i, align 4
  %call.i.i234.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %fdb_list95.i, ptr noundef %250) #12
  br i1 %call.i.i234.i, label %if.end.i.i237.i, label %if.end94.i.list_add.exit238.i_crit_edge

if.end94.i.list_add.exit238.i_crit_edge:          ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit238.i

if.end.i.i237.i:                                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i235.i = getelementptr inbounds %struct.list_head, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %prev1.i.i235.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %list.i, ptr %prev1.i.i235.i, align 4
  %252 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %250, ptr %list.i, align 4
  %prev3.i.i236.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 3, i32 1
  %253 = ptrtoint ptr %prev3.i.i236.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %fdb_list95.i, ptr %prev3.i.i236.i, align 4
  %254 = ptrtoint ptr %fdb_list95.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store volatile ptr %list.i, ptr %fdb_list95.i, align 4
  br label %list_add.exit238.i

list_add.exit238.i:                               ; preds = %if.end.i.i237.i, %if.end94.i.list_add.exit238.i_crit_edge
  call fastcc void @trace_mlx5_esw_bridge_fdb_entry_init(ptr noundef nonnull %call.i.i201.i) #12
  br label %mlx5_esw_bridge_fdb_entry_init.exit

err_egress_flow_create.i:                         ; preds = %do.end86.i, %if.then72.i
  %err.0.i = phi i32 [ %169, %if.then72.i ], [ %retval.0.i232.i, %do.end86.i ]
  %filter_handle97.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call.i.i201.i, i32 0, i32 12
  %255 = ptrtoint ptr %filter_handle97.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %filter_handle97.i, align 4
  %tobool98.not.i = icmp eq ptr %256, null
  br i1 %tobool98.not.i, label %err_egress_flow_create.i.err_ingress_filter_flow_create.i_crit_edge, label %if.then99.i

err_egress_flow_create.i.err_ingress_filter_flow_create.i_crit_edge: ; preds = %err_egress_flow_create.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ingress_filter_flow_create.i

if.then99.i:                                      ; preds = %err_egress_flow_create.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlx5_del_flow_rules(ptr noundef nonnull %256) #12
  br label %err_ingress_filter_flow_create.i

err_ingress_filter_flow_create.i:                 ; preds = %if.then99.i, %err_egress_flow_create.i.err_ingress_filter_flow_create.i_crit_edge, %if.then60.i
  %err.1.i = phi i32 [ %102, %if.then60.i ], [ %err.0.i, %if.then99.i ], [ %err.0.i, %err_egress_flow_create.i.err_ingress_filter_flow_create.i_crit_edge ]
  %257 = ptrtoint ptr %ingress_handle.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ingress_handle.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %258) #12
  br label %err_ingress_flow_create.i

err_ingress_flow_create.i:                        ; preds = %err_ingress_filter_flow_create.i, %if.then49.i
  %err.2.i = phi i32 [ %62, %if.then49.i ], [ %err.1.i, %err_ingress_filter_flow_create.i ]
  %259 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %11, align 8
  %261 = ptrtoint ptr %ingress_counter.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %ingress_counter.i, align 4
  call void @mlx5_fc_destroy(ptr noundef %260, ptr noundef %262) #12
  br label %err_ingress_fc_create.i

err_ingress_fc_create.i:                          ; preds = %err_ingress_flow_create.i, %if.then39.i
  %err.3.i = phi i32 [ %51, %if.then39.i ], [ %err.2.i, %err_ingress_flow_create.i ]
  call void @kvfree(ptr noundef nonnull %call.i.i201.i) #12
  %263 = inttoptr i32 %err.3.i to ptr
  br label %mlx5_esw_bridge_fdb_entry_init.exit

mlx5_esw_bridge_fdb_entry_init.exit:              ; preds = %err_ingress_fc_create.i, %list_add.exit238.i, %mlx5_esw_bridge_port_vlan_lookup.exit.i.mlx5_esw_bridge_fdb_entry_init.exit_crit_edge
  %retval.0.i = phi ptr [ %263, %err_ingress_fc_create.i ], [ %call.i.i201.i, %list_add.exit238.i ], [ %call.i.i.i, %mlx5_esw_bridge_port_vlan_lookup.exit.i.mlx5_esw_bridge_fdb_entry_init.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_esw_bridge_fdb_entry_init.exit.cleanup_crit_edge, label %if.end8

mlx5_esw_bridge_fdb_entry_init.exit.cleanup_crit_edge: ; preds = %mlx5_esw_bridge_fdb_entry_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %mlx5_esw_bridge_fdb_entry_init.exit
  %flags9 = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %retval.0.i, i32 0, i32 7
  %264 = ptrtoint ptr %flags9 to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %flags9, align 4
  %conv10 = zext i16 %265 to i32
  %and11 = and i32 %conv10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %vid16 = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %retval.0.i, i32 0, i32 1
  %266 = ptrtoint ptr %vid16 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %vid16, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i) #12
  %268 = call ptr @memset(ptr %send_info.i, i32 0, i32 20)
  %addr1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i, i32 0, i32 1
  %269 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %retval.0.i, ptr %addr1.i, align 4
  %vid2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i, i32 0, i32 2
  %270 = ptrtoint ptr %vid2.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %267, ptr %vid2.i, align 4
  %offloaded.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i, i32 0, i32 3
  %271 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 32, ptr %offloaded.i, align 2
  %call.i = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %dev, ptr noundef nonnull %send_info.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %and19 = and i32 %conv10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %vid26 = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %retval.0.i, i32 0, i32 1
  %272 = ptrtoint ptr %vid26 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %vid26, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i47) #12
  %274 = call ptr @memset(ptr %send_info.i47, i32 0, i32 20)
  %addr1.i48 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i47, i32 0, i32 1
  %275 = ptrtoint ptr %addr1.i48 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %retval.0.i, ptr %addr1.i48, align 4
  %vid2.i49 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i47, i32 0, i32 2
  %276 = ptrtoint ptr %vid2.i49 to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %273, ptr %vid2.i49, align 4
  %offloaded.i50 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i47, i32 0, i32 3
  %277 = ptrtoint ptr %offloaded.i50 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 32, ptr %offloaded.i50, align 2
  %call.i51 = call i32 @call_switchdev_notifiers(i32 noundef 1, ptr noundef %dev, ptr noundef nonnull %send_info.i47, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i47) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else.cleanup_crit_edge, %if.then13, %mlx5_esw_bridge_fdb_entry_init.exit.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %mlx5_esw_bridge_port_vlan_lookup.exit.thread.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_bridge_fdb_remove(ptr nocapture noundef readnone %dev, i16 noundef zeroext %vport_num, i16 noundef zeroext %esw_owner_vhca_id, ptr noundef %br_offloads, ptr nocapture noundef readonly %fdb_info) local_unnamed_addr #0 align 64 {
entry:
  %send_info.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br_offloads, align 4
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 2
  %conv.i.i = zext i16 %vport_num to i32
  %conv1.i.i = zext i16 %esw_owner_vhca_id to i32
  %shl.i.i = shl nuw i32 %conv1.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %call1.i = tail call ptr @xa_load(ptr noundef %ports.i, i32 noundef %or.i.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %bridge3 = getelementptr inbounds %struct.mlx5_esw_bridge_port, ptr %call1.i, i32 0, i32 3
  %2 = ptrtoint ptr %bridge3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge3, align 4
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 2
  %6 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid, align 4
  %call4 = tail call fastcc ptr @mlx5_esw_bridge_fdb_lookup(ptr noundef %3, ptr noundef %5, i16 noundef zeroext %7)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 4
  %14 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid, align 4
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %13, i32 noundef %conv, i32 noundef %conv.i.i) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %flags.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call4, i32 0, i32 7
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i.i, align 4
  %18 = and i16 %17, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end11.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit_crit_edge

if.end11.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %call4, i32 0, i32 2
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %vid.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_key, ptr %call4, i32 0, i32 1
  %21 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vid.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i.i.i) #12
  %23 = call ptr @memset(ptr %send_info.i.i.i, i32 0, i32 20)
  %addr1.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call4, ptr %addr1.i.i.i, align 4
  %vid2.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %vid2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %22, ptr %vid2.i.i.i, align 4
  %offloaded.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %offloaded.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 32, ptr %offloaded.i.i.i, align 2
  %call.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %20, ptr noundef nonnull %send_info.i.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i.i.i) #12
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit: ; preds = %if.then.i.i, %if.end11.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit_crit_edge
  call fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef nonnull %call4, ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_bridge_update(ptr noundef readonly %br_offloads) local_unnamed_addr #0 align 64 {
entry:
  %send_info.i.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  %send_info.i.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bridges = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 1
  %0 = ptrtoint ptr %bridges to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn71 = load ptr, ptr %bridges, align 4
  %cmp.not73 = icmp eq ptr %.pn71, %bridges
  br i1 %cmp.not73, label %entry.for.end46_crit_edge, label %for.body.lr.ph

entry.for.end46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end46

for.body.lr.ph:                                   ; preds = %entry
  %addr1.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i, i32 0, i32 1
  %vid2.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i, i32 0, i32 2
  %offloaded.i.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i.i, i32 0, i32 3
  %addr1.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i, i32 0, i32 1
  %vid2.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i, i32 0, i32 2
  %offloaded.i.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %send_info.i.i, i32 0, i32 3
  br label %for.body

for.cond.loopexit:                                ; preds = %cleanup.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp.not = icmp eq ptr %.pn, %bridges
  br i1 %cmp.not, label %for.cond.loopexit.for.end46_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.loopexit.for.end46_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end46

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn74 = phi ptr [ %.pn71, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %bridge.075 = getelementptr i8, ptr %.pn74, i32 -8
  %fdb_list = getelementptr i8, ptr %.pn74, i32 12
  %2 = ptrtoint ptr %fdb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_list, align 4
  %cmp16.not66 = icmp eq ptr %3, %fdb_list
  br i1 %cmp16.not66, label %for.body.for.cond.loopexit_crit_edge, label %for.body18.lr.ph

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body18.lr.ph:                                 ; preds = %for.body
  %ageing_time = getelementptr i8, ptr %.pn74, i32 272
  br label %for.body18

for.body18:                                       ; preds = %cleanup.for.body18_crit_edge, %for.body18.lr.ph
  %.pn62.in67 = phi ptr [ %3, %for.body18.lr.ph ], [ %.pn6270, %cleanup.for.body18_crit_edge ]
  %entry1.068 = getelementptr i8, ptr %.pn62.in67, i32 -16
  %4 = ptrtoint ptr %.pn62.in67 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn6270 = load ptr, ptr %.pn62.in67, align 4
  %ingress_counter = getelementptr i8, ptr %.pn62.in67, i32 28
  %5 = ptrtoint ptr %ingress_counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ingress_counter, align 4
  %call = call i64 @mlx5_fc_query_lastuse(ptr noundef %6) #12
  %flags = getelementptr i8, ptr %.pn62.in67, i32 20
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 4
  %conv19 = zext i16 %8 to i32
  %and = and i32 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body18.cleanup_crit_edge

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body18
  %conv = trunc i64 %call to i32
  %lastuse20 = getelementptr i8, ptr %.pn62.in67, i32 32
  %9 = ptrtoint ptr %lastuse20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lastuse20, align 4
  %sub = sub i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_mlx5_esw_bridge_fdb_entry_refresh(ptr noundef %entry1.068) #12
  %dev.i = getelementptr i8, ptr %.pn62.in67, i32 -4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %vid.i = getelementptr i8, ptr %.pn62.in67, i32 -10
  %13 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i.i) #12
  %15 = call ptr @memset(ptr %send_info.i.i, i32 0, i32 20)
  %16 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry1.068, ptr %addr1.i.i, align 4
  %17 = ptrtoint ptr %vid2.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %14, ptr %vid2.i.i, align 4
  %18 = ptrtoint ptr %offloaded.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %offloaded.i.i, align 2
  %call.i.i = call i32 @call_switchdev_notifiers(i32 noundef 1, ptr noundef %12, ptr noundef nonnull %send_info.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and26 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %19 = ptrtoint ptr %ageing_time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ageing_time, align 4
  %add = add i32 %20, %10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub29 = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %if.then32, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %land.lhs.true
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 4
  %24 = and i16 %23, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i.i = icmp eq i16 %24, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then32.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit_crit_edge

if.then32.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i.i = getelementptr i8, ptr %.pn62.in67, i32 -4
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %vid.i.i = getelementptr i8, ptr %.pn62.in67, i32 -10
  %27 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %send_info.i.i.i) #12
  %29 = call ptr @memset(ptr %send_info.i.i.i, i32 0, i32 20)
  %30 = ptrtoint ptr %addr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry1.068, ptr %addr1.i.i.i, align 4
  %31 = ptrtoint ptr %vid2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %28, ptr %vid2.i.i.i, align 4
  %32 = ptrtoint ptr %offloaded.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 32, ptr %offloaded.i.i.i, align 2
  %call.i.i.i = call i32 @call_switchdev_notifiers(i32 noundef 2, ptr noundef %26, ptr noundef nonnull %send_info.i.i.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %send_info.i.i.i) #12
  br label %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit

mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit: ; preds = %if.then.i.i, %if.then32.mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit_crit_edge
  call fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %entry1.068, ptr noundef %bridge.075) #12
  br label %cleanup

cleanup:                                          ; preds = %mlx5_esw_bridge_fdb_entry_notify_and_cleanup.exit, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then23, %for.body18.cleanup_crit_edge
  %cmp16.not = icmp eq ptr %.pn6270, %fdb_list
  br i1 %cmp16.not, label %cleanup.for.cond.loopexit_crit_edge, label %cleanup.for.body18_crit_edge

cleanup.for.body18_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

cleanup.for.cond.loopexit_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.end46:                                        ; preds = %for.cond.loopexit.for.end46_crit_edge, %entry.for.end46_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_fc_query_lastuse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_esw_bridge_init(ptr noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b52 = load i1, ptr @mlx5_esw_bridge_init.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !298

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_esw_bridge_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1577, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 1577) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 224, i32 noundef 3520, i32 noundef -1) #16
  %tobool38.not = icmp eq ptr %call.i.i, null
  br i1 %tobool38.not, label %if.end29.cleanup_crit_edge, label %if.end41

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %bridges = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %bridges to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %bridges, ptr %bridges, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call.i.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %bridges, ptr %prev.i, align 4
  %ports = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %ports, ptr noundef nonnull @.str.96, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call.i.i, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %xa_head.i.i, align 4
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %esw, ptr %call.i.i, align 4
  %br_offloads43 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 14
  %5 = ptrtoint ptr %br_offloads43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i, ptr %br_offloads43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end29.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end41 ], [ inttoptr (i32 -12 to ptr), %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_bridge_cleanup(ptr nocapture noundef %esw) local_unnamed_addr #0 align 64 {
entry:
  %i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %br_offloads1 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 14
  %0 = ptrtoint ptr %br_offloads1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br_offloads1, align 4
  %call = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b82 = load i1, ptr @mlx5_esw_bridge_cleanup.__already_done, align 1
  br i1 %.b82, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !298

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_esw_bridge_cleanup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1595, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef 1595) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %tobool38.not = icmp eq ptr %1, null
  br i1 %tobool38.not, label %if.end30.cleanup_crit_edge, label %if.end40

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #12
  %2 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %i.i, align 4
  %ports.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %1, i32 0, i32 2
  %call.i = call ptr @xa_find(ptr noundef %ports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not49.i = icmp eq ptr %call.i, null
  br i1 %tobool.not49.i, label %if.end40.for.end.i_crit_edge, label %if.end40.for.body.i_crit_edge

if.end40.for.body.i_crit_edge:                    ; preds = %if.end40
  br label %for.body.i

if.end40.for.end.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end40.for.body.i_crit_edge
  %port.050.i = phi ptr [ %call3.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end40.for.body.i_crit_edge ]
  call fastcc void @mlx5_esw_bridge_vport_cleanup(ptr noundef nonnull %1, ptr noundef nonnull %port.050.i) #12
  %call3.i = call ptr @xa_find_after(ptr noundef %ports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end40.for.end.i_crit_edge
  %bridges.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bridges.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %bridges.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %bridges.i
  br i1 %cmp.i.not.i, label %for.end.i.mlx5_esw_bridge_flush.exit_crit_edge, label %land.rhs.i

for.end.i.mlx5_esw_bridge_flush.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_flush.exit

land.rhs.i:                                       ; preds = %for.end.i
  %.b48.i = load i1, ptr @mlx5_esw_bridge_flush.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.mlx5_esw_bridge_flush.exit_crit_edge, label %if.then.i, !prof !298

land.rhs.i.mlx5_esw_bridge_flush.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx5_esw_bridge_flush.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx5_esw_bridge_flush.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1570, i32 noundef 9, ptr noundef nonnull @.str.97) #12
  br label %mlx5_esw_bridge_flush.exit

mlx5_esw_bridge_flush.exit:                       ; preds = %if.then.i, %land.rhs.i.mlx5_esw_bridge_flush.exit_crit_edge, %for.end.i.mlx5_esw_bridge_flush.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #12
  %xa_head.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %1, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %mlx5_esw_bridge_flush.exit.if.end66_crit_edge, label %do.end60, !prof !298

mlx5_esw_bridge_flush.exit.if.end66_crit_edge:    ; preds = %mlx5_esw_bridge_flush.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

do.end60:                                         ; preds = %mlx5_esw_bridge_flush.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1601, i32 noundef 9, ptr noundef null) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %mlx5_esw_bridge_flush.exit.if.end66_crit_edge
  %7 = ptrtoint ptr %br_offloads1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %br_offloads1, align 4
  call void @kvfree(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end30.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_bridge_fdb_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev_name = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %1, i32 0, i32 1
  %addr = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %1, i32 0, i32 2
  %vid = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 2
  %conv = zext i16 %3 to i32
  %flags2 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags2, align 4
  %conv3 = zext i16 %5 to i32
  %used = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_fdb_template, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  %div = udiv i32 %7, 1000
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, ptr noundef %dev_name, ptr noundef %addr, i32 noundef %conv, i32 noundef %conv3, i32 noundef %div) #12
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_bridge_vlan_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vid = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_vlan_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid, align 4
  %conv = zext i16 %3 to i32
  %flags1 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_vlan_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags1, align 2
  %conv2 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv2) #12
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_bridge_port_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %vport_num = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vport_num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vport_num, align 4
  %conv = zext i16 %3 to i32
  %esw_owner_vhca_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %esw_owner_vhca_id, align 2
  %conv1 = zext i16 %5 to i32
  %flags2 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_bridge_port_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags2, align 4
  %conv3 = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv3) #12
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_bridge_put(ptr noundef %br_offloads, ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end:                                           ; preds = %entry
  tail call fastcc void @mlx5_esw_bridge_egress_table_cleanup(ptr noundef %bridge)
  %list = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %fdb_ht = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5
  tail call void @rhashtable_destroy(ptr noundef %fdb_ht) #12
  tail call void @kvfree(ptr noundef %bridge) #12
  %bridges = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 1
  %10 = ptrtoint ptr %bridges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %bridges, align 4
  %cmp.i.not = icmp eq ptr %11, %bridges
  br i1 %cmp.i.not, label %if.then2, label %list_del.exit.if.end3_crit_edge

list_del.exit.if.end3_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ingress_mac_fg.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 11
  %12 = ptrtoint ptr %ingress_mac_fg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ingress_mac_fg.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %13) #12
  %14 = ptrtoint ptr %ingress_mac_fg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ingress_mac_fg.i, align 4
  %ingress_filter_fg.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 10
  %15 = ptrtoint ptr %ingress_filter_fg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ingress_filter_fg.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %16) #12
  %17 = ptrtoint ptr %ingress_filter_fg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ingress_filter_fg.i, align 4
  %ingress_vlan_fg.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 9
  %18 = ptrtoint ptr %ingress_vlan_fg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ingress_vlan_fg.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %19) #12
  %20 = ptrtoint ptr %ingress_vlan_fg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ingress_vlan_fg.i, align 4
  %skip_ft.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 12
  %21 = ptrtoint ptr %skip_ft.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skip_ft.i, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %22) #12
  %23 = ptrtoint ptr %skip_ft.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %skip_ft.i, align 4
  %ingress_ft.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %br_offloads, i32 0, i32 8
  %24 = ptrtoint ptr %ingress_ft.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ingress_ft.i, align 4
  %call5.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %25) #12
  %26 = ptrtoint ptr %ingress_ft.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ingress_ft.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %list_del.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_bridge_egress_table_cleanup(ptr nocapture noundef readonly %bridge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_miss_handle = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 11
  %0 = ptrtoint ptr %egress_miss_handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %egress_miss_handle, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %egress_miss_pkt_reformat = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 10
  %2 = ptrtoint ptr %egress_miss_pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %egress_miss_pkt_reformat, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %br_offloads = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 3
  %4 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %br_offloads, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void @mlx5_packet_reformat_dealloc(ptr noundef %9, ptr noundef nonnull %3) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %egress_miss_fg = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 9
  %10 = ptrtoint ptr %egress_miss_fg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %egress_miss_fg, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %11) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %egress_mac_fg = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 8
  %12 = ptrtoint ptr %egress_mac_fg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %egress_mac_fg, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %13) #12
  %egress_vlan_fg = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 7
  %14 = ptrtoint ptr %egress_vlan_fg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %egress_vlan_fg, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %15) #12
  %egress_ft = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 6
  %16 = ptrtoint ptr %egress_ft to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %egress_ft, align 4
  %call = tail call i32 @mlx5_destroy_flow_table(ptr noundef %17) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_packet_reformat_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_packet_reformat_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_vport_init(ptr noundef %port) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_init, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_vport_init, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !307
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_init, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %port) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !308
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !308
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_init, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_vport_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_vport_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 106, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %entry1, ptr noundef %bridge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %entry1)
  %fdb_ht = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5
  %ht_node = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 1
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !302
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 696, ptr noundef nonnull @.str.60) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %fdb_ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %fdb_ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 1076, ptr noundef nonnull @.str.55) #12
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 3, i32 3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %5, %do.end10.i.i ], [ %40, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %7 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ht_node, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %9, -559038729
  %arrayidx32.i.i.i.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx32.i.i.i.i.i.i.i, align 4
  %add33.i.i.i.i.i.i.i = add i32 %11, %add1.i.i.i.i.i.i.i
  %12 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %13, %add1.i.i.i.i.i.i.i
  %xor37.i.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i.i, i32 14) #12
  %sub39.i.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i.i, %add36.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #12
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add33.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #12
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #12
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #12
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #12
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #12
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %14 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %15, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i3.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !298

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  %call.i8.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 377, ptr noundef nonnull @.str.61) #12
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %18 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cond.i6.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %and.i.i.i.i.i = and i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %21 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %21, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %22 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i20.i.i = icmp eq ptr %ht_node, %22
  br i1 %cmp.not.i20.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %27, %ht_node
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i21.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.63, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.63, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 1032, ptr noundef nonnull @.str.61) #12
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %23 = ptrtoint ptr %ht_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ht_node, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !311
  %25 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %pprev.023.i.lcssa.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %24) #12
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i21.i.i = phi ptr [ %27, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %22, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.65, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.65, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 1004, ptr noundef nonnull @.str.61) #12
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %26 = ptrtoint ptr %he.022.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %he.022.i21.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #12
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %nelems.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i, ptr %nelems.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i) #12, !srcloc !312
  %automatic_shrinking.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 3, i32 6
  %30 = ptrtoint ptr %automatic_shrinking.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %automatic_shrinking.i.i.i, align 2, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool161.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i, i32 noundef 4) #12
  %32 = ptrtoint ptr %nelems.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %nelems.i.i.i, align 4
  %34 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %35, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %33, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %min_size.i.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 3, i32 5
  %36 = ptrtoint ptr %min_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %min_size.i.i.i.i, align 4
  %conv.i11.i.i.i = zext i16 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %35, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !299

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i.i = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 5, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %run_work.i.i.i) #12
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %fdb_ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.58, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.58, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.57, i32 noundef 1085, ptr noundef nonnull @.str.55) #12
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %40, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 724, ptr noundef nonnull @.str.66) #12
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !305
  %41 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i.i11.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %egress_handle = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 11
  %45 = ptrtoint ptr %egress_handle to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %egress_handle, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %46) #12
  %filter_handle = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 12
  %47 = ptrtoint ptr %filter_handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %filter_handle, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %rhashtable_remove_fast.exit.if.end_crit_edge, label %if.then

rhashtable_remove_fast.exit.if.end_crit_edge:     ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %48) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %rhashtable_remove_fast.exit.if.end_crit_edge
  %ingress_handle = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 8
  %49 = ptrtoint ptr %ingress_handle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ingress_handle, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %50) #12
  %br_offloads = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 3
  %51 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %br_offloads, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %ingress_counter = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 9
  %57 = ptrtoint ptr %ingress_counter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ingress_counter, align 4
  tail call void @mlx5_fc_destroy(ptr noundef %56, ptr noundef %58) #12
  %vlan_list = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 4
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan_list) #12
  br i1 %call.i.i19, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %vlan_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vlan_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %65 = ptrtoint ptr %vlan_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %vlan_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 4, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 3
  %call.i.i20 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i20, label %if.end.i.i23, label %list_del.exit.list_del.exit25_crit_edge

list_del.exit.list_del.exit25_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit25

if.end.i.i23:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i21 = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i21, align 4
  %69 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %list, align 4
  %prev1.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i22, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit25

list_del.exit25:                                  ; preds = %if.end.i.i23, %list_del.exit.list_del.exit25_crit_edge
  %73 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i24 = getelementptr inbounds %struct.mlx5_esw_bridge_fdb_entry, ptr %entry1, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i24, align 4
  tail call void @kvfree(ptr noundef %entry1) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_vport_cleanup(ptr noundef %port) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_vport_cleanup, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !314
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %port) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !315
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !315
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_vport_cleanup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_vport_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 111, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_fdb_entry_cleanup(ptr noundef %fdb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_fdb_entry_cleanup, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !316
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %fdb) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !317
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_fdb_entry_cleanup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_fdb_entry_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 54, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !318
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !319

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !320
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !321
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !298

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !322
  %7 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !323
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !324
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !325
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !299

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !326
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !327
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !328
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !329
  %3 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !330
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !331
  %2 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_vlan_cleanup(ptr noundef %vlan) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_vlan_cleanup, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !332
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %vlan) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !333
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_vlan_cleanup.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_vlan_cleanup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 81, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_vlan_create(ptr noundef %vlan) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_create, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_vlan_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !334
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_create, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %vlan) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !335
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !335
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_vlan_create, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_vlan_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_vlan_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 76, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fc_create(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_fdb_entry_init(ptr noundef %fdb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_fdb_entry_init, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !336
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %fdb) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !337
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !337
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_fdb_entry_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_fdb_entry_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 44, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_devcom_get_peer_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_esw_bridge_ingress_flow_with_esw_create(i16 noundef zeroext %vport_num, ptr nocapture noundef readonly %addr, ptr noundef readonly %vlan, i32 noundef %counter_id, ptr nocapture noundef readonly %bridge, ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  %dests = alloca [2 x %struct.mlx5_flow_destination], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %br_offloads1 = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 3
  %0 = ptrtoint ptr %br_offloads1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br_offloads1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #12
  %2 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %flow_act, align 4
  %5 = getelementptr inbounds { i32, ptr, ptr, %union.anon.215, i32, [2 x { i16, i16, i8, [1 x i8] }], ptr }, ptr %flow_act, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dests) #12
  %7 = getelementptr inbounds i8, ptr %dests, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 24)
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %call.i.i, align 4
  %match_value = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %12 = ptrtoint ptr %match_value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %match_value, align 4
  %add.ptr.i = getelementptr i8, ptr %addr, i32 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 2
  %match_criteria = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1
  %16 = call ptr @memset(ptr %match_criteria, i32 255, i32 6)
  %add.ptr9 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 59
  %17 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -65536, ptr %add.ptr9, align 4
  %call18 = tail call i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef %esw, i16 noundef zeroext %vport_num) #12
  %add.ptr24 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 59
  %18 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call18, ptr %add.ptr24, align 4
  %tobool34.not = icmp eq ptr %vlan, null
  br i1 %tobool34.not, label %if.end.if.end101_crit_edge, label %land.lhs.true

if.end.if.end101_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

land.lhs.true:                                    ; preds = %if.end
  %pkt_reformat_push = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 3
  %19 = ptrtoint ptr %pkt_reformat_push to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pkt_reformat_push, align 4
  %tobool35.not = icmp eq ptr %20, null
  br i1 %tobool35.not, label %do.end44.critedge, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flow_act, align 4
  %or37 = or i32 %22, 80
  store i32 %or37, ptr %flow_act, align 4
  %pkt_reformat = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 2
  %23 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %pkt_reformat, align 4
  %pkt_mod_hdr_push_mark = getelementptr inbounds %struct.mlx5_esw_bridge_vlan, ptr %vlan, i32 0, i32 5
  %24 = ptrtoint ptr %pkt_mod_hdr_push_mark to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pkt_mod_hdr_push_mark, align 4
  %modify_hdr = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 1
  %26 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %modify_hdr, align 4
  br label %if.end101

do.end44.critedge:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr47 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr47, align 4
  %or49 = or i32 %28, 32768
  store i32 %or49, ptr %add.ptr47, align 4
  %add.ptr61 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr61, align 4
  %or63 = or i32 %30, 32768
  store i32 %or63, ptr %add.ptr61, align 4
  %add.ptr75 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr75, align 4
  %or77 = or i32 %32, 4095
  store i32 %or77, ptr %add.ptr75, align 4
  %33 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan, align 4
  %add.ptr90 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %add.ptr90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr90, align 4
  %and91 = and i32 %36, -4096
  %37 = and i16 %34, 4095
  %and92 = zext i16 %37 to i32
  %or94 = or i32 %and91, %and92
  store i32 %or94, ptr %add.ptr90, align 4
  br label %if.end101

if.end101:                                        ; preds = %do.end44.critedge, %if.then36, %if.end.if.end101_crit_edge
  %38 = ptrtoint ptr %dests to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %dests, align 4
  %egress_ft = getelementptr inbounds %struct.mlx5_esw_bridge, ptr %bridge, i32 0, i32 6
  %39 = ptrtoint ptr %egress_ft to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %egress_ft, align 4
  %41 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dests, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %41, align 4
  %arrayidx103 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], ptr %dests, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 256, ptr %arrayidx103, align 4
  %44 = getelementptr inbounds [2 x %struct.mlx5_flow_destination], ptr %dests, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %counter_id, ptr %44, align 4
  %ingress_ft = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %ingress_ft to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ingress_ft, align 4
  %call107 = call ptr @mlx5_add_flow_rules(ptr noundef %47, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dests, i32 noundef 2) #12
  call void @kvfree(ptr noundef nonnull %call.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call107, %if.end101 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dests) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_devcom_release_peer_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_bridge_fdb_entry_refresh(ptr noundef %fdb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_bridge_fdb_entry_refresh, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !301

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !288) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !298

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !338
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %fdb) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !339
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !298

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_bridge_fdb_entry_refresh.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_bridge_fdb_entry_refresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.54, i32 noundef 49, ptr noundef nonnull @.str.55) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !288) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !178, !179, !180, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !194, !196, !197, !198, !200, !201, !203, !205, !207, !209, !211, !213, !214, !215, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !241, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !265, !266, !268, !269, !270, !272, !274, !276, !278, !279, !280, !281, !282, !284, !285, !287}
!llvm.named.register.sp = !{!288}
!llvm.module.flags = !{!289, !290, !291, !292, !293, !294, !295, !296}
!llvm.ident = !{!297}

!0 = !{ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_init, !1, !"__tracepoint_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 40, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_init, !1, !"__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_fdb_entry_init, !1, !"__SCK__tp_func_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_refresh, !5, !"__tracepoint_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 45, i32 1}
!6 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_refresh, !5, !"__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_fdb_entry_refresh, !5, !"__SCK__tp_func_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"__tracepoint_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 50, i32 1}
!10 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"__tracepoint_ptr_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"__SCK__tp_func_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mlx5_esw_bridge_vlan_create, !13, !"__tracepoint_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 72, i32 1}
!14 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_vlan_create, !13, !"__tracepoint_ptr_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_vlan_create, !13, !"__SCK__tp_func_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!16 = !{ptr @__tracepoint_mlx5_esw_bridge_vlan_cleanup, !17, !"__tracepoint_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 77, i32 1}
!18 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_vlan_cleanup, !17, !"__tracepoint_ptr_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_vlan_cleanup, !17, !"__SCK__tp_func_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!20 = !{ptr @__tracepoint_mlx5_esw_bridge_vport_init, !21, !"__tracepoint_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 102, i32 1}
!22 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_vport_init, !21, !"__tracepoint_ptr_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_vport_init, !21, !"__SCK__tp_func_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!24 = !{ptr @__tracepoint_mlx5_esw_bridge_vport_cleanup, !25, !"__tracepoint_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 107, i32 1}
!26 = !{ptr @__tracepoint_ptr_mlx5_esw_bridge_vport_cleanup, !25, !"__tracepoint_ptr_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_mlx5_esw_bridge_vport_cleanup, !25, !"__SCK__tp_func_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!28 = !{ptr @event_class_mlx5_esw_bridge_fdb_template, !29, !"event_class_mlx5_esw_bridge_fdb_template", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 13, i32 1}
!30 = !{ptr @event_mlx5_esw_bridge_fdb_entry_init, !1, !"event_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!31 = !{ptr @__event_mlx5_esw_bridge_fdb_entry_init, !1, !"__event_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!32 = !{ptr @event_mlx5_esw_bridge_fdb_entry_refresh, !5, !"event_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!33 = !{ptr @__event_mlx5_esw_bridge_fdb_entry_refresh, !5, !"__event_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!34 = !{ptr @event_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"event_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!35 = !{ptr @__event_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"__event_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!36 = !{ptr @event_class_mlx5_esw_bridge_vlan_template, !37, !"event_class_mlx5_esw_bridge_vlan_template", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 56, i32 1}
!38 = !{ptr @event_mlx5_esw_bridge_vlan_create, !13, !"event_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!39 = !{ptr @__event_mlx5_esw_bridge_vlan_create, !13, !"__event_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!40 = !{ptr @event_mlx5_esw_bridge_vlan_cleanup, !17, !"event_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!41 = !{ptr @__event_mlx5_esw_bridge_vlan_cleanup, !17, !"__event_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!42 = !{ptr @event_class_mlx5_esw_bridge_port_template, !43, !"event_class_mlx5_esw_bridge_port_template", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/bridge_tracepoint.h", i32 83, i32 1}
!44 = !{ptr @event_mlx5_esw_bridge_vport_init, !21, !"event_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!45 = !{ptr @__event_mlx5_esw_bridge_vport_init, !21, !"__event_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!46 = !{ptr @event_mlx5_esw_bridge_vport_cleanup, !25, !"event_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!47 = !{ptr @__event_mlx5_esw_bridge_vport_cleanup, !25, !"__event_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!48 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_init, !1, !"__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!49 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_refresh, !5, !"__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!50 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"__bpf_trace_tp_map_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!51 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vlan_create, !13, !"__bpf_trace_tp_map_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!52 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vlan_cleanup, !17, !"__bpf_trace_tp_map_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!53 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vport_init, !21, !"__bpf_trace_tp_map_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!54 = !{ptr @__bpf_trace_tp_map_mlx5_esw_bridge_vport_cleanup, !25, !"__bpf_trace_tp_map_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!55 = !{ptr @mlx5_esw_bridge_vport_unlink.__msg, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1385, i32 3}
!57 = !{ptr @mlx5_esw_bridge_vport_unlink.__msg.1, !58, !"__msg", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1389, i32 3}
!59 = distinct !{null, !60, !"__msg", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1395, i32 3}
!61 = !{ptr @mlx5_esw_bridge_port_vlan_add.__msg, !62, !"__msg", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1439, i32 3}
!63 = !{ptr @.str, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1476, i32 3}
!65 = !{ptr @.str.3, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.4, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.5, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mlx5_esw_bridge_fdb_update_used.__UNIQUE_ID_ddebug777, !64, !"__UNIQUE_ID_ddebug777", i1 false, i1 false}
!69 = !{ptr @.str.6, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1530, i32 3}
!71 = !{ptr @.str.7, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mlx5_esw_bridge_fdb_remove._entry, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @mlx5_esw_bridge_fdb_remove._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1577, i32 2}
!78 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1595, i32 2}
!81 = !{ptr @__tpstrtab_mlx5_esw_bridge_fdb_entry_init, !1, !"__tpstrtab_mlx5_esw_bridge_fdb_entry_init", i1 false, i1 false}
!82 = !{ptr @__tpstrtab_mlx5_esw_bridge_fdb_entry_refresh, !5, !"__tpstrtab_mlx5_esw_bridge_fdb_entry_refresh", i1 false, i1 false}
!83 = !{ptr @__tpstrtab_mlx5_esw_bridge_fdb_entry_cleanup, !9, !"__tpstrtab_mlx5_esw_bridge_fdb_entry_cleanup", i1 false, i1 false}
!84 = !{ptr @__tpstrtab_mlx5_esw_bridge_vlan_create, !13, !"__tpstrtab_mlx5_esw_bridge_vlan_create", i1 false, i1 false}
!85 = !{ptr @__tpstrtab_mlx5_esw_bridge_vlan_cleanup, !17, !"__tpstrtab_mlx5_esw_bridge_vlan_cleanup", i1 false, i1 false}
!86 = !{ptr @__tpstrtab_mlx5_esw_bridge_vport_init, !21, !"__tpstrtab_mlx5_esw_bridge_vport_init", i1 false, i1 false}
!87 = !{ptr @__tpstrtab_mlx5_esw_bridge_vport_cleanup, !25, !"__tpstrtab_mlx5_esw_bridge_vport_cleanup", i1 false, i1 false}
!88 = !{ptr @str__mlx5__trace_system_name, !89, !"str__mlx5__trace_system_name", i1 false, i1 false}
!89 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!90 = !{ptr @.str.11, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!92 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @trace_event_fields_mlx5_esw_bridge_fdb_template, !29, !"trace_event_fields_mlx5_esw_bridge_fdb_template", i1 false, i1 false}
!102 = !{ptr @trace_event_type_funcs_mlx5_esw_bridge_fdb_template, !29, !"trace_event_type_funcs_mlx5_esw_bridge_fdb_template", i1 false, i1 false}
!103 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @print_fmt_mlx5_esw_bridge_fdb_template, !29, !"print_fmt_mlx5_esw_bridge_fdb_template", i1 false, i1 false}
!105 = !{ptr @trace_event_fields_mlx5_esw_bridge_vlan_template, !37, !"trace_event_fields_mlx5_esw_bridge_vlan_template", i1 false, i1 false}
!106 = !{ptr @trace_event_type_funcs_mlx5_esw_bridge_vlan_template, !37, !"trace_event_type_funcs_mlx5_esw_bridge_vlan_template", i1 false, i1 false}
!107 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @print_fmt_mlx5_esw_bridge_vlan_template, !37, !"print_fmt_mlx5_esw_bridge_vlan_template", i1 false, i1 false}
!109 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @trace_event_fields_mlx5_esw_bridge_port_template, !43, !"trace_event_fields_mlx5_esw_bridge_port_template", i1 false, i1 false}
!112 = !{ptr @trace_event_type_funcs_mlx5_esw_bridge_port_template, !43, !"trace_event_type_funcs_mlx5_esw_bridge_port_template", i1 false, i1 false}
!113 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @print_fmt_mlx5_esw_bridge_port_template, !43, !"print_fmt_mlx5_esw_bridge_port_template", i1 false, i1 false}
!115 = !{ptr @mlx5_esw_bridge_vport_link_with_flags.__msg, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1352, i32 3}
!117 = !{ptr @mlx5_esw_bridge_vport_link_with_flags.__msg.26, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1358, i32 3}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 813, i32 2}
!121 = !{ptr @.str.27, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 125, i32 3}
!123 = !{ptr @.str.28, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mlx5_esw_bridge_table_create._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @mlx5_esw_bridge_table_create._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 135, i32 3}
!128 = !{ptr @mlx5_esw_bridge_table_create._entry.29, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mlx5_esw_bridge_table_create._entry_ptr.31, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 171, i32 3}
!132 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @mlx5_esw_bridge_ingress_vlan_fg_create._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @mlx5_esw_bridge_ingress_vlan_fg_create._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.34, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 208, i32 3}
!137 = !{ptr @.str.35, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mlx5_esw_bridge_ingress_filter_fg_create._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @mlx5_esw_bridge_ingress_filter_fg_create._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 244, i32 3}
!142 = !{ptr @.str.37, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @mlx5_esw_bridge_ingress_mac_fg_create._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @mlx5_esw_bridge_ingress_mac_fg_create._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.38, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 459, i32 4}
!147 = !{ptr @.str.39, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @mlx5_esw_bridge_egress_table_init._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @mlx5_esw_bridge_egress_table_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.41, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 467, i32 4}
!152 = !{ptr @mlx5_esw_bridge_egress_table_init._entry.40, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @mlx5_esw_bridge_egress_table_init._entry_ptr.42, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.44, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 480, i32 4}
!156 = !{ptr @mlx5_esw_bridge_egress_table_init._entry.43, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @mlx5_esw_bridge_egress_table_init._entry_ptr.45, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.46, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 278, i32 3}
!160 = !{ptr @.str.47, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mlx5_esw_bridge_egress_vlan_fg_create._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mlx5_esw_bridge_egress_vlan_fg_create._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.48, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 309, i32 3}
!165 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @mlx5_esw_bridge_egress_mac_fg_create._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @mlx5_esw_bridge_egress_mac_fg_create._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.50, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 339, i32 3}
!170 = !{ptr @.str.51, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @mlx5_esw_bridge_egress_miss_fg_create._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @mlx5_esw_bridge_egress_miss_fg_create._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @fdb_ht_params, !174, !"fdb_ht_params", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 44, i32 39}
!175 = !{ptr @.str.52, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1309, i32 3}
!177 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mlx5_esw_bridge_vport_init._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @mlx5_esw_bridge_vport_init._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!181 = !{ptr @.str.54, !21, !"<string literal>", i1 false, i1 false}
!182 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!183 = !{ptr @.str.55, !21, !"<string literal>", i1 false, i1 false}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!186 = !{ptr @.str.56, !185, !"<string literal>", i1 false, i1 false}
!187 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!188 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!191 = !{ptr @.str.57, !190, !"<string literal>", i1 false, i1 false}
!192 = distinct !{null, !193, !"__warned", i1 false, i1 false}
!193 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!194 = distinct !{null, !195, !"__warned", i1 false, i1 false}
!195 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!196 = !{ptr @.str.59, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.60, !195, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !199, !"__warned", i1 false, i1 false}
!199 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!200 = !{ptr @.str.61, !199, !"<string literal>", i1 false, i1 false}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!205 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!206 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!207 = distinct !{null, !208, !"__warned", i1 false, i1 false}
!208 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!209 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!210 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!211 = distinct !{null, !212, !"__warned", i1 false, i1 false}
!212 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!213 = !{ptr @.str.66, !212, !"<string literal>", i1 false, i1 false}
!214 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!215 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!216 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!217 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!218 = !{ptr @.str.67, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 927, i32 3}
!220 = !{ptr @.str.68, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @mlx5_esw_bridge_vlan_push_create._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @mlx5_esw_bridge_vlan_push_create._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.70, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 940, i32 3}
!225 = !{ptr @mlx5_esw_bridge_vlan_push_create._entry.69, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @mlx5_esw_bridge_vlan_push_create._entry_ptr.71, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.72, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 962, i32 3}
!229 = !{ptr @.str.73, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @mlx5_esw_bridge_vlan_pop_create._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @mlx5_esw_bridge_vlan_pop_create._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @mlx5_esw_bridge_vlan_pop_create._entry.74, !233, !"_entry", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 968, i32 3}
!234 = !{ptr @mlx5_esw_bridge_vlan_pop_create._entry_ptr.75, !233, !"_entry_ptr", i1 false, i1 false}
!235 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!236 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!237 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!238 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!239 = distinct !{null, !240, !"__warned", i1 false, i1 false}
!240 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!241 = distinct !{null, !242, !"__warned", i1 false, i1 false}
!242 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!243 = !{ptr @.str.77, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1196, i32 3}
!245 = !{ptr @.str.78, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.80, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1206, i32 4}
!250 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry.79, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr.81, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.83, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1217, i32 3}
!254 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry.82, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr.84, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.86, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1225, i32 3}
!258 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry.85, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @mlx5_esw_bridge_fdb_entry_init._entry_ptr.87, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.88, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1117, i32 3}
!262 = !{ptr @.str.89, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.90, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @mlx5_esw_bridge_port_vlan_lookup._entry, !261, !"_entry", i1 false, i1 false}
!265 = !{ptr @mlx5_esw_bridge_port_vlan_lookup._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.92, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1126, i32 3}
!268 = !{ptr @mlx5_esw_bridge_port_vlan_lookup._entry.91, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @mlx5_esw_bridge_port_vlan_lookup._entry_ptr.93, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @mlx5_esw_bridge_ingress_flow_peer_create.handle, !271, !"handle", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 599, i32 34}
!272 = distinct !{null, !273, !"__warned", i1 false, i1 false}
!273 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!274 = distinct !{null, !275, !"__warned", i1 false, i1 false}
!275 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!276 = distinct !{null, !277, !"__warned", i1 false, i1 false}
!277 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!278 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!279 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!280 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!281 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!282 = !{ptr @xa_init_flags.__key, !283, !"__key", i1 false, i1 false}
!283 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!284 = !{ptr @.str.96, !283, !"<string literal>", i1 false, i1 false}
!285 = distinct !{null, !286, !"__already_done", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/bridge.c", i32 1569, i32 2}
!287 = !{ptr @.str.97, !286, !"<string literal>", i1 false, i1 false}
!288 = !{!"sp"}
!289 = !{i32 1, !"wchar_size", i32 2}
!290 = !{i32 1, !"min_enum_size", i32 4}
!291 = !{i32 8, !"branch-target-enforcement", i32 0}
!292 = !{i32 8, !"sign-return-address", i32 0}
!293 = !{i32 8, !"sign-return-address-all", i32 0}
!294 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!295 = !{i32 7, !"uwtable", i32 1}
!296 = !{i32 7, !"frame-pointer", i32 2}
!297 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!298 = !{!"branch_weights", i32 2000, i32 1}
!299 = !{!"branch_weights", i32 1, i32 2000}
!300 = !{!"auto-init"}
!301 = !{i64 2148340010, i64 2148340015, i64 2148340028, i64 2148340072, i64 2148340106, i64 2148340127}
!302 = !{i64 2149307551}
!303 = !{i64 2160065312}
!304 = !{i64 2160068746}
!305 = !{i64 2149307817}
!306 = !{i64 2148516195, i64 2148516221, i64 2148516250, i64 2148516284, i64 2148516315, i64 2148516338}
!307 = !{i64 2160740138}
!308 = !{i64 2160740361}
!309 = !{i64 2149316110}
!310 = !{i64 2149317146}
!311 = !{i64 2160128627}
!312 = !{i64 2148518660, i64 2148518686, i64 2148518715, i64 2148518749, i64 2148518780, i64 2148518803}
!313 = !{i8 0, i8 2}
!314 = !{i64 2160761769}
!315 = !{i64 2160761998}
!316 = !{i64 2160683063}
!317 = !{i64 2160683298}
!318 = !{i64 2152692519}
!319 = !{!"branch_weights", i32 2146410443, i32 1073205}
!320 = !{i64 2148525053, i64 2148525085, i64 2148525114, i64 2148525148, i64 2148525179, i64 2148525202}
!321 = !{i64 2148614158}
!322 = !{i64 2152692679}
!323 = !{i64 2152692956}
!324 = !{i64 2152692798}
!325 = !{i64 2152693161}
!326 = !{i64 2152694224, i64 2152694716, i64 2152694261, i64 2152694317, i64 2152694351, i64 2152694375, i64 2152694416, i64 2152694437, i64 2152694465, i64 2152694499}
!327 = !{i64 2148613045}
!328 = !{i64 2148523440, i64 2148523472, i64 2148523501, i64 2148523535, i64 2148523566, i64 2148523589}
!329 = !{i64 2152695619}
!330 = !{i64 2160058385}
!331 = !{i64 2160060684}
!332 = !{i64 2160722576}
!333 = !{i64 2160722803}
!334 = !{i64 2160704993}
!335 = !{i64 2160705218}
!336 = !{i64 2160642876}
!337 = !{i64 2160643105}
!338 = !{i64 2160664919}
!339 = !{i64 2160665154}
