; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.203 }
%union.anon.203 = type { %struct.anon.204 }
%struct.anon.204 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.205, %struct.trace_event, ptr, ptr, %union.anon.206, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.205 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.206 = type { ptr }
%union.anon.207 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.208 = type { %struct.bpf_raw_event_map }
%union.anon.209 = type { %struct.bpf_raw_event_map }
%union.anon.210 = type { %struct.bpf_raw_event_map }
%union.anon.211 = type { %struct.bpf_raw_event_map }
%union.anon.212 = type { %struct.bpf_raw_event_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.trace_event_raw_mlx5_esw_vport_qos_destroy = type { %struct.trace_entry, i32, i16, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.mlx5_vport = type { ptr, [256 x %struct.hlist_head], [256 x %struct.hlist_head], ptr, ptr, %struct.work_struct, %struct.vport_ingress, %struct.vport_egress, i32, i32, %struct.mlx5_vport_info, %struct.anon.178, i16, i8, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.vport_ingress = type { ptr, ptr, %struct.anon.173, %struct.anon.174 }
%struct.anon.173 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.174 = type { ptr, ptr, ptr, ptr }
%struct.vport_egress = type { ptr, ptr, ptr, %union.anon.175 }
%union.anon.175 = type { %struct.anon.177 }
%struct.anon.177 = type { ptr, ptr, ptr, ptr }
%struct.mlx5_vport_info = type { [6 x i8], i16, i64, i32, i8, i8 }
%struct.anon.178 = type { i8, i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mlx5_esw_vport_qos_template = type { %struct.trace_entry, i32, i16, i32, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_mlx5_esw_group_qos_template = type { %struct.trace_entry, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_mlx5_esw_group_qos_config = type { %struct.trace_entry, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.141, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.142, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx5_eswitch_fdb = type { %union.anon.139, i32 }
%union.anon.139 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.140, ptr }
%struct.anon.140 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.141 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.ida = type { %struct.xarray }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.142 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_esw_rate_group = type { i32, i32, i32, i32, %struct.list_head }
%struct.devlink_rate = type { %struct.list_head, i32, ptr, ptr, i64, i64, ptr, %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { ptr, %struct.refcount_struct }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mlx5_esw_vport_qos_destroy = internal constant [27 x i8] c"mlx5_esw_vport_qos_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_vport_qos_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_vport_qos_destroy }, align 4
@__tracepoint_mlx5_esw_vport_qos_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_vport_qos_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_vport_qos_destroy, ptr null, ptr @__traceiter_mlx5_esw_vport_qos_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_vport_qos_destroy = internal constant ptr @__tracepoint_mlx5_esw_vport_qos_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_vport_qos_create = internal constant [26 x i8] c"mlx5_esw_vport_qos_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_vport_qos_create = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_vport_qos_create }, align 4
@__tracepoint_mlx5_esw_vport_qos_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_vport_qos_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_vport_qos_create, ptr null, ptr @__traceiter_mlx5_esw_vport_qos_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_vport_qos_create = internal constant ptr @__tracepoint_mlx5_esw_vport_qos_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_vport_qos_config = internal constant [26 x i8] c"mlx5_esw_vport_qos_config\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_vport_qos_config = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_vport_qos_config }, align 4
@__tracepoint_mlx5_esw_vport_qos_config = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_vport_qos_config, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_vport_qos_config, ptr null, ptr @__traceiter_mlx5_esw_vport_qos_config, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_vport_qos_config = internal constant ptr @__tracepoint_mlx5_esw_vport_qos_config, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_group_qos_create = internal constant [26 x i8] c"mlx5_esw_group_qos_create\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_group_qos_create = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_group_qos_create }, align 4
@__tracepoint_mlx5_esw_group_qos_create = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_group_qos_create, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_group_qos_create, ptr null, ptr @__traceiter_mlx5_esw_group_qos_create, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_group_qos_create = internal constant ptr @__tracepoint_mlx5_esw_group_qos_create, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_group_qos_destroy = internal constant [27 x i8] c"mlx5_esw_group_qos_destroy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_group_qos_destroy = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_group_qos_destroy }, align 4
@__tracepoint_mlx5_esw_group_qos_destroy = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_group_qos_destroy, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_group_qos_destroy, ptr null, ptr @__traceiter_mlx5_esw_group_qos_destroy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_group_qos_destroy = internal constant ptr @__tracepoint_mlx5_esw_group_qos_destroy, section "__tracepoints_ptrs", align 4
@__tpstrtab_mlx5_esw_group_qos_config = internal constant [26 x i8] c"mlx5_esw_group_qos_config\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mlx5_esw_group_qos_config = dso_local global %struct.static_call_key { ptr @__traceiter_mlx5_esw_group_qos_config }, align 4
@__tracepoint_mlx5_esw_group_qos_config = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mlx5_esw_group_qos_config, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mlx5_esw_group_qos_config, ptr null, ptr @__traceiter_mlx5_esw_group_qos_config, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mlx5_esw_group_qos_config = internal constant ptr @__tracepoint_mlx5_esw_group_qos_config, section "__tracepoints_ptrs", align 4
@str__mlx5__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mlx5\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_mlx5_esw_vport_qos_destroy = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.203 { %struct.anon.204 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.203 { %struct.anon.204 { ptr @.str.12, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_vport_qos_destroy = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_vport_qos_destroy, ptr @perf_trace_mlx5_esw_vport_qos_destroy, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_vport_qos_destroy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_vport_qos_destroy, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_vport_qos_destroy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_vport_qos_destroy = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_vport_qos_destroy, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_vport_qos_destroy = internal global { [78 x i8], [50 x i8] } { [78 x i8] c"\22(%s) vport=%hu tsar_ix=%u\0A\22, __get_str(devname), REC->vport_id, REC->tsar_ix\00", [50 x i8] zeroinitializer }, align 32
@event_mlx5_esw_vport_qos_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_vport_qos_destroy, %union.anon.205 { ptr @__tracepoint_mlx5_esw_vport_qos_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_vport_qos_destroy }, ptr @print_fmt_mlx5_esw_vport_qos_destroy, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_vport_qos_destroy = internal global ptr @event_mlx5_esw_vport_qos_destroy, section "_ftrace_events", align 4
@trace_event_fields_mlx5_esw_vport_qos_template = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.203 { %struct.anon.204 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.203 { %struct.anon.204 { ptr @.str.12, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.203 { %struct.anon.204 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_vport_qos_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_vport_qos_template, ptr @perf_trace_mlx5_esw_vport_qos_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_vport_qos_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_vport_qos_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_vport_qos_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_vport_qos_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_vport_qos_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_vport_qos_template = internal global { [154 x i8], [38 x i8] } { [154 x i8] c"\22(%s) vport=%hu tsar_ix=%u bw_share=%u, max_rate=%u group=%p\0A\22, __get_str(devname), REC->vport_id, REC->tsar_ix, REC->bw_share, REC->max_rate, REC->group\00", [38 x i8] zeroinitializer }, align 32
@event_mlx5_esw_vport_qos_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_vport_qos_template, %union.anon.205 { ptr @__tracepoint_mlx5_esw_vport_qos_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_vport_qos_template }, ptr @print_fmt_mlx5_esw_vport_qos_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_vport_qos_create = internal global ptr @event_mlx5_esw_vport_qos_create, section "_ftrace_events", align 4
@event_mlx5_esw_vport_qos_config = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_vport_qos_template, %union.anon.205 { ptr @__tracepoint_mlx5_esw_vport_qos_config }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_vport_qos_template }, ptr @print_fmt_mlx5_esw_vport_qos_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_vport_qos_config = internal global ptr @event_mlx5_esw_vport_qos_config, section "_ftrace_events", align 4
@trace_event_fields_mlx5_esw_group_qos_template = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.203 { %struct.anon.204 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.203 { %struct.anon.204 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_group_qos_template = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_group_qos_template, ptr @perf_trace_mlx5_esw_group_qos_template, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_group_qos_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_group_qos_template, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_group_qos_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_group_qos_template = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_group_qos_template, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_group_qos_template = internal global { [74 x i8], [54 x i8] } { [74 x i8] c"\22(%s) group=%p tsar_ix=%u\0A\22, __get_str(devname), REC->group, REC->tsar_ix\00", [54 x i8] zeroinitializer }, align 32
@event_mlx5_esw_group_qos_create = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_group_qos_template, %union.anon.205 { ptr @__tracepoint_mlx5_esw_group_qos_create }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_group_qos_template }, ptr @print_fmt_mlx5_esw_group_qos_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_group_qos_create = internal global ptr @event_mlx5_esw_group_qos_create, section "_ftrace_events", align 4
@event_mlx5_esw_group_qos_destroy = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_group_qos_template, %union.anon.205 { ptr @__tracepoint_mlx5_esw_group_qos_destroy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_group_qos_template }, ptr @print_fmt_mlx5_esw_group_qos_template, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_group_qos_destroy = internal global ptr @event_mlx5_esw_group_qos_destroy, section "_ftrace_events", align 4
@trace_event_fields_mlx5_esw_group_qos_config = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.203 { %struct.anon.204 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.203 { %struct.anon.204 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.203 { %struct.anon.204 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_mlx5_esw_group_qos_config = internal global %struct.trace_event_class { ptr @str__mlx5__trace_system_name, ptr @trace_event_raw_event_mlx5_esw_group_qos_config, ptr @perf_trace_mlx5_esw_group_qos_config, ptr @trace_event_reg, ptr @trace_event_fields_mlx5_esw_group_qos_config, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mlx5_esw_group_qos_config, i64 24), ptr getelementptr (i8, ptr @event_class_mlx5_esw_group_qos_config, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mlx5_esw_group_qos_config = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mlx5_esw_group_qos_config, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mlx5_esw_group_qos_config = internal global { [128 x i8], [32 x i8] } { [128 x i8] c"\22(%s) group=%p tsar_ix=%u bw_share=%u max_rate=%u\0A\22, __get_str(devname), REC->group, REC->tsar_ix, REC->bw_share, REC->max_rate\00", [32 x i8] zeroinitializer }, align 32
@event_mlx5_esw_group_qos_config = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mlx5_esw_group_qos_config, %union.anon.205 { ptr @__tracepoint_mlx5_esw_group_qos_config }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mlx5_esw_group_qos_config }, ptr @print_fmt_mlx5_esw_group_qos_config, ptr null, %union.anon.206 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mlx5_esw_group_qos_config = internal global ptr @event_mlx5_esw_group_qos_config, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mlx5_esw_vport_qos_destroy = internal global %union.anon.207 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_vport_qos_destroy, ptr @__bpf_trace_mlx5_esw_vport_qos_destroy, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_vport_qos_create = internal global %union.anon.208 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_vport_qos_create, ptr @__bpf_trace_mlx5_esw_vport_qos_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_vport_qos_config = internal global %union.anon.209 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_vport_qos_config, ptr @__bpf_trace_mlx5_esw_vport_qos_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_group_qos_create = internal global %union.anon.210 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_group_qos_create, ptr @__bpf_trace_mlx5_esw_group_qos_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_group_qos_destroy = internal global %union.anon.211 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_group_qos_destroy, ptr @__bpf_trace_mlx5_esw_group_qos_template, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mlx5_esw_group_qos_config = internal global %union.anon.212 { %struct.bpf_raw_event_map { ptr @__tracepoint_mlx5_esw_group_qos_config, ptr @__bpf_trace_mlx5_esw_group_qos_config, i32 5, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Disabling QoS on port before detaching it from group\00", [43 x i8] zeroinitializer }, align 32
@mlx5_esw_qos_vport_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"E-Switch: E-Switch destroy TSAR vport element failed (vport=%d,err=%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx5_esw_qos_vport_disable\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_esw_qos_vport_disable._entry_ptr = internal global ptr @mlx5_esw_qos_vport_disable._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_share\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tx_max\00", [25 x i8] zeroinitializer }, align 32
@mlx5_esw_devlink_rate_node_new.__msg = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlx5_core: Rate node creation supported only in switchdev mode\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devname\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unsigned short\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vport_id\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tsar_ix\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(%s) vport=%hu tsar_ix=%u\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bw_share\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max_rate\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"group\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(%s) vport=%hu tsar_ix=%u bw_share=%u, max_rate=%u group=%p\0A\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"const void *\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(%s) group=%p tsar_ix=%u\0A\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(%s) group=%p tsar_ix=%u bw_share=%u max_rate=%u\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h\00", [62 x i8] zeroinitializer }, align 32
@trace_mlx5_esw_vport_qos_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@esw_qos_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str, i32 620, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"E-Switch: E-Switch destroy root TSAR failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"esw_qos_destroy\00", [16 x i8] zeroinitializer }, align 32
@esw_qos_destroy._entry_ptr = internal global ptr @esw_qos_destroy._entry, section ".printk_index", align 4
@__esw_qos_destroy_rate_group.__msg = internal constant [49 x i8] c"mlx5_core: E-Switch groups' normalization failed\00", align 1
@__esw_qos_destroy_rate_group.__msg.29 = internal constant [43 x i8] c"mlx5_core: E-Switch destroy TSAR_ID failed\00", align 1
@esw_qos_group_config.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: E-Switch modify group TSAR element failed\00", [43 x i8] zeroinitializer }, align 32
@trace_mlx5_esw_group_qos_config.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@esw_qos_vport_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str, i32 91, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"E-Switch: E-Switch modify TSAR vport element failed (vport=%d,err=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esw_qos_vport_config\00", [43 x i8] zeroinitializer }, align 32
@esw_qos_vport_config._entry_ptr = internal global ptr @esw_qos_vport_config._entry, section ".printk_index", align 4
@esw_qos_vport_config.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: E-Switch modify TSAR vport element failed\00", [43 x i8] zeroinitializer }, align 32
@trace_mlx5_esw_vport_qos_config.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_mlx5_esw_group_qos_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@esw_qos_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"E-Switch: E-Switch create root TSAR failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"esw_qos_create\00", [17 x i8] zeroinitializer }, align 32
@esw_qos_create._entry_ptr = internal global ptr @esw_qos_create._entry, section ".printk_index", align 4
@esw_qos_create._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str, i32 592, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"E-Switch: E-Switch create rate group 0 failed (%ld)\0A\00", [43 x i8] zeroinitializer }, align 32
@esw_qos_create._entry_ptr.36 = internal global ptr @esw_qos_create._entry.34, section ".printk_index", align 4
@esw_qos_create._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"E-Switch: E-Switch destroy root TSAR failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@esw_qos_create._entry_ptr.39 = internal global ptr @esw_qos_create._entry.37, section ".printk_index", align 4
@__esw_qos_create_rate_group.__msg = internal constant [49 x i8] c"mlx5_core: E-Switch create TSAR for group failed\00", align 1
@__esw_qos_create_rate_group.__msg.40 = internal constant [48 x i8] c"mlx5_core: E-Switch groups normalization failed\00", align 1
@__esw_qos_create_rate_group.__msg.41 = internal constant [50 x i8] c"mlx5_core: E-Switch destroy TSAR for group failed\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trace_mlx5_esw_group_qos_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@esw_qos_vport_create_sched_element._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"E-Switch: E-Switch create TSAR vport element failed (vport=%d,err=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"esw_qos_vport_create_sched_element\00", [61 x i8] zeroinitializer }, align 32
@esw_qos_vport_create_sched_element._entry_ptr = internal global ptr @esw_qos_vport_create_sched_element._entry, section ".printk_index", align 4
@trace_mlx5_esw_vport_qos_create.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@esw_qos_devlink_rate_to_mbps.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlx5_core: Failed to get link maximum speed\00", [52 x i8] zeroinitializer }, align 32
@esw_qos_devlink_rate_to_mbps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s rate value %lluBps not in link speed units of 1Mbps.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"esw_qos_devlink_rate_to_mbps\00", [35 x i8] zeroinitializer }, align 32
@esw_qos_devlink_rate_to_mbps._entry_ptr = internal global ptr @esw_qos_devlink_rate_to_mbps._entry, section ".printk_index", align 4
@esw_qos_devlink_rate_to_mbps.__msg.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlx5_core: TX rate value not in link speed units of 1Mbps\00", [38 x i8] zeroinitializer }, align 32
@esw_qos_devlink_rate_to_mbps._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s rate value %lluMbps exceed link maximum speed %u.\0A\00", [40 x i8] zeroinitializer }, align 32
@esw_qos_devlink_rate_to_mbps._entry_ptr.49 = internal global ptr @esw_qos_devlink_rate_to_mbps._entry.47, section ".printk_index", align 4
@esw_qos_devlink_rate_to_mbps.__msg.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx5_core: TX rate value exceed link maximum speed\00", [45 x i8] zeroinitializer }, align 32
@esw_qos_set_group_min_rate.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mlx5_core: E-Switch group min rate setting failed\00", [46 x i8] zeroinitializer }, align 32
@esw_qos_set_group_min_rate.__msg.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlx5_core: E-Switch BW share restore failed\00", [52 x i8] zeroinitializer }, align 32
@esw_qos_set_group_max_rate.__msg = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"mlx5_core: E-Switch vport implicit rate limit setting failed\00", [35 x i8] zeroinitializer }, align 32
@esw_qos_update_group_scheduling_element.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlx5_core: E-Switch destroy TSAR vport element failed\00", [42 x i8] zeroinitializer }, align 32
@esw_qos_update_group_scheduling_element.__msg.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlx5_core: E-Switch vport group set failed.\00", [52 x i8] zeroinitializer }, align 32
@esw_qos_update_group_scheduling_element._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: E-Switch vport group restore failed (vport=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"esw_qos_update_group_scheduling_element\00", [56 x i8] zeroinitializer }, align 32
@esw_qos_update_group_scheduling_element._entry_ptr = internal global ptr @esw_qos_update_group_scheduling_element._entry, section ".printk_index", align 4
@___asan_gen_.55 = private unnamed_addr constant [29 x i8] c"str__mlx5__trace_system_name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 36, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [46 x i8] c"trace_event_fields_mlx5_esw_vport_qos_destroy\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [50 x i8] c"trace_event_type_funcs_mlx5_esw_vport_qos_destroy\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [37 x i8] c"print_fmt_mlx5_esw_vport_qos_destroy\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [33 x i8] c"event_mlx5_esw_vport_qos_destroy\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [47 x i8] c"trace_event_fields_mlx5_esw_vport_qos_template\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_mlx5_esw_vport_qos_template\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [38 x i8] c"print_fmt_mlx5_esw_vport_qos_template\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [32 x i8] c"event_mlx5_esw_vport_qos_create\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 52, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [32 x i8] c"event_mlx5_esw_vport_qos_config\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 57, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [47 x i8] c"trace_event_fields_mlx5_esw_group_qos_template\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [51 x i8] c"trace_event_type_funcs_mlx5_esw_group_qos_template\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [38 x i8] c"print_fmt_mlx5_esw_group_qos_template\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [32 x i8] c"event_mlx5_esw_group_qos_create\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 80, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [33 x i8] c"event_mlx5_esw_group_qos_destroy\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 87, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [45 x i8] c"trace_event_fields_mlx5_esw_group_qos_config\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [49 x i8] c"trace_event_type_funcs_mlx5_esw_group_qos_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [36 x i8] c"print_fmt_mlx5_esw_group_qos_config\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [32 x i8] c"event_mlx5_esw_group_qos_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 680, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 683, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 690, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 797, i32 49 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 823, i32 49 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 887, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 29, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 62, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 94, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant [69 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 13, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 108, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 620, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 57, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 89, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 92, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 583, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 591, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 604, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 351, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 761, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 767, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 769, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 774, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 776, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 281, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 286, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 319, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 372, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 385, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [53 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 395, i32 3 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__bpf_trace_tp_map_mlx5_esw_group_qos_config, ptr @__bpf_trace_tp_map_mlx5_esw_group_qos_create, ptr @__bpf_trace_tp_map_mlx5_esw_group_qos_destroy, ptr @__bpf_trace_tp_map_mlx5_esw_vport_qos_config, ptr @__bpf_trace_tp_map_mlx5_esw_vport_qos_create, ptr @__bpf_trace_tp_map_mlx5_esw_vport_qos_destroy, ptr @__event_mlx5_esw_group_qos_config, ptr @__event_mlx5_esw_group_qos_create, ptr @__event_mlx5_esw_group_qos_destroy, ptr @__event_mlx5_esw_vport_qos_config, ptr @__event_mlx5_esw_vport_qos_create, ptr @__event_mlx5_esw_vport_qos_destroy, ptr @__tracepoint_mlx5_esw_group_qos_config, ptr @__tracepoint_mlx5_esw_group_qos_create, ptr @__tracepoint_mlx5_esw_group_qos_destroy, ptr @__tracepoint_mlx5_esw_vport_qos_config, ptr @__tracepoint_mlx5_esw_vport_qos_create, ptr @__tracepoint_mlx5_esw_vport_qos_destroy, ptr @__tracepoint_ptr_mlx5_esw_group_qos_config, ptr @__tracepoint_ptr_mlx5_esw_group_qos_create, ptr @__tracepoint_ptr_mlx5_esw_group_qos_destroy, ptr @__tracepoint_ptr_mlx5_esw_vport_qos_config, ptr @__tracepoint_ptr_mlx5_esw_vport_qos_create, ptr @__tracepoint_ptr_mlx5_esw_vport_qos_destroy, ptr @esw_qos_create._entry, ptr @esw_qos_create._entry.34, ptr @esw_qos_create._entry.37, ptr @esw_qos_create._entry_ptr, ptr @esw_qos_create._entry_ptr.36, ptr @esw_qos_create._entry_ptr.39, ptr @esw_qos_destroy._entry, ptr @esw_qos_destroy._entry_ptr, ptr @esw_qos_devlink_rate_to_mbps._entry, ptr @esw_qos_devlink_rate_to_mbps._entry.47, ptr @esw_qos_devlink_rate_to_mbps._entry_ptr, ptr @esw_qos_devlink_rate_to_mbps._entry_ptr.49, ptr @esw_qos_update_group_scheduling_element._entry, ptr @esw_qos_update_group_scheduling_element._entry_ptr, ptr @esw_qos_vport_config._entry, ptr @esw_qos_vport_config._entry_ptr, ptr @esw_qos_vport_create_sched_element._entry, ptr @esw_qos_vport_create_sched_element._entry_ptr, ptr @event_class_mlx5_esw_group_qos_config, ptr @event_class_mlx5_esw_group_qos_template, ptr @event_class_mlx5_esw_vport_qos_destroy, ptr @event_class_mlx5_esw_vport_qos_template, ptr @event_mlx5_esw_group_qos_config, ptr @event_mlx5_esw_group_qos_create, ptr @event_mlx5_esw_group_qos_destroy, ptr @event_mlx5_esw_vport_qos_config, ptr @event_mlx5_esw_vport_qos_create, ptr @event_mlx5_esw_vport_qos_destroy, ptr @mlx5_esw_qos_vport_disable._entry, ptr @mlx5_esw_qos_vport_disable._entry_ptr, ptr @str__mlx5__trace_system_name, ptr @trace_event_fields_mlx5_esw_vport_qos_destroy, ptr @trace_event_type_funcs_mlx5_esw_vport_qos_destroy, ptr @print_fmt_mlx5_esw_vport_qos_destroy, ptr @trace_event_fields_mlx5_esw_vport_qos_template, ptr @trace_event_type_funcs_mlx5_esw_vport_qos_template, ptr @print_fmt_mlx5_esw_vport_qos_template, ptr @trace_event_fields_mlx5_esw_group_qos_template, ptr @trace_event_type_funcs_mlx5_esw_group_qos_template, ptr @print_fmt_mlx5_esw_group_qos_template, ptr @trace_event_fields_mlx5_esw_group_qos_config, ptr @trace_event_type_funcs_mlx5_esw_group_qos_config, ptr @print_fmt_mlx5_esw_group_qos_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mlx5_esw_devlink_rate_node_new.__msg, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @esw_qos_group_config.__msg, ptr @.str.30, ptr @.str.31, ptr @esw_qos_vport_config.__msg, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @esw_qos_devlink_rate_to_mbps.__msg, ptr @.str.44, ptr @.str.45, ptr @esw_qos_devlink_rate_to_mbps.__msg.46, ptr @.str.48, ptr @esw_qos_devlink_rate_to_mbps.__msg.50, ptr @esw_qos_set_group_min_rate.__msg, ptr @esw_qos_set_group_min_rate.__msg.51, ptr @esw_qos_set_group_max_rate.__msg, ptr @esw_qos_update_group_scheduling_element.__msg, ptr @esw_qos_update_group_scheduling_element.__msg.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__mlx5__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_vport_qos_destroy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_vport_qos_destroy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_vport_qos_destroy to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_vport_qos_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_vport_qos_template to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_vport_qos_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_vport_qos_template to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_vport_qos_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_vport_qos_config to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_group_qos_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_group_qos_template to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_group_qos_template to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_group_qos_create to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_group_qos_destroy to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mlx5_esw_group_qos_config to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mlx5_esw_group_qos_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mlx5_esw_group_qos_config to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mlx5_esw_group_qos_config to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_qos_vport_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_devlink_rate_node_new.__msg to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_group_config.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_vport_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_vport_config.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_create._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_create._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_vport_create_sched_element._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_devlink_rate_to_mbps.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_devlink_rate_to_mbps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_devlink_rate_to_mbps.__msg.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_devlink_rate_to_mbps._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_devlink_rate_to_mbps.__msg.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_set_group_min_rate.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_set_group_min_rate.__msg.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_set_group_max_rate.__msg to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_update_group_scheduling_element.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_update_group_scheduling_element.__msg.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esw_qos_update_group_scheduling_element._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mlx5_esw_vport_qos_destroy(ptr nocapture readnone %__data, ptr noundef %vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vport) #12
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
define dso_local i32 @__traceiter_mlx5_esw_vport_qos_create(ptr nocapture readnone %__data, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #12
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
define dso_local i32 @__traceiter_mlx5_esw_vport_qos_config(ptr nocapture readnone %__data, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_config, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #12
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
define dso_local i32 @__traceiter_mlx5_esw_group_qos_create(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_create, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #12
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
define dso_local i32 @__traceiter_mlx5_esw_group_qos_destroy(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_destroy, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #12
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
define dso_local i32 @__traceiter_mlx5_esw_group_qos_config(ptr nocapture readnone %__data, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_config, i32 0, i32 7), align 4
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
  tail call void %2(ptr noundef %4, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) #12
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
define internal void @trace_event_raw_event_mlx5_esw_vport_qos_destroy(ptr noundef %__data, ptr nocapture noundef readonly %vport) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !200

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !201

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
  %3 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vport, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool.not.i28 = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not.i28, ptr @.str.8, ptr %10
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit

trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge
  %cond.i = phi ptr [ %8, %if.end.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add = add i32 %call5.i, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i29 = icmp eq ptr %17, null
  br i1 %tobool.not.i29, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i34

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i34:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i34, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i34 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %vport13 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %22 = ptrtoint ptr %vport13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vport13, align 8
  %vport_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %call3, i32 0, i32 2
  %24 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vport_id, align 4
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %esw_tsar_ix, align 4
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %call3, i32 0, i32 3
  %27 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tsar_ix, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_vport_qos_destroy(ptr noundef %__data, ptr nocapture noundef readonly %vport) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !202
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge

entry.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %9
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit

trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge
  %cond.i = phi ptr [ %7, %entry.trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i52.not = icmp eq ptr %23, null
  br i1 %tobool.not.i52.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_esw_vport_qos_destroy.exit.if.end_crit_edge
  %add12 = add i32 %call5.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !190) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %36 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vport, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %41, null
  br i1 %tobool.not.i53, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i56

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i56:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i56, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i56 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %vport25 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %46 = ptrtoint ptr %vport25 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vport25, align 8
  %vport_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %call13, i32 0, i32 2
  %48 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %vport_id, align 4
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %49 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %esw_tsar_ix, align 4
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %call13, i32 0, i32 3
  %51 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tsar_ix, align 4
  %52 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rctx, align 4
  %54 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %53, ptr noundef %__data, i64 noundef 1, ptr noundef %55, ptr noundef %19, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_esw_vport_qos_template(ptr noundef %__data, ptr nocapture noundef readonly %vport, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !200

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !201

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
  %3 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vport, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %tobool.not.i38 = icmp eq ptr %10, null
  %spec.select = select i1 %tobool.not.i38, ptr @.str.8, ptr %10
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit

trace_event_get_offsets_mlx5_esw_vport_qos_template.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge
  %cond.i = phi ptr [ %8, %if.end.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add = add i32 %call5.i, 33
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_esw_vport_qos_template.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65568
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 32
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i39 = icmp eq ptr %17, null
  br i1 %tobool.not.i39, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i44

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i44:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i44, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %21, %if.end.i44 ], [ %17, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %vport13 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %22 = ptrtoint ptr %vport13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vport13, align 8
  %vport_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call3, i32 0, i32 2
  %24 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %vport_id, align 4
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %esw_tsar_ix, align 4
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call3, i32 0, i32 3
  %27 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tsar_ix, align 4
  %bw_share14 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call3, i32 0, i32 4
  %28 = ptrtoint ptr %bw_share14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bw_share, ptr %bw_share14, align 4
  %max_rate15 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call3, i32 0, i32 5
  %29 = ptrtoint ptr %max_rate15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %max_rate, ptr %max_rate15, align 4
  %group = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group, align 4
  %group17 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call3, i32 0, i32 6
  %32 = ptrtoint ptr %group17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %group17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_vport_qos_template(ptr noundef %__data, ptr nocapture noundef readonly %vport, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !202
  %2 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vport, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge

entry.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %9
  br label %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit

trace_event_get_offsets_mlx5_esw_vport_qos_template.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge
  %cond.i = phi ptr [ %7, %entry.trace_event_get_offsets_mlx5_esw_vport_qos_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65568
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %10 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perf_events, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add = add i32 %18, %12
  %19 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %20 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %21, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_esw_vport_qos_template.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %19, align 4
  %tobool.not.i62.not = icmp eq ptr %23, null
  br i1 %tobool.not.i62.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_esw_vport_qos_template.exit.if.end_crit_edge
  %add12 = add i32 %call5.i, 44
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %24 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__regs, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx2.i, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !190) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call13, i32 0, i32 1
  %35 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 32
  %36 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vport, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i63 = icmp eq ptr %41, null
  br i1 %tobool.not.i63, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i66

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i66:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i66, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %45, %if.end.i66 ], [ %41, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %vport25 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %46 = ptrtoint ptr %vport25 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vport25, align 8
  %vport_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call13, i32 0, i32 2
  %48 = ptrtoint ptr %vport_id to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %vport_id, align 4
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %49 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %esw_tsar_ix, align 4
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call13, i32 0, i32 3
  %51 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tsar_ix, align 4
  %bw_share26 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call13, i32 0, i32 4
  %52 = ptrtoint ptr %bw_share26 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %bw_share, ptr %bw_share26, align 4
  %max_rate27 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call13, i32 0, i32 5
  %53 = ptrtoint ptr %max_rate27 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %max_rate, ptr %max_rate27, align 4
  %group = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %54 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %group, align 4
  %group29 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %call13, i32 0, i32 6
  %56 = ptrtoint ptr %group29 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %group29, align 4
  %57 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rctx, align 4
  %59 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %58, ptr noundef %__data, i64 noundef 1, ptr noundef %60, ptr noundef %19, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_esw_group_qos_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %group, i32 noundef %tsar_ix) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !200

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !201

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
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_group_qos_template.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i28 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i28, ptr @.str.8, ptr %8
  br label %trace_event_get_offsets_mlx5_esw_group_qos_template.exit

trace_event_get_offsets_mlx5_esw_group_qos_template.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add = add i32 %call4.i, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_esw_group_qos_template.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_esw_group_qos_template.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_template.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_template.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i29 = icmp eq ptr %13, null
  br i1 %tobool.not.i29, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i34

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i34:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i34, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i34 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %group12 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %group12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group, ptr %group12, align 4
  %tsar_ix13 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %tsar_ix13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tsar_ix, ptr %tsar_ix13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_esw_group_qos_template.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_group_qos_template(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %group, i32 noundef %tsar_ix) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !202
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge

entry.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_group_qos_template.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %7
  br label %trace_event_get_offsets_mlx5_esw_group_qos_template.exit

trace_event_get_offsets_mlx5_esw_group_qos_template.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_esw_group_qos_template.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_esw_group_qos_template.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_esw_group_qos_template.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_template.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_template.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i52.not = icmp eq ptr %21, null
  br i1 %tobool.not.i52.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_esw_group_qos_template.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #12
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !190) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i53 = icmp eq ptr %37, null
  br i1 %tobool.not.i53, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i56

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i56:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i56, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i56 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %group24 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %group24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %group, ptr %group24, align 4
  %tsar_ix25 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %tsar_ix25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %tsar_ix, ptr %tsar_ix25, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %17, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mlx5_esw_group_qos_config(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
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
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !200

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !201

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
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge

if.end.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_group_qos_config.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %tobool.not.i34 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i34, ptr @.str.8, ptr %8
  br label %trace_event_get_offsets_mlx5_esw_group_qos_config.exit

trace_event_get_offsets_mlx5_esw_group_qos_config.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add = add i32 %call4.i, 29
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_mlx5_esw_group_qos_config.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_mlx5_esw_group_qos_config.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_config.exit
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 28
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i35 = icmp eq ptr %13, null
  br i1 %tobool.not.i35, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i40

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i40:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i40, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i40 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call11 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %group12 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %group12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group, ptr %group12, align 4
  %tsar_ix13 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %tsar_ix13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tsar_ix, ptr %tsar_ix13, align 4
  %bw_share14 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call3, i32 0, i32 4
  %20 = ptrtoint ptr %bw_share14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bw_share, ptr %bw_share14, align 4
  %max_rate15 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call3, i32 0, i32 5
  %21 = ptrtoint ptr %max_rate15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %max_rate, ptr %max_rate15, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_mlx5_esw_group_qos_config.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mlx5_esw_group_qos_config(ptr noundef %__data, ptr nocapture noundef readonly %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !202
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !202
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge

entry.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %trace_event_get_offsets_mlx5_esw_group_qos_config.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str.8, ptr %7
  br label %trace_event_get_offsets_mlx5_esw_group_qos_config.exit

trace_event_get_offsets_mlx5_esw_group_qos_config.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_mlx5_esw_group_qos_config.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call4.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #15
  %add.i = shl i32 %call4.i, 16
  %or.i = add i32 %add.i, 65564
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_mlx5_esw_group_qos_config.exit.if.end_crit_edge

trace_event_get_offsets_mlx5_esw_group_qos_config.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_mlx5_esw_group_qos_config.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i58.not = icmp eq ptr %21, null
  br i1 %tobool.not.i58.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_mlx5_esw_group_qos_config.exit.if.end_crit_edge
  %add12 = add i32 %call4.i, 40
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #12
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !190) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_devname, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 28
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i59 = icmp eq ptr %37, null
  br i1 %tobool.not.i59, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i62

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i62:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i62, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str.8, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i62 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call23 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #16
  %group24 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %group24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %group, ptr %group24, align 4
  %tsar_ix25 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %tsar_ix25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %tsar_ix, ptr %tsar_ix25, align 4
  %bw_share26 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call13, i32 0, i32 4
  %44 = ptrtoint ptr %bw_share26 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bw_share, ptr %bw_share26, align 4
  %max_rate27 = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %call13, i32 0, i32 5
  %45 = ptrtoint ptr %max_rate27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %max_rate, ptr %max_rate27, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %17, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_vport_qos_destroy(ptr noundef %__data, ptr noundef %vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %vport to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_vport_qos_template(ptr noundef %__data, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %vport to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %bw_share to i64
  %conv8 = zext i32 %max_rate to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_group_qos_template(ptr noundef %__data, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %group to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %tsar_ix to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mlx5_esw_group_qos_config(ptr noundef %__data, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %dev to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %group to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %tsar_ix to i64
  %conv12 = zext i32 %bw_share to i64
  %conv16 = zext i32 %max_rate to i64
  tail call void @bpf_trace_run5(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_esw_qos_vport_disable(ptr noundef %esw, ptr noundef %vport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !201

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 680, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11
  %1 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %qos, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %group = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %3 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group, align 4
  %tobool29.not = icmp eq ptr %4, null
  br i1 %tobool29.not, label %if.end26.if.end57_crit_edge, label %land.rhs30

if.end26.if.end57_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.rhs30:                                       ; preds = %if.end26
  %group0 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %group0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %group0, align 4
  %cmp34.not = icmp eq ptr %4, %6
  br i1 %cmp34.not, label %land.rhs30.if.end57_crit_edge, label %do.end51, !prof !200

land.rhs30.if.end57_crit_edge:                    ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

do.end51:                                         ; preds = %land.rhs30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 684, i32 noundef 9, ptr noundef nonnull @.str.1) #12
  br label %if.end57

if.end57:                                         ; preds = %do.end51, %land.rhs30.if.end57_crit_edge, %if.end26.if.end57_crit_edge
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %esw_tsar_ix, align 4
  %call66 = tail call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %8, i8 noundef zeroext 2, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end57.if.end74_crit_edge, label %do.end71

if.end57.if.end74_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

do.end71:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %esw, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %vport73 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %15 = ptrtoint ptr %vport73 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vport73, align 8
  %conv = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %call66) #17
  br label %if.end74

if.end74:                                         ; preds = %do.end71, %if.end57.if.end74_crit_edge
  %17 = call ptr @memset(ptr %qos, i32 0, i32 24)
  tail call fastcc void @trace_mlx5_esw_vport_qos_destroy(ptr noundef %vport)
  tail call fastcc void @esw_qos_put(ptr noundef %esw)
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_vport_qos_destroy(ptr noundef %vport) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_destroy, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_vport_qos_destroy, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !204

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !205
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_destroy, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %vport) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !206
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !206
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_destroy, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_vport_qos_destroy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_vport_qos_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 27, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %38 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esw_qos_put(ptr noundef %esw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !201

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 641, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %refcnt = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #12, !srcloc !210
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then25, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end26_crit_edge, label %if.then10.i.i.i, !prof !200

if.end5.i.i.i.if.end26_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #12
  br label %if.end26

if.then25:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !211
  %qos.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %group0.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %group0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group0.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then25.if.end.i_crit_edge, label %if.then.i

if.then25.if.end.i_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  %call.i30 = tail call fastcc i32 @__esw_qos_destroy_rate_group(ptr noundef %esw, ptr noundef nonnull %3, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then25.if.end.i_crit_edge
  %4 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esw, align 8
  %6 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qos.i, align 8
  %call4.i = tail call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %5, i8 noundef zeroext 2, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end26_crit_edge, label %do.end.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esw, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.27, i32 noundef %call4.i) #17
  br label %if.end26

if.end26:                                         ; preds = %do.end.i, %if.end.i.if.end26_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_qos_set_vport_rate(ptr noundef %esw, ptr noundef %vport, i32 noundef %max_rate, i32 noundef %min_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !201

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 704, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @esw_qos_vport_enable(ptr noundef %esw, ptr noundef %vport, i32 noundef 0, i32 noundef 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end27.if.end.i_crit_edge, label %land.rhs.i

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end27
  %dep_map.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !201

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end27.if.end.i_crit_edge
  %2 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %esw, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 12
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool33.not.i = icmp eq i32 %8, 0
  br i1 %tobool33.not.i, label %if.end.i.land.end36.i_crit_edge, label %land.rhs34.i

if.end.i.land.end36.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end36.i

land.rhs34.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i32, ptr %5, i32 7
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp35.i = icmp ne i32 %10, 0
  br label %land.end36.i

land.end36.i:                                     ; preds = %land.rhs34.i, %if.end.i.land.end36.i_crit_edge
  %11 = phi i1 [ false, %if.end.i.land.end36.i_crit_edge ], [ %cmp35.i, %land.rhs34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_rate)
  %tobool37.not.i = icmp eq i32 %min_rate, 0
  %brmerge.i = select i1 %tobool37.not.i, i1 true, i1 %11
  br i1 %brmerge.i, label %if.end40.i, label %land.end36.i.cleanup_crit_edge

land.end36.i.cleanup_crit_edge:                   ; preds = %land.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40.i:                                       ; preds = %land.end36.i
  %min_rate41.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 3
  %12 = ptrtoint ptr %min_rate41.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %min_rate41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %min_rate)
  %cmp42.i = icmp eq i32 %13, %min_rate
  br i1 %cmp42.i, label %if.end40.i.if.then30_crit_edge, label %if.end44.i

if.end40.i.if.then30_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.end44.i:                                       ; preds = %if.end40.i
  %14 = ptrtoint ptr %min_rate41.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %min_rate, ptr %min_rate41.i, align 4
  %group.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %group.i, align 4
  %call50.i = tail call fastcc i32 @esw_qos_normalize_vports_min_rate(ptr noundef %esw, ptr noundef %16, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end44.i.if.then30_crit_edge, label %if.then52.i

if.end44.i.if.then30_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then52.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %min_rate41.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %13, ptr %min_rate41.i, align 4
  br label %cleanup

if.then30:                                        ; preds = %if.end44.i.if.then30_crit_edge, %if.end40.i.if.then30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i42 = icmp eq i32 %18, 0
  br i1 %tobool.not.i42, label %if.then30.if.end.i48_crit_edge, label %land.rhs.i46

if.then30.if.end.i48_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i48

land.rhs.i46:                                     ; preds = %if.then30
  %dep_map.i43 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i.i44 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i43, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp.not.i45 = icmp eq i32 %call.i.i44, 0
  br i1 %cmp.not.i45, label %do.end.i47, label %land.rhs.i46.if.end.i48_crit_edge, !prof !201

land.rhs.i46.if.end.i48_crit_edge:                ; preds = %land.rhs.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i48

do.end.i47:                                       ; preds = %land.rhs.i46
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i48

if.end.i48:                                       ; preds = %do.end.i47, %land.rhs.i46.if.end.i48_crit_edge, %if.then30.if.end.i48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_rate)
  %tobool25.not.i = icmp eq i32 %max_rate, 0
  br i1 %tobool25.not.i, label %if.end.i48.if.end28.i_crit_edge, label %land.lhs.true.i

if.end.i48.if.end28.i_crit_edge:                  ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end.i48
  %19 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %esw, align 8
  %arrayidx.i49 = getelementptr %struct.mlx5_core_dev, ptr %20, i32 0, i32 8, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i49, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not.i = icmp eq i32 %25, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end28.i:                                       ; preds = %land.lhs.true.i.if.end28.i_crit_edge, %if.end.i48.if.end28.i_crit_edge
  %max_rate29.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 4
  %26 = ptrtoint ptr %max_rate29.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_rate29.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %max_rate)
  %cmp30.i = icmp eq i32 %27, %max_rate
  br i1 %cmp30.i, label %if.end28.i.cleanup_crit_edge, label %if.end32.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.i:                                       ; preds = %if.end28.i
  %group.i50 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %28 = ptrtoint ptr %group.i50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %group.i50, align 4
  %tobool34.not.i = icmp ne ptr %29, null
  %30 = and i1 %tobool25.not.i, %tobool34.not.i
  br i1 %30, label %if.then37.i, label %if.end32.i.if.end41.i_crit_edge

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_rate40.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %max_rate40.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_rate40.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end32.i.if.end41.i_crit_edge
  %act_max_rate.0.i = phi i32 [ %32, %if.then37.i ], [ %max_rate, %if.end32.i.if.end41.i_crit_edge ]
  %bw_share.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 2
  %33 = ptrtoint ptr %bw_share.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bw_share.i, align 8
  %call43.i = tail call fastcc i32 @esw_qos_vport_config(ptr noundef %esw, ptr noundef %vport, i32 noundef %act_max_rate.0.i, i32 noundef %34, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end41.i.cleanup_crit_edge

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %max_rate29.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %max_rate, ptr %max_rate29.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then45.i, %if.end41.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then52.i, %land.end36.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end.cleanup_crit_edge ], [ -95, %land.end36.i.cleanup_crit_edge ], [ %call50.i, %if.then52.i ], [ -95, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end28.i.cleanup_crit_edge ], [ 0, %if.then45.i ], [ %call43.i, %if.end41.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_qos_vport_enable(ptr noundef %esw, ptr noundef %vport, i32 noundef %max_rate, i32 noundef %bw_share, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %sched_ctx.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !201

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 651, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11
  %1 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %qos, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call27 = tail call fastcc i32 @esw_qos_get(ptr noundef %esw, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %group0 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %group0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group0, align 4
  %group = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %group, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx.i) #12
  %6 = getelementptr inbounds i8, ptr %sched_ctx.i, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 52)
  %8 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esw, align 8
  %tobool.not.i = icmp eq ptr %4, null
  %qos3.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %cond.in.i = select i1 %tobool.not.i, ptr %qos3.i, ptr %4
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %11 = ptrtoint ptr %sched_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %sched_ctx.i, align 4
  %add.ptr11.i = getelementptr inbounds i8, ptr %sched_ctx.i, i32 4
  %vport14.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %12 = ptrtoint ptr %vport14.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vport14.i, align 8
  %conv.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %add.ptr11.i, align 4
  %add.ptr32.i = getelementptr inbounds i32, ptr %sched_ctx.i, i32 2
  %15 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i, ptr %add.ptr32.i, align 4
  %add.ptr47.i = getelementptr inbounds i32, ptr %sched_ctx.i, i32 6
  %16 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %max_rate, ptr %add.ptr47.i, align 4
  %add.ptr62.i = getelementptr inbounds i32, ptr %sched_ctx.i, i32 5
  %17 = ptrtoint ptr %add.ptr62.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bw_share, ptr %add.ptr62.i, align 4
  %esw_tsar_ix.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %call.i53 = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %9, i8 noundef zeroext 2, ptr noundef nonnull %sched_ctx.i, ptr noundef %esw_tsar_ix.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool73.not.i = icmp eq i32 %call.i53, 0
  br i1 %tobool73.not.i, label %if.end36, label %err_out

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i) #12
  %18 = ptrtoint ptr %qos to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %qos, align 8
  call fastcc void @trace_mlx5_esw_vport_qos_create(ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate)
  br label %cleanup

err_out:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %esw, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = ptrtoint ptr %vport14.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vport14.i, align 8
  %conv79.i = zext i16 %24 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.42, i32 noundef %conv79.i, i32 noundef %call.i53) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i) #12
  call fastcc void @esw_qos_put(ptr noundef %esw)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end36, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i53, %err_out ], [ 0, %if.end36 ], [ 0, %if.end.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_qos_modify_vport_rate(ptr noundef %esw, i16 noundef zeroext %vport_num, i32 noundef %rate_mbps) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ctx) #12
  %0 = call ptr @memset(ptr %ctx, i32 0, i32 64)
  %call = tail call ptr @mlx5_eswitch_get_vport(ptr noundef %esw, i16 noundef zeroext %vport_num) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %qos, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then3, label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bw_share = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bw_share, align 8
  %call5 = tail call fastcc i32 @esw_qos_vport_enable(ptr noundef %esw, ptr noundef %call, i32 noundef %rate_mbps, i32 noundef %5, ptr noundef null)
  br label %if.end15

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr inbounds i32, ptr %ctx, i32 6
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rate_mbps, ptr %add.ptr, align 4
  %7 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %esw, align 8
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %call, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %esw_tsar_ix, align 4
  %call14 = call i32 @mlx5_modify_scheduling_element_cmd(ptr noundef %8, i8 noundef zeroext 2, ptr noundef nonnull %ctx, i32 noundef %10, i32 noundef 2) #12
  br label %if.end15

if.end15:                                         ; preds = %do.body, %if.then3
  %err.0 = phi i32 [ %call14, %do.body ], [ %call5, %if.then3 ]
  call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %err.0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ctx) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_scheduling_element_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_leaf_tx_share_set(ptr nocapture noundef readnone %rate_leaf, ptr noundef %priv, i64 noundef %tx_share, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tx_share.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_share.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %tx_share, ptr %tx_share.addr, align 8
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 17, i32 28
  %3 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.not = icmp eq i32 %11, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %call3 = call fastcc i32 @esw_qos_devlink_rate_to_mbps(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull %tx_share.addr, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %call6 = tail call fastcc i32 @esw_qos_vport_enable(ptr noundef nonnull %4, ptr noundef %priv, i32 noundef 0, i32 noundef 0, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end9:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %tx_share.addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_share.addr, align 8
  %conv = trunc i64 %13 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i26 = icmp eq i32 %14, 0
  br i1 %tobool.not.i26, label %if.end9.if.end.i_crit_edge, label %land.rhs.i27

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i27:                                     ; preds = %if.end9
  %dep_map.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i27.if.end.i_crit_edge, !prof !201

land.rhs.i27.if.end.i_crit_edge:                  ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i27.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %16, i32 0, i32 8, i32 0, i32 12
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = and i32 %20, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not.i = icmp eq i32 %21, 0
  br i1 %tobool33.not.i, label %if.end.i.land.end36.i_crit_edge, label %land.rhs34.i

if.end.i.land.end36.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end36.i

land.rhs34.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i28 = getelementptr i32, ptr %18, i32 7
  %22 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp35.i = icmp ne i32 %23, 0
  br label %land.end36.i

land.end36.i:                                     ; preds = %land.rhs34.i, %if.end.i.land.end36.i_crit_edge
  %24 = phi i1 [ false, %if.end.i.land.end36.i_crit_edge ], [ %cmp35.i, %land.rhs34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool37.not.i = icmp eq i32 %conv, 0
  %brmerge.i = select i1 %tobool37.not.i, i1 true, i1 %24
  br i1 %brmerge.i, label %if.end40.i, label %land.end36.i.unlock_crit_edge

land.end36.i.unlock_crit_edge:                    ; preds = %land.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end40.i:                                       ; preds = %land.end36.i
  %min_rate41.i = getelementptr inbounds %struct.mlx5_vport, ptr %priv, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %min_rate41.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_rate41.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv)
  %cmp42.i = icmp eq i32 %26, %conv
  br i1 %cmp42.i, label %if.end40.i.unlock_crit_edge, label %if.end44.i

if.end40.i.unlock_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end44.i:                                       ; preds = %if.end40.i
  %27 = ptrtoint ptr %min_rate41.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %min_rate41.i, align 4
  %group.i = getelementptr inbounds %struct.mlx5_vport, ptr %priv, i32 0, i32 11, i32 5
  %28 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %group.i, align 4
  %call50.i = tail call fastcc i32 @esw_qos_normalize_vports_min_rate(ptr noundef nonnull %4, ptr noundef %29, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end44.i.unlock_crit_edge, label %if.then52.i

if.end44.i.unlock_crit_edge:                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then52.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %min_rate41.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %26, ptr %min_rate41.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.then52.i, %if.end44.i.unlock_crit_edge, %if.end40.i.unlock_crit_edge, %land.end36.i.unlock_crit_edge, %if.end5.unlock_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.unlock_crit_edge ], [ -95, %land.end36.i.unlock_crit_edge ], [ 0, %if.end40.i.unlock_crit_edge ], [ %call50.i, %if.then52.i ], [ 0, %if.end44.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_qos_devlink_rate_to_mbps(ptr noundef %mdev, ptr noundef %name, ptr nocapture noundef %rate, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %link_speed_max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %link_speed_max) #12
  %0 = ptrtoint ptr %link_speed_max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %link_speed_max, align 4, !annotation !202
  %call = call i32 @mlx5e_port_max_linkspeed(ptr noundef %mdev, ptr noundef nonnull %link_speed_max) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_devlink_rate_to_mbps.__msg) #12
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @esw_qos_devlink_rate_to_mbps.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rate, align 8
  %4 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %3) #18, !srcloc !212
  %5 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %3, i64 %4, i32 0) #18, !srcloc !213
  %asmresult10.i.i = extractvalue { i64, i32 } %5, 0
  %conv14.i = trunc i64 %3 to i32
  %div1581.i = lshr i64 %asmresult10.i.i, 15
  %conv159.i = trunc i64 %div1581.i to i32
  %mul160.neg.i = mul i32 %conv159.i, -125000
  %sub161.i = sub i32 0, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul160.neg.i, i32 %sub161.i)
  %tobool5.not = icmp eq i32 %mul160.neg.i, %sub161.i
  br i1 %tobool5.not, label %if.end19, label %do.end9

do.end9:                                          ; preds = %if.end3
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i64 noundef %3) #17
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_devlink_rate_to_mbps.__msg.46) #12
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.end9.cleanup_crit_edge, label %if.then14

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @esw_qos_devlink_rate_to_mbps.__msg.46, ptr %extack, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.end3
  %7 = ptrtoint ptr %link_speed_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_speed_max, align 4
  %conv = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div1581.i, i64 %conv)
  %cmp = icmp ugt i64 %div1581.i, %conv
  br i1 %cmp, label %do.end24, label %if.end35

do.end24:                                         ; preds = %if.end19
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, i64 noundef %div1581.i, i32 noundef %8) #17
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_devlink_rate_to_mbps.__msg.50) #12
  %tobool29.not = icmp eq ptr %extack, null
  br i1 %tobool29.not, label %do.end24.cleanup_crit_edge, label %if.then30

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @esw_qos_devlink_rate_to_mbps.__msg.50, ptr %extack, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %div1581.i, ptr %rate, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then30, %do.end24.cleanup_crit_edge, %if.then14, %do.end9.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %call, %if.then2 ], [ %call, %do.body.cleanup_crit_edge ], [ -22, %if.then14 ], [ -22, %do.end9.cleanup_crit_edge ], [ -22, %if.then30 ], [ -22, %do.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %link_speed_max) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_leaf_tx_max_set(ptr nocapture noundef readnone %rate_leaf, ptr noundef %priv, i64 noundef %tx_max, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tx_max.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_max.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %tx_max, ptr %tx_max.addr, align 8
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 17, i32 28
  %3 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eswitch, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mlx5_esw_allowed.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mlx5_esw_allowed.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %8, i32 13
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.i.not = icmp eq i32 %11, 0
  br i1 %tobool1.i.not, label %mlx5_esw_allowed.exit.cleanup_crit_edge, label %if.end

mlx5_esw_allowed.exit.cleanup_crit_edge:          ; preds = %mlx5_esw_allowed.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mlx5_esw_allowed.exit
  %call3 = call fastcc i32 @esw_qos_devlink_rate_to_mbps(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %tx_max.addr, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %call6 = tail call fastcc i32 @esw_qos_vport_enable(ptr noundef nonnull %4, ptr noundef %priv, i32 noundef 0, i32 noundef 0, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end9:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %tx_max.addr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tx_max.addr, align 8
  %conv = trunc i64 %13 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i26 = icmp eq i32 %14, 0
  br i1 %tobool.not.i26, label %if.end9.if.end.i_crit_edge, label %land.rhs.i27

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i27:                                     ; preds = %if.end9
  %dep_map.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 10, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i27.if.end.i_crit_edge, !prof !201

land.rhs.i27.if.end.i_crit_edge:                  ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i27.if.end.i_crit_edge, %if.end9.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool25.not.i = icmp eq i32 %conv, 0
  br i1 %tobool25.not.i, label %if.end.i.if.end28.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %16, i32 0, i32 8, i32 0, i32 12
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %21 = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not.i = icmp eq i32 %21, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.unlock_crit_edge, label %land.lhs.true.i.if.end28.i_crit_edge

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.lhs.true.i.unlock_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end28.i:                                       ; preds = %land.lhs.true.i.if.end28.i_crit_edge, %if.end.i.if.end28.i_crit_edge
  %max_rate29.i = getelementptr inbounds %struct.mlx5_vport, ptr %priv, i32 0, i32 11, i32 4
  %22 = ptrtoint ptr %max_rate29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_rate29.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv)
  %cmp30.i = icmp eq i32 %23, %conv
  br i1 %cmp30.i, label %if.end28.i.unlock_crit_edge, label %if.end32.i

if.end28.i.unlock_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end32.i:                                       ; preds = %if.end28.i
  %group.i = getelementptr inbounds %struct.mlx5_vport, ptr %priv, i32 0, i32 11, i32 5
  %24 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group.i, align 4
  %tobool34.not.i = icmp ne ptr %25, null
  %26 = and i1 %tobool25.not.i, %tobool34.not.i
  br i1 %26, label %if.then37.i, label %if.end32.i.if.end41.i_crit_edge

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_rate40.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %max_rate40.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_rate40.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end32.i.if.end41.i_crit_edge
  %act_max_rate.0.i = phi i32 [ %28, %if.then37.i ], [ %conv, %if.end32.i.if.end41.i_crit_edge ]
  %bw_share.i = getelementptr inbounds %struct.mlx5_vport, ptr %priv, i32 0, i32 11, i32 2
  %29 = ptrtoint ptr %bw_share.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bw_share.i, align 8
  %call43.i = tail call fastcc i32 @esw_qos_vport_config(ptr noundef nonnull %4, ptr noundef %priv, i32 noundef %act_max_rate.0.i, i32 noundef %30, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end41.i.unlock_crit_edge

if.end41.i.unlock_crit_edge:                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then45.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %max_rate29.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %max_rate29.i, align 8
  br label %unlock

unlock:                                           ; preds = %if.then45.i, %if.end41.i.unlock_crit_edge, %if.end28.i.unlock_crit_edge, %land.lhs.true.i.unlock_crit_edge, %if.end5.unlock_crit_edge
  %err.0 = phi i32 [ %call6, %if.end5.unlock_crit_edge ], [ -95, %land.lhs.true.i.unlock_crit_edge ], [ 0, %if.end28.i.unlock_crit_edge ], [ 0, %if.then45.i ], [ %call43.i, %if.end41.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %mlx5_esw_allowed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -1, %mlx5_esw_allowed.exit.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_node_tx_share_set(ptr nocapture noundef readonly %rate_node, ptr nocapture noundef %priv, i64 noundef %tx_share, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %tx_share.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_share.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %tx_share, ptr %tx_share.addr, align 8
  %devlink = getelementptr inbounds %struct.devlink_rate, ptr %rate_node, i32 0, i32 2
  %1 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %2) #12
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %3 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eswitch, align 4
  %call2 = call fastcc i32 @esw_qos_devlink_rate_to_mbps(ptr noundef %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %tx_share.addr, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %5 = ptrtoint ptr %tx_share.addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_share.addr, align 8
  %conv = trunc i64 %6 to i32
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %8, i32 0, i32 8, i32 0, i32 12
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.esw_qos_set_group_min_rate.exit_crit_edge, label %land.lhs.true.i

if.end.esw_qos_set_group_min_rate.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_min_rate.exit

land.lhs.true.i:                                  ; preds = %if.end
  %add.ptr.i = getelementptr i32, ptr %10, i32 7
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.esw_qos_set_group_min_rate.exit_crit_edge, label %if.end.i

land.lhs.true.i.esw_qos_set_group_min_rate.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_min_rate.exit

if.end.i:                                         ; preds = %land.lhs.true.i
  %min_rate11.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %min_rate11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_rate11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp12.i = icmp eq i32 %17, %conv
  br i1 %cmp12.i, label %if.end.i.esw_qos_set_group_min_rate.exit_crit_edge, label %if.end14.i

if.end.i.esw_qos_set_group_min_rate.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_min_rate.exit

if.end14.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %min_rate11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %min_rate11.i, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %20, i32 0, i32 8, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 7
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i, align 4
  %groups.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn80.i.i = load ptr, ptr %groups.i.i, align 4
  %cmp.not81.i.i = icmp eq ptr %.pn80.i.i, %groups.i.i
  br i1 %cmp.not81.i.i, label %if.end14.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge, label %if.end14.i.for.body.i.i_crit_edge

if.end14.i.for.body.i.i_crit_edge:                ; preds = %if.end14.i
  br label %for.body.i.i

if.end14.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end14.i.for.body.i.i_crit_edge
  %.pn83.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn80.i.i, %if.end14.i.for.body.i.i_crit_edge ]
  %max_guarantee.082.i.i = phi i32 [ %28, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end14.i.for.body.i.i_crit_edge ]
  %min_rate.i.i = getelementptr i8, ptr %.pn83.i.i, i32 -8
  %26 = ptrtoint ptr %min_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_rate.i.i, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %max_guarantee.082.i.i) #12
  %29 = ptrtoint ptr %.pn83.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i.i = load ptr, ptr %.pn83.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %groups.i.i
  br i1 %cmp.not.i.i, label %if.end36.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.end36.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool37.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool37.not.i.i, label %if.end36.i.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge, label %if.then38.i.i

if.end36.i.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit.i

if.then38.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i.i = udiv i32 %28, %24
  %30 = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #12
  br label %esw_qos_calculate_min_rate_divider.exit.i

esw_qos_calculate_min_rate_divider.exit.i:        ; preds = %if.then38.i.i, %if.end36.i.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge, %if.end14.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %30, %if.then38.i.i ], [ 0, %if.end36.i.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge ], [ 0, %if.end14.i.esw_qos_calculate_min_rate_divider.exit.i_crit_edge ]
  %call17.i = tail call fastcc i32 @esw_qos_normalize_groups_min_rate(ptr noundef %4, i32 noundef %retval.0.i.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %esw_qos_calculate_min_rate_divider.exit.i.esw_qos_set_group_min_rate.exit_crit_edge, label %if.then19.i

esw_qos_calculate_min_rate_divider.exit.i.esw_qos_set_group_min_rate.exit_crit_edge: ; preds = %esw_qos_calculate_min_rate_divider.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_min_rate.exit

if.then19.i:                                      ; preds = %esw_qos_calculate_min_rate_divider.exit.i
  %31 = ptrtoint ptr %min_rate11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %17, ptr %min_rate11.i, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_set_group_min_rate.__msg) #12
  %tobool21.not.i = icmp eq ptr %extack, null
  br i1 %tobool21.not.i, label %if.then19.i.if.end23.i_crit_edge, label %if.then22.i

if.then19.i.if.end23.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then22.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @esw_qos_set_group_min_rate.__msg, ptr %extack, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then22.i, %if.then19.i.if.end23.i_crit_edge
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 8
  %arrayidx.i61.i = getelementptr %struct.mlx5_core_dev, ptr %34, i32 0, i32 8, i32 0, i32 12
  %35 = ptrtoint ptr %arrayidx.i61.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i61.i, align 8
  %add.ptr.i62.i = getelementptr i32, ptr %36, i32 7
  %37 = ptrtoint ptr %add.ptr.i62.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i62.i, align 4
  %39 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn80.i64.i = load ptr, ptr %groups.i.i, align 4
  %cmp.not81.i65.i = icmp eq ptr %.pn80.i64.i, %groups.i.i
  br i1 %cmp.not81.i65.i, label %if.end23.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge, label %if.end23.i.for.body.i71.i_crit_edge

if.end23.i.for.body.i71.i_crit_edge:              ; preds = %if.end23.i
  br label %for.body.i71.i

if.end23.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit80.i

for.body.i71.i:                                   ; preds = %for.body.i71.i.for.body.i71.i_crit_edge, %if.end23.i.for.body.i71.i_crit_edge
  %.pn83.i66.i = phi ptr [ %.pn.i69.i, %for.body.i71.i.for.body.i71.i_crit_edge ], [ %.pn80.i64.i, %if.end23.i.for.body.i71.i_crit_edge ]
  %max_guarantee.082.i67.i = phi i32 [ %42, %for.body.i71.i.for.body.i71.i_crit_edge ], [ 0, %if.end23.i.for.body.i71.i_crit_edge ]
  %min_rate.i68.i = getelementptr i8, ptr %.pn83.i66.i, i32 -8
  %40 = ptrtoint ptr %min_rate.i68.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_rate.i68.i, align 4
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %max_guarantee.082.i67.i) #12
  %43 = ptrtoint ptr %.pn83.i66.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i69.i = load ptr, ptr %.pn83.i66.i, align 4
  %cmp.not.i70.i = icmp eq ptr %.pn.i69.i, %groups.i.i
  br i1 %cmp.not.i70.i, label %if.end36.i73.i, label %for.body.i71.i.for.body.i71.i_crit_edge

for.body.i71.i.for.body.i71.i_crit_edge:          ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i71.i

if.end36.i73.i:                                   ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool37.not.i72.i = icmp eq i32 %42, 0
  br i1 %tobool37.not.i72.i, label %if.end36.i73.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge, label %if.then38.i75.i

if.end36.i73.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge: ; preds = %if.end36.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit80.i

if.then38.i75.i:                                  ; preds = %if.end36.i73.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i74.i = udiv i32 %42, %38
  %44 = tail call i32 @llvm.umax.i32(i32 %div.i74.i, i32 1) #12
  br label %esw_qos_calculate_min_rate_divider.exit80.i

esw_qos_calculate_min_rate_divider.exit80.i:      ; preds = %if.then38.i75.i, %if.end36.i73.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge, %if.end23.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge
  %retval.0.i79.i = phi i32 [ %44, %if.then38.i75.i ], [ 0, %if.end36.i73.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge ], [ 0, %if.end23.i.esw_qos_calculate_min_rate_divider.exit80.i_crit_edge ]
  %call25.i = tail call fastcc i32 @esw_qos_normalize_groups_min_rate(ptr noundef %4, i32 noundef %retval.0.i79.i, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %esw_qos_calculate_min_rate_divider.exit80.i.esw_qos_set_group_min_rate.exit_crit_edge, label %do.body28.i

esw_qos_calculate_min_rate_divider.exit80.i.esw_qos_set_group_min_rate.exit_crit_edge: ; preds = %esw_qos_calculate_min_rate_divider.exit80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_min_rate.exit

do.body28.i:                                      ; preds = %esw_qos_calculate_min_rate_divider.exit80.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_set_group_min_rate.__msg.51) #12
  br i1 %tobool21.not.i, label %do.body28.i.esw_qos_set_group_min_rate.exit_crit_edge, label %if.then31.i

do.body28.i.esw_qos_set_group_min_rate.exit_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_min_rate.exit

if.then31.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @esw_qos_set_group_min_rate.__msg.51, ptr %extack, align 4
  br label %esw_qos_set_group_min_rate.exit

esw_qos_set_group_min_rate.exit:                  ; preds = %if.then31.i, %do.body28.i.esw_qos_set_group_min_rate.exit_crit_edge, %esw_qos_calculate_min_rate_divider.exit80.i.esw_qos_set_group_min_rate.exit_crit_edge, %esw_qos_calculate_min_rate_divider.exit.i.esw_qos_set_group_min_rate.exit_crit_edge, %if.end.i.esw_qos_set_group_min_rate.exit_crit_edge, %land.lhs.true.i.esw_qos_set_group_min_rate.exit_crit_edge, %if.end.esw_qos_set_group_min_rate.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %land.lhs.true.i.esw_qos_set_group_min_rate.exit_crit_edge ], [ -95, %if.end.esw_qos_set_group_min_rate.exit_crit_edge ], [ 0, %if.end.i.esw_qos_set_group_min_rate.exit_crit_edge ], [ %call17.i, %do.body28.i.esw_qos_set_group_min_rate.exit_crit_edge ], [ %call17.i, %if.then31.i ], [ %call17.i, %esw_qos_calculate_min_rate_divider.exit80.i.esw_qos_set_group_min_rate.exit_crit_edge ], [ 0, %esw_qos_calculate_min_rate_divider.exit.i.esw_qos_set_group_min_rate.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %esw_qos_set_group_min_rate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %esw_qos_set_group_min_rate.exit ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_node_tx_max_set(ptr nocapture noundef readonly %rate_node, ptr noundef %priv, i64 noundef %tx_max, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %sched_ctx.i.i = alloca [16 x i32], align 4
  %i.i = alloca i32, align 4
  %tx_max.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_max.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %tx_max, ptr %tx_max.addr, align 8
  %devlink = getelementptr inbounds %struct.devlink_rate, ptr %rate_node, i32 0, i32 2
  %1 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %2) #12
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %call, i32 0, i32 17, i32 28
  %3 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eswitch, align 4
  %call2 = call fastcc i32 @esw_qos_devlink_rate_to_mbps(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %tx_max.addr, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %5 = ptrtoint ptr %tx_max.addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tx_max.addr, align 8
  %conv = trunc i64 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #12
  %max_rate1.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %max_rate1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_rate1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp.i = icmp eq i32 %8, %conv
  br i1 %cmp.i, label %if.end.esw_qos_set_group_max_rate.exit_crit_edge, label %if.end.i

if.end.esw_qos_set_group_max_rate.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_max_rate.exit

if.end.i:                                         ; preds = %if.end
  %bw_share.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %bw_share.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bw_share.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx.i.i) #12
  %11 = call ptr @memset(ptr %sched_ctx.i.i, i32 0, i32 64)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  %qos.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 13
  %14 = ptrtoint ptr %qos.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qos.i.i, align 8
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %priv, align 4
  %caps.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caps.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %19, i32 16
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i
  %arrayidx3.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %13, i32 0, i32 8, i32 0, i32 12
  %23 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool9.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool9.not.i.i.i, label %lor.lhs.false.i.i.i.do.body.i.i_crit_edge, label %esw_qos_tsar_config.exit.i.i

lor.lhs.false.i.i.i.do.body.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

esw_qos_tsar_config.exit.i.i:                     ; preds = %lor.lhs.false.i.i.i
  %add.ptr11.i.i.i = getelementptr inbounds i32, ptr %sched_ctx.i.i, i32 2
  %28 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %15, ptr %add.ptr11.i.i.i, align 4
  %add.ptr22.i.i.i = getelementptr inbounds i32, ptr %sched_ctx.i.i, i32 6
  %29 = ptrtoint ptr %add.ptr22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv, ptr %add.ptr22.i.i.i, align 4
  %add.ptr35.i.i.i = getelementptr inbounds i32, ptr %sched_ctx.i.i, i32 5
  %30 = ptrtoint ptr %add.ptr35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %10, ptr %add.ptr35.i.i.i, align 4
  %call.i.i.i = call i32 @mlx5_modify_scheduling_element_cmd(ptr noundef %13, i8 noundef zeroext 2, ptr noundef nonnull %sched_ctx.i.i, i32 noundef %17, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i, label %esw_qos_tsar_config.exit.i.i.do.body.i.i_crit_edge

esw_qos_tsar_config.exit.i.i.do.body.i.i_crit_edge: ; preds = %esw_qos_tsar_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %esw_qos_tsar_config.exit.i.i.do.body.i.i_crit_edge, %lor.lhs.false.i.i.i.do.body.i.i_crit_edge, %if.end.i.do.body.i.i_crit_edge
  %retval.0.i16.i.i = phi i32 [ %call.i.i.i, %esw_qos_tsar_config.exit.i.i.do.body.i.i_crit_edge ], [ -95, %lor.lhs.false.i.i.i.do.body.i.i_crit_edge ], [ -95, %if.end.i.do.body.i.i_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_group_config.__msg) #12
  %tobool2.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i.i, label %do.body.i.i.esw_qos_group_config.exit.thread.i_crit_edge, label %if.then3.i.i

do.body.i.i.esw_qos_group_config.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_group_config.exit.thread.i

if.then3.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @esw_qos_group_config.__msg, ptr %extack, align 4
  br label %esw_qos_group_config.exit.thread.i

esw_qos_group_config.exit.thread.i:               ; preds = %if.then3.i.i, %do.body.i.i.esw_qos_group_config.exit.thread.i_crit_edge
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priv, align 4
  call fastcc void @trace_mlx5_esw_group_qos_config(ptr noundef %13, ptr noundef %priv, i32 noundef %33, i32 noundef %10, i32 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i.i) #12
  br label %esw_qos_set_group_max_rate.exit

if.end3.i:                                        ; preds = %esw_qos_tsar_config.exit.i.i
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %priv, align 4
  call fastcc void @trace_mlx5_esw_group_qos_config(ptr noundef %13, ptr noundef %priv, i32 noundef %35, i32 noundef %10, i32 noundef %conv) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i.i) #12
  %36 = ptrtoint ptr %max_rate1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv, ptr %max_rate1.i, align 4
  %37 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %i.i, align 4
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 6
  %call5.i = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #12
  %tobool6.not57.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not57.i, label %if.end3.i.esw_qos_set_group_max_rate.exit_crit_edge, label %for.body.lr.ph.i

if.end3.i.esw_qos_set_group_max_rate.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_max_rate.exit

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  %tobool25.not.i = icmp eq ptr %extack, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %err.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %err.1.i, %for.inc.i.for.body.i_crit_edge ]
  %vport.058.i = phi ptr [ %call5.i, %for.body.lr.ph.i ], [ %call30.i, %for.inc.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.058.i, i32 0, i32 13
  %38 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enabled.i, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool7.not.i = icmp eq i8 %39, 0
  br i1 %tobool7.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %qos.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.058.i, i32 0, i32 11
  %40 = ptrtoint ptr %qos.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %qos.i, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool9.not.i = icmp eq i8 %41, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false10.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %group12.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.058.i, i32 0, i32 11, i32 5
  %42 = ptrtoint ptr %group12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %group12.i, align 4
  %cmp13.not.i = icmp eq ptr %43, %priv
  br i1 %cmp13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false10.i.for.inc.i_crit_edge

lor.lhs.false10.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false14.i:                                ; preds = %lor.lhs.false10.i
  %max_rate16.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.058.i, i32 0, i32 11, i32 4
  %44 = ptrtoint ptr %max_rate16.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_rate16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool17.not.i = icmp eq i32 %45, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %lor.lhs.false14.i.for.inc.i_crit_edge

lor.lhs.false14.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end19.i:                                       ; preds = %lor.lhs.false14.i
  %bw_share21.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport.058.i, i32 0, i32 11, i32 2
  %46 = ptrtoint ptr %bw_share21.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bw_share21.i, align 8
  %call22.i = call fastcc i32 @esw_qos_vport_config(ptr noundef %4, ptr noundef nonnull %vport.058.i, i32 noundef %conv, i32 noundef %47, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end19.i.for.inc.i_crit_edge, label %do.body.i

if.end19.i.for.inc.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.body.i:                                        ; preds = %if.end19.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_set_group_max_rate.__msg) #12
  br i1 %tobool25.not.i, label %do.body.i.for.inc.i_crit_edge, label %if.then26.i

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @esw_qos_set_group_max_rate.__msg, ptr %extack, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then26.i, %do.body.i.for.inc.i_crit_edge, %if.end19.i.for.inc.i_crit_edge, %lor.lhs.false14.i.for.inc.i_crit_edge, %lor.lhs.false10.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %err.1.i = phi i32 [ %err.059.i, %lor.lhs.false10.i.for.inc.i_crit_edge ], [ %err.059.i, %lor.lhs.false14.i.for.inc.i_crit_edge ], [ 0, %if.end19.i.for.inc.i_crit_edge ], [ %err.059.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %err.059.i, %for.body.i.for.inc.i_crit_edge ], [ %call22.i, %if.then26.i ], [ %call22.i, %do.body.i.for.inc.i_crit_edge ]
  %call30.i = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #12
  %tobool6.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool6.not.i, label %for.inc.i.esw_qos_set_group_max_rate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.esw_qos_set_group_max_rate.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_set_group_max_rate.exit

esw_qos_set_group_max_rate.exit:                  ; preds = %for.inc.i.esw_qos_set_group_max_rate.exit_crit_edge, %if.end3.i.esw_qos_set_group_max_rate.exit_crit_edge, %esw_qos_group_config.exit.thread.i, %if.end.esw_qos_set_group_max_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.esw_qos_set_group_max_rate.exit_crit_edge ], [ %retval.0.i16.i.i, %esw_qos_group_config.exit.thread.i ], [ 0, %if.end3.i.esw_qos_set_group_max_rate.exit_crit_edge ], [ %err.1.i, %for.inc.i.esw_qos_set_group_max_rate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #12
  call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %esw_qos_set_group_max_rate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %esw_qos_set_group_max_rate.exit ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_node_new(ptr nocapture noundef readonly %rate_node, ptr nocapture noundef writeonly %priv, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink = getelementptr inbounds %struct.devlink_rate, ptr %rate_node, i32 0, i32 2
  %0 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @mlx5_devlink_eswitch_get(ptr noundef %1) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %mode = getelementptr inbounds %struct.mlx5_eswitch, ptr %call, i32 0, i32 16
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_devlink_rate_node_new.__msg) #12
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.unlock_crit_edge, label %if.then4

do.body.unlock_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5_esw_devlink_rate_node_new.__msg, ptr %extack, align 4
  br label %unlock

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %7, i32 0, i32 8, i32 0, i32 12
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.end6.if.then9_crit_edge, label %if.end.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call fastcc i32 @esw_qos_get(ptr noundef %call, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = inttoptr i32 %call1.i to ptr
  br label %esw_qos_create_rate_group.exit

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call fastcc ptr @__esw_qos_create_rate_group(ptr noundef %call, ptr noundef %extack) #12
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end5.i.esw_qos_create_rate_group.exit_crit_edge

if.end5.i.esw_qos_create_rate_group.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_create_rate_group.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @esw_qos_put(ptr noundef %call) #12
  br label %esw_qos_create_rate_group.exit

esw_qos_create_rate_group.exit:                   ; preds = %if.then8.i, %if.end5.i.esw_qos_create_rate_group.exit_crit_edge, %if.then3.i
  %retval.0.i = phi ptr [ %13, %if.then3.i ], [ %call6.i, %if.then8.i ], [ %call6.i, %if.end5.i.esw_qos_create_rate_group.exit_crit_edge ]
  %cmp.i24 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %esw_qos_create_rate_group.exit.if.then9_crit_edge, label %if.end11

esw_qos_create_rate_group.exit.if.then9_crit_edge: ; preds = %esw_qos_create_rate_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %esw_qos_create_rate_group.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %retval.0.i27 = phi ptr [ %retval.0.i, %esw_qos_create_rate_group.exit.if.then9_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end6.if.then9_crit_edge ]
  %14 = ptrtoint ptr %retval.0.i27 to i32
  br label %unlock

if.end11:                                         ; preds = %esw_qos_create_rate_group.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retval.0.i, ptr %priv, align 4
  br label %unlock

unlock:                                           ; preds = %if.end11, %if.then9, %if.then4, %do.body.unlock_crit_edge
  %err.0 = phi i32 [ %14, %if.then9 ], [ 0, %if.end11 ], [ -95, %if.then4 ], [ -95, %do.body.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %err.0, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_devlink_eswitch_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_node_del(ptr nocapture noundef readonly %rate_node, ptr noundef %priv, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink = getelementptr inbounds %struct.devlink_rate, ptr %rate_node, i32 0, i32 2
  %0 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink, align 4
  %call = tail call ptr @mlx5_devlink_eswitch_get(ptr noundef %1) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %call.i = tail call fastcc i32 @__esw_qos_destroy_rate_group(ptr noundef %call, ptr noundef %priv, ptr noundef %extack) #12
  tail call fastcc void @esw_qos_put(ptr noundef %call) #12
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_qos_vport_update_group(ptr noundef %esw, ptr noundef %vport, ptr noundef %group, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %sched_ctx.i72.i.i = alloca [16 x i32], align 4
  %sched_ctx.i.i.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %call = tail call fastcc i32 @esw_qos_vport_enable(ptr noundef %esw, ptr noundef %vport, i32 noundef 0, i32 noundef 0, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 13
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %group1.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %2 = ptrtoint ptr %group1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group1.i, align 4
  %tobool2.not.i = icmp eq ptr %group, null
  br i1 %tobool2.not.i, label %cond.false.i, label %if.end.i.cond.end.i_crit_edge

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %group0.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %group0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group0.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %5, %cond.false.i ], [ %group, %if.end.i.cond.end.i_crit_edge ]
  %cmp.i = icmp eq ptr %3, %cond.i
  br i1 %cmp.i, label %cond.end.i.if.end_crit_edge, label %if.end5.i

cond.end.i.if.end_crit_edge:                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end5.i:                                        ; preds = %cond.end.i
  %6 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %esw, align 8
  %esw_tsar_ix.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %esw_tsar_ix.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %esw_tsar_ix.i.i, align 4
  %call.i.i = tail call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %7, i8 noundef zeroext 2, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end5.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_update_group_scheduling_element.__msg) #12
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.if.end_crit_edge, label %if.then2.i.i

do.body.i.i.if.end_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @esw_qos_update_group_scheduling_element.__msg, ptr %extack, align 4
  br label %if.end

if.end3.i.i:                                      ; preds = %if.end5.i
  %11 = ptrtoint ptr %group1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cond.i, ptr %group1.i, align 4
  %max_rate6.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 4
  %12 = ptrtoint ptr %max_rate6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_rate6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool7.not.i.i, label %cond.false.i.i, label %if.end3.i.i.cond.end.i.i_crit_edge

if.end3.i.i.cond.end.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_rate10.i.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %cond.i, i32 0, i32 1
  %14 = ptrtoint ptr %max_rate10.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_rate10.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end3.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %15, %cond.false.i.i ], [ %13, %if.end3.i.i.cond.end.i.i_crit_edge ]
  %bw_share.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %bw_share.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bw_share.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx.i.i.i) #12
  %18 = getelementptr inbounds i8, ptr %sched_ctx.i.i.i, i32 12
  %19 = call ptr @memset(ptr %18, i32 0, i32 52)
  %20 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %esw, align 8
  %tobool.not.i.i.i = icmp eq ptr %cond.i, null
  %qos3.i.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %cond.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %qos3.i.i.i, ptr %cond.i
  %22 = ptrtoint ptr %cond.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond.i.i.i = load i32, ptr %cond.in.i.i.i, align 4
  %23 = ptrtoint ptr %sched_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %sched_ctx.i.i.i, align 4
  %add.ptr11.i.i.i = getelementptr inbounds i8, ptr %sched_ctx.i.i.i, i32 4
  %vport14.i.i.i = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %24 = ptrtoint ptr %vport14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vport14.i.i.i, align 8
  %conv.i.i.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i.i.i, ptr %add.ptr11.i.i.i, align 4
  %add.ptr32.i.i.i = getelementptr inbounds i32, ptr %sched_ctx.i.i.i, i32 2
  %27 = ptrtoint ptr %add.ptr32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond.i.i.i, ptr %add.ptr32.i.i.i, align 4
  %add.ptr47.i.i.i = getelementptr inbounds i32, ptr %sched_ctx.i.i.i, i32 6
  %28 = ptrtoint ptr %add.ptr47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.i.i, ptr %add.ptr47.i.i.i, align 4
  %add.ptr62.i.i.i = getelementptr inbounds i32, ptr %sched_ctx.i.i.i, i32 5
  %29 = ptrtoint ptr %add.ptr62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %17, ptr %add.ptr62.i.i.i, align 4
  %call.i.i.i = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %21, i8 noundef zeroext 2, ptr noundef nonnull %sched_ctx.i.i.i, ptr noundef %esw_tsar_ix.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool73.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool73.not.i.i.i, label %if.end8.i, label %do.body15.i.i

do.body15.i.i:                                    ; preds = %cond.end.i.i
  %30 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %esw, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %34 = ptrtoint ptr %vport14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vport14.i.i.i, align 8
  %conv79.i.i.i = zext i16 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.42, i32 noundef %conv79.i.i.i, i32 noundef %call.i.i.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i.i.i) #12
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_update_group_scheduling_element.__msg.52) #12
  %tobool17.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool17.not.i.i, label %do.body15.i.i.if.end20.i.i_crit_edge, label %if.then18.i.i

do.body15.i.i.if.end20.i.i_crit_edge:             ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @esw_qos_update_group_scheduling_element.__msg.52, ptr %extack, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %do.body15.i.i.if.end20.i.i_crit_edge
  %37 = ptrtoint ptr %group1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %3, ptr %group1.i, align 4
  %38 = ptrtoint ptr %max_rate6.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_rate6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool28.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool28.not.i.i, label %cond.false32.i.i, label %if.end20.i.i.cond.end34.i.i_crit_edge

if.end20.i.i.cond.end34.i.i_crit_edge:            ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end34.i.i

cond.false32.i.i:                                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_rate33.i.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %max_rate33.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_rate33.i.i, align 4
  br label %cond.end34.i.i

cond.end34.i.i:                                   ; preds = %cond.false32.i.i, %if.end20.i.i.cond.end34.i.i_crit_edge
  %cond35.i.i = phi i32 [ %41, %cond.false32.i.i ], [ %39, %if.end20.i.i.cond.end34.i.i_crit_edge ]
  %42 = ptrtoint ptr %bw_share.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bw_share.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx.i72.i.i) #12
  %44 = getelementptr inbounds i8, ptr %sched_ctx.i72.i.i, i32 12
  %45 = call ptr @memset(ptr %44, i32 0, i32 52)
  %46 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %esw, align 8
  %tobool.not.i74.i.i = icmp eq ptr %3, null
  %cond.in.i76.i.i = select i1 %tobool.not.i74.i.i, ptr %qos3.i.i.i, ptr %3
  %48 = ptrtoint ptr %cond.in.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %cond.i77.i.i = load i32, ptr %cond.in.i76.i.i, align 4
  %49 = ptrtoint ptr %sched_ctx.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16777216, ptr %sched_ctx.i72.i.i, align 4
  %add.ptr11.i78.i.i = getelementptr inbounds i8, ptr %sched_ctx.i72.i.i, i32 4
  %50 = ptrtoint ptr %vport14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vport14.i.i.i, align 8
  %conv.i80.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %add.ptr11.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv.i80.i.i, ptr %add.ptr11.i78.i.i, align 4
  %add.ptr32.i81.i.i = getelementptr inbounds i32, ptr %sched_ctx.i72.i.i, i32 2
  %53 = ptrtoint ptr %add.ptr32.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %cond.i77.i.i, ptr %add.ptr32.i81.i.i, align 4
  %add.ptr47.i82.i.i = getelementptr inbounds i32, ptr %sched_ctx.i72.i.i, i32 6
  %54 = ptrtoint ptr %add.ptr47.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond35.i.i, ptr %add.ptr47.i82.i.i, align 4
  %add.ptr62.i83.i.i = getelementptr inbounds i32, ptr %sched_ctx.i72.i.i, i32 5
  %55 = ptrtoint ptr %add.ptr62.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %43, ptr %add.ptr62.i83.i.i, align 4
  %call.i85.i.i = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %47, i8 noundef zeroext 2, ptr noundef nonnull %sched_ctx.i72.i.i, ptr noundef %esw_tsar_ix.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i.i)
  %tobool73.not.i86.i.i = icmp eq i32 %call.i85.i.i, 0
  br i1 %tobool73.not.i86.i.i, label %esw_qos_vport_create_sched_element.exit89.thread.i.i, label %do.end43.i.i

esw_qos_vport_create_sched_element.exit89.thread.i.i: ; preds = %cond.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i72.i.i) #12
  br label %if.end

do.end43.i.i:                                     ; preds = %cond.end34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %esw, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  %60 = ptrtoint ptr %vport14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vport14.i.i.i, align 8
  %conv79.i87.i.i = zext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %59, ptr noundef nonnull @.str.42, i32 noundef %conv79.i87.i.i, i32 noundef %call.i85.i.i) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i72.i.i) #12
  %62 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %esw, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %66 = ptrtoint ptr %vport14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vport14.i.i.i, align 8
  %conv.i.i = zext i16 %67 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.53, i32 noundef %conv.i.i) #17
  br label %if.end

if.end8.i:                                        ; preds = %cond.end.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i.i.i) #12
  %68 = ptrtoint ptr %bw_share.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bw_share.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool10.not.i = icmp eq i32 %69, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end8.i.if.then13.i_crit_edge

if.end8.i.if.then13.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %bw_share11.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %cond.i, i32 0, i32 3
  %70 = ptrtoint ptr %bw_share11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bw_share11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool12.not.i = icmp eq i32 %71, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.if.then13.i_crit_edge

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %if.end8.i.if.then13.i_crit_edge
  %call14.i = call fastcc i32 @esw_qos_normalize_vports_min_rate(ptr noundef %esw, ptr noundef %3, ptr noundef %extack) #12
  %call15.i = call fastcc i32 @esw_qos_normalize_vports_min_rate(ptr noundef %esw, ptr noundef %cond.i, ptr noundef %extack) #12
  br label %if.end

if.end:                                           ; preds = %if.then13.i, %lor.lhs.false.i.if.end_crit_edge, %do.end43.i.i, %esw_qos_vport_create_sched_element.exit89.thread.i.i, %if.then2.i.i, %do.body.i.i.if.end_crit_edge, %cond.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ -22, %if.then.if.end_crit_edge ], [ 0, %cond.end.i.if.end_crit_edge ], [ 0, %if.then13.i ], [ 0, %lor.lhs.false.i.if.end_crit_edge ], [ %call.i.i.i, %esw_qos_vport_create_sched_element.exit89.thread.i.i ], [ %call.i.i.i, %do.end43.i.i ], [ %call.i.i, %do.body.i.i.if.end_crit_edge ], [ %call.i.i, %if.then2.i.i ]
  call void @mutex_unlock(ptr noundef %state_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_esw_devlink_rate_parent_set(ptr nocapture noundef readnone %devlink_rate, ptr noundef readnone %parent, ptr noundef %priv, ptr noundef %parent_priv, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %.parent_priv = select i1 %tobool.not, ptr null, ptr %parent_priv
  %call5 = tail call i32 @mlx5_esw_qos_vport_update_group(ptr noundef %3, ptr noundef %priv, ptr noundef %.parent_priv, ptr noundef %extack)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_vport_qos_destroy(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %vport_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport_id, align 4
  %conv = zext i16 %5 to i32
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_destroy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tsar_ix, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %7) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_vport_qos_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %vport_id = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vport_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vport_id, align 4
  %conv = zext i16 %5 to i32
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tsar_ix, align 4
  %bw_share = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bw_share, align 4
  %max_rate = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rate, align 4
  %group = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_vport_qos_template, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.20, ptr noundef %add.ptr, i32 noundef %conv, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %13) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_group_qos_template(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %group = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_template, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tsar_ix, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.22, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mlx5_esw_group_qos_config(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
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
  %__data_loc_devname = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_devname, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %group = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group, align 4
  %tsar_ix = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tsar_ix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tsar_ix, align 4
  %bw_share = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %bw_share to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bw_share, align 4
  %max_rate = getelementptr inbounds %struct.trace_event_raw_mlx5_esw_group_qos_config, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_rate, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.23, ptr noundef %add.ptr, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #12
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run5(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__esw_qos_destroy_rate_group(ptr noundef %esw, ptr noundef %group, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %group, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %group, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %group, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %esw, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %9, i32 0, i32 8, i32 0, i32 12
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr i32, ptr %11, i32 7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %groups.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn80.i = load ptr, ptr %groups.i, align 4
  %cmp.not81.i = icmp eq ptr %.pn80.i, %groups.i
  br i1 %cmp.not81.i, label %list_del.exit.esw_qos_calculate_min_rate_divider.exit_crit_edge, label %list_del.exit.for.body.i_crit_edge

list_del.exit.for.body.i_crit_edge:               ; preds = %list_del.exit
  br label %for.body.i

list_del.exit.esw_qos_calculate_min_rate_divider.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_del.exit.for.body.i_crit_edge
  %.pn83.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn80.i, %list_del.exit.for.body.i_crit_edge ]
  %max_guarantee.082.i = phi i32 [ %17, %for.body.i.for.body.i_crit_edge ], [ 0, %list_del.exit.for.body.i_crit_edge ]
  %min_rate.i = getelementptr i8, ptr %.pn83.i, i32 -8
  %15 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_rate.i, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %max_guarantee.082.i) #12
  %18 = ptrtoint ptr %.pn83.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn83.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %groups.i
  br i1 %cmp.not.i, label %if.end36.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end36.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool37.not.i = icmp eq i32 %17, 0
  br i1 %tobool37.not.i, label %if.end36.i.esw_qos_calculate_min_rate_divider.exit_crit_edge, label %if.then38.i

if.end36.i.esw_qos_calculate_min_rate_divider.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %17, %13
  %19 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #12
  br label %esw_qos_calculate_min_rate_divider.exit

esw_qos_calculate_min_rate_divider.exit:          ; preds = %if.then38.i, %if.end36.i.esw_qos_calculate_min_rate_divider.exit_crit_edge, %list_del.exit.esw_qos_calculate_min_rate_divider.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then38.i ], [ 0, %if.end36.i.esw_qos_calculate_min_rate_divider.exit_crit_edge ], [ 0, %list_del.exit.esw_qos_calculate_min_rate_divider.exit_crit_edge ]
  %call1 = tail call fastcc i32 @esw_qos_normalize_groups_min_rate(ptr noundef %esw, i32 noundef %retval.0.i, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %esw_qos_calculate_min_rate_divider.exit.if.end4_crit_edge, label %do.body

esw_qos_calculate_min_rate_divider.exit.if.end4_crit_edge: ; preds = %esw_qos_calculate_min_rate_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.body:                                          ; preds = %esw_qos_calculate_min_rate_divider.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__esw_qos_destroy_rate_group.__msg) #12
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.if.end4_crit_edge, label %if.then3

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @__esw_qos_destroy_rate_group.__msg, ptr %extack, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %do.body.if.end4_crit_edge, %esw_qos_calculate_min_rate_divider.exit.if.end4_crit_edge
  %21 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %esw, align 8
  %23 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %group, align 4
  %call5 = tail call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %22, i8 noundef zeroext 2, i32 noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.end16_crit_edge, label %do.body8

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

do.body8:                                         ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__esw_qos_destroy_rate_group.__msg.29) #12
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body8.if.end16_crit_edge, label %if.then11

do.body8.if.end16_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then11:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @__esw_qos_destroy_rate_group.__msg.29, ptr %extack, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.body8.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %26 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %esw, align 8
  %28 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %group, align 4
  tail call fastcc void @trace_mlx5_esw_group_qos_destroy(ptr noundef %27, ptr noundef %group, i32 noundef %29)
  tail call void @kfree(ptr noundef %group) #12
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_qos_normalize_groups_min_rate(ptr noundef %esw, i32 noundef %divider, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %sched_ctx.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %groups = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn44 = load ptr, ptr %groups, align 4
  %cmp.not46 = icmp eq ptr %.pn44, %groups
  br i1 %cmp.not46, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %divider)
  %tobool.not.i = icmp eq i32 %divider, 0
  %add.i = add i32 %divider, -1
  %qos.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %add.ptr11.i.i = getelementptr inbounds i32, ptr %sched_ctx.i, i32 2
  %add.ptr22.i.i = getelementptr inbounds i32, ptr %sched_ctx.i, i32 6
  %add.ptr35.i.i = getelementptr inbounds i32, ptr %sched_ctx.i, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn47 = phi ptr [ %.pn44, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %group.048 = getelementptr i8, ptr %.pn47, i32 -16
  br i1 %tobool.not.i, label %for.body.esw_qos_calc_bw_share.exit_crit_edge, label %if.then.i

for.body.esw_qos_calc_bw_share.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calc_bw_share.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %min_rate = getelementptr i8, ptr %.pn47, i32 -8
  %7 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_rate, align 4
  %sub.i = add i32 %add.i, %8
  %div.i = udiv i32 %sub.i, %divider
  %9 = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #12
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 %5) #12
  br label %esw_qos_calc_bw_share.exit

esw_qos_calc_bw_share.exit:                       ; preds = %if.then.i, %for.body.esw_qos_calc_bw_share.exit_crit_edge
  %retval.0.i = phi i32 [ %10, %if.then.i ], [ 0, %for.body.esw_qos_calc_bw_share.exit_crit_edge ]
  %bw_share4 = getelementptr i8, ptr %.pn47, i32 -4
  %11 = ptrtoint ptr %bw_share4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bw_share4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %12)
  %cmp5 = icmp eq i32 %retval.0.i, %12
  br i1 %cmp5, label %esw_qos_calc_bw_share.exit.for.inc_crit_edge, label %if.end

esw_qos_calc_bw_share.exit.for.inc_crit_edge:     ; preds = %esw_qos_calc_bw_share.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %esw_qos_calc_bw_share.exit
  %max_rate = getelementptr i8, ptr %.pn47, i32 -12
  %13 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_rate, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx.i) #12
  %15 = call ptr @memset(ptr %sched_ctx.i, i32 0, i32 64)
  %16 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %esw, align 8
  %18 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qos.i, align 8
  %20 = ptrtoint ptr %group.048 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %group.048, align 4
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %23, i32 16
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.end.do.body.i_crit_edge, label %lor.lhs.false.i.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %arrayidx3.i.i = getelementptr %struct.mlx5_core_dev, ptr %17, i32 0, i32 8, i32 0, i32 12
  %27 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = and i32 %30, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool9.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i.do.body.i_crit_edge, label %esw_qos_tsar_config.exit.i

lor.lhs.false.i.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

esw_qos_tsar_config.exit.i:                       ; preds = %lor.lhs.false.i.i
  %32 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %19, ptr %add.ptr11.i.i, align 4
  %33 = ptrtoint ptr %add.ptr22.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %14, ptr %add.ptr22.i.i, align 4
  %34 = ptrtoint ptr %add.ptr35.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i, ptr %add.ptr35.i.i, align 4
  %call.i.i = call i32 @mlx5_modify_scheduling_element_cmd(ptr noundef %17, i8 noundef zeroext 2, ptr noundef nonnull %sched_ctx.i, i32 noundef %21, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i39 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i39, label %if.end8, label %esw_qos_tsar_config.exit.i.do.body.i_crit_edge

esw_qos_tsar_config.exit.i.do.body.i_crit_edge:   ; preds = %esw_qos_tsar_config.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %esw_qos_tsar_config.exit.i.do.body.i_crit_edge, %lor.lhs.false.i.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %retval.0.i16.i = phi i32 [ %call.i.i, %esw_qos_tsar_config.exit.i.do.body.i_crit_edge ], [ -95, %lor.lhs.false.i.i.do.body.i_crit_edge ], [ -95, %if.end.do.body.i_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_group_config.__msg) #12
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i.esw_qos_group_config.exit.thread_crit_edge, label %if.then3.i

do.body.i.esw_qos_group_config.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_group_config.exit.thread

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @esw_qos_group_config.__msg, ptr %extack, align 4
  br label %esw_qos_group_config.exit.thread

esw_qos_group_config.exit.thread:                 ; preds = %if.then3.i, %do.body.i.esw_qos_group_config.exit.thread_crit_edge
  %36 = ptrtoint ptr %group.048 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %group.048, align 4
  call fastcc void @trace_mlx5_esw_group_qos_config(ptr noundef %17, ptr noundef %group.048, i32 noundef %37, i32 noundef %retval.0.i, i32 noundef %14) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i) #12
  br label %cleanup

if.end8:                                          ; preds = %esw_qos_tsar_config.exit.i
  %38 = ptrtoint ptr %group.048 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %group.048, align 4
  call fastcc void @trace_mlx5_esw_group_qos_config(ptr noundef %17, ptr noundef %group.048, i32 noundef %39, i32 noundef %retval.0.i, i32 noundef %14) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx.i) #12
  %40 = ptrtoint ptr %bw_share4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %bw_share4, align 4
  %call10 = call fastcc i32 @esw_qos_normalize_vports_min_rate(ptr noundef %esw, ptr noundef %group.048, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.for.inc_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %esw_qos_calc_bw_share.exit.for.inc_crit_edge
  %41 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %groups
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %esw_qos_group_config.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16.i, %esw_qos_group_config.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_group_qos_destroy(ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_destroy, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_group_qos_destroy, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !204

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !214
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_destroy, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !215
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_destroy, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_group_qos_destroy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_group_qos_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 92, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %38 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_qos_normalize_vports_min_rate(ptr noundef %esw, ptr noundef readonly %group, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %i.i = alloca i32, align 4
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %esw, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #12
  %6 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %i.i, align 4
  %vports.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 6
  %call.i = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #12
  %tobool14.not77.i = icmp eq ptr %call.i, null
  br i1 %tobool14.not77.i, label %entry.if.end41.i_crit_edge, label %entry.for.body15.i_crit_edge

entry.for.body15.i_crit_edge:                     ; preds = %entry
  br label %for.body15.i

entry.if.end41.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

for.body15.i:                                     ; preds = %for.inc32.i.for.body15.i_crit_edge, %entry.for.body15.i_crit_edge
  %evport.079.i = phi ptr [ %call34.i, %for.inc32.i.for.body15.i_crit_edge ], [ %call.i, %entry.for.body15.i_crit_edge ]
  %max_guarantee.278.i = phi i32 [ %max_guarantee.3.i, %for.inc32.i.for.body15.i_crit_edge ], [ 0, %entry.for.body15.i_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.mlx5_vport, ptr %evport.079.i, i32 0, i32 13
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled.i, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not.i = icmp eq i8 %8, 0
  br i1 %tobool16.not.i, label %for.body15.i.for.inc32.i_crit_edge, label %lor.lhs.false.i

for.body15.i.for.inc32.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc32.i

lor.lhs.false.i:                                  ; preds = %for.body15.i
  %qos17.i = getelementptr inbounds %struct.mlx5_vport, ptr %evport.079.i, i32 0, i32 11
  %9 = ptrtoint ptr %qos17.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %qos17.i, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not.i = icmp eq i8 %10, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i.for.inc32.i_crit_edge, label %lor.lhs.false20.i

lor.lhs.false.i.for.inc32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc32.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i
  %group22.i = getelementptr inbounds %struct.mlx5_vport, ptr %evport.079.i, i32 0, i32 11, i32 5
  %11 = ptrtoint ptr %group22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %group22.i, align 4
  %cmp23.not.i = icmp eq ptr %12, %group
  br i1 %cmp23.not.i, label %lor.lhs.false24.i, label %lor.lhs.false20.i.for.inc32.i_crit_edge

lor.lhs.false20.i.for.inc32.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc32.i

lor.lhs.false24.i:                                ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #14
  %min_rate26.i = getelementptr inbounds %struct.mlx5_vport, ptr %evport.079.i, i32 0, i32 11, i32 3
  %13 = ptrtoint ptr %min_rate26.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_rate26.i, align 4
  %15 = call i32 @llvm.umax.i32(i32 %14, i32 %max_guarantee.278.i) #12
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %lor.lhs.false24.i, %lor.lhs.false20.i.for.inc32.i_crit_edge, %lor.lhs.false.i.for.inc32.i_crit_edge, %for.body15.i.for.inc32.i_crit_edge
  %max_guarantee.3.i = phi i32 [ %max_guarantee.278.i, %lor.lhs.false20.i.for.inc32.i_crit_edge ], [ %max_guarantee.278.i, %lor.lhs.false.i.for.inc32.i_crit_edge ], [ %max_guarantee.278.i, %for.body15.i.for.inc32.i_crit_edge ], [ %15, %lor.lhs.false24.i ]
  %call34.i = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i.i, i32 noundef -1, i32 noundef 8) #12
  %tobool14.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool14.not.i, label %if.end36.i, label %for.inc32.i.for.body15.i_crit_edge

for.inc32.i.for.body15.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i

if.end36.i:                                       ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_guarantee.3.i)
  %tobool37.not.i = icmp eq i32 %max_guarantee.3.i, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end41.i_crit_edge, label %if.then38.i

if.end36.i.if.end41.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %div.i = udiv i32 %max_guarantee.3.i, %5
  %16 = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #12
  br label %esw_qos_calculate_min_rate_divider.exit

if.end41.i:                                       ; preds = %if.end36.i.if.end41.i_crit_edge, %entry.if.end41.i_crit_edge
  %tobool45.not.i = icmp eq ptr %group, null
  br i1 %tobool45.not.i, label %if.end41.i.if.end49.i_crit_edge, label %land.lhs.true46.i

if.end41.i.if.end49.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

land.lhs.true46.i:                                ; preds = %if.end41.i
  %bw_share.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %group, i32 0, i32 3
  %17 = ptrtoint ptr %bw_share.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bw_share.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool47.not.i = icmp eq i32 %18, 0
  br i1 %tobool47.not.i, label %land.lhs.true46.i.if.end49.i_crit_edge, label %land.lhs.true46.i.esw_qos_calculate_min_rate_divider.exit_crit_edge

land.lhs.true46.i.esw_qos_calculate_min_rate_divider.exit_crit_edge: ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calculate_min_rate_divider.exit

land.lhs.true46.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true46.i.if.end49.i_crit_edge, %if.end41.i.if.end49.i_crit_edge
  br label %esw_qos_calculate_min_rate_divider.exit

esw_qos_calculate_min_rate_divider.exit:          ; preds = %if.end49.i, %land.lhs.true46.i.esw_qos_calculate_min_rate_divider.exit_crit_edge, %if.then38.i
  %retval.0.i = phi i32 [ %16, %if.then38.i ], [ 0, %if.end49.i ], [ 1, %land.lhs.true46.i.esw_qos_calculate_min_rate_divider.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %19 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i, align 4
  %call1 = call ptr @xa_find(ptr noundef %vports.i, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not47 = icmp eq ptr %call1, null
  br i1 %tobool.not47, label %esw_qos_calculate_min_rate_divider.exit.cleanup_crit_edge, label %for.body.lr.ph

esw_qos_calculate_min_rate_divider.exit.cleanup_crit_edge: ; preds = %esw_qos_calculate_min_rate_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %esw_qos_calculate_min_rate_divider.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not.i = icmp eq i32 %retval.0.i, 0
  %add.i = add i32 %retval.0.i, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %evport.048 = phi ptr [ %call1, %for.body.lr.ph ], [ %call23, %for.inc.for.body_crit_edge ]
  %enabled = getelementptr inbounds %struct.mlx5_vport, ptr %evport.048, i32 0, i32 13
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not = icmp eq i8 %21, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %evport.048, i32 0, i32 11
  %22 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %qos, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not = icmp eq i8 %23, 0
  br i1 %tobool4.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false5

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %group7 = getelementptr inbounds %struct.mlx5_vport, ptr %evport.048, i32 0, i32 11, i32 5
  %24 = ptrtoint ptr %group7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group7, align 4
  %cmp.not = icmp eq ptr %25, %group
  br i1 %cmp.not, label %if.end, label %lor.lhs.false5.for.inc_crit_edge

lor.lhs.false5.for.inc_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false5
  br i1 %tobool.not.i, label %if.end.esw_qos_calc_bw_share.exit_crit_edge, label %if.then.i

if.end.esw_qos_calc_bw_share.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_calc_bw_share.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %min_rate = getelementptr inbounds %struct.mlx5_vport, ptr %evport.048, i32 0, i32 11, i32 3
  %26 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_rate, align 4
  %sub.i = add i32 %add.i, %27
  %div.i45 = udiv i32 %sub.i, %retval.0.i
  %28 = call i32 @llvm.umax.i32(i32 %div.i45, i32 1) #12
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %5) #12
  br label %esw_qos_calc_bw_share.exit

esw_qos_calc_bw_share.exit:                       ; preds = %if.then.i, %if.end.esw_qos_calc_bw_share.exit_crit_edge
  %retval.0.i46 = phi i32 [ %29, %if.then.i ], [ 0, %if.end.esw_qos_calc_bw_share.exit_crit_edge ]
  %bw_share11 = getelementptr inbounds %struct.mlx5_vport, ptr %evport.048, i32 0, i32 11, i32 2
  %30 = ptrtoint ptr %bw_share11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bw_share11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i46, i32 %31)
  %cmp12 = icmp eq i32 %retval.0.i46, %31
  br i1 %cmp12, label %esw_qos_calc_bw_share.exit.for.inc_crit_edge, label %if.end14

esw_qos_calc_bw_share.exit.for.inc_crit_edge:     ; preds = %esw_qos_calc_bw_share.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end14:                                         ; preds = %esw_qos_calc_bw_share.exit
  %max_rate = getelementptr inbounds %struct.mlx5_vport, ptr %evport.048, i32 0, i32 11, i32 4
  %32 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_rate, align 8
  %call16 = call fastcc i32 @esw_qos_vport_config(ptr noundef %esw, ptr noundef nonnull %evport.048, i32 noundef %33, i32 noundef %retval.0.i46, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %bw_share11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i46, ptr %bw_share11, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %esw_qos_calc_bw_share.exit.for.inc_crit_edge, %lor.lhs.false5.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call23 = call ptr @xa_find_after(ptr noundef %vports.i, ptr noundef nonnull %i, i32 noundef -1, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call23, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %esw_qos_calculate_min_rate_divider.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %esw_qos_calculate_min_rate_divider.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_group_qos_config(ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_config, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_group_qos_config, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !204

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !216
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_config, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix, i32 noundef %bw_share, i32 noundef %max_rate) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !217
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !217
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_config, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_group_qos_config.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_group_qos_config.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 115, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %38 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_qos_vport_config(ptr nocapture noundef readonly %esw, ptr noundef %vport, i32 noundef %max_rate, i32 noundef %bw_share, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %sched_ctx = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sched_ctx) #12
  %0 = call ptr @memset(ptr %sched_ctx, i32 0, i32 64)
  %qos = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11
  %1 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %esw, align 8
  %3 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %qos, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %group1 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %group1, align 4
  %tobool4.not = icmp eq ptr %6, null
  %qos5 = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %cond.in = select i1 %tobool4.not, ptr %qos5, ptr %6
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load i32, ptr %cond.in, align 4
  %8 = ptrtoint ptr %sched_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sched_ctx, align 4
  %and = and i32 %9, 16777215
  %or = or i32 %and, 16777216
  store i32 %or, ptr %sched_ctx, align 4
  %add.ptr13 = getelementptr inbounds i8, ptr %sched_ctx, i32 4
  %vport16 = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 12
  %10 = ptrtoint ptr %vport16 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport16, align 8
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr13, align 4
  %and21 = and i32 %13, -65536
  %or24 = or i32 %and21, %conv
  store i32 %or24, ptr %add.ptr13, align 4
  %esw_tsar_ix = getelementptr inbounds %struct.mlx5_vport, ptr %vport, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %esw_tsar_ix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %esw_tsar_ix, align 4
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %17, i32 16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end.do.end34_crit_edge, label %lor.lhs.false.i

if.end.do.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

lor.lhs.false.i:                                  ; preds = %if.end
  %arrayidx3.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool9.not.i = icmp eq i32 %25, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.do.end34_crit_edge, label %esw_qos_tsar_config.exit

lor.lhs.false.i.do.end34_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

esw_qos_tsar_config.exit:                         ; preds = %lor.lhs.false.i
  %add.ptr11.i = getelementptr inbounds i32, ptr %sched_ctx, i32 2
  %26 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond, ptr %add.ptr11.i, align 4
  %add.ptr22.i = getelementptr inbounds i32, ptr %sched_ctx, i32 6
  %27 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %max_rate, ptr %add.ptr22.i, align 4
  %add.ptr35.i = getelementptr inbounds i32, ptr %sched_ctx, i32 5
  %28 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bw_share, ptr %add.ptr35.i, align 4
  %call.i = call i32 @mlx5_modify_scheduling_element_cmd(ptr noundef %2, i8 noundef zeroext 2, ptr noundef nonnull %sched_ctx, i32 noundef %15, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end44, label %esw_qos_tsar_config.exit.do.end34_crit_edge

esw_qos_tsar_config.exit.do.end34_crit_edge:      ; preds = %esw_qos_tsar_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end34:                                         ; preds = %esw_qos_tsar_config.exit.do.end34_crit_edge, %lor.lhs.false.i.do.end34_crit_edge, %if.end.do.end34_crit_edge
  %retval.0.i66 = phi i32 [ %call.i, %esw_qos_tsar_config.exit.do.end34_crit_edge ], [ -95, %lor.lhs.false.i.do.end34_crit_edge ], [ -95, %if.end.do.end34_crit_edge ]
  %29 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %esw, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %33 = ptrtoint ptr %vport16 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vport16, align 8
  %conv37 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.30, i32 noundef %conv37, i32 noundef %retval.0.i66) #17
  call void @do_trace_netlink_extack(ptr noundef nonnull @esw_qos_vport_config.__msg) #12
  %tobool39.not = icmp eq ptr %extack, null
  br i1 %tobool39.not, label %do.end34.cleanup_crit_edge, label %if.then40

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @esw_qos_vport_config.__msg, ptr %extack, align 4
  br label %cleanup

if.end44:                                         ; preds = %esw_qos_tsar_config.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_mlx5_esw_vport_qos_config(ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then40, %do.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -5, %entry.cleanup_crit_edge ], [ %retval.0.i66, %if.then40 ], [ %retval.0.i66, %do.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sched_ctx) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_vport_qos_config(ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_config, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_vport_qos_config, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !204

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !218
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_config, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !219
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_config, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_vport_qos_config.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_vport_qos_config.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 60, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %38 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @esw_qos_get(ptr noundef %esw, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tsar_ctx.i = alloca [16 x i32], align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 10, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !201

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 627, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %refcnt = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #12
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %3 = phi i32 [ %2, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %6, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #12, !srcloc !220
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !200

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !200

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #12
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #12
  br i1 %tobool12.i.i.i.not, label %if.then25, label %refcount_inc_not_zero.exit.if.end27_crit_edge

refcount_inc_not_zero.exit.if.end27_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %refcount_inc_not_zero.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tsar_ctx.i) #12
  %13 = call ptr @memset(ptr %tsar_ctx.i, i32 0, i32 64)
  %14 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %esw, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %17, i32 16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %20 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then25.esw_qos_create.exit_crit_edge, label %lor.lhs.false.i

if.then25.esw_qos_create.exit_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_create.exit

lor.lhs.false.i:                                  ; preds = %if.then25
  %arrayidx4.i = getelementptr %struct.mlx5_core_dev, ptr %15, i32 0, i32 8, i32 0, i32 12
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx4.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not.i = icmp eq i32 %25, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i.esw_qos_create.exit_crit_edge, label %if.end.i

lor.lhs.false.i.esw_qos_create.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_create.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 5
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %if.end.i.esw_qos_create.exit_crit_edge, label %do.body.i

if.end.i.esw_qos_create.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_create.exit

do.body.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %tsar_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tsar_ctx.i, align 4
  %and16.i = and i32 %30, 16777215
  store i32 %and16.i, ptr %tsar_ctx.i, align 4
  %qos.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %call25.i = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %15, i8 noundef zeroext 2, ptr noundef nonnull %tsar_ctx.i, ptr noundef %qos.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end31.i, label %do.end30.i

do.end30.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %15, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.32, i32 noundef %call25.i) #17
  br label %esw_qos_create.exit

if.end31.i:                                       ; preds = %do.body.i
  %groups.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 2
  %33 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %groups.i, ptr %groups.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %groups.i, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx4.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %39 = and i32 %38, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool41.not.i = icmp eq i32 %39, 0
  br i1 %tobool41.not.i, label %if.end31.i.if.end60.i_crit_edge, label %if.then42.i

if.end31.i.if.end60.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then42.i:                                      ; preds = %if.end31.i
  %call43.i = call fastcc ptr @__esw_qos_create_rate_group(ptr noundef %esw, ptr noundef %extack) #12
  %group0.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %group0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call43.i, ptr %group0.i, align 4
  %cmp.i.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end51.i, label %if.then42.i.if.end60.i_crit_edge

if.then42.i.if.end60.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

do.end51.i:                                       ; preds = %if.then42.i
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %15, align 8
  %43 = ptrtoint ptr %call43.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.35, i32 noundef %43) #17
  %44 = ptrtoint ptr %group0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %group0.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %esw, align 8
  %49 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qos.i, align 8
  %call65.i = call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %48, i8 noundef zeroext 2, i32 noundef %50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %do.end51.i.esw_qos_create.exit_crit_edge, label %do.end70.i

do.end51.i.esw_qos_create.exit_crit_edge:         ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %esw_qos_create.exit

if.end60.i:                                       ; preds = %if.then42.i.if.end60.i_crit_edge, %if.end31.i.if.end60.i_crit_edge
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #12
  %51 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %refcnt, align 4
  br label %esw_qos_create.exit

do.end70.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %esw, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.38) #17
  br label %esw_qos_create.exit

esw_qos_create.exit:                              ; preds = %do.end70.i, %if.end60.i, %do.end51.i.esw_qos_create.exit_crit_edge, %do.end30.i, %if.end.i.esw_qos_create.exit_crit_edge, %lor.lhs.false.i.esw_qos_create.exit_crit_edge, %if.then25.esw_qos_create.exit_crit_edge
  %retval.0.i = phi i32 [ %call25.i, %do.end30.i ], [ 0, %if.end60.i ], [ -95, %lor.lhs.false.i.esw_qos_create.exit_crit_edge ], [ -95, %if.then25.esw_qos_create.exit_crit_edge ], [ -95, %if.end.i.esw_qos_create.exit_crit_edge ], [ %46, %do.end70.i ], [ %46, %do.end51.i.esw_qos_create.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tsar_ctx.i) #12
  br label %if.end27

if.end27:                                         ; preds = %esw_qos_create.exit, %refcount_inc_not_zero.exit.if.end27_crit_edge
  %err.0 = phi i32 [ 0, %refcount_inc_not_zero.exit.if.end27_crit_edge ], [ %retval.0.i, %esw_qos_create.exit ]
  ret i32 %err.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_vport_qos_create(ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_create, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_vport_qos_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !204

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !221
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_create, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %vport, i32 noundef %bw_share, i32 noundef %max_rate) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_vport_qos_create, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_vport_qos_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_vport_qos_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 55, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %38 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_create_scheduling_element_cmd(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__esw_qos_create_rate_group(ptr noundef %esw, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  %tsar_ctx = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tsar_ctx) #12
  %0 = call ptr @memset(ptr %tsar_ctx, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %qos = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13
  %2 = ptrtoint ptr %qos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qos, align 8
  %add.ptr = getelementptr inbounds i32, ptr %tsar_ctx, i32 2
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %add.ptr, align 4
  %5 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esw, align 8
  %call9 = call i32 @mlx5_create_scheduling_element_cmd(ptr noundef %6, i8 noundef zeroext 2, ptr noundef nonnull %tsar_ctx, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end18, label %do.body12

do.body12:                                        ; preds = %do.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @__esw_qos_create_rate_group.__msg) #12
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body12.err_sched_elem_crit_edge, label %do.body12.err_sched_elem.sink.split_crit_edge

do.body12.err_sched_elem.sink.split_crit_edge:    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sched_elem.sink.split

do.body12.err_sched_elem_crit_edge:               ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sched_elem

if.end18:                                         ; preds = %do.body
  %list = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %call7.i.i, i32 0, i32 4
  %groups = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 2
  %prev.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %esw, i32 0, i32 13, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %groups) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %groups, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esw, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %14, i32 0, i32 8, i32 0, i32 12
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr i32, ptr %16, i32 7
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %19 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn80.i = load ptr, ptr %groups, align 4
  %cmp.not81.i = icmp eq ptr %.pn80.i, %groups
  br i1 %cmp.not81.i, label %list_add_tail.exit.if.end35_crit_edge, label %list_add_tail.exit.for.body.i_crit_edge

list_add_tail.exit.for.body.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %for.body.i

list_add_tail.exit.if.end35_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %list_add_tail.exit.for.body.i_crit_edge
  %.pn83.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn80.i, %list_add_tail.exit.for.body.i_crit_edge ]
  %max_guarantee.082.i = phi i32 [ %22, %for.body.i.for.body.i_crit_edge ], [ 0, %list_add_tail.exit.for.body.i_crit_edge ]
  %min_rate.i = getelementptr i8, ptr %.pn83.i, i32 -8
  %20 = ptrtoint ptr %min_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_rate.i, align 4
  %22 = call i32 @llvm.umax.i32(i32 %21, i32 %max_guarantee.082.i) #12
  %23 = ptrtoint ptr %.pn83.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn83.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %groups
  br i1 %cmp.not.i, label %if.end36.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end36.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not.i = icmp eq i32 %22, 0
  br i1 %tobool37.not.i, label %if.end36.i.if.end35_crit_edge, label %esw_qos_calculate_min_rate_divider.exit

if.end36.i.if.end35_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

esw_qos_calculate_min_rate_divider.exit:          ; preds = %if.end36.i
  %div.i = udiv i32 %22, %18
  %24 = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #12
  %call23 = call fastcc i32 @esw_qos_normalize_groups_min_rate(ptr noundef %esw, i32 noundef %24, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %esw_qos_calculate_min_rate_divider.exit.if.end35_crit_edge, label %do.body26

esw_qos_calculate_min_rate_divider.exit.if.end35_crit_edge: ; preds = %esw_qos_calculate_min_rate_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.body26:                                        ; preds = %esw_qos_calculate_min_rate_divider.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @__esw_qos_create_rate_group.__msg.40) #12
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.if.end31_crit_edge, label %if.then29

do.body26.if.end31_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @__esw_qos_create_rate_group.__msg.40, ptr %extack, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body26.if.end31_crit_edge
  %call.i.i81 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #12
  br i1 %call.i.i81, label %if.end.i.i82, label %if.end31.list_del.exit_crit_edge

if.end31.list_del.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i82:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %list, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i82, %if.end31.list_del.exit_crit_edge
  %32 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 8
  %prev.i83 = getelementptr inbounds %struct.mlx5_esw_rate_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i83, align 4
  %34 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %esw, align 8
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  %call41 = call i32 @mlx5_destroy_scheduling_element_cmd(ptr noundef %35, i8 noundef zeroext 2, i32 noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %list_del.exit.err_sched_elem_crit_edge, label %do.body44

list_del.exit.err_sched_elem_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sched_elem

if.end35:                                         ; preds = %esw_qos_calculate_min_rate_divider.exit.if.end35_crit_edge, %if.end36.i.if.end35_crit_edge, %list_add_tail.exit.if.end35_crit_edge
  %38 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %esw, align 8
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call7.i.i, align 8
  call fastcc void @trace_mlx5_esw_group_qos_create(ptr noundef %39, ptr noundef nonnull %call7.i.i, i32 noundef %41)
  br label %cleanup

do.body44:                                        ; preds = %list_del.exit
  call void @do_trace_netlink_extack(ptr noundef nonnull @__esw_qos_create_rate_group.__msg.41) #12
  br i1 %tobool28.not, label %do.body44.err_sched_elem_crit_edge, label %do.body44.err_sched_elem.sink.split_crit_edge

do.body44.err_sched_elem.sink.split_crit_edge:    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sched_elem.sink.split

do.body44.err_sched_elem_crit_edge:               ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_sched_elem

err_sched_elem.sink.split:                        ; preds = %do.body44.err_sched_elem.sink.split_crit_edge, %do.body12.err_sched_elem.sink.split_crit_edge
  %__esw_qos_create_rate_group.__msg.41.sink = phi ptr [ @__esw_qos_create_rate_group.__msg, %do.body12.err_sched_elem.sink.split_crit_edge ], [ @__esw_qos_create_rate_group.__msg.41, %do.body44.err_sched_elem.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call9, %do.body12.err_sched_elem.sink.split_crit_edge ], [ %call23, %do.body44.err_sched_elem.sink.split_crit_edge ]
  %42 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %__esw_qos_create_rate_group.__msg.41.sink, ptr %extack, align 4
  br label %err_sched_elem

err_sched_elem:                                   ; preds = %err_sched_elem.sink.split, %do.body44.err_sched_elem_crit_edge, %list_del.exit.err_sched_elem_crit_edge, %do.body12.err_sched_elem_crit_edge
  %err.0 = phi i32 [ %call23, %list_del.exit.err_sched_elem_crit_edge ], [ %call9, %do.body12.err_sched_elem_crit_edge ], [ %call23, %do.body44.err_sched_elem_crit_edge ], [ %err.0.ph, %err_sched_elem.sink.split ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %43 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_sched_elem, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %43, %err_sched_elem ], [ %call7.i.i, %if.end35 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tsar_ctx) #12
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5_esw_group_qos_create(ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_create, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mlx5_esw_group_qos_create, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !204

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !223
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_create, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dev, ptr noundef %group, i32 noundef %tsar_ix) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !224
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !224
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  %33 = tail call i32 @llvm.read_register.i32(metadata !190) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !207
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mlx5_esw_group_qos_create, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_mlx5_esw_group_qos_create.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mlx5_esw_group_qos_create.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 85, ptr noundef nonnull @.str.25) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !208
  %38 = tail call i32 @llvm.read_register.i32(metadata !190) #12
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_max_linkspeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !58, !59, !61, !63, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !107, !108, !110, !111, !112, !113, !115, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !152, !153, !155, !156, !157, !158, !159, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__tracepoint_mlx5_esw_vport_qos_destroy, !1, !"__tracepoint_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 13, i32 1}
!2 = !{ptr @__tracepoint_ptr_mlx5_esw_vport_qos_destroy, !1, !"__tracepoint_ptr_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mlx5_esw_vport_qos_destroy, !1, !"__SCK__tp_func_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mlx5_esw_vport_qos_create, !5, !"__tracepoint_mlx5_esw_vport_qos_create", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 52, i32 1}
!6 = !{ptr @__tracepoint_ptr_mlx5_esw_vport_qos_create, !5, !"__tracepoint_ptr_mlx5_esw_vport_qos_create", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mlx5_esw_vport_qos_create, !5, !"__SCK__tp_func_mlx5_esw_vport_qos_create", i1 false, i1 false}
!8 = !{ptr @__tracepoint_mlx5_esw_vport_qos_config, !9, !"__tracepoint_mlx5_esw_vport_qos_config", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 57, i32 1}
!10 = !{ptr @__tracepoint_ptr_mlx5_esw_vport_qos_config, !9, !"__tracepoint_ptr_mlx5_esw_vport_qos_config", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_mlx5_esw_vport_qos_config, !9, !"__SCK__tp_func_mlx5_esw_vport_qos_config", i1 false, i1 false}
!12 = !{ptr @__tracepoint_mlx5_esw_group_qos_create, !13, !"__tracepoint_mlx5_esw_group_qos_create", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 80, i32 1}
!14 = !{ptr @__tracepoint_ptr_mlx5_esw_group_qos_create, !13, !"__tracepoint_ptr_mlx5_esw_group_qos_create", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_mlx5_esw_group_qos_create, !13, !"__SCK__tp_func_mlx5_esw_group_qos_create", i1 false, i1 false}
!16 = !{ptr @__tracepoint_mlx5_esw_group_qos_destroy, !17, !"__tracepoint_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 87, i32 1}
!18 = !{ptr @__tracepoint_ptr_mlx5_esw_group_qos_destroy, !17, !"__tracepoint_ptr_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_mlx5_esw_group_qos_destroy, !17, !"__SCK__tp_func_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!20 = !{ptr @__tracepoint_mlx5_esw_group_qos_config, !21, !"__tracepoint_mlx5_esw_group_qos_config", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 94, i32 1}
!22 = !{ptr @__tracepoint_ptr_mlx5_esw_group_qos_config, !21, !"__tracepoint_ptr_mlx5_esw_group_qos_config", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_mlx5_esw_group_qos_config, !21, !"__SCK__tp_func_mlx5_esw_group_qos_config", i1 false, i1 false}
!24 = !{ptr @event_class_mlx5_esw_vport_qos_destroy, !1, !"event_class_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!25 = !{ptr @event_mlx5_esw_vport_qos_destroy, !1, !"event_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!26 = !{ptr @__event_mlx5_esw_vport_qos_destroy, !1, !"__event_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!27 = !{ptr @event_class_mlx5_esw_vport_qos_template, !28, !"event_class_mlx5_esw_vport_qos_template", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 29, i32 1}
!29 = !{ptr @event_mlx5_esw_vport_qos_create, !5, !"event_mlx5_esw_vport_qos_create", i1 false, i1 false}
!30 = !{ptr @__event_mlx5_esw_vport_qos_create, !5, !"__event_mlx5_esw_vport_qos_create", i1 false, i1 false}
!31 = !{ptr @event_mlx5_esw_vport_qos_config, !9, !"event_mlx5_esw_vport_qos_config", i1 false, i1 false}
!32 = !{ptr @__event_mlx5_esw_vport_qos_config, !9, !"__event_mlx5_esw_vport_qos_config", i1 false, i1 false}
!33 = !{ptr @event_class_mlx5_esw_group_qos_template, !34, !"event_class_mlx5_esw_group_qos_template", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/diag/qos_tracepoint.h", i32 62, i32 1}
!35 = !{ptr @event_mlx5_esw_group_qos_create, !13, !"event_mlx5_esw_group_qos_create", i1 false, i1 false}
!36 = !{ptr @__event_mlx5_esw_group_qos_create, !13, !"__event_mlx5_esw_group_qos_create", i1 false, i1 false}
!37 = !{ptr @event_mlx5_esw_group_qos_destroy, !17, !"event_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!38 = !{ptr @__event_mlx5_esw_group_qos_destroy, !17, !"__event_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!39 = !{ptr @event_class_mlx5_esw_group_qos_config, !21, !"event_class_mlx5_esw_group_qos_config", i1 false, i1 false}
!40 = !{ptr @event_mlx5_esw_group_qos_config, !21, !"event_mlx5_esw_group_qos_config", i1 false, i1 false}
!41 = !{ptr @__event_mlx5_esw_group_qos_config, !21, !"__event_mlx5_esw_group_qos_config", i1 false, i1 false}
!42 = !{ptr @__bpf_trace_tp_map_mlx5_esw_vport_qos_destroy, !1, !"__bpf_trace_tp_map_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!43 = !{ptr @__bpf_trace_tp_map_mlx5_esw_vport_qos_create, !5, !"__bpf_trace_tp_map_mlx5_esw_vport_qos_create", i1 false, i1 false}
!44 = !{ptr @__bpf_trace_tp_map_mlx5_esw_vport_qos_config, !9, !"__bpf_trace_tp_map_mlx5_esw_vport_qos_config", i1 false, i1 false}
!45 = !{ptr @__bpf_trace_tp_map_mlx5_esw_group_qos_create, !13, !"__bpf_trace_tp_map_mlx5_esw_group_qos_create", i1 false, i1 false}
!46 = !{ptr @__bpf_trace_tp_map_mlx5_esw_group_qos_destroy, !17, !"__bpf_trace_tp_map_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!47 = !{ptr @__bpf_trace_tp_map_mlx5_esw_group_qos_config, !21, !"__bpf_trace_tp_map_mlx5_esw_group_qos_config", i1 false, i1 false}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 680, i32 2}
!50 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 683, i32 2}
!52 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 690, i32 3}
!54 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mlx5_esw_qos_vport_disable._entry, !53, !"_entry", i1 false, i1 false}
!58 = !{ptr @mlx5_esw_qos_vport_disable._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 797, i32 49}
!61 = !{ptr @.str.7, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 823, i32 49}
!63 = !{ptr @mlx5_esw_devlink_rate_node_new.__msg, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 887, i32 3}
!65 = !{ptr @__tpstrtab_mlx5_esw_vport_qos_destroy, !1, !"__tpstrtab_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!66 = !{ptr @__tpstrtab_mlx5_esw_vport_qos_create, !5, !"__tpstrtab_mlx5_esw_vport_qos_create", i1 false, i1 false}
!67 = !{ptr @__tpstrtab_mlx5_esw_vport_qos_config, !9, !"__tpstrtab_mlx5_esw_vport_qos_config", i1 false, i1 false}
!68 = !{ptr @__tpstrtab_mlx5_esw_group_qos_create, !13, !"__tpstrtab_mlx5_esw_group_qos_create", i1 false, i1 false}
!69 = !{ptr @__tpstrtab_mlx5_esw_group_qos_destroy, !17, !"__tpstrtab_mlx5_esw_group_qos_destroy", i1 false, i1 false}
!70 = !{ptr @__tpstrtab_mlx5_esw_group_qos_config, !21, !"__tpstrtab_mlx5_esw_group_qos_config", i1 false, i1 false}
!71 = !{ptr @str__mlx5__trace_system_name, !72, !"str__mlx5__trace_system_name", i1 false, i1 false}
!72 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!73 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @trace_event_fields_mlx5_esw_vport_qos_destroy, !1, !"trace_event_fields_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!81 = !{ptr @trace_event_type_funcs_mlx5_esw_vport_qos_destroy, !1, !"trace_event_type_funcs_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!82 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @print_fmt_mlx5_esw_vport_qos_destroy, !1, !"print_fmt_mlx5_esw_vport_qos_destroy", i1 false, i1 false}
!84 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @trace_event_fields_mlx5_esw_vport_qos_template, !28, !"trace_event_fields_mlx5_esw_vport_qos_template", i1 false, i1 false}
!89 = !{ptr @trace_event_type_funcs_mlx5_esw_vport_qos_template, !28, !"trace_event_type_funcs_mlx5_esw_vport_qos_template", i1 false, i1 false}
!90 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @print_fmt_mlx5_esw_vport_qos_template, !28, !"print_fmt_mlx5_esw_vport_qos_template", i1 false, i1 false}
!92 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @trace_event_fields_mlx5_esw_group_qos_template, !34, !"trace_event_fields_mlx5_esw_group_qos_template", i1 false, i1 false}
!94 = !{ptr @trace_event_type_funcs_mlx5_esw_group_qos_template, !34, !"trace_event_type_funcs_mlx5_esw_group_qos_template", i1 false, i1 false}
!95 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @print_fmt_mlx5_esw_group_qos_template, !34, !"print_fmt_mlx5_esw_group_qos_template", i1 false, i1 false}
!97 = !{ptr @trace_event_fields_mlx5_esw_group_qos_config, !21, !"trace_event_fields_mlx5_esw_group_qos_config", i1 false, i1 false}
!98 = !{ptr @trace_event_type_funcs_mlx5_esw_group_qos_config, !21, !"trace_event_type_funcs_mlx5_esw_group_qos_config", i1 false, i1 false}
!99 = !{ptr @.str.23, !21, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @print_fmt_mlx5_esw_group_qos_config, !21, !"print_fmt_mlx5_esw_group_qos_config", i1 false, i1 false}
!101 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!102 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!104 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!107 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 620, i32 3}
!110 = !{ptr @.str.28, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @esw_qos_destroy._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @esw_qos_destroy._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @__esw_qos_destroy_rate_group.__msg, !114, !"__msg", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 513, i32 3}
!115 = !{ptr @__esw_qos_destroy_rate_group.__msg.29, !116, !"__msg", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 519, i32 3}
!117 = !{ptr @esw_qos_group_config.__msg, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 57, i32 3}
!119 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!120 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.30, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 89, i32 3}
!123 = !{ptr @.str.31, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @esw_qos_vport_config._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @esw_qos_vport_config._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @esw_qos_vport_config.__msg, !127, !"__msg", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 92, i32 3}
!128 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!129 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!130 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!131 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!132 = !{ptr @.str.32, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 583, i32 3}
!134 = !{ptr @.str.33, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @esw_qos_create._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @esw_qos_create._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 591, i32 4}
!139 = !{ptr @esw_qos_create._entry.34, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @esw_qos_create._entry_ptr.36, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.38, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 604, i32 3}
!143 = !{ptr @esw_qos_create._entry.37, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @esw_qos_create._entry_ptr.39, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @__esw_qos_create_rate_group.__msg, !146, !"__msg", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 449, i32 3}
!147 = !{ptr @__esw_qos_create_rate_group.__msg.40, !148, !"__msg", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 459, i32 4}
!149 = !{ptr @__esw_qos_create_rate_group.__msg.41, !150, !"__msg", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 472, i32 3}
!151 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!152 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.42, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 351, i32 3}
!155 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @esw_qos_vport_create_sched_element._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @esw_qos_vport_create_sched_element._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!159 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!160 = !{ptr @esw_qos_devlink_rate_to_mbps.__msg, !161, !"__msg", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 761, i32 3}
!162 = !{ptr @.str.44, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 767, i32 3}
!164 = !{ptr @.str.45, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @esw_qos_devlink_rate_to_mbps._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @esw_qos_devlink_rate_to_mbps._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @esw_qos_devlink_rate_to_mbps.__msg.46, !168, !"__msg", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 769, i32 3}
!169 = !{ptr @.str.48, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 774, i32 3}
!171 = !{ptr @esw_qos_devlink_rate_to_mbps._entry.47, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @esw_qos_devlink_rate_to_mbps._entry_ptr.49, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @esw_qos_devlink_rate_to_mbps.__msg.50, !174, !"__msg", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 776, i32 3}
!175 = !{ptr @esw_qos_set_group_min_rate.__msg, !176, !"__msg", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 281, i32 3}
!177 = !{ptr @esw_qos_set_group_min_rate.__msg.51, !178, !"__msg", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 286, i32 4}
!179 = !{ptr @esw_qos_set_group_max_rate.__msg, !180, !"__msg", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 319, i32 4}
!181 = !{ptr @esw_qos_update_group_scheduling_element.__msg, !182, !"__msg", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 372, i32 3}
!183 = !{ptr @esw_qos_update_group_scheduling_element.__msg.52, !184, !"__msg", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 385, i32 3}
!185 = !{ptr @.str.53, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c", i32 395, i32 3}
!187 = !{ptr @.str.54, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @esw_qos_update_group_scheduling_element._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @esw_qos_update_group_scheduling_element._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{!"auto-init"}
!203 = !{i8 0, i8 2}
!204 = !{i64 2148881737, i64 2148881742, i64 2148881755, i64 2148881799, i64 2148881833, i64 2148881854}
!205 = !{i64 2160560481}
!206 = !{i64 2160560706}
!207 = !{i64 2149705118}
!208 = !{i64 2149706154}
!209 = !{i64 2148489453}
!210 = !{i64 2148403917, i64 2148403949, i64 2148403978, i64 2148404012, i64 2148404043, i64 2148404066}
!211 = !{i64 2150571106}
!212 = !{i64 1304625, i64 1304652}
!213 = !{i64 1305320, i64 1305347, i64 1305380, i64 1305401, i64 1305428, i64 1305454}
!214 = !{i64 2160637874}
!215 = !{i64 2160638127}
!216 = !{i64 2160661277}
!217 = !{i64 2160661568}
!218 = !{i64 2160600406}
!219 = !{i64 2160600669}
!220 = !{i64 883658, i64 883682, i64 883703, i64 883720, i64 883737}
!221 = !{i64 2160578332}
!222 = !{i64 2160578595}
!223 = !{i64 2160619093}
!224 = !{i64 2160619344}
